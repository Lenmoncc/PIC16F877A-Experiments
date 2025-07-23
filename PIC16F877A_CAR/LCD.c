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
