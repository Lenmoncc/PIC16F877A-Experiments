#include<pic.h>
static volatile char table[16] = {0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x41,0x42,0x43,0x44,0x45,0x46};
char X,Y;
static volatile char table1[21] = {"my name is pic16f877 "};
char adh,adl,a,b,c,d,e,f,x3;
int adc,x,y,x1,x2;
long lcd,x4,buf;
void DELAY(){unsigned int i;for(i=1999;i>0;i--);}
void ENABLE()//写入控制命令的子程序
{ RA5 = 0; RA4 = 0; RA3 = 0; DELAY(); RA3 = 1; }
void ENABLE1()//写入字的子程序
{ RA5 = 1; RA4 = 0; RA3 = 0; DELAY(); RA3 = 1; }
void interrupt ccp1_int()//中断服务程序
{
    CCP2IF = 0;//清 CCP2 中断
    wait:if(ADIF == 0)goto wait;//等待 A/D 转换结束
    adh = ADRESH; adl = ADRESL;
    ADIF = 0; //PIR1.6
}
void main()
{
    TRISA = 0X01; TRISC = 0XFF; TRISD = 0; PORTD = 0;
    SPBRG = 12;//转载波特率发生器，为 19200 B/s
    TXSTA = 0B00100100;//使能 USART 发送，波特率发生器为高速方式
    RCSTA = 0B10010000;//连续接收
    for(X = 0;X < 21;X++)
    {TXREG = table1[X]; DELAY();}
    ADCON1 = 0B10001110;
    //只选 AN0 引脚为模拟通道，结果右对齐，VDD 和 VSS 为参考电源
    PORTD = 1; ENABLE();//LCD 初始化
    PORTD = 0x38; ENABLE();
    PORTD = 0x0c; ENABLE();
    PORTD = 0x06; ENABLE();
    PEIE = 1; GIE = 1; CCP2IE = 1;
    CCPR2L = 0XFF; CCPR2H = 0XFF;//用最大值作周期寄存器
    T1CON = 0X30;//预分频器=1:8，内部时钟源，同步，禁止振荡器
    CCP2CON = 0X0B;//设定 CCP2 为特殊事件模式
    TMR1ON = 1;//开启 TMR1，T1CON.0
    ADCON0 = 0X41;
loop:
    x = (int)adh<<8;//电压结果二-十进制转换
    adc = x+(int)adl;
    lcd = (adc*50000);//扩大 10000 倍，保证计算精度
    buf = lcd/0x3ff;
    a = buf/100000; x4 = buf -a*100000; //求余数
    b = x4/10000; x1 = x4 -b*10000; //求余数
    c = x1/1000; x2 = x1 -c*1000; //求余数
    d = x2/100; x3 = x2 -d*100; //求余数
    e = x3/10; f = x3 -e*10; //求余数
    //------------
    PORTD = 0x80; ENABLE();
    PORTD = table[b]; ENABLE1();
    TXREG = table[b];//异步发送，利用 LCD 显示延时做异步发送时间
    PORTD = '.'; ENABLE1();
    TXREG = '.';//异步发送
    PORTD = table[c]; ENABLE1();
    TXREG = table[c];//异步发送
    PORTD = table[d]; ENABLE1();
    TXREG = table[d];//异步发送
    PORTD = table[e]; ENABLE1();
    TXREG = table[e];//异步发送
    PORTD = table[f]; ENABLE1();
    TXREG = table[f]; DELAY();//异步发送
    TXREG = 'V'; DELAY();//异步发送
    TXREG =' '; DELAY();//异步发送，发送空格
    TXREG =' '; DELAY();//异步发送，发送空格
    TXREG =' ';//异步发送，发送空格
    goto loop;
}