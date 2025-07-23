#include "JY62.h"
#include"LCD.h"
#include"beep.h"
#include"delay.h"

static uint8_t RxBuffer[11];
static volatile uint8_t RxState = 0;
static uint8_t RxIndex = 0;
int16_t Yaw=0;


void Uart_Init()
{
    TRISC = 0xC0;

    TXSTA=0X24;
    SYNC=0;
    RCSTA=0X90; 
    SPEN=1;
    
    SPBRG=25; //9600bps
    CREN=1;
    GIE=1;PEIE=1;RCIE=1;
}

void interrupt uart_service()
{ 
    if (RCIF) {
        uint8_t RxData;
        RxData = RCREG; 
        JY62_ReceiveData(RxData); 
    }
}

void JY62_ReceiveData(uint8_t RxData)
{
	uint8_t i,sum=0;
	
	if (RxState == 0)	
	{
		if (RxData == 0x55)	
		{
			RxBuffer[RxIndex] = RxData;
			RxState = 1;
			RxIndex = 1; 
		}
	}
	
	else if (RxState == 1)
	{
		if (RxData == 0x53)
		{
			RxBuffer[RxIndex] = RxData;
			RxState = 2;
			RxIndex = 2; 
		}
	}
	
	else if (RxState == 2)	
	{
		RxBuffer[RxIndex++] = RxData;
		if(RxIndex == 11)	
		{
			for(i=0;i<10;i++)
			{
				sum = sum + RxBuffer[i]; 
			}
			if(sum == RxBuffer[10])	
			{
				//[-180, 180]
				 Yaw = (int16_t)(((((int16_t)RxBuffer[7] << 8) | (int16_t)RxBuffer[6]))*180.0f/32768.0f); // 将原始数据转换为角度值
			}
			RxState = 0;
			RxIndex = 0; 
		}
	}
}


//Roll,Pitch,Yaw
// 直接显示原始Yaw值
void JY62_ShowData(int16_t yaw)
{
    unsigned char str[11];
    LCD_Init();
    LCD_ShowString("Yaw:", 0, 0);
    
    sprintf(str, "%d", yaw);  // 直接显示原始整数值
    LCD_ShowString(str, 0, 4); // 显示在第一行第4列

    DELAY(); 
    //LCD_Clear(); 
}