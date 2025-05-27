#include<pic.h>
#include"LCD.h"
#include"KEY.h"
#include "JY62.h"
#include"LED.h"
#include"beep.h"

__CONFIG(0xFF29);

void main()
{
	Beep_Init();   
	LCD_Init();
	LCD_ShowString("1001", 0, 0); 
	LCD_ShowString("Hello World!\n", 1, 0); 
	LCD_Clear(); 
	KEY_Init(); 
	Uart_Init();

	LCD_Init();
	while(1) {
		//KEY_ShowTest();
		JY62_ShowData(Roll,Pitch,Yaw);
		//DELAY();
	}
}