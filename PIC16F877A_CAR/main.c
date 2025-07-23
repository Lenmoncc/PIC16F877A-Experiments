#include"LCD.h"
#include "JY62.h"
#include"LED.h"
#include"beep.h"
#include"PWM.h"
#include"delay.h"
#include"motor.h"
#include"track.h"
#include"node.h"

__CONFIG(0xFF29);

void main()
{
	Motor_Init();
	Beep_Init();   
	LCD_Init();
	Uart_Init();
	GanWei_Init();

  while (1)
    {
		  JY62_ShowData(Yaw);
      point_status();
      Track_ONE();
      // Track_TWO();
      // Track_THREE();
    }
}