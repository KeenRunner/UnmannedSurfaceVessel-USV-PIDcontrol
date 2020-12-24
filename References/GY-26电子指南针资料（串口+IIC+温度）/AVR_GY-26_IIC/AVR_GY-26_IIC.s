	.module AVR_GY-26_IIC.c
	.area text(rom, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\AVR_GY-26_IIC.c
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\delay.h
	.dbfunc e delay_1us _delay_1us fV
	.even
_delay_1us::
	.dbline -1
	.dbline 15
; /*-----------------------------------------------------------------------
; 延时函数
; 编译器：ICC-AVR v6.31A 
; 目标芯片 : M16
; 时钟: 8.0000Mhz
; -----------------------------------------------------------------------*/
; #ifndef __delay_h
; #define __delay_h
; void delay_nus(unsigned int n);
; void delay_nms(unsigned int n);
; void delay_1us(void);
; void delay_1ms(void) ; 
; 
; void delay_1us(void)                 //1us延时函数
;   {
	.dbline 16
;    asm("nop");
	nop
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e delay_nus _delay_nus fV
;              i -> R20,R21
;              n -> R10,R11
	.even
_delay_nus::
	xcall push_xgset300C
	movw R10,R16
	.dbline -1
	.dbline 20
;   }
; 
; void delay_nus(unsigned int n)       //N us延时函数
;   {
	.dbline 21
;    unsigned int i=0;
	clr R20
	clr R21
	.dbline 22
;    for (i=0;i<n;i++)
	xjmp L6
L3:
	.dbline 23
;    delay_1us();
	xcall _delay_1us
L4:
	.dbline 22
	subi R20,255  ; offset = 1
	sbci R21,255
L6:
	.dbline 22
	cp R20,R10
	cpc R21,R11
	brlo L3
X0:
	.dbline -2
L2:
	.dbline 0 ; func end
	xjmp pop_xgset300C
	.dbsym r i 20 i
	.dbsym r n 10 i
	.dbend
	.dbfunc e delay_1ms _delay_1ms fV
;              i -> R16,R17
	.even
_delay_1ms::
	.dbline -1
	.dbline 27
;   }
;   
; void delay_1ms(void)                 //1ms延时函数
;   {
	.dbline 29
;    unsigned int i;
;    for (i=0;i<1140;i++);
	clr R16
	clr R17
	xjmp L11
L8:
	.dbline 29
L9:
	.dbline 29
	subi R16,255  ; offset = 1
	sbci R17,255
L11:
	.dbline 29
	cpi R16,116
	ldi R30,4
	cpc R17,R30
	brlo L8
X1:
	.dbline -2
L7:
	.dbline 0 ; func end
	ret
	.dbsym r i 16 i
	.dbend
	.dbfunc e delay_nms _delay_nms fV
;              i -> R20,R21
;              n -> R10,R11
	.even
_delay_nms::
	xcall push_xgset300C
	movw R10,R16
	.dbline -1
	.dbline 33
;   }
;   
; void delay_nms(unsigned int n)       //N ms延时函数
;   {
	.dbline 34
;    unsigned int i=0;
	clr R20
	clr R21
	.dbline 35
;    for (i=0;i<n;i++)
	xjmp L16
L13:
	.dbline 36
;    delay_1ms();
	xcall _delay_1ms
L14:
	.dbline 35
	subi R20,255  ; offset = 1
	sbci R21,255
L16:
	.dbline 35
	cp R20,R10
	cpc R21,R11
	brlo L13
X2:
	.dbline -2
L12:
	.dbline 0 ; func end
	xjmp pop_xgset300C
	.dbsym r i 20 i
	.dbsym r n 10 i
	.dbend
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\I2C.h
	.dbfunc e I2C_Write _I2C_Write fc
;     RegAddress -> R18
;          Wdata -> R16
	.even
_I2C_Write::
	.dbline -1
	.dbline 40
; #include <macros.h>
; #include "delay.h"
; //使用AVR内部硬件iic，引脚定义
; //PC0->SCL  ;  PC1->SDA
; //I2C 状态定义
; //MT 主方式传输 MR 主方式接受
; #define START			0x08
; #define RE_START		0x10
; #define MT_SLA_ACK		0x18
; #define MT_SLA_NOACK 	0x20
; #define MT_DATA_ACK		0x28
; #define MT_DATA_NOACK	0x30
; #define MR_SLA_ACK		0x40
; #define MR_SLA_NOACK	0x48
; #define MR_DATA_ACK		0x50
; #define MR_DATA_NOACK	0x58		
; 
; #define RD_DEVICE_ADDR 0xE1   //前4位器件固定,后三位看连线,最后1位是读写指令位
; #define WD_DEVICE_ADDR 0xE0
; 
; //常用TWI操作(主模式写和读)
; #define Start()			(TWCR=(1<<TWINT)|(1<<TWSTA)|(1<<TWEN))		//启动I2C
; #define Stop()			(TWCR=(1<<TWINT)|(1<<TWSTO)|(1<<TWEN))		//停止I2C
; #define Wait()			{while(!(TWCR&(1<<TWINT)));}				//等待中断发生
; #define TestAck()		(TWSR&0xf8)									//观察返回状态
; #define SetAck			(TWCR|=(1<<TWEA))							//做出ACK应答
; #define SetNoAck		(TWCR&=~(1<<TWEA))							//做出Not Ack应答
; #define Twi()			(TWCR=(1<<TWINT)|(1<<TWEN))				    //启动I2C
; #define Write8Bit(x)	{TWDR=(x);TWCR=(1<<TWINT)|(1<<TWEN);}		//写数据到TWDR
; 
; unsigned char I2C_Write(unsigned char Wdata,unsigned char RegAddress);
; unsigned char I2C_Read(unsigned RegAddress);
; 
; /*********************************************
; I2C总线写一个字节
; 返回0:写成功
; 返回1:写失败
; **********************************************/
; unsigned char I2C_Write(unsigned char Wdata,unsigned char RegAddress)
; {
	.dbline 41
; 	  Start();						//I2C启动
	ldi R24,164
	out 0x36,R24
	.dbline 42
; 	  Wait();
L18:
	.dbline 42
L19:
	.dbline 42
	in R2,0x36
	sbrs R2,7
	rjmp L18
X3:
	.dbline 42
	.dbline 42
	.dbline 43
; 	  if(TestAck()!=START) 
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L21
X4:
	.dbline 44
; 		return 1;					//ACK
	ldi R16,1
	xjmp L17
L21:
	.dbline 46
; 	  
; 	  Write8Bit(WD_DEVICE_ADDR);	//写I2C从器件地址和写方式
	.dbline 46
	ldi R24,224
	out 0x3,R24
	.dbline 46
	ldi R24,132
	out 0x36,R24
	.dbline 46
	.dbline 46
	.dbline 47
; 	  Wait();
L23:
	.dbline 47
L24:
	.dbline 47
	in R2,0x36
	sbrs R2,7
	rjmp L23
X5:
	.dbline 47
	.dbline 47
	.dbline 48
; 	  if(TestAck()!=MT_SLA_ACK) 
	in R24,0x1
	andi R24,248
	cpi R24,24
	breq L26
X6:
	.dbline 49
; 		return 1;					//ACK
	ldi R16,1
	xjmp L17
L26:
	.dbline 51
; 	  
; 	  Write8Bit(RegAddress);		//写器件相应寄存器地址
	.dbline 51
	out 0x3,R18
	.dbline 51
	ldi R24,132
	out 0x36,R24
	.dbline 51
	.dbline 51
	.dbline 52
; 	  Wait();
L28:
	.dbline 52
L29:
	.dbline 52
	in R2,0x36
	sbrs R2,7
	rjmp L28
X7:
	.dbline 52
	.dbline 52
	.dbline 53
; 	  if(TestAck()!=MT_DATA_ACK) 
	in R24,0x1
	andi R24,248
	cpi R24,40
	breq L31
X8:
	.dbline 54
; 	  	return 1;				    //ACK
	ldi R16,1
	xjmp L17
L31:
	.dbline 56
; 	  
; 	  Write8Bit(Wdata);			 	//写数据到器件相应寄存器
	.dbline 56
	out 0x3,R16
	.dbline 56
	ldi R24,132
	out 0x36,R24
	.dbline 56
	.dbline 56
	.dbline 57
; 	  Wait();
L33:
	.dbline 57
L34:
	.dbline 57
	in R2,0x36
	sbrs R2,7
	rjmp L33
X9:
	.dbline 57
	.dbline 57
	.dbline 58
; 	  if(TestAck()!=MT_DATA_ACK) 
	in R24,0x1
	andi R24,248
	cpi R24,40
	breq L36
X10:
	.dbline 59
; 	  	return 1;				    //ACK	 
	ldi R16,1
	xjmp L17
L36:
	.dbline 60
; 	  Stop();  						//I2C停止
	ldi R24,148
	out 0x36,R24
	.dbline 62
;  	//delay_nms(10);				//延时  
; 	  return 0;
	clr R16
	.dbline -2
L17:
	.dbline 0 ; func end
	ret
	.dbsym r RegAddress 18 c
	.dbsym r Wdata 16 c
	.dbend
	.dbfunc e I2C_Read _I2C_Read fc
;           temp -> R10
;     RegAddress -> R16,R17
	.even
_I2C_Read::
	st -y,R10
	.dbline -1
	.dbline 73
; }
; 
; /*********************************************
; I2C总线读一个字节
; 返回0:读成功
; 返回1:读失败
; **********************************************/
; 
; unsigned char I2C_Read(unsigned RegAddress)
; 
;  {
	.dbline 75
; 	   unsigned char temp;
; 	   Start();//I2C启动
	ldi R24,164
	out 0x36,R24
	.dbline 76
; 	   Wait();
L39:
	.dbline 76
L40:
	.dbline 76
	in R2,0x36
	sbrs R2,7
	rjmp L39
X11:
	.dbline 76
	.dbline 76
	.dbline 77
; 	   if (TestAck()!=START) 
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L42
X12:
	.dbline 78
; 	   	  return 1;			 		//ACK	   
	ldi R16,1
	xjmp L38
L42:
	.dbline 80
; 	   
; 	   Write8Bit(WD_DEVICE_ADDR);	//写I2C从器件地址和写方式
	.dbline 80
	ldi R24,224
	out 0x3,R24
	.dbline 80
	ldi R24,132
	out 0x36,R24
	.dbline 80
	.dbline 80
	.dbline 81
; 	   Wait(); 
L44:
	.dbline 81
L45:
	.dbline 81
	in R2,0x36
	sbrs R2,7
	rjmp L44
X13:
	.dbline 81
	.dbline 81
	.dbline 82
; 	   if (TestAck()!=MT_SLA_ACK) 
	in R24,0x1
	andi R24,248
	cpi R24,24
	breq L47
X14:
	.dbline 83
; 	   	  return 1;				    //ACK
	ldi R16,1
	xjmp L38
L47:
	.dbline 85
; 	   
; 	   Write8Bit(RegAddress);		//写器件相应寄存器地址
	.dbline 85
	out 0x3,R16
	.dbline 85
	ldi R24,132
	out 0x36,R24
	.dbline 85
	.dbline 85
	.dbline 86
; 	   Wait();
L49:
	.dbline 86
L50:
	.dbline 86
	in R2,0x36
	sbrs R2,7
	rjmp L49
X15:
	.dbline 86
	.dbline 86
	.dbline 87
; 	   if (TestAck()!=MT_DATA_ACK) 
	in R24,0x1
	andi R24,248
	cpi R24,40
	breq L52
X16:
	.dbline 88
; 	   	  return 1;
	ldi R16,1
	xjmp L38
L52:
	.dbline 90
; 	   
; 	   Start();	   				   	//I2C重新启动
	ldi R24,164
	out 0x36,R24
	.dbline 91
; 	   Wait();
L54:
	.dbline 91
L55:
	.dbline 91
	in R2,0x36
	sbrs R2,7
	rjmp L54
X17:
	.dbline 91
	.dbline 91
	.dbline 92
; 	   if (TestAck()!=RE_START)  
	in R24,0x1
	andi R24,248
	cpi R24,16
	breq L57
X18:
	.dbline 93
; 	   	  return 1;
	ldi R16,1
	xjmp L38
L57:
	.dbline 95
; 	   
; 	   Write8Bit(RD_DEVICE_ADDR);	//写I2C从器件地址和读方式
	.dbline 95
	ldi R24,225
	out 0x3,R24
	.dbline 95
	ldi R24,132
	out 0x36,R24
	.dbline 95
	.dbline 95
	.dbline 96
; 	   Wait();
L59:
	.dbline 96
L60:
	.dbline 96
	in R2,0x36
	sbrs R2,7
	rjmp L59
X19:
	.dbline 96
	.dbline 96
	.dbline 97
; 	   if(TestAck()!=MR_SLA_ACK)  
	in R24,0x1
	andi R24,248
	cpi R24,64
	breq L62
X20:
	.dbline 98
; 	   	  return 1;				   //ACK
	ldi R16,1
	xjmp L38
L62:
	.dbline 100
; 	   
; 	   Twi();	 				   //启动主I2C读方式
	ldi R24,132
	out 0x36,R24
	.dbline 101
; 	   Wait();
L64:
	.dbline 101
L65:
	.dbline 101
	in R2,0x36
	sbrs R2,7
	rjmp L64
X21:
	.dbline 101
	.dbline 101
	.dbline 102
; 	   if(TestAck()!=MR_DATA_NOACK) 
	in R24,0x1
	andi R24,248
	cpi R24,88
	breq L67
X22:
	.dbline 103
; 	   	 return 1;					//ACK	
	ldi R16,1
	xjmp L38
L67:
	.dbline 105
; 	   
; 	   temp=TWDR;//读取I2C接收数据
	in R10,0x3
	.dbline 106
;        Stop();//I2C停止
	ldi R24,148
	out 0x36,R24
	.dbline 107
; 	   return temp;
	mov R16,R10
	.dbline -2
L38:
	.dbline 0 ; func end
	ld R10,y+
	ret
	.dbsym r temp 10 c
	.dbsym r RegAddress 16 i
	.dbend
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\1602.h
	.dbfunc e LCD_init _LCD_init fV
	.even
_LCD_init::
	sbiw R28,2
	.dbline -1
	.dbline 44
; /* 用法：
;    LCD_init();
;    LCD_write_string(列,行,"字符串");
;    LCD_write_char(列,行,'字符'); 
;  ---------------------------------------------------------------
; 下面是AVR与LCD连接信息
;   PC6 ->RS
;   PC7 ->EN
;   地  ->RW
;   PA4 ->D4
;   PA5 ->D5
;   PA6 ->D6
;   PA7 ->D7
; 使用端口：1602:PC6,PC7,PA4~PA7 	
; 要使用本驱动，改变下面配置信息即可
; -----------------------------------------------------------------*/
; #define LCD_EN_PORT    PORTC   //以下2个要设为同一个口
; #define LCD_EN_DDR     DDRC
; #define LCD_RS_PORT    PORTC   //以下2个要设为同一个口
; #define LCD_RS_DDR     DDRC
; #define LCD_DATA_PORT  PORTA   //以下3个要设为同一个口
; #define LCD_DATA_DDR   DDRA    //默认情况下连线必须使用高四位端口,如果不是请注意修改
; #define LCD_DATA_PIN   PINA
; #define LCD_RS         (1<<PC6) //0x20   portC6       out
; #define LCD_EN         (1<<PC7) //0x40   portC7       out
; #define LCD_DATA       ((1<<PA4)|(1<<PA5)|(1<<PA6)|(1<<PA7)) //0xf0   portA 4/5/6/7 out
; /*--------------------------------------------------------------------------------------------------
; 函数说明
; --------------------------------------------------------------------------------------------------*/
; void LCD_init(void);
; void LCD_en_write(void);
; void LCD_write_command(unsigned  char command) ;
; void LCD_write_data(unsigned char data);
; void LCD_set_xy (unsigned char x, unsigned char y);
; void LCD_write_string(unsigned char X,unsigned char Y,unsigned char *s);
; void LCD_write_char(unsigned char X,unsigned char Y,unsigned char data);
; 
; //-----------------------------------------------------------------------------------------
; 
; #include <macros.h>
; #include "delay.h"
; 
; void LCD_init(void)         //液晶初始化
; {
	.dbline 45
;   LCD_DATA_DDR|=LCD_DATA;   //数据口方向为输出
	in R24,0x1a
	ori R24,240
	out 0x1a,R24
	.dbline 46
;   LCD_EN_DDR|=LCD_EN;       //设置EN方向为输出
	sbi 0x14,7
	.dbline 47
;   LCD_RS_DDR|=LCD_RS;       //设置RS方向为输出
	sbi 0x14,6
	.dbline 48
;   LCD_write_command(0x28); 
	ldi R16,40
	xcall _LCD_write_command
	.dbline 49
;   LCD_en_write();
	xcall _LCD_en_write
	.dbline 50
;   delay_nus(40);
	ldi R16,40
	ldi R17,0
	xcall _delay_nus
	.dbline 51
;   LCD_write_command(0x28);  //4位显示
	ldi R16,40
	xcall _LCD_write_command
	.dbline 52
;   LCD_write_command(0x0c);  //显示开
	ldi R16,12
	xcall _LCD_write_command
	.dbline 53
;   LCD_write_command(0x01);  //清屏
	ldi R16,1
	xcall _LCD_write_command
	.dbline 54
;   delay_nms(2);
	ldi R16,2
	ldi R17,0
	xcall _delay_nms
	.dbline 55
;   LCD_write_string(0,0,"Compass:       "); 
	ldi R24,<L70
	ldi R25,>L70
	std y+1,R25
	std y+0,R24
	clr R18
	clr R16
	xcall _LCD_write_string
	.dbline 56
;   LCD_write_string(0,1,"  Temp :       ");
	ldi R24,<L71
	ldi R25,>L71
	std y+1,R25
	std y+0,R24
	ldi R18,1
	clr R16
	xcall _LCD_write_string
	.dbline -2
L69:
	.dbline 0 ; func end
	adiw R28,2
	ret
	.dbend
	.dbfunc e LCD_en_write _LCD_en_write fV
	.even
_LCD_en_write::
	.dbline -1
	.dbline 60
; }
; 
; void LCD_en_write(void)  //液晶使能
; {
	.dbline 61
;   LCD_EN_PORT|=LCD_EN;
	sbi 0x15,7
	.dbline 62
;   delay_nus(1);
	ldi R16,1
	ldi R17,0
	xcall _delay_nus
	.dbline 63
;   LCD_EN_PORT&=~LCD_EN;
	cbi 0x15,7
	.dbline -2
L72:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e LCD_write_command _LCD_write_command fV
;        command -> R20
	.even
_LCD_write_command::
	st -y,R20
	mov R20,R16
	.dbline -1
	.dbline 67
; }
; 
; void LCD_write_command(unsigned char command) //写指令
; {
	.dbline 69
;   //连线为高4位的写法
;   delay_nus(16);
	ldi R16,16
	ldi R17,0
	xcall _delay_nus
	.dbline 70
;   LCD_RS_PORT&=~LCD_RS;        //RS=0
	cbi 0x15,6
	.dbline 71
;   LCD_DATA_PORT&=0X0f;         //清高四位
	in R24,0x1b
	andi R24,15
	out 0x1b,R24
	.dbline 72
;   LCD_DATA_PORT|=command&0xf0; //写高四位
	mov R24,R20
	andi R24,240
	in R2,0x1b
	or R2,R24
	out 0x1b,R2
	.dbline 73
;   LCD_en_write();
	xcall _LCD_en_write
	.dbline 74
;   command=command<<4;          //低四位移到高四位
	mov R24,R20
	andi R24,#0x0F
	swap R24
	mov R20,R24
	.dbline 75
;   LCD_DATA_PORT&=0x0f;         //清高四位
	in R24,0x1b
	andi R24,15
	out 0x1b,R24
	.dbline 76
;   LCD_DATA_PORT|=command&0xf0; //写低四位
	mov R24,R20
	andi R24,240
	in R2,0x1b
	or R2,R24
	out 0x1b,R2
	.dbline 77
;   LCD_en_write();
	xcall _LCD_en_write
	.dbline -2
L73:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r command 20 c
	.dbend
	.dbfunc e LCD_write_data _LCD_write_data fV
;           data -> R20
	.even
_LCD_write_data::
	st -y,R20
	mov R20,R16
	.dbline -1
	.dbline 94
;  
; /*
;   //连线为低四位的写法
;   delay_nus(16);
;   LCD_RS_PORT&=~LCD_RS;        //RS=0
;   LCD_DATA_PORT&=0xf0;         //清高四位
;   LCD_DATA_PORT|=(command>>4)&0x0f; //写高四位
;   LCD_en_write();
;   LCD_DATA_PORT&=0xf0;         //清高四位
;   LCD_DATA_PORT|=command&0x0f; //写低四位
;   LCD_en_write(); 
; */
;   
; }
; 
; void LCD_write_data(unsigned char data) //写数据
; {
	.dbline 96
;   //连线为高4位的写法
;   delay_nus(16);
	ldi R16,16
	ldi R17,0
	xcall _delay_nus
	.dbline 97
;   LCD_RS_PORT|=LCD_RS;       //RS=1
	sbi 0x15,6
	.dbline 98
;   LCD_DATA_PORT&=0X0f;       //清高四位
	in R24,0x1b
	andi R24,15
	out 0x1b,R24
	.dbline 99
;   LCD_DATA_PORT|=data&0xf0;  //写高四位
	mov R24,R20
	andi R24,240
	in R2,0x1b
	or R2,R24
	out 0x1b,R2
	.dbline 100
;   LCD_en_write();
	xcall _LCD_en_write
	.dbline 101
;   data=data<<4;               //低四位移到高四位
	mov R24,R20
	andi R24,#0x0F
	swap R24
	mov R20,R24
	.dbline 102
;   LCD_DATA_PORT&=0X0f;        //清高四位
	in R24,0x1b
	andi R24,15
	out 0x1b,R24
	.dbline 103
;   LCD_DATA_PORT|=data&0xf0;   //写低四位
	mov R24,R20
	andi R24,240
	in R2,0x1b
	or R2,R24
	out 0x1b,R2
	.dbline 104
;   LCD_en_write();
	xcall _LCD_en_write
	.dbline -2
L74:
	.dbline 0 ; func end
	ld R20,y+
	ret
	.dbsym r data 20 c
	.dbend
	.dbfunc e LCD_set_xy _LCD_set_xy fV
;        address -> R20
;              y -> R10
;              x -> R22
	.even
_LCD_set_xy::
	xcall push_xgsetF00C
	mov R10,R18
	mov R22,R16
	.dbline -1
	.dbline 123
;   
; /*
;   //连线为低四位的写法 
;   delay_nus(16);
;   LCD_RS_PORT|=LCD_RS;       //RS=1
;   LCD_DATA_PORT&=0Xf0;       //清高四位
;   LCD_DATA_PORT|=(data>>4)&0x0f;  //写高四位
;   LCD_en_write();
;  
;   LCD_DATA_PORT&=0Xf0;        //清高四位
;   LCD_DATA_PORT|=data&0x0f;   //写低四位
;   LCD_en_write();
; */
;   
; }
; 
; 
; void LCD_set_xy( unsigned char x, unsigned char y )  //写地址函数
; {
	.dbline 125
;     unsigned char address;
;     if (y == 0) address = 0x80 + x;
	tst R10
	brne L76
X23:
	.dbline 125
	mov R20,R22
	subi R20,128    ; addi 128
	xjmp L77
L76:
	.dbline 126
;     else   address = 0xc0 + x;
	mov R20,R22
	subi R20,64    ; addi 192
L77:
	.dbline 127
;     LCD_write_command( address);
	mov R16,R20
	xcall _LCD_write_command
	.dbline -2
L75:
	.dbline 0 ; func end
	xjmp pop_xgsetF00C
	.dbsym r address 20 c
	.dbsym r y 10 c
	.dbsym r x 22 c
	.dbend
	.dbfunc e LCD_write_string _LCD_write_string fV
;              s -> R20,R21
;              Y -> R12
;              X -> R10
	.even
_LCD_write_string::
	xcall push_xgset303C
	mov R12,R18
	mov R10,R16
	ldd R20,y+6
	ldd R21,y+7
	.dbline -1
	.dbline 131
; }
;   
; void LCD_write_string(unsigned char X,unsigned char Y,unsigned char *s) //列x=0~15,行y=0,1
; {
	.dbline 132
;     LCD_set_xy( X, Y ); //写地址    
	mov R18,R12
	mov R16,R10
	xcall _LCD_set_xy
	xjmp L80
L79:
	.dbline 134
;     while (*s)  // 写显示字符
;     {
	.dbline 135
;       LCD_write_data( *s );
	movw R30,R20
	ldd R16,z+0
	xcall _LCD_write_data
	.dbline 136
;       s ++;
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 137
;     }
L80:
	.dbline 133
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L79
X24:
	.dbline -2
L78:
	.dbline 0 ; func end
	xjmp pop_xgset303C
	.dbsym r s 20 pc
	.dbsym r Y 12 c
	.dbsym r X 10 c
	.dbend
	.dbfunc e LCD_write_char _LCD_write_char fV
;           data -> y+2
;              Y -> R12
;              X -> R10
	.even
_LCD_write_char::
	st -y,R10
	st -y,R12
	mov R12,R18
	mov R10,R16
	.dbline -1
	.dbline 142
;       
; }
; 
; void LCD_write_char(unsigned char X,unsigned char Y,unsigned char data) //列x=0~15,行y=0,1
; {
	.dbline 143
;   LCD_set_xy( X, Y ); //写地址
	mov R18,R12
	mov R16,R10
	xcall _LCD_set_xy
	.dbline 144
;   LCD_write_data( data);
	ldd R16,y+2
	xcall _LCD_write_data
	.dbline -2
L82:
	.dbline 0 ; func end
	ld R12,y+
	ld R10,y+
	ret
	.dbsym l data 2 c
	.dbsym r Y 12 c
	.dbsym r X 10 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\1602.h
_display::
	.blkb 2
	.area idata
	.byte 0,0
	.area data(ram, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\1602.h
	.blkb 2
	.area idata
	.byte 0,46
	.area data(ram, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\1602.h
	.blkb 2
	.area idata
	.byte 0,223
	.area data(ram, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\1602.h
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\1602.h
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\AVR_GY-26_IIC.c
	.dbsym e display _display A[7:7]c
	.area text(rom, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\AVR_GY-26_IIC.c
	.dbfunc e main _main fV
;      temp_data -> R10,R11
;       cmp_data -> R20,R21
;              L -> R12
;              H -> R10
;              i -> R14
	.even
_main::
	sbiw R28,2
	.dbline -1
	.dbline 12
; #include <iom16v.h>
; #include "I2C.h"
; #include "1602.h"
; #include "delay.h"
; void conversion(unsigned int i);
; unsigned char display[7]={0,0,0,'.',0,0Xdf,0};//显示数据
; 
; /*******************************
; 主程序
; *******************************/
; void main(void)
; {	
	.dbline 16
; 	unsigned char H,L,i;
; 	unsigned int  cmp_data,temp_data;
; 	
; 	delay_nms(25);                    //lcd上电延时
	ldi R16,25
	ldi R17,0
	xcall _delay_nms
	.dbline 17
; 	LCD_init();                       //lcd初始化
	xcall _LCD_init
	xjmp L85
L84:
	.dbline 18
; 	while(1){                         //循环   
	.dbline 19
; 	 i=I2C_Write(0x31,0x00);          //写测量角度命令，成功返回值0
	clr R18
	ldi R16,49
	xcall _I2C_Write
	mov R14,R16
	.dbline 20
; 	 TWCR=0;                          //释放引脚
	clr R2
	out 0x36,R2
	.dbline 21
;      delay_nms(15);                   //内部测量时间大于40ms，可执行其他程序 
	ldi R16,15
	ldi R17,0
	xcall _delay_nms
	.dbline 22
; 	   if(i==0){
	tst R14
	brne L87
X25:
	.dbline 22
	.dbline 23
; 	     H=I2C_Read(0X01);            //读取角度高8位命令
	ldi R16,1
	ldi R17,0
	xcall _I2C_Read
	mov R10,R16
	.dbline 24
; 	     L=I2C_Read(0X02);            //读取角度低8位命令
	ldi R16,2
	ldi R17,0
	xcall _I2C_Read
	mov R12,R16
	.dbline 25
; 		 cmp_data=H;
	mov R20,R10
	clr R21
	.dbline 26
; 		 cmp_data<<=8;
	mov R21,R20
	clr R20
	.dbline 27
; 		 cmp_data+=L;                 //高低位合成16位
	mov R2,R12
	clr R3
	add R20,R2
	adc R21,R3
	.dbline 28
; 	     conversion(cmp_data);        //数据转换出个，十，百，千 位       
	movw R16,R20
	xcall _conversion
	.dbline 29
; 		 LCD_write_string(9,0,display); //显示角度，从第9列开始   
	ldi R24,<_display
	ldi R25,>_display
	std y+1,R25
	std y+0,R24
	clr R18
	ldi R16,9
	xcall _LCD_write_string
	.dbline 30
; 	   }  
L87:
	.dbline 31
; 	 i=I2C_Write(0x35,0x00);          //写测量温度命令，成功返回值0
	clr R18
	ldi R16,53
	xcall _I2C_Write
	mov R20,R16
	mov R14,R20
	.dbline 32
; 	 TWCR=0;                          //释放引脚
	clr R2
	out 0x36,R2
	.dbline 33
;      delay_nms(10);                   //内部测量时间大于40ms，可执行其他程序 
	ldi R16,10
	ldi R17,0
	xcall _delay_nms
	.dbline 34
; 	   if(i==0){
	tst R20
	brne L89
X26:
	.dbline 34
	.dbline 35
; 	     H=I2C_Read(0X05);            //读取温度高8位命令
	ldi R16,5
	ldi R17,0
	xcall _I2C_Read
	mov R14,R16
	mov R10,R14
	.dbline 36
; 	     L=I2C_Read(0X06);            //读取温度低8位命令   
	ldi R16,6
	ldi R17,0
	xcall _I2C_Read
	mov R14,R16
	mov R12,R14
	.dbline 37
; 		 temp_data=H;
	clr R11
	.dbline 38
; 		 temp_data<<=8;
	mov R11,R10
	clr R10
	.dbline 39
; 		 temp_data+=L;                //高低位合成16位 
	mov R2,R12
	clr R3
	add R10,R2
	adc R11,R3
	.dbline 40
; 	     conversion(temp_data);       //数据转换出个，十，百，千 位       
	movw R16,R10
	xcall _conversion
	.dbline 41
; 		 LCD_write_string(9,1,display);  //显示温度，从第9列开始  
	ldi R24,<_display
	ldi R25,>_display
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,9
	xcall _LCD_write_string
	.dbline 42
; 	   }
L89:
	.dbline 43
;     }
L85:
	.dbline 18
	xjmp L84
X27:
	.dbline -2
L83:
	.dbline 0 ; func end
	adiw R28,2
	ret
	.dbsym r temp_data 10 i
	.dbsym r cmp_data 20 i
	.dbsym r L 12 c
	.dbsym r H 10 c
	.dbsym r i 14 c
	.dbend
	.dbfunc e conversion _conversion fV
;              i -> R20,R21
	.even
_conversion::
	st -y,R20
	st -y,R21
	movw R20,R16
	.dbline -1
	.dbline 51
; }
; /*********************************************
; 数据转换
; 范围0-9999
; 结果以ascii存入显示区
; **********************************************/
; void conversion(unsigned int i)  
; {  
	.dbline 52
; 	display[0]=i/1000+0x30 ;
	ldi R18,1000
	ldi R19,3
	movw R16,R20
	xcall div16u
	movw R24,R16
	adiw R24,48
	sts _display,R24
	.dbline 53
;     i=i%1000;    //取余运算
	ldi R18,1000
	ldi R19,3
	movw R16,R20
	xcall mod16u
	movw R20,R16
	.dbline 54
;     display[1]=i/100+0x30 ;
	ldi R18,100
	ldi R19,0
	xcall div16u
	movw R24,R16
	adiw R24,48
	sts _display+1,R24
	.dbline 55
;     i=i%100;    //取余运算
	ldi R18,100
	ldi R19,0
	movw R16,R20
	xcall mod16u
	movw R20,R16
	.dbline 56
;     display[2]=i/10+0x30 ;
	ldi R18,10
	ldi R19,0
	xcall div16u
	movw R24,R16
	adiw R24,48
	sts _display+2,R24
	.dbline 57
;     i=i%10;     //取余运算
	ldi R18,10
	ldi R19,0
	movw R16,R20
	xcall mod16u
	movw R20,R16
	.dbline 58
;     display[4]=i+0x30;  
	movw R24,R20
	adiw R24,48
	sts _display+4,R24
	.dbline -2
L91:
	.dbline 0 ; func end
	ld R21,y+
	ld R20,y+
	ret
	.dbsym r i 20 i
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\AVR_GY-26_IIC.c
L71:
	.blkb 16
	.area idata
	.byte 32,32,'T,'e,'m,'p,32,58,32,32,32,32,32,32,32,0
	.area data(ram, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\AVR_GY-26_IIC.c
L70:
	.blkb 16
	.area idata
	.byte 'C,'o,'m,'p,'a,'s,'s,58,32,32,32,32,32,32,32,0
	.area data(ram, con, rel)
	.dbfile D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\AVR_GY-26_IIC.c
; }
