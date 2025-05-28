#include<pic.h>
#define rs RA5
#define rw RA4
#define e RA3
__CONFIG(0XFF29);
char x, a, b, c, d, t, f;
bit flag;
int y;
unsigned long x1, buf;
static volatile char table[16] = {0x30, 0x31, 0x32, 0x33, 0x34, 0x35,
                                0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46};
static volatile const long table1[7] = {0, 50000, 100000, 200000, 300000, 400000, 500000};
union
{
    unsigned int count;
    char data[2]; 
} ad_data;    //定义一个共用体，存放电源A/D转换结果
void DELAY()
{
    unsigned int i; 
    for(i = 999; i > 0; i--); 
}
void ENABLE() //写入控制命令的子程序
{
    RA5=0;RA4=0;RA3=0;DELAY();RA3=1;
}
void ENABLE1() //写入字的子程序
{
    RA5=1;RA4=0;RA3=0;DELAY();RA3=1;
}
void div()
{
    a = buf/100000;       //求10万位a
    x1 = buf-a*100000;    //求余数
    b = x1/10000; y = x1-b*10000;
    c = y/1000; x1 = y-c*1000;
    d = x1/100; y = x1-d*100;
    t = y/10; f = y-t*10;
}
void interrupt tmr2_serve()
{
    TMR2IF = 0;
  // flag =!flag; 
 //   if(flag == 0) goto loop1;
    ADCON0 = 0B01000101;
    ADCON1 = 0B10001110;
    //GO_nDONE = 1;                    //启动A/D电源大小
    wait1:if(ADIF == 0) goto wait1;  //等待测试电源大小
    ad_data.data[1] = ADRESH; 
    ad_data.data[0] = ADRESL;
    ADIF = 0;
/*    if(ad_data.count >= 0x3F0){x = 6; goto exit; }    //5V为3FFH
    else if(0x320 < ad_data.count){x = 5; goto exit; } //4V为332H
    else if(0x250 < ad_data.count){x = 4; goto exit; } //3V为266H
    else if(0x18a < ad_data.count){x = 3; goto exit; } //2V为199H
    else if(0x0c0 < ad_data.count){x = 2; goto exit; } //1V为0c0H
    else if(0x05a < ad_data.count){x = 1; goto exit; } //0.5V为066H
loop1:ADCON0 = 0B01010101; 
    ADCON1 = 0B10000010;
    //GO_nDONE = 1;                    //启动A/D
    wait2:if(ADIF == 0) goto wait2;
    ad1_data.data[1] = ADRESH; 
    ad1_data.data[0] = ADRESL;
exit:ADIF = 0;*/
}
main()
{
	ADCON0 = 0B01000001; 
    ADCON1 = 0B10001110;
    TRISA = 0B00000001; 
    TRISD = 0; 
    //TRISE = 0;  //定义端口方向
	DELAY();                            //调用延时，刚上电LCD复位不一定有PIC快
	PORTD = 1; ENABLE();                //清屏
	PORTD = 0x38; ENABLE();             //8位2行5×7点阵
	PORTD = 0x0c; ENABLE();             //显示器开、光标不开、闪烁不开
	PORTD = 0x06; ENABLE();             //文字不动，光标自动右移

    GIE = 1; PEIE = 1; TMR2IE = 1; TMR2IF = 0; ADIF = 0;

    //flag = 0; 
    //x = 0;
    T2CON = 0B01111111; 
    PR2 = 255;      //使能TMR2定时器
    while(1)
    {	buf = 500000*ad_data.count/0x3ff;
		//buf = table1[x]*ad1_data.count/0x3ff; 
		div();
		PORTD = 0x80; ENABLE();        //光标指向第1行的位置
		PORTD = table[a]; ENABLE1();     //送第1行第1数字10万位
		PORTD = '.'; ENABLE1();
		PORTD = table[b]; ENABLE1();     //送第1行第2数字万位
		PORTD = table[c]; ENABLE1();     //送第1行第3数字千位
		PORTD = table[d]; ENABLE1();     //送第1行第4数字百位
		PORTD = table[t]; ENABLE1();     //送第1行第5数字十位
		PORTD = table[f]; ENABLE1();     //送第1行第6数字个位
		PORTD = 'V'; ENABLE1();
		PORTD = 0xc0; ENABLE();          //光标指向第2行的位置
		PORTD = table[ad_data.data[1]]; ENABLE1();    //送第2行第1数字
		PORTD = table[ad_data.data[0]>>4]; ENABLE1(); //送第2行第2数字
		PORTD = table[ad_data.data[0]&0x0f]; ENABLE1();//送第2行第3数字
		PORTD = 'H'; ENABLE1();
	/*	PORTD = 0xc8; ENABLE();          //光标指向第2行的位置
		PORTD = 'x'; ENABLE1();
		PORTD = '='; ENABLE1();
		PORTD = table[x]; ENABLE1();*/
    }
}