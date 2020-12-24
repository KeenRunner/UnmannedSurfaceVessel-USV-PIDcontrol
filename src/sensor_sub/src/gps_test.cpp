#include <ros/ros.h>
#include <std_msgs/Header.h>
#include <sensor_msgs/NavSatFix.h>

std_msgs::Header prev_header;
void gpsCallback(const sensor_msgs::NavSatFix::ConstPtr& msg)
{   
    // int sec = msg->header.stamp.sec % 1000;
    // int nsec = msg->header.stamp.nsec / 1000000;
    ROS_INFO("longitude: %.6f  latitude: %.6f", msg->longitude, msg->latitude);
}
int main(int argc, char **argv)
{
    // 初始化ROS节点 创建节点句柄
    ros::init(argc, argv, "gps_test");
    ros::NodeHandle n;
    ros::Subscriber gps_sub = n.subscribe("/gps/fix", 10, gpsCallback);

    ros::spin();
    return 0;
}