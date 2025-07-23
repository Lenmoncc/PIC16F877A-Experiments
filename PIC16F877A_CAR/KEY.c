#include"KEY.h"
#include"LCD.h"

static volatile char TABLE[16] = {
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35,
    0x36, 0x37, 0x38, 0x39, 0x41, 0x42,
    0x43, 0x44, 0x45, 0x46
};

/* 4*4按键矩阵 */
void KEY_Init(void) {
    TRISB = 0X0F;
    nRBPU = 0;
}

char KEY_Scan(void) {

    LCD_DATA_PORT = 0x80;
    ENABLE(); 

    PORTB = 0X7f;                
    asm("nop");                  
    result = PORTB;              
    result = result & 0x0f;      
    
    if (result != 0x0f) {        
        result = result | 0x70;  
    } else {                     
        PORTB = 0Xbf;            
        asm("nop");              
        result = PORTB;          
        result = result & 0x0f;  
        
        if (result != 0xf) {     
            result = result | 0xb0; 
        } else {
            PORTB = 0Xdf;        
            asm("nop");
            result = PORTB;
            result = result & 0x0f;
            
            if (result != 0x0f) {
                result = result | 0xd0;
            } else {
                PORTB = 0Xef;    
                asm("nop");
                result = PORTB;
                result = result & 0x0f;
                
                if (result != 0x0f) {
                    result = result | 0xe0;
                } else {
                    result = 0xff; 
                }
            }
        }
    }

    if (result == 0xff) {        
        result = preres;
    } else {
        preres = result;
    }

    return result;
}

void KEY_ShowTest(){
    LCD_DATA_PORT = 0x80;
    ENABLE();
    char key = KEY_Scan(); 
    switch (key) {
        case 0xe7: LCD_DATA_PORT = TABLE[3];  break; // K3
              case 0xeb: LCD_DATA_PORT = TABLE[2]; break; // K2
              case 0xed: LCD_DATA_PORT = TABLE[1]; break; // K1
              case 0xee: LCD_DATA_PORT = TABLE[0];break; // K0
              case 0xd7: LCD_DATA_PORT = TABLE[7]; break; // K7
              case 0xdb: LCD_DATA_PORT = TABLE[6]; break; // K6
              case 0xdd: LCD_DATA_PORT = TABLE[5]; break; // K5
              case 0xde: LCD_DATA_PORT = TABLE[4]; break; // K4
              case 0xb7: LCD_DATA_PORT = TABLE[11];break; // KB
              case 0xbb: LCD_DATA_PORT = TABLE[10];break; // KA
              case 0xbd: LCD_DATA_PORT = TABLE[9]; break; // K9
              case 0xbe: LCD_DATA_PORT = TABLE[8]; break; // K8
              case 0x77: LCD_DATA_PORT = TABLE[15];break; // KF
              case 0x7b: LCD_DATA_PORT = TABLE[14];break; // KE
              case 0x7d: LCD_DATA_PORT = TABLE[13];break; // KD
              case 0x7e: LCD_DATA_PORT = TABLE[12]; break; // KC
              case 0x00: LCD_DATA_PORT = 'X';  
    }
    ENABLE1();
    DELAY(); 
}