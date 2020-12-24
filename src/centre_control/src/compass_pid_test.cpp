#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include "sensor_msgs/Imu.h"
#include <serial/serial.h>
#include <string>
#define PI 3.141593
//using namespace std;
using namespace serial;

serial::Serial sp;
uint8_t buffer[10];

double pos_cur[2], pos_obj[2];
std::vector<double> ang_kp_kd_ki_1;
std::vector<double> ang_kp_kd_ki_2;
double ang_cur, ang_obj; 
// double ang_vel;
double ang_err_prev=0;
// double ang_kp, ang_kd, ang_ki;
double ang_err_sum=0;   // 积分值是否需要清空？
double ang_dt;  // 频率为5hz
int ang_pwm_max;
bool test_flag;

double l_acc_factor, r_acc_factor;

void write_serial(int16_t left, int16_t right) {
    buffer[0] = (left>>8) & 0x00ff;
    buffer[1] = left & 0x00ff;
    buffer[2] = (right>>8) & 0x00ff;
    buffer[3] = right & 0x00ff;

    sp.write(buffer, 4);
    sp.write("\r\n");
}

double ang_pid(double ang_cur, double ang_obj) {
    /* 对角度进行pid计算，返回角加速度值，此处的单位全部为弧度制
        这里先按角度来切换两组pid参数，最终按照角速度来切换 */
    double ang_err = ang_obj - ang_cur;
    double prop_part, diff_part, inte_part;
    if (ang_err > PI)
        ang_err = ang_err-2*PI;
    else if (ang_err < -PI)
        ang_err = ang_err+2*PI;
    
    if (ang_err > PI/4.0 || ang_err < -PI/4.0) {
        prop_part = ang_kp_kd_ki_1[0]*ang_err;
        diff_part = ang_kp_kd_ki_1[1]*(ang_err - ang_err_prev)/ang_dt;
        inte_part = ang_kp_kd_ki_1[2]*ang_dt*(ang_err_sum + ang_err);
        test_flag = 1;
    }
    else {
        prop_part = ang_kp_kd_ki_2[0]*ang_err;
        diff_part = ang_kp_kd_ki_2[1]*(ang_err - ang_err_prev)/ang_dt;
        inte_part = ang_kp_kd_ki_2[2]*ang_dt*(ang_err_sum + ang_err);
        test_flag = 0;
    }
    ang_err_prev = ang_err;
    ang_err_sum = ang_err_sum + ang_err;
    return prop_part + diff_part + inte_part;
}

void compassCallback(const std_msgs::Float32::ConstPtr& msg)
{
    ROS_INFO("%.1f", msg->data*(180/PI));    // 查看发送过来的角度值（弧度制）
    ang_cur = msg->data;
    ang_obj = atan2(pos_obj[1]-pos_cur[1], pos_obj[0]-pos_cur[0]);
    double ang_acc = ang_pid(ang_cur, ang_obj);

    double tmp_left = round(l_acc_factor*ang_acc);
    double tmp_right = round(r_acc_factor*ang_acc);
    int16_t l_r_pwm[2];
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
    
    ROS_INFO("%d  %d  flag:%d\n", l_r_pwm[0], l_r_pwm[1], test_flag);
    write_serial(l_r_pwm[0], l_r_pwm[1]);
}

// void imuCallback(const sensor_msgs::Imu::ConstPtr& msg)
// {
//     ROS_INFO("ang_vel\n");
//     ROS_INFO("%.2f \n", msg->angular_velocity.z);
//     ang_vel = msg->angular_velocity.z;
// }

int main(int argc, char **argv)
{
    // 初始化ROS节点 创建节点句柄
    ros::init(argc, argv, "compass_pid_test");
    ros::NodeHandle n;
    std::string serial_port;
    pos_cur[0]=0; pos_cur[1]=0;
    pos_obj[0]=0; pos_obj[1]=1;
    
    n.getParam("/compass_pid_test/serial_port", serial_port);
    // n.getParam("/compass_pid_test/ang_kp", ang_kp);
    // n.getParam("/compass_pid_test/ang_kd", ang_kd);
    // n.getParam("/compass_pid_test/ang_ki", ang_ki);
    n.getParam("/compass_pid_test/ang_kp_kd_ki_1", ang_kp_kd_ki_1);
    n.getParam("/compass_pid_test/ang_kp_kd_ki_2", ang_kp_kd_ki_2);
    n.getParam("/compass_pid_test/l_acc_factor", l_acc_factor);
    n.getParam("/compass_pid_test/r_acc_factor", r_acc_factor);
    n.getParam("/compass_pid_test/ang_dt", ang_dt);
    n.getParam("/compass_pid_test/ang_pwm_max", ang_pwm_max);

    //ROS_INFO("%f, %f, %f\n", ang_kp, l_acc_factor, dt);
    //ros::Subscriber gps_sub = n.subscribe("/gps/fix", 10, gpsCallback);
    ros::Subscriber compass_sub = n.subscribe("/compass_info", 20, compassCallback);
    //ros::Subscriber imu_sub = n.subscribe("/imu", 20, imuCallback);

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
    {
        sp.open();
    }
    catch(serial::IOException& e)
    {
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