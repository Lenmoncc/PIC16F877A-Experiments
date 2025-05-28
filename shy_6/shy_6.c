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
} ad_data;    //����һ�������壬��ŵ�ԴA/Dת�����
void DELAY()
{
    unsigned int i; 
    for(i = 999; i > 0; i--); 
}
void ENABLE() //д�����������ӳ���
{
    RA5=0;RA4=0;RA3=0;DELAY();RA3=1;
}
void ENABLE1() //д���ֵ��ӳ���
{
    RA5=1;RA4=0;RA3=0;DELAY();RA3=1;
}
void div()
{
    a = buf/100000;       //��10��λa
    x1 = buf-a*100000;    //������
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
    //GO_nDONE = 1;                    //����A/D��Դ��С
    wait1:if(ADIF == 0) goto wait1;  //�ȴ����Ե�Դ��С
    ad_data.data[1] = ADRESH; 
    ad_data.data[0] = ADRESL;
    ADIF = 0;
/*    if(ad_data.count >= 0x3F0){x = 6; goto exit; }    //5VΪ3FFH
    else if(0x320 < ad_data.count){x = 5; goto exit; } //4VΪ332H
    else if(0x250 < ad_data.count){x = 4; goto exit; } //3VΪ266H
    else if(0x18a < ad_data.count){x = 3; goto exit; } //2VΪ199H
    else if(0x0c0 < ad_data.count){x = 2; goto exit; } //1VΪ0c0H
    else if(0x05a < ad_data.count){x = 1; goto exit; } //0.5VΪ066H
loop1:ADCON0 = 0B01010101; 
    ADCON1 = 0B10000010;
    //GO_nDONE = 1;                    //����A/D
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
    //TRISE = 0;  //����˿ڷ���
	DELAY();                            //������ʱ�����ϵ�LCD��λ��һ����PIC��
	PORTD = 1; ENABLE();                //����
	PORTD = 0x38; ENABLE();             //8λ2��5��7����
	PORTD = 0x0c; ENABLE();             //��ʾ��������겻������˸����
	PORTD = 0x06; ENABLE();             //���ֲ���������Զ�����

    GIE = 1; PEIE = 1; TMR2IE = 1; TMR2IF = 0; ADIF = 0;

    //flag = 0; 
    //x = 0;
    T2CON = 0B01111111; 
    PR2 = 255;      //ʹ��TMR2��ʱ��
    while(1)
    {	buf = 500000*ad_data.count/0x3ff;
		//buf = table1[x]*ad1_data.count/0x3ff; 
		div();
		PORTD = 0x80; ENABLE();        //���ָ���1�е�λ��
		PORTD = table[a]; ENABLE1();     //�͵�1�е�1����10��λ
		PORTD = '.'; ENABLE1();
		PORTD = table[b]; ENABLE1();     //�͵�1�е�2������λ
		PORTD = table[c]; ENABLE1();     //�͵�1�е�3����ǧλ
		PORTD = table[d]; ENABLE1();     //�͵�1�е�4���ְ�λ
		PORTD = table[t]; ENABLE1();     //�͵�1�е�5����ʮλ
		PORTD = table[f]; ENABLE1();     //�͵�1�е�6���ָ�λ
		PORTD = 'V'; ENABLE1();
		PORTD = 0xc0; ENABLE();          //���ָ���2�е�λ��
		PORTD = table[ad_data.data[1]]; ENABLE1();    //�͵�2�е�1����
		PORTD = table[ad_data.data[0]>>4]; ENABLE1(); //�͵�2�е�2����
		PORTD = table[ad_data.data[0]&0x0f]; ENABLE1();//�͵�2�е�3����
		PORTD = 'H'; ENABLE1();
	/*	PORTD = 0xc8; ENABLE();          //���ָ���2�е�λ��
		PORTD = 'x'; ENABLE1();
		PORTD = '='; ENABLE1();
		PORTD = table[x]; ENABLE1();*/
    }
}