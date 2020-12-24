# UnmannedSurfaceVessel-USV-PIDcontrol
本仓库代码基于ROS Melodic，在双螺旋桨差速驱动的无人艇上实现多点巡航

#### 基本架构
基本架构如下图所示：  
 <img src="https://github.com/KeenRunner/UnmannedSurfaceVessel-USV-PIDcontrol/blob/master/References/structure.png?raw=true" 
 width = "300" height = "300" align=center />  
电子罗盘Compass、惯性测量单元IMU、全球定位系统GPS会实时测量无人艇的角度、角加速和位置  
并作为Publisher 广播测量到的数据
无人艇上的计算单元（此处为一台Mini PC）作为Subscriber接收数据并进行相应计算，得到船体的角加速度和线加速度  
对计算出的加速度做简单处理后用串口发送给下位机（此处使用STM32F4），下位机输出PWM波驱动电机，实现船体的运动
在实现定点巡航的时候分两步：  
1.原地旋转，将船头方向对准目标点  
2.前进，在这个过程中继续调整角度的偏差  

#### 一、原地旋转
首先根据经纬度建立坐标系，规定正东方向为0度，按照目标点的经纬度和无人艇所在的经纬度确定**目标角度**。  
再由电子罗盘指示出无人艇的**实际角度**，进行PID运算，参考了离散化的PID公式  
<img src="https://github.com/KeenRunner/UnmannedSurfaceVessel-USV-PIDcontrol/blob/master/References/formula1.png" 
 width = "450" height = "60" align=center />  
控制输入*u(k)* 为加速度  
代码中设置了两个参数"ang_thresh"和"ang_vel_thresh"来表示角度误差的阈值和角速度的阈值，当两个参数都在阈值内时，角度调整完成，相应标志位置1，开始直线前进

#### 二、直线前进
直线前进的PID控制方法与角度控制类似，但考虑到无人艇在运动到某一点后会直接前往下一点，不需要精确停留在某一点上，这里直接用无人艇和目标点的<em>距离<em>来表示位置误差<em>e(k)<em>  
为了运算方便，没有使用欧几里得距离，而是使用下式计算距离  
 <img src="https://github.com/KeenRunner/UnmannedSurfaceVessel-USV-PIDcontrol/blob/master/References/formula2.png" 
     width = "260" height = "40" align=center />  
 根据此距离进行PID运算，得到前进的加速度
 另外，在前进时，角度调整也会继续，保证船头指向目标点

#### 代码说明
+ src文件夹内是各个模块的package  
+ GPS模块ublox的使用可以参考https://www.ncnynl.com/archives/201905/3053.html  
+ 电子罗盘和IMU的参考资料已上传到References文件夹内
+ sensor_sub/src/compass_pub.cpp && gps_test.cpp实现了对电子罗盘compass && gps原始测量信息的处理和发布  
+ centre_control/src/compass_pid_test.cpp 实现了原地旋转功能 gps_pid_test.cpp 实现了单点直线运动功能 multi_point.cpp 实现了多点巡航功能
其余代码均为实验过程中的测试文件
**注意：**部分代码未编写.launch文件，如要运行请使用roscore + rosrun命令
