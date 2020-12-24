#include <ros/ros.h>
#include <serial/serial.h>
#include <iostream>
#include <std_msgs/Float32.h>
#include <string>
using namespace std;
using namespace serial;
#define PI 3.141593

double angle_proc(double raw_data) {
    // 传感器接收到的信号范围为0-360，正北为0，角度制，要在此做相应的变换
    if (raw_data<=360 && raw_data>180){
        raw_data = raw_data - 360;
    }
    raw_data = 0 - raw_data;
    raw_data += 90;             // 东边为0度
    if (raw_data > 180)
        raw_data = raw_data - 360;
    raw_data = raw_data*PI/180.0;   // 角度转弧度
    ROS_INFO("%.2f",raw_data);
    return raw_data;
}
int main(int argc, char** argv)
{
    ros::init(argc, argv, "compass_pub");
    //创建句柄（虽然后面没用到这个句柄，但如果不创建，运行时进程会出错）
    ros::NodeHandle n;
    ros::Publisher compass_pub = n.advertise<std_msgs::Float32>("/compass_info", 5);
    int freq;
    string serial_port;
    n.getParam("/compass_pub/freq", freq);
    n.getParam("/compass_pub/serial_port", serial_port);

    //创建一个serial类
    serial::Serial sp;
    //创建timeout
    serial::Timeout to = serial::Timeout::simpleTimeout(500);
    //设置要打开的串口名称
    sp.setPort(serial_port);
    //设置串口通信的波特率
    sp.setBaudrate(9600);
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
    
    //判断串口是否打开成功
    if(sp.isOpen())
        ROS_INFO_STREAM(serial_port + " is opened.");
    else
        return -1;
    
    ros::Rate loop_rate(freq);  // 控制while循环的频率
    uint8_t buffer[10];
    uint8_t trash[100];
    char angle_array[6];
    int checkSum;
    while(ros::ok())
    {	
        // 发送获取角度的指令
		sp.write("1");
        //获取缓冲区内的字节数
        while(sp.available() < 8);
		if(sp.available() == 8)
        {
            checkSum = 0;
            std_msgs::Float32 angle;
            _Float32 raw_data;
            
            sp.read(buffer, 8);
            for(int i=0; i<7; i++)
				checkSum += buffer[i];
			if ((uint8_t)(checkSum & 0xff) == buffer[7]) {
                for(int i=0; i<5;i++)
                    angle_array[i] = buffer[i+2];
                sscanf(angle_array, "%f", &raw_data);
                //ROS_INFO("array: %s\n", angle_array);
			}
            angle.data = angle_proc(raw_data);
            //ROS_INFO("%.1f, %.3f\n", raw_data, angle.data);
            compass_pub.publish(angle);
        }
        //清空缓存
        sp.read(trash, sp.available());
        loop_rate.sleep();
    }
    
    //关闭串口
    sp.close();
 
    return 0;
}
