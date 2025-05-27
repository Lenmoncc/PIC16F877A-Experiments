#include"beep.h"

void Beep_Init(void) {
    TRISE = 0x00; 
    RE0 = 0;      // 初始化RE0为低电平
}