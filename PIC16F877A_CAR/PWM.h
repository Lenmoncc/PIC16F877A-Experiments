#ifndef __PWM_H__
#define __PWM_H__ 

#include<pic.h>
#include<stdint.h>

void PWM_Init();
void PWM1_SetDutyCycle(int8_t dutyCycle);
void PWM2_SetDutyCycle(int8_t dutyCycle);


#endif// __PWM_H__