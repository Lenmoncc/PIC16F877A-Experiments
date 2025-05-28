#include<pic.h>
__CONFIG(0xFF29);
char y,x,a,adh,adl,rcreg,temp;
int a2,a3,a4,a5,a6,b1,b2,b3,b4;
long int buf1,buf;
static volatile char table[16]={0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x41,0x42,0x43,0x44,0x45,0x46};
static volatile char table1[8]={0x41,0X49,0X51,0X59,0X61,0X69};//假设按图中显示部分，若有更多需补充
//LCD控制线定义
#define rs RA5
#define rw RA4
#define e RA3
union {unsigned long count;
    char data[2];} dc;//定义一个共用体，存放AD转换结果
void DELAY()  //延时子程序
{unsigned int i;for(i=999;i>0;i--);}

void ENABLE()  //写入控制命令的子程序
{ rs=0;rw=0;e=0;DELAY();e=1;}

void ENABLE1()  //写入字的子程序
{rs=1;rw=0;e=0;DELAY();e=1;}

void DELAY1()
{unsigned int i; for(i = 99; i > 0; i--); }
/*
void div()
{
    a1=buf/1*100000; //求十万位a1
    x1=buf -a1;      //求余数
    b=x1/10000;      //后续数位计算
    y1=x1 -b*10000;
    c=y1/1000;
    x1=y1 -c*1000;
    d=x1/100;
    y1=x1 -d*100;
    e=y1/10;
    f=y1 -e*10;
}
*/
void div()
{
 buf1=(int)dc.count*50000;
 buf=buf1/1023;
 a6=buf/10000;b1=buf-a6*10000;
 a5=b1/1000;b2=b1-a5*1000;
 a4=b2/100;b3=b2-a4*100;
 a3=b3/10;b4=b3-a3*10;
 a2=b4;

}


void interrupt usart_seve() {
    if (RCIF == 1) 
	    {
        if (RX9D == 1) 
	    {
            adl = RCREG;
        } 
        else rcreg = RCREG;adh = rcreg & 0x0f;temp = rcreg >> 4;
        RCIF = 0;
        dc.data[1] = adh;
        dc.data[0] = adl;
        div();
        }   
   // else if (TXIF == 1) {TXREG = a;TXIF = 0;} 
    else 
	{
        y = y ^ PORTB; //判断列线
        TRISB = 0X0F; //RBPUE=0;
        PORTB = (~y) & 0xf0; //反转输出
        DELAY1();
        x = PORTB & 0x0f; //判断行线
		if(y==0x10 && x==0x0e)a=0;
		if(y==0x10 && x==0x0d)a=4;
		if(y==0x20 && x==0x0e)a=1;
		if(y==0x20 && x==0x0d)a=5;
		if(y==0x40 && x==0x0e)a=2;
		if(y==0x40 && x==0x0d)a=6;
		if(y==0x80 && x==0x0e)a=3;
		if(y==0x80 && x==0x0d)a=7;
		TX9D=0;
        TXREG=a;
        TRISB=0XF0;PORTB=0;
        y=PORTB;RBIF=0;
    }
}

main()
{
	TRISD=0;dc.count=0;
    TRISA=0;ADCON1=7;
    TRISB=0XF0;nRBPU=0;
    GIE=RBIE=1;y=PORTB;RBIF=0;PORTB=0;
    DELAY();          //调用延时，刚上电LCD复位不一定
    PORTD =1;         //清屏
    ENABLE();
    PORTD=0x38;       //8位2行5x7点阵
    ENABLE();
    PORTD=0x0C;       //显示器开、光标开、闪烁开
    ENABLE();
    PORTD=0x06;       //文字不动，光标自动右移
    ENABLE();
    TRISC=0xc0;       //c作输出口
    SPBRG=38;BRGH=0;         //转载波特率发生器
    TXSTA=0;SYNC=0;           //CSRC=0; //使能异步USART发送，
    RCSTA=0;SPEN=1;CREN=1;           //使能RC6,7
    TXEN=1;RX9=1;            //工作于发送器方式
    GIE=1;PEIE=1;TXIE=0;RCIE=1;           //开放USART接收中断
loop:
    PORTD=0x80; ENABLE(); //光标指向第 1 行的位置
    PORTD=table[adh]; ENABLE1(); //送第一行第一数字
    PORTD=table[adl>>4]; ENABLE1(); //送第一行第二数字
    PORTD=table[adl&0x0f]; ENABLE1(); //送第一行第三数字
    PORTD='H'; ENABLE1(); //送第一行第三数字
    PORTD=' '; ENABLE1();
    PORTD=0xc0; ENABLE();
    PORTD=table[a6]; ENABLE1(); //送第一行第一数字十
    PORTD='.'; ENABLE1();
    PORTD=table[a5]; ENABLE1(); //送第一行第二数字万位
    PORTD=table[a4]; ENABLE1(); //送第一行第三数字千位
    PORTD=table[a3]; ENABLE1(); //送第一行第四数字百位
    PORTD=table[a2]; ENABLE1(); //送第一行第五数字十位
	PORTD='V'; ENABLE1();
	PORTD=' '; ENABLE1();
	PORTD=0xCb; ENABLE(); //光标指向第 2 行的位置
	{PORTD=table[temp]; ENABLE1();};
	PORTD=' '; ENABLE1();
	PORTD=0xCf; ENABLE(); //光标指向第 2 行的位置
	{PORTD=table[a]; ENABLE1();};
	PORTD=' '; ENABLE1();
	goto loop;
}
