#ifndef __MOTOR_H__
#define __MOTOR_H__ 

#include<pic.h>
#include<stdint.h>

void Motor_Init();
void Motor_SetRightSpeed(int8_t speed);
void Motor_SetLeftSpeed(int8_t speed);
void Motor_Status(int8_t speedL, int8_t speedR);

void Motor_Stop(void);
void Motor_Forward(int8_t speedL, int8_t speedR);
void Motor_Backward(int8_t speedL, int8_t speedR);
void Motor_TurnLeft(int8_t speedL, int8_t speedR);
void Motor_TurnRight(int8_t speedL, int8_t speedR);


#endif// __MOTOR_H__