#include <pic.h>
__CONFIG(0xFF29); //芯片配置位定义

#define rs RA5 
#define rw RA4 
#define e RA3 
char x,y,z,Z;
bit a;
static volatile char table[16] = {0x30,0x31,0x32,0x33,0x34,
                                0x35,0x36,0x37,0x38,0x39,
                                0x41,0x42,0x43,0x44,0x45,0x46};
void DELAY() //延时子程序
{
    unsigned int i;
    for(i=999;i>0;i--);
}
//写入控制命令的子程序
void ENABLE() {
    rs=0; 
    rw=0;
    e=0; 
    DELAY(); 
    e=1;
} 

// 写入字的子程序
void ENABLE1() {
    rs=1; 
    rw=0;
    e=0; 
    DELAY(); 
    e=1;
} 


void Init_LCD() {
    TRISD=0;
    ADCON1=7;
    TRISA=0;
    RA1=0;
    PORTD=0;
    e=1;
    // 调用延时，刚上电LCD复位不一定有PIC快
    DELAY(); 
}
void lcd()
{
    TRISD=0; TRISA=0; //定义PIC与1602LCD的数据驱动接口PORTD和命令控制接口
    PORTD=0; //当前数据输出口清0
    DELAY(); //调用延时，刚上电LCD复位不一定有PIC快
    PORTD=1; ENABLE(); //清屏，调延时，因为LCD是慢速器件
    PORTD=0x38; ENABLE(); //8位2行5x7点阵
    PORTD=0x0c; ENABLE(); //显示器开、光标不开、闪烁不开
    PORTD=0x06; ENABLE(); //文字不动，光标自动右移
}
void interrupt ccp1()
{
    if(CCP1IF == 1)
    {
        a =!a;
        if(a == 1){TMR1H=0; TMR1L=0; TMR1ON=1; z=0; CCP1IF=0;} //第一次捕捉到
        else
        {
            y=CCPR1L+31; x=CCPR1H+CARRY; Z=z; TMR1ON=0; CCP1IF=0; //第二次捕捉到
        }
    }
    else
        if(TMR1IF == 1)
            z++; //累加TMR1的溢出次数
        
        TMR1IF=0;
        
}
void main()
{
    Init_LCD(); //LCD初始化
    lcd(); //LCD初始化
    TRISC2=1; //输入捕捉引脚方向定义
    a=0; //变量赋初值
    GIE=1; PEIE=1; CCP1IE=1; CCP1IF=0; //使能CCP1的中断
    TMR1IE=1; TMR1IF=0; //使能TMR1的中断
    T1CON=0B00000000; //TMR1为定时器，预分频1:1，不启动TMR1定时器
    CCP1CON=5; //使能CCP1捕捉每一个输入信号的上升沿
    while(1) //主循环部分保证单片机的CPU不停止工作，才能响应中断请求。
    {
        PORTD=0x80; ENABLE(); //光标指向第1行的位置
        PORTD=table[Z>>4]; ENABLE1(); //送z的高位显示
        PORTD=table[Z&0x0f]; ENABLE1(); //送z的低位显示
        PORTD=table[x>>4]; ENABLE1(); //送x的高位显示
        PORTD=table[x&0x0f]; ENABLE1(); //送x的低位显示
        PORTD=table[y>>4]; ENABLE1(); //送y的高位显示
        PORTD=table[y&0x0f]; ENABLE1(); //送y的低位显示
        PORTD='H'; ENABLE1();
    }
}









