#ifndef __JY62_H__
#define __JY62_H__ 

#include<pic.h>
#include<stdint.h>

extern float Roll,Pitch,Yaw;

void Uart_Init();
void JY62_ReceiveData(uint8_t RxData);
float JY62_InfiniteYaw(float yaw);
void JY62_ShowData(float roll, float pitch, float yaw);

#endif// __JY62_H__