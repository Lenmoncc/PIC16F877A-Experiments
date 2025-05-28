#include<pic.h>
__CONFIG(0xFF29);
char a,adh,adl,x,y;
static volatile char table1[8]={0x41,0x49,0x51,0x59,0x61,0x69,0x71,0x79};
void DELAY()  //延时子程序
{unsigned int i;for(i=999;i>0;i--);}


void DELAY1()
{unsigned int i; for(i = 99; i > 0; i--); }
void interrupt usart_seve()
{
    if(TMR2IF==1 && a<8)
    {
        TMR2IF=0;GO_nDONE=1; //启动A/D
        wait:if(ADIF==0) goto wait;//转换
        adh=ADRESH;adl=ADRESL;ADIF=0; //PORTD=ADRESL;
        loop2:if(TRMT==0)goto loop2;//当数据传完后马上写入
        TXREG=a<<4|adh;TX9D=1;
        loop1:if(TRMT==0)goto loop1;
        TXREG=adl;TX9D=0;
       // ad_data.data[1]=ADRESH;ad_data.data[0]=ADRESL;
        ADCON0=table1[a];
		PORTD=a;
	}
	else if(RCIF==1)
	{a=RCREG;RCIF=0;}
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
 	TRISB=0XF0;nRBPU=0;
    GIE=RBIE=1;y=PORTB;RBIF=0;PORTB=0; 
    TRISC = 0xc0;
    TRISD = 0;PORTD = 0;
    a=0;
    //TRISA=0xfff;TRISE=0XFF;
    TRISA = 0xff;
    ADCON0 = 0B01000001;
    ADCON1 = 0B10000000;
    T2CON = 0B01111111;PR2 = 255; //使能TMR2定时器
    PEIE = 1;TMR2IE = 1;TMR2IF = 0;
    ADIF = 0;
    SPBRG = 38; //转载波特率发生器  波特率6400
    TXSTA = 0;//低速
    SYNC = 0; //CSRC=1; //使能异步USART发送，
    RCSTA = 0;SPEN = 1;CREN = 1;TXEN = 1;TX9 = 1; //工作于发送器方式
    GIE = 1;PEIE = 1;RCIE = 1;TXIE=0; //开放USART接收中断
loop:
    //if(RCIF==1){a=RCREG;RCIF=0;}
    goto loop;
}
