#include"PWM.h"

void PWM_Init()
{
    //CCP1/RC2
    TRISC2 = 0;
    RC2 = 0; 
    CCP1CON = 0X0C;
    CCPR1L = 0x00; 
    
    //CCP2/RC1
    TRISC1 = 0;
    RC1 = 0;
    CCP2CON = 0x0C;
    CCPR2L = 0x00;

    //设置定时器2
    //TMR2ON = 1; 
    T2CON = 0x04; // 预分频1:1 并启动TMR2
    PR2 = 0xFF; // 设置周期为255
}

void PWM1_SetDutyCycle(int8_t dutyCycle)
{
    // 确保占空比在0-100之间
    if (dutyCycle > 100) {
        dutyCycle = 100; 
    }

    // 将占空比转换为0-255范围内的值
    CCPR1L = (dutyCycle * 255) / 100; 
}

void PWM2_SetDutyCycle(int8_t dutyCycle)
{
    // 确保占空比在0-100之间
    if (dutyCycle > 100) {
        dutyCycle = 100; 
    }

    // 将占空比转换为0-255范围内的值
    CCPR2L = (dutyCycle * 255) / 100; 
}