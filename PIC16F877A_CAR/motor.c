/***************************************************************************************************
 * Left Motor Control :
        RC4--->AIN1
        RC5--->AIN2
 * Right Motor Control:
        RC0--->BIN1
        RC3--->BIN2
 * PWM1:RC1
 * PWM2:RC2
 *AIN1,AIN2与BIN1,BIN2的真值表
    * AIN1  AIN2  BIN1  BIN2
    * 0     0     0     0    停止
    * 1     0     1     0    正转  
    * 0     1     0     1    反转
**************************************************************************************************/


#include"motor.h"
#include"PWM.h"

void Motor_Init() {
    
    PWM_Init();
    
    //两路电机驱动
    TRISC = 0XC0; // 设置RC0, RC3, RC4, RC5为输出

    //初始状态停止
    //RC0, RC3, RC4, RC5分别控制电机的四个方向
    RC0 = 0; 
    RC3 = 0; 
    RC4 = 0; 
    RC5 = 0; 

}

void Motor_SetRightSpeed(int8_t speed) {
    if(speed >100) {
        speed = 100; 
    } else if(speed < -100) {
        speed = -100; 
    }
    
    if (speed > 0) {
        RC0 = 1; 
        RC3 = 0; 
    } else if(speed == 0){
        RC0 = 0; 
        RC3 = 0; 
    } else {
        RC0 = 0; 
        RC3 = 1; 
    }

    if(speed < 0) {
        speed = -speed; 
    }
    PWM1_SetDutyCycle(speed);
}

void Motor_SetLeftSpeed(int8_t speed) {
    if(speed >100) {
        speed = 100; 
    } else if(speed < -100) {
        speed = -100; 
    }

    if (speed > 0) {
        RC4 = 1; 
        RC5 = 0; 
    } else if(speed == 0){
        RC4 = 0; 
        RC5 = 0; 
    } else {
        RC4 = 0; 
        RC5 = 1; 
    }

    if(speed < 0) {
        speed = -speed; 
    }
    PWM2_SetDutyCycle(speed);
}


void Motor_Status(int8_t speedL, int8_t speedR) {
    Motor_SetRightSpeed(speedR);
    Motor_SetLeftSpeed(speedL);
}

void Motor_Stop(void) {
    Motor_Status(0, 0); // 停止电机
}

void Motor_Forward(int8_t speedL, int8_t speedR) {
    Motor_Status(speedL, speedR); 
}

void Motor_Backward(int8_t speedL, int8_t speedR) {
    Motor_Status(speedL, speedR); 
}

void Motor_TurnLeft(int8_t speedL, int8_t speedR) {
    Motor_Status(speedL, speedR); // 左转
}

void Motor_TurnRight(int8_t speedL, int8_t speedR) {
    Motor_Status(speedL, speedR); // 右转
}