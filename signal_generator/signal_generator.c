#include<pic.h> 
__CONFIG(0xFF29);

/* 
    *  PIC16F877AA  4MHz  8λ��Ƭ��
    *  LCD1602��ʾģ��
    *  �������룬������ͬƵ�ʵķ�����ʹ������������ͬ������
    *  ����Ƶ�ʷ�Χ��MIN��0.1Hz��MAX��1kHz
*/

#define SIGNAL_PIN RE0    // �ź����/�������������ţ�RE0��
#define SIGNAL_DDR TRISE0 // ������ƣ�0=���

/*********************** LCD��ʾģ�� ***********************/
#define rs RA5 
#define rw RA4 
#define e RA3 
static volatile char TABLE[16]={0x30,0x31,0x32,0x33,0x34,
                                0x35,0x36,0x37,0x38,0x39,
                                0x41,0x42,0x43,0x44,0x45,0x46}; // 0-9 A-F
unsigned char string1; 
unsigned char string2; 
char adh,adl,a,b,result,preres; 
unsigned int dat,y; 
unsigned char count;

// ��ʱ�ӳ���
void DELAY() {
    unsigned int i;
    for(i=999;i>0;i--);
} 

// д�����������ӳ���
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

// LCD��ʼ������
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

// �ַ���ʾ����
void SendByte(unsigned char *str) {
    //PORTD =1;ENABLE(); //����������ʱ����ΪLCD���������� 
    PORTD=0x38;ENABLE();//8λ2��5x7���� 
    PORTD=0x0C;ENABLE(); //��ʾ���������ء���˸�� 
    PORTD=0x06;ENABLE(); //���ֲ���������Զ��� 
    PORTD=0x80;ENABLE(); //���ָ�ص�һ�� 
    while(*str != '\0') {
        PORTD = *str++; 
        ENABLE1(); 
    }
}

// LCD��ʾ����
void Display_LCD() {
    switch(result) {
        case 0xEE: dat = (5000/0.1);y=0; SendByte("K0:0.1Hz \r\n");break; //K0 
        case 0xED: dat = (5000/1);y=0; SendByte("K1:1Hz \r\n");break; //K1 
        case 0xEB: dat = (5000/10);y=0; SendByte("K2:10Hz \r\n");break; //K2 
        case 0xE7: dat = (500000/40); y=1; SendByte("K3:40Hz \r\n");break; //K3 
        case 0xDE: dat = (500000/50); y=1; SendByte("K4:50Hz \r\n");break; //K4 
        case 0xDD: dat = (500000/1000);y=1;SendByte("K5:1kHz \r\n");break; //K5 
        case 0xDB: dat = (5000/0.5);y=0;SendByte("K6:0.5Hz \r\n");break; //K6
        case 0xD7: dat = (5000/2);y=0;SendByte("K7:2Hz \r\n");break; //K7 
        case 0xBE: dat = (5000/4);y=0;SendByte("K8:4Hz \r\n");break; //K8 
        case 0xBD: dat = (5000/5);y=0;SendByte("K9:5Hz \r\n");break; //K9 
        case 0xBB: dat = (500000/20);y=1;SendByte("KA:20Hz \r\n");break; //KA 
        case 0xB7: dat = (500000/80);y=1;SendByte("KB:80Hz \r\n");break; //KB 
        case 0x7E: dat = (500000/100);y=1;SendByte("KC:100Hz \r\n");break; //KC 
        case 0x7D: dat = (500000/200);y=1;SendByte("KD:200Hz \r\n");break; //KD 
        case 0x7B: dat = (500000/400);y=1;SendByte("KE:400Hz \r\n");break; //KE 
        case 0x77: dat = (500000/500);y=1;SendByte("KF:500Hz \r\n");break; //KF 
    }
    ENABLE1(); 
} 

/*********************** ����ģ�� ***********************/
void SweepKeyboard() {
    PORTB = 0X7f; //RB7����͵�ƽ��������λ����ߵ�ƽ 
    asm("nop"); // ����һ����ʱ��ȷ����ƽ�ȶ�
    result = PORTB; // ����B�ڵ�4λ���
    result = result & 0x0f; // �����4λ
    if (result != 0x0f) { // �жϵ�4λ�Ƿ�Ϊȫ1(ȫ1����û��������)
        result = result | 0x70; // �񣬼��ϸ�4λ0x70����Ϊ����ɨ��Ľ�� 
    } else {
        PORTB = 0Xbf; //RB6����͵�ƽ��������λ����ߵ�ƽ 
        asm("nop"); // ����һ����ʱ��ȷ����ƽ�ȶ�
        result = PORTB; // ����B�ڸߵ�4λ��� 
        result = result & 0x0f; // �����4λ 
        if (result != 0xf) { // �жϵ�4λ�Ƿ�Ϊȫ1(ȫ1����û��������)
            result = result | 0xb0; //�񣬼��ϸ�4λ0xb0����Ϊ����ɨ��Ľ�� 
        } else {
            PORTB = 0Xdf; //RB5����͵�ƽ��������λ����ߵ�ƽ 
            asm("nop"); // ����һ����ʱ��ȷ����ƽ�ȶ�
            result = PORTB; // ����B�ڵ�4λ��� 
            result = result & 0x0f; // �����4λ 
            if (result != 0x0f) { // �жϵ�4λ�Ƿ�Ϊȫ1(ȫ1����û��������)
                result = result | 0xd0; //�񣬼��ϸ�4λ0xd0����Ϊ����ɨ��Ľ�� 
            } else {
                PORTB = 0Xef; //B4����͵�ƽ��������λ����ߵ�ƽ 
                asm("nop"); // ����һ����ʱ��ȷ����ƽ�ȶ�
                result = PORTB; // ����B�ڵ�4λ���
                result = result & 0x0f; //�����4λ
                if (result != 0x0f) { //�жϵ���λ�Ƿ�Ϊȫ1(ȫ1����û�а�������)
                    result = result | 0xe0; //�񣬼��ϸ�4λ0x0e����Ϊ����ɨ��Ľ��
                } else { //�ǣ�ȫ������ɨ�������û�а������£����ް������±�־λ
                    result = 0xff; //ɨ����Ϊ0xff����Ϊû�а������µı�־ 
                }
            }
        }
    }
    if(result==0xff)//�޼�������ʾ��X��
        result=preres; 
    else 
        preres=result; 
} 


/*********************** ��ʱ��ģ�� ***********************/
// ��ʼ��TMR2����
void Init_tmr2() {
    //TRISC7=0;
    SIGNAL_PIN = 0;       // ��ʼ�͵�ƽ
    SIGNAL_DDR = 0;
    GIE=1;
    PEIE=1;
    TMR2IE=1;
    TMR2IF=0;
    T2CON = 0B01111111; 
    PR2 = dat/256; 
}

void interrupt tmr2() {
    TMR2IF =0; 
    PR2 = dat/256; 
    if(y==0) {
        count++; 
        if(count == 100) {
            //RC7 = !RC7; 
            SIGNAL_PIN = !SIGNAL_PIN; // ��תRE0���ţ�����������/�ź����
            count =0; 
        }
    } else {
        //RC7 = !RC7;
        SIGNAL_PIN = !SIGNAL_PIN; // ��תRE0���ţ�����������/�ź����
    }
}


void main() {
    // ��ʼ��LCD
    Init_LCD(); 
    // ����
    PORTD=0x01;ENABLE(); 
    DELAY(); 
    // ��ʾ��ʾ��Ϣ
    SendByte("Signal Generator \r\n"); 
    DELAY(); 
    SendByte("Press K0-KF \r\n"); 
    DELAY(); 
    

    TRISB=0X0F;
    nRBPU=0;
    result=0x00;
    preres=0x00;

    //TRISC=0B01111111;//RC7Ϊ����ڣ�����Ϊ�����
    dat = 50000; 

    //��ʼ��RE0�˿�
    SIGNAL_DDR = 0;       // RE0��Ϊ���
    ADCON1 = 7; // ����Ϊ��������
    TRISE0 = 0; // ����RE0Ϊ���ģʽ

    Init_tmr2();
    // ��ѭ��
    while(1) {
        SweepKeyboard(); 
        Display_LCD(); 
    }
}