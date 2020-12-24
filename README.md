# UnmannedSurfaceVessel-USV-PIDcontrol
本仓库代码基于ROS Melodic，在双螺旋桨差速驱动的无人艇上实现多点巡航

#### 基本架构
基本架构如下图所示：  
 <img src="https://github.com/KeenRunner/UnmannedSurfaceVessel-USV-PIDcontrol/blob/master/References/structure.png?raw=true" 
 width = "300" height = "300" align=center />  
在进行定点巡航的时候分两步：  
1.原地旋转，将船头方向对准目标点  
2.前进，在这个过程中继续调整角度的偏差  

#### 一、原地旋转
首先根据经纬度建立坐标系，规定正东方向为0度，按照目标点的经纬度和无人艇所在的经纬度确定**目标角度**。  
再由电子罗盘指示出无人艇的**实际角度**，进行PID运算，参考了离散化的PID公式  
<img src="https://github.com/KeenRunner/UnmannedSurfaceVessel-USV-PIDcontrol/blob/master/References/formula1.png" 
 width = "450" height = "60" align=center />  
 控制输入_u(k)_为加速度
