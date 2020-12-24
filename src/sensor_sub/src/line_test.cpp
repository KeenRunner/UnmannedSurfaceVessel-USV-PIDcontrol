#include <ros/ros.h>
#include <std_msgs/Header.h>
#include <sensor_msgs/NavSatFix.h>
std_msgs::Header prev_header;
/* launch文件在ublox_gps/launch里面 */
double pos_cur[2], pos_obj[2];
int amp_factor;
int pos_kp, pos_kd, pos_ki;
double distance_thresh;
double distance_prev=0;
double distance_sum=0;
double pos_dt;
double linear_acc;
bool is_first=0;
bool pos_confirm=0;

void gpsCallback(const sensor_msgs::NavSatFix::ConstPtr& msg)
{   
    // 拿到当前位置
    pos_cur[0] = msg->longitude;
    pos_cur[1] = msg->latitude;
    // 如果角度调整已经完成，但还没到达终点
    if(pos_confirm == 0) {
        double distance = abs(pos_obj[0]-pos_cur[0]) + abs(pos_obj[1]-pos_cur[1]);
        distance *= amp_factor;
        ROS_INFO("%.3f", distance);
        if(distance < distance_thresh)
            pos_confirm=1;
        
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
        ROS_INFO("%.2f\n", linear_acc);
    } else
        linear_acc = 0;
}
int main(int argc, char **argv)
{
    // 初始化ROS节点 创建节点句柄
    ros::init(argc, argv, "gps_test");
    ros::NodeHandle n;
    std::vector<double> point_list;

    n.getParam("/line_test/obj_p_list", point_list);
    n.getParam("/line_test/amp_factor", amp_factor);
    n.getParam("/line_test/pos_kp", pos_kp);
    n.getParam("/line_test/pos_kd", pos_kd);
    n.getParam("/line_test/pos_ki", pos_ki);
    n.getParam("/line_test/distance_thresh", distance_thresh);
    n.getParam("/line_test/pos_dt", pos_dt);

    pos_obj[0] = point_list.at(0);
    pos_obj[1] = point_list.at(1);
   //ROS_INFO("x: %.2f, y: %.2f", pos_cur[0], pos_cur[1]);

    ros::Subscriber gps_sub = n.subscribe("/gps/fix", 20, gpsCallback);
    ros::spin();
    return 0;
}