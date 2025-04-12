#include <pic.h>
__CONFIG(0xFF29);
char x, y;

// 软件延时子程序
void delay1() {
    char i1, i2;
    for (i1 = 3; i1 > 0; i1--) {
        for (i2 = 0x19; i2 > 0; i2--);
    }
}

// 软件延时子程序
void delay2() {
    char i1, i2;
    for (i1 = 15; i1 > 0; i1--) {
        for (i2 = 0x19; i2 > 0; i2--);
    }
}

// 软件延时子程序
void delay3() {
    char i1, i2;
    for (i1 = 7; i1 > 0; i1--) {
        for (i2 = 0x19; i2 > 0; i2--);
    }
}

// 软件延时子程序
void delay4() {
    char i1, i2;
    for (i1 = 11; i1 > 0; i1--) {
        for (i2 = 0x19; i2 > 0; i2--);
    }
}

// 发声子程序
void sound_delay() {
    unsigned int i;
    for (i = 300; i > 0; i--) {
        RE0 = !RE0;
        delay1();
    }
     for (i = 300; i > 0; i--) {
        RE0 = !RE0;
        delay3();
    }
    for (i = 100; i > 0; i--) {
        RE0 = !RE0;
        delay2();
    }
    for (i = 100; i > 0; i--) {
        RE0 = !RE0;
        delay4();
    } 
}

// 中断处理函数
void interrupt int_rb() {
    if (INTF == 1) {          // 优先判断外部中断标志位
        x = 0;
        PORTD = ~0X80;
        sound_delay();
        INTF = 0;
}
      else{                  // 否则必然是RBIF=1（无需额外判断）
        if (x == 0) {         // 若抢答成功，判断抢答队伍
            x = 1;
            y = y ^ PORTB;
            if (y == 0x80) {
                PORTD = ~0X08;
            }
            if (y == 0x40) {
                PORTD = ~0X04;
            }
            if (y == 0x20) {
                PORTD = ~0X02;
            }
            if (y == 0x10) {
                PORTD = ~0X01;
            }
		sound_delay();sound_delay();sound_delay();
        }

        y = PORTB;            // 读取RB端口电平（处理输入动作）
        RBIF = 0;             // 清除RB端口中断标志
    }
}

// 主函数
void main() {
    TRISD = 0;               // 设置PORTD为输出模式
    PORTD = 0;               // 初始化PORTD为0
    TRISB = 0XFF;            // 设置PORTB为输入模式
    nRBPU = 0;               // 使能PORTB上拉电阻
    INTEDG = 1;              // 设置外部中断为上升沿触发

    ADCON1 = 7;
    TRISE0 = 0;              // 设置RE0为输出模式
    RE0 = 0;                 // 初始化RE0为低电平
    
    x = 1;                   // 初始化抢答状态
    
    GIE = 1;                 // 使能全局中断
    INTE = 1;                // 使能外部中断
    RBIE = 1;                // 使能PORTB变化中断
    INTF = 0;                // 清除外部中断标志
    y = PORTB;               // 初始读取PORTB电平
    RBIF = 0;                // 清除RB端口中断标志
    
    while (1) {              // 主循环
        //sound_delay();       // 调用发声子程序
    }
}