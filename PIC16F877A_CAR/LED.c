#include"LED.h"

void LED_Init(void) {
    TRISD = 0x00; 
    PORTD = 0x00; 
}