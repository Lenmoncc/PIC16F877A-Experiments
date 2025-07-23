#ifndef __LCD_H__
#define __LCD_H__ 

#include<pic.h>
#include <string.h>
#include <stdio.h>

#define rs  RA5
#define rw  RA4
#define e   RA3
#define LCD_DATA_PORT PORTD
#define LCD_PORT_DIR TRISD

void DELAY();
void ENABLE();
void ENABLE1();
void LCD_Init();
void LCD_Clear();
void LCD_ShowString(char *str, unsigned char row, unsigned char col);


#endif// __LCD_H__