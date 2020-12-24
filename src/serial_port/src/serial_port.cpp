//serial_port.cpp
#include <ros/ros.h>
#include <serial/serial.h>
#include <iostream>
#include "sensor_msgs/Imu.h"
#include <string>
using namespace serial;

int main(int argc, char** argv)
{
    ros::init(argc, argv, "serial_port");
    //创建句柄（虽然后面没用到这个句柄，但如果不创建，运行时进程会出错）
    ros::NodeHandle n;

    std::string serial_port="/dev/ttyUSB0";
    //创建一个serial类
    serial::Serial sp;
    //创建timeout
    serial::Timeout to = serial::Timeout::simpleTimeout(500);
    //设置要打开的串口名称
    sp.setPort(serial_port);
    //设置串口通信的波特率、无奇偶校验位、一位停止位
    sp.setBaudrate(115200);
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

    //判断串口是否打开成功
    if(sp.isOpen())
        ROS_INFO_STREAM(serial_port + " is opened.");
    else
        return -1;

    //ros::Rate loop_rate(20);
	while(ros::ok())
    {
            uint8_t buffer[10];
            // scanf("%d%d", &buffer[0], &buffer[1]);
            int16_t left, right;
            scanf("%d%d", &left, &right);       // 16位有符号整数，调整pwm占空比
            buffer[0] = (left>>8) & 0x00ff;
            buffer[1] = left & 0x00ff;
            buffer[2] = (right>>8) & 0x00ff;
            buffer[3] = right & 0x00ff;

            sp.write(buffer, 4);
            sp.write("\r\n");
//            loop_rate.sleep();
    }
    //关闭串口
    sp.close();
 
    return 0;
}

