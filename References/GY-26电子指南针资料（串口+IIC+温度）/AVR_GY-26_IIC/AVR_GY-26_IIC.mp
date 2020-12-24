NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   00E4   0027 =     39. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00E4  __idata_start
       010B  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   010C   045C =   1116. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0086  __start
       0086  __text_start
       00A8  _exit
       00A9  _delay_1us
       00AB  _delay_nus
       00B9  _delay_1ms
       00C3  _delay_nms
       00D1  _I2C_Write
       0105  _I2C_Read
       0153  _LCD_init
       0178  _LCD_en_write
       017E  _LCD_write_command
       019C  _LCD_write_data
       01BA  _LCD_set_xy
       01C9  _LCD_write_string
       01DE  _LCD_write_char
       01EA  _main
       023D  _conversion
       0272  mod16u
       0274  div16u
       0275  xdiv16u
       028E  push_xgset300C
       0293  pop_xgset300C
       0298  push_xgsetF00C
       029F  pop_xgsetF00C
       02A6  push_xgset303C
       02AD  pop_xgset303C
       02B4  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0200   0027 =     39. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0200  __data_start
       0200  _display
       0227  __data_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
AVR_GY-26_IIC.o	[ AVR_GY ]
<library>	[ div16u.s, gpushx.s, gpushz.s, gpusha.s ]

User Global Definitions

ram_end = 0x21ff
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0xe4
data = 0x200
eeprom:0.4096

