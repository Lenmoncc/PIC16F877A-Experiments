#include "JY62.h"
#include"LCD.h"
#include"beep.h"

static uint8_t RxBuffer[11];
static volatile uint8_t RxState = 0;
static uint8_t RxIndex = 0;
float Roll,Pitch,Yaw;


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
	//RE0 = !RE0; 
    if (RCIF) {
		//?????????????
		 RE0 = !RE0; 
		// DELAY();

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
				//??[-180, 180]
				Roll = ((int16_t) ((int16_t) RxBuffer[3] << 8 | (int16_t) RxBuffer[2])) / 32768.0 * 180;
				Pitch = ((int16_t) ((int16_t) RxBuffer[5] << 8 | (int16_t) RxBuffer[4])) / 32768.0 * 180;
				Yaw = ((int16_t) ((int16_t) RxBuffer[7] << 8 | (int16_t) RxBuffer[6])) / 32768.0 * 180;
			}
			RxState = 0;
			RxIndex = 0; 
		}
	}
}

float JY62_InfiniteYaw(float yaw)
{
	// static uint8_t flag=0;
	// static float last_yaw = 0;

	// if (yaw - last_yaw < -180) {
	// 	flag++;
	// } else if (yaw - last_yaw > 180) {
	// 	flag--;
	// }
	// last_yaw = yaw;
	// return yaw+ flag * 360.0; 
	float new_yaw;
	new_yaw = 180 - (180 - (int)yaw) % 360;
	return new_yaw;
}


//Roll,Pitch,Yaw
void JY62_ShowData(float roll, float pitch, float yaw)
{
    unsigned char str[11];
    //LCD_Init();

    LCD_ShowString("Pitch:", 0, 0);
    LCD_ShowString("Yaw:", 1, 0);
    
	uint16_t infinite_yaw = JY62_InfiniteYaw(yaw);
	sprintf(str, "%3d",infinite_yaw);
    LCD_ShowString(str, 1, 4);

    sprintf(str, "%3d",(uint16_t)pitch);
    LCD_ShowString(str, 0, 6);

	//DELAY();
	//LCD_Clear(); 
}