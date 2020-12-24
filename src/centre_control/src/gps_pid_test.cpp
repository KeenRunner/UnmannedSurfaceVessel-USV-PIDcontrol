#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Header.h>
#include <sensor_msgs/Imu.h>
#include <serial/serial.h>
#include <sensor_msgs/NavSatFix.h>
#include <string>
#include <unistd.h>
//#include <math.h>
#define PI 3.141593
using namespace serial;

serial::Serial sp;
uint8_t buffer[10];

//角度参数
double ang_cur, ang_obj; 
std::vector<double> ang_kp_kd_ki_1;
std::vector<double> ang_kp_kd_ki_2;
double l_acc_factor, r_acc_factor;
double ang_err_prev=0;
double ang_err_sum=0;   // 积分值是否需要清空？
int ang_pwm_max;
double ang_thresh, ang_vel_thresh;
double ang_dt;  // 频率为5hz
int test_flag=2;
bool ang_confirm=0;

//位置参数
double pos_cur[2], pos_obj[2];
int amp_factor;     // 通过经纬度算出的距离要适当放大
double pos_kp, pos_kd, pos_ki;
std::vector<double> pos_kp_kd_ki_1;
double pos_param_switch;
std::vector<double> pos_kp_kd_ki_2;
double distance_prev=0;
double distance_sum=0;
double distance_thresh;
int linear_acc_max;
double pos_dt;
double linear_acc=0;
bool is_first=0;
bool pos_confirm=0;

//IMU参数
double ang_vel;
double ang_param_switch;

void write_serial(int16_t left, int16_t right) {
    buffer[0] = (left>>8) & 0x00ff;
    buffer[1] = left & 0x00ff;
    buffer[2] = (right>>8) & 0x00ff;
    buffer[3] = right & 0x00ff;

    sp.write(buffer, 4);
    sp.write("\r\n");
}
double ang_pid(double ang_cur, double ang_obj, double ang_vel) {
    /* 对角度进行pid计算，返回角加速度值，此处的单位全部为弧度制
        按照角速度来切换两组参数 */
    double ang_err = ang_obj - ang_cur;
    if ((abs(ang_err) < ang_thresh) && (abs(ang_vel) < ang_vel_thresh)) // 角度达到要求 角速度达到要求
        ang_confirm = 1;
    double ang_prop_part, ang_diff_part, ang_inte_part;
    // 保证是向较近的方向旋转
    if (ang_err > PI)
        ang_err = ang_err-2*PI;
    else if (ang_err < -PI)
        ang_err = ang_err+2*PI;
    
    if (ang_vel > ang_param_switch || ang_vel < -ang_param_switch) {
        ang_prop_part = ang_kp_kd_ki_1[0]*ang_err;
        ang_diff_part = ang_kp_kd_ki_1[1]*(ang_err - ang_err_prev)/ang_dt;
        ang_inte_part = ang_kp_kd_ki_1[2]*ang_dt*(ang_err_sum + ang_err);
        test_flag = 1;
    }
    else {
        ang_prop_part = ang_kp_kd_ki_2[0]*ang_err;
        ang_diff_part = ang_kp_kd_ki_2[1]*(ang_err - ang_err_prev)/ang_dt;
        ang_inte_part = ang_kp_kd_ki_2[2]*ang_dt*(ang_err_sum + ang_err);
        test_flag = 0;
    }
    ang_err_prev = ang_err;
    ang_err_sum = ang_err_sum + ang_err;
    return ang_prop_part + ang_diff_part + ang_inte_part;
}

void gpsCallback(const sensor_msgs::NavSatFix::ConstPtr& msg)
{   
    // 拿到当前位置
    pos_cur[0] = msg->longitude;
    pos_cur[1] = msg->latitude;
    //ROS_INFO("longitude: %.6f, latitude: %.6f", pos_cur[0], pos_cur[1]);
    // 如果角度调整已经完成，但还没到达终点
    if(ang_confirm == 1 && pos_confirm == 0) {
        // double distance = sqrt(pow(pos_obj[0]-pos_cur[0],2)+pow(pos_obj[1]-pos_cur[1],2));
        double distance = abs(pos_obj[0]-pos_cur[0]) + abs(pos_obj[1]-pos_cur[1]);
        distance *= amp_factor;
        //ROS_INFO("distance: %.3f", distance);
        if (distance < distance_thresh)
            pos_confirm=1;

        if (distance > pos_param_switch) {
            pos_kp = pos_kp_kd_ki_1.at(0);
            pos_kd = pos_kp_kd_ki_1.at(1);
            pos_ki = pos_kp_kd_ki_1.at(2);
        } else {
            pos_kp = pos_kp_kd_ki_2.at(0);
            pos_kd = pos_kp_kd_ki_2.at(1);
            pos_ki = pos_kp_kd_ki_2.at(2);
        }
        // 直接先拿距离当作err来计算吧，后面看效果调整
        double diff_part, inte_part;
        double prop_part = pos_kp*distance;
        if (is_first == 0) {
            diff_part = 0;
            inte_part = 0;
            is_first = 1;
        }
        else {
            diff_part = pos_kd*(distance - distance_prev)/pos_dt;
            inte_part = pos_ki*pos_dt*(distance_sum + distance);
        }
        distance_prev = distance;
        distance_sum += distance;
        linear_acc = prop_part + diff_part + inte_part;
        if (linear_acc > linear_acc_max)
            linear_acc = linear_acc_max;
        //ROS_INFO("%.2f\n", linear_acc);
    } else {
        linear_acc = 0;
    }
}

void compassCallback(const std_msgs::Float32::ConstPtr& msg)
{
    //ROS_INFO("%.1f", msg->data*(180/PI));    // 查看发送过来的角度值（弧度制）
    ang_cur = msg->data;
    int16_t l_r_pwm[2];
    if (pos_confirm == 0) {     // 还没有到达最终点
        ang_obj = atan2(pos_obj[1]-pos_cur[1], pos_obj[0]-pos_cur[0]);
        double ang_acc = ang_pid(ang_cur, ang_obj, ang_vel);
        //ROS_INFO("ang_obj: %.2f", ang_obj);

        double tmp_left = round(l_acc_factor*ang_acc);
        double tmp_right = round(r_acc_factor*ang_acc);
        // 规定最大速度
        if (tmp_left > ang_pwm_max)
            l_r_pwm[0] = ang_pwm_max;
        else if (tmp_left < -ang_pwm_max)
            l_r_pwm[0] = -ang_pwm_max;
        else
            l_r_pwm[0] = (int16_t) tmp_left;
        
        if (tmp_right > ang_pwm_max)
            l_r_pwm[1] = ang_pwm_max;
        else if (tmp_right < -ang_pwm_max)
            l_r_pwm[1] = -ang_pwm_max;
        else
            l_r_pwm[1] = (int16_t) tmp_right;
        //ROS_INFO("%d  %d  flag:%d\n", l_r_pwm[0], l_r_pwm[1], test_flag);
    } else {
        l_r_pwm[0] = 0;
        l_r_pwm[1] = 0;
    }
    int16_t l_r_final[2];
    l_r_final[0] = l_r_pwm[0] + (int16_t) round(linear_acc);
    l_r_final[1] = l_r_pwm[1] + (int16_t) round(linear_acc);
    ROS_INFO(" left: %d  right: %d, ang_confirm: %d, pos_confirm: %d", 
                l_r_final[0], l_r_final[1], ang_confirm, pos_confirm);
    write_serial(l_r_final[0], l_r_final[1]);
}

void imuCallback(const sensor_msgs::Imu::ConstPtr& msg)
{
    //ROS_INFO("ang_vel: %.2f", msg->angular_velocity.z);
    ang_vel = msg->angular_velocity.z;
}

int main(int argc, char **argv)
{
    // 初始化ROS节点 创建节点句柄
    ros::init(argc, argv, "gps_pid_test");
    ros::NodeHandle n;
    sleep(3);
    std::string serial_port;
    std::vector<double> point_list;
    n.getParam("/gps_pid_test/serial_port", serial_port);

    n.getParam("/gps_pid_test/ang_kp_kd_ki_1", ang_kp_kd_ki_1);
    n.getParam("/gps_pid_test/ang_kp_kd_ki_2", ang_kp_kd_ki_2);
    n.getParam("/gps_pid_test/l_acc_factor", l_acc_factor);
    n.getParam("/gps_pid_test/r_acc_factor", r_acc_factor);
    n.getParam("/gps_pid_test/ang_dt", ang_dt);
    n.getParam("/gps_pid_test/ang_pwm_max", ang_pwm_max);
    n.getParam("/gps_pid_test/ang_thresh", ang_thresh);
    n.getParam("/gps_pid_test/ang_vel_thresh", ang_vel_thresh);

    n.getParam("/gps_pid_test/obj_p_list", point_list);
    n.getParam("/gps_pid_test/amp_factor", amp_factor);
    n.getParam("/gps_pid_test/pos_kp_kd_ki_1", pos_kp_kd_ki_1);
    n.getParam("/gps_pid_test/pos_kp_kd_ki_2", pos_kp_kd_ki_2);
    n.getParam("/gps_pid_test/distance_thresh", distance_thresh);
    n.getParam("/gps_pid_test/pos_dt", pos_dt);
    n.getParam("/gps_pid_test/linear_acc_max", linear_acc_max);

    n.getParam("/gps_pid_test/pos_param_switch", pos_param_switch);
    n.getParam("/gps_pid_test/ang_param_switch", ang_param_switch);

    pos_obj[0] = point_list.at(0);
    pos_obj[1] = point_list.at(1);
    ros::Subscriber gps_sub = n.subscribe("/gps/fix", 5, gpsCallback);
    ros::Subscriber compass_sub = n.subscribe("/compass_info", 5, compassCallback);
    ros::Subscriber imu_sub = n.subscribe("/imu", 5, imuCallback);

    //创建timeout
    serial::Timeout to = serial::Timeout::simpleTimeout(500);
    //设置要打开的串口名称
    sp.setPort(serial_port);
    //设置串口通信的波特率
    sp.setBaudrate(115200);
    sp.setBytesize(eightbits);
    sp.setParity(parity_none);
    sp.setStopbits(stopbits_one);
    //串口设置timeout
    sp.setTimeout(to);

    try
    {   sp.open(); }
    catch(serial::IOException& e) {
        ROS_ERROR_STREAM("Unable to open port.");
        return -1;
    }
    if(sp.isOpen())
        ROS_INFO_STREAM(serial_port + " is opened.");
    else
        return -1;

    while(ros::ok())
        ros::spin();
    // 退出程序的时候速度置零
    write_serial(0, 0);
    return 0;
}