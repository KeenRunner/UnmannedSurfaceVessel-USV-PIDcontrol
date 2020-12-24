/**
 * 该例程将订阅/person_info话题，自定义消息类型learning_topic::Person
 */
 
#include <ros/ros.h>
#include "sensor_msgs/Imu.h"


// 接收到订阅的消息后，会进入消息回调函数
void imuInfoCallback(const sensor_msgs::Imu::ConstPtr& msg)
{
    // 将接收到的消息打印出来
    ROS_INFO("ang_vel\n");
    ROS_INFO("x: %.2f  y: %.2f  z: %.2f \n", 
	msg->angular_velocity.x, msg->angular_velocity.y, msg->angular_velocity.z);
    ROS_INFO("linear_acc\n");
    ROS_INFO("x: %.2f  y: %.2f  z: %.2f \n", 
	msg->linear_acceleration.x, msg->linear_acceleration.y, msg->linear_acceleration.z);
}

int main(int argc, char **argv)
{
    // 初始化ROS节点
    ros::init(argc, argv, "imu_sub");

    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个Subscriber，订阅名为/person_info的topic，注册回调函数personInfoCallback
    ros::Subscriber imu_sub = n.subscribe("/imu", 3, imuInfoCallback);

    // 循环等待回调函数
    ros::spin();

    return 0;
}
