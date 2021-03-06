/*****************************************
* 基于AVR单片机GY-26模块通信程序 		 *
* 功    能：IIC通信读取数据并显示        *
* 时钟频率：内部1M 						 *
* 设    计：广运电子					 *
* 修改日期：2010年10月26日				 *
* 编译环境：ICC-AVR7.14					 *
* 实验环境：ATmega16+1602    			 *
* 使用端口：PC0,PC1,PC6,PC7,PA4~PA7 	 *
* 参    考：莫锦攀实验程序24c02读取实验  *
*****************************************/
#include <iom16v.h>
#include "I2C.h"
#include "1602.h"
#include "delay.h"
void conversion(unsigned int i);
unsigned char display[7]={0,0,0,'.',0,0Xdf,0};//显示数据

/*******************************
主程序
*******************************/
void main(void)
{	
	unsigned char H,L,i;
	unsigned int  cmp_data,temp_data;
	
	delay_nms(25);                    //lcd上电延时
	LCD_init();                       //lcd初始化
	while(1){                         //循环   
	 i=I2C_Write(0x31,0x00);          //写测量角度命令，成功返回值0
	 TWCR=0;                          //释放引脚
     delay_nms(15);                   //内部测量时间大于40ms，可执行其他程序 
	   if(i==0){
	     H=I2C_Read(0X01);            //读取角度高8位命令
	     L=I2C_Read(0X02);            //读取角度低8位命令
		 cmp_data=H;
		 cmp_data<<=8;
		 cmp_data+=L;                 //高低位合成16位，角度值
	     conversion(cmp_data);        //数据转换出个，十，百，千 位       
		 LCD_write_string(9,0,display); //显示角度，从第9列开始   
	   }  
	 i=I2C_Write(0x35,0x00);          //写测量温度命令，成功返回值0
	 TWCR=0;                          //释放引脚
     delay_nms(10);                   //内部测量时间大于40ms，可执行其他程序 
	   if(i==0){
	     H=I2C_Read(0X05);            //读取温度高8位命令
	     L=I2C_Read(0X06);            //读取温度低8位命令   
		 temp_data=H;
		 temp_data<<=8;
		 temp_data+=L;                //高低位合成16位,温度值 
	     conversion(temp_data);       //数据转换出个，十，百，千 位       
		 LCD_write_string(9,1,display);  //显示温度，从第9列开始  
	   }
    }
}
/*********************************************
数据转换,十六进制数据转换成10进制
输入十六进制范围：0x0000-0x270f（0-9999）
结果分成个十百千位，以ascii存入显示区
**********************************************/
void conversion(unsigned int i)  
{  
	display[0]=i/1000+0x30 ;
    i=i%1000;    //取余运算
    display[1]=i/100+0x30 ;
    i=i%100;    //取余运算
    display[2]=i/10+0x30 ;
    i=i%10;     //取余运算
    display[4]=i+0x30;  
}
