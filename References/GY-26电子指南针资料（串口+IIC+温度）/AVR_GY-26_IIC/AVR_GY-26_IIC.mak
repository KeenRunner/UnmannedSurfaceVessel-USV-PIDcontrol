CC = iccavr
CFLAGS =  -e -D__ICC_VERSION="7.14C" -DATMEGA -D_EE_EXTIO -DATMega1280  -l -g -Mavr_enhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS)  -Wa-g
LFLAGS =  -g -e:0x20000 -ucrtatmega.o -bfunc_lit:0xe4.0x20000 -dram_end:0x21ff -bdata:0x200.0x21ff -dhwstk_size:30 -beeprom:0.4096 -fihx_coff -S2
FILES = AVR_GY-26_IIC.o 

AVR_GY-26_IIC:	$(FILES)
	$(CC) -o AVR_GY-26_IIC $(LFLAGS) @AVR_GY-26_IIC.lk   -lcatm128
AVR_GY-26_IIC.o: C:\iccv7avr\include\iom16v.h D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\I2C.h C:\iccv7avr\include\macros.h D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\delay.h D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\1602.h
AVR_GY-26_IIC.o:	D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\AVR_GY-26_IIC.c
	$(CC) -c $(CFLAGS) D:\MCU_Project\MCU_AVR\AVR_GY-26_IIC\AVR_GY-26_IIC.c
