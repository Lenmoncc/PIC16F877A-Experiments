#include "LCD.h"


void DELAY() { 
    unsigned int i;
    for (i = 999; i > 0; i--);
}

void ENABLE() { 
    rs = 0;
    rw = 0;
    e = 0;
    DELAY();
    e = 1;
}

void ENABLE1() { 
    rs = 1;
    rw = 0;
    e = 0;
    DELAY();
    e = 1;
}

void LCD_Init() { 
    LCD_PORT_DIR = 0x00; 
    ADCON1=7;
    TRISA=0;
    LCD_DATA_PORT=0;
    e=1;
    DELAY();

    LCD_PORT_DIR=0; TRISA=0; 
    LCD_DATA_PORT=0; 
    DELAY(); 
    LCD_DATA_PORT=1; ENABLE(); 
    LCD_DATA_PORT=0x38; ENABLE(); 
    LCD_DATA_PORT=0x0c; ENABLE(); 
    LCD_DATA_PORT=0x06; ENABLE(); 
}

void LCD_Clear() { 
    ENABLE(); 
    LCD_DATA_PORT = 0x01; 
    DELAY(); 
}

void LCD_ShowString(char *str, unsigned char row, unsigned char col) { 
    unsigned char address;
    if (row == 0) { 
        address = 0x80 + col; // 第一行地址
    } else { 
        address = 0xC0 + col; // 第二行地址
    }
    LCD_DATA_PORT = address;
    ENABLE(); // 使能信号为高电平，设置光标位置

    while (*str != '\0') { 
        LCD_DATA_PORT = *str++; 
        ENABLE1();
        DELAY(); 
    }
}

// 将长整型数转换为字符串
unsigned char integerToStr(long ld,unsigned char *str){
	unsigned char i;
	unsigned char len;
	unsigned char buf[11];
	if(ld<0){
		ld = -ld; // 如果是负数则取绝对值
		*str++ = '-'; //字符串第一位先赋值一个负符号
		len++;
	}
	do{
		buf[i++] = ld%10+'0'; // 取余运算获取最后一位，拼接上'0',转为ASCLL码
		ld /= 10; // 除以10向左移动1位
	}while(ld >0);
		len += i;
	while(i-- >0){
		*str++ = buf[i];
	}
	*str = '\0'; //字符串末尾加\0表示字符串的结尾
	return len;
}

// 将浮点数转换为字符串
unsigned char floatToStr(float fdata){
    
    unsigned char charbuf[10];
    sprintf(charbuf, "%0.3f",fdata);
    LCD_ShowString(charbuf, 0, 0);
}

