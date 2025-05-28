#include <pic.h>
__CONFIG(0xFF29); //оƬ����λ����

#define rs RA5 
#define rw RA4 
#define e RA3 
char x,y,z,Z;
bit a;
static volatile char table[16] = {0x30,0x31,0x32,0x33,0x34,
                                0x35,0x36,0x37,0x38,0x39,
                                0x41,0x42,0x43,0x44,0x45,0x46};
void DELAY() //��ʱ�ӳ���
{
    unsigned int i;
    for(i=999;i>0;i--);
}
//д�����������ӳ���
void ENABLE() {
    rs=0; 
    rw=0;
    e=0; 
    DELAY(); 
    e=1;
} 

// д���ֵ��ӳ���
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
    // ������ʱ�����ϵ�LCD��λ��һ����PIC��
    DELAY(); 
}
void lcd()
{
    TRISD=0; TRISA=0; //����PIC��1602LCD�����������ӿ�PORTD��������ƽӿ�
    PORTD=0; //��ǰ�����������0
    DELAY(); //������ʱ�����ϵ�LCD��λ��һ����PIC��
    PORTD=1; ENABLE(); //����������ʱ����ΪLCD����������
    PORTD=0x38; ENABLE(); //8λ2��5x7����
    PORTD=0x0c; ENABLE(); //��ʾ��������겻������˸����
    PORTD=0x06; ENABLE(); //���ֲ���������Զ�����
}
void interrupt ccp1()
{
    if(CCP1IF == 1)
    {
        a =!a;
        if(a == 1){TMR1H=0; TMR1L=0; TMR1ON=1; z=0; CCP1IF=0;} //��һ�β�׽��
        else
        {
            y=CCPR1L+31; x=CCPR1H+CARRY; Z=z; TMR1ON=0; CCP1IF=0; //�ڶ��β�׽��
        }
    }
    else
        if(TMR1IF == 1)
            z++; //�ۼ�TMR1���������
        
        TMR1IF=0;
        
}
void main()
{
    Init_LCD(); //LCD��ʼ��
    lcd(); //LCD��ʼ��
    TRISC2=1; //���벶׽���ŷ�����
    a=0; //��������ֵ
    GIE=1; PEIE=1; CCP1IE=1; CCP1IF=0; //ʹ��CCP1���ж�
    TMR1IE=1; TMR1IF=0; //ʹ��TMR1���ж�
    T1CON=0B00000000; //TMR1Ϊ��ʱ����Ԥ��Ƶ1:1��������TMR1��ʱ��
    CCP1CON=5; //ʹ��CCP1��׽ÿһ�������źŵ�������
    while(1) //��ѭ�����ֱ�֤��Ƭ����CPU��ֹͣ������������Ӧ�ж�����
    {
        PORTD=0x80; ENABLE(); //���ָ���1�е�λ��
        PORTD=table[Z>>4]; ENABLE1(); //��z�ĸ�λ��ʾ
        PORTD=table[Z&0x0f]; ENABLE1(); //��z�ĵ�λ��ʾ
        PORTD=table[x>>4]; ENABLE1(); //��x�ĸ�λ��ʾ
        PORTD=table[x&0x0f]; ENABLE1(); //��x�ĵ�λ��ʾ
        PORTD=table[y>>4]; ENABLE1(); //��y�ĸ�λ��ʾ
        PORTD=table[y&0x0f]; ENABLE1(); //��y�ĵ�λ��ʾ
        PORTD='H'; ENABLE1();
    }
}









