#include <macros.h>
#include "delay.h"
//ʹ��AVR�ڲ�Ӳ��iic
//���Ŷ���: PC0->SCL  ;  PC1->SDA
//I2C ״̬����
//MT ����ʽ���� MR ����ʽ����
#define START			0x08
#define RE_START		0x10
#define MT_SLA_ACK		0x18
#define MT_SLA_NOACK 	0x20
#define MT_DATA_ACK		0x28
#define MT_DATA_NOACK	0x30
#define MR_SLA_ACK		0x40
#define MR_SLA_NOACK	0x48
#define MR_DATA_ACK		0x50
#define MR_DATA_NOACK	0x58		

#define RD_DEVICE_ADDR 0xE1   //ǰ4λ�����̶�,����λ������,���1λ�Ƕ�дָ��λ
#define WD_DEVICE_ADDR 0xE0

//����TWI����(��ģʽд�Ͷ�)
#define Start()			(TWCR=(1<<TWINT)|(1<<TWSTA)|(1<<TWEN))		//����I2C
#define Stop()			(TWCR=(1<<TWINT)|(1<<TWSTO)|(1<<TWEN))		//ֹͣI2C
#define Wait()			{while(!(TWCR&(1<<TWINT)));}				//�ȴ��жϷ���
#define TestAck()		(TWSR&0xf8)									//�۲췵��״̬
#define SetAck			(TWCR|=(1<<TWEA))							//����ACKӦ��
#define SetNoAck		(TWCR&=~(1<<TWEA))							//����Not AckӦ��
#define Twi()			(TWCR=(1<<TWINT)|(1<<TWEN))				    //����I2C
#define Write8Bit(x)	{TWDR=(x);TWCR=(1<<TWINT)|(1<<TWEN);}		//д���ݵ�TWDR

unsigned char I2C_Write(unsigned char Wdata,unsigned char RegAddress);
unsigned char I2C_Read(unsigned RegAddress);

/*********************************************
I2C����дһ���ֽ�
����0:д�ɹ�
����1:дʧ��
**********************************************/
unsigned char I2C_Write(unsigned char Wdata,unsigned char RegAddress)
{
	  Start();						//I2C����
	  Wait();
	  if(TestAck()!=START) 
		return 1;					//ACK
	  
	  Write8Bit(WD_DEVICE_ADDR);	//дI2C��������ַ��д��ʽ
	  Wait();
	  if(TestAck()!=MT_SLA_ACK) 
		return 1;					//ACK
	  
	  Write8Bit(RegAddress);		//д������Ӧ�Ĵ�����ַ
	  Wait();
	  if(TestAck()!=MT_DATA_ACK) 
	  	return 1;				    //ACK
	  
	  Write8Bit(Wdata);			 	//д���ݵ�������Ӧ�Ĵ���
	  Wait();
	  if(TestAck()!=MT_DATA_ACK) 
	  	return 1;				    //ACK	 
	  Stop();  						//I2Cֹͣ
 	//delay_nms(10);				//��ʱ  
	  return 0;
}

/*********************************************
I2C���߶�һ���ֽ�
����0:���ɹ�
����1:��ʧ��
**********************************************/

unsigned char I2C_Read(unsigned RegAddress)

 {
	   unsigned char temp;
	   Start();//I2C����
	   Wait();
	   if (TestAck()!=START) 
	   	  return 1;			 		//ACK	   
	   
	   Write8Bit(WD_DEVICE_ADDR);	//дI2C��������ַ��д��ʽ
	   Wait(); 
	   if (TestAck()!=MT_SLA_ACK) 
	   	  return 1;				    //ACK
	   
	   Write8Bit(RegAddress);		//д������Ӧ�Ĵ�����ַ
	   Wait();
	   if (TestAck()!=MT_DATA_ACK) 
	   	  return 1;
	   
	   Start();	   				   	//I2C��������
	   Wait();
	   if (TestAck()!=RE_START)  
	   	  return 1;
	   
	   Write8Bit(RD_DEVICE_ADDR);	//дI2C��������ַ�Ͷ���ʽ
	   Wait();
	   if(TestAck()!=MR_SLA_ACK)  
	   	  return 1;				   //ACK
	   
	   Twi();	 				   //������I2C����ʽ
	   Wait();
	   if(TestAck()!=MR_DATA_NOACK) 
	   	 return 1;					//ACK	
	   
	   temp=TWDR;//��ȡI2C��������
       Stop();//I2Cֹͣ
	   return temp;
      }
