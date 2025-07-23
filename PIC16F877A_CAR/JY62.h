#ifndef __JY62_H__
#define __JY62_H__ 

#include<pic.h>
#include<stdint.h>

extern int16_t Yaw;

void Uart_Init();
void JY62_ReceiveData(uint8_t RxData);
void JY62_ShowData(int16_t yaw);

#endif// __JY62_H__