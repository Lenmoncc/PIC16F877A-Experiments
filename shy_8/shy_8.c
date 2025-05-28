#include<pic.h>
static volatile char table[16] = {0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x41,0x42,0x43,0x44,0x45,0x46};
char X,Y;
static volatile char table1[21] = {"my name is pic16f877 "};
char adh,adl,a,b,c,d,e,f,x3;
int adc,x,y,x1,x2;
long lcd,x4,buf;
void DELAY(){unsigned int i;for(i=1999;i>0;i--);}
void ENABLE()//д�����������ӳ���
{ RA5 = 0; RA4 = 0; RA3 = 0; DELAY(); RA3 = 1; }
void ENABLE1()//д���ֵ��ӳ���
{ RA5 = 1; RA4 = 0; RA3 = 0; DELAY(); RA3 = 1; }
void interrupt ccp1_int()//�жϷ������
{
    CCP2IF = 0;//�� CCP2 �ж�
    wait:if(ADIF == 0)goto wait;//�ȴ� A/D ת������
    adh = ADRESH; adl = ADRESL;
    ADIF = 0; //PIR1.6
}
void main()
{
    TRISA = 0X01; TRISC = 0XFF; TRISD = 0; PORTD = 0;
    SPBRG = 12;//ת�ز����ʷ�������Ϊ 19200 B/s
    TXSTA = 0B00100100;//ʹ�� USART ���ͣ������ʷ�����Ϊ���ٷ�ʽ
    RCSTA = 0B10010000;//��������
    for(X = 0;X < 21;X++)
    {TXREG = table1[X]; DELAY();}
    ADCON1 = 0B10001110;
    //ֻѡ AN0 ����Ϊģ��ͨ��������Ҷ��룬VDD �� VSS Ϊ�ο���Դ
    PORTD = 1; ENABLE();//LCD ��ʼ��
    PORTD = 0x38; ENABLE();
    PORTD = 0x0c; ENABLE();
    PORTD = 0x06; ENABLE();
    PEIE = 1; GIE = 1; CCP2IE = 1;
    CCPR2L = 0XFF; CCPR2H = 0XFF;//�����ֵ�����ڼĴ���
    T1CON = 0X30;//Ԥ��Ƶ��=1:8���ڲ�ʱ��Դ��ͬ������ֹ����
    CCP2CON = 0X0B;//�趨 CCP2 Ϊ�����¼�ģʽ
    TMR1ON = 1;//���� TMR1��T1CON.0
    ADCON0 = 0X41;
loop:
    x = (int)adh<<8;//��ѹ�����-ʮ����ת��
    adc = x+(int)adl;
    lcd = (adc*50000);//���� 10000 ������֤���㾫��
    buf = lcd/0x3ff;
    a = buf/100000; x4 = buf -a*100000; //������
    b = x4/10000; x1 = x4 -b*10000; //������
    c = x1/1000; x2 = x1 -c*1000; //������
    d = x2/100; x3 = x2 -d*100; //������
    e = x3/10; f = x3 -e*10; //������
    //------------
    PORTD = 0x80; ENABLE();
    PORTD = table[b]; ENABLE1();
    TXREG = table[b];//�첽���ͣ����� LCD ��ʾ��ʱ���첽����ʱ��
    PORTD = '.'; ENABLE1();
    TXREG = '.';//�첽����
    PORTD = table[c]; ENABLE1();
    TXREG = table[c];//�첽����
    PORTD = table[d]; ENABLE1();
    TXREG = table[d];//�첽����
    PORTD = table[e]; ENABLE1();
    TXREG = table[e];//�첽����
    PORTD = table[f]; ENABLE1();
    TXREG = table[f]; DELAY();//�첽����
    TXREG = 'V'; DELAY();//�첽����
    TXREG =' '; DELAY();//�첽���ͣ����Ϳո�
    TXREG =' '; DELAY();//�첽���ͣ����Ϳո�
    TXREG =' ';//�첽���ͣ����Ϳո�
    goto loop;
}