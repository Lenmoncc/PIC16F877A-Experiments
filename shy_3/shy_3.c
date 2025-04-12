#include <pic.h>
__CONFIG(0xFF29);
char x, y;

// �����ʱ�ӳ���
void delay1() {
    char i1, i2;
    for (i1 = 3; i1 > 0; i1--) {
        for (i2 = 0x19; i2 > 0; i2--);
    }
}

// �����ʱ�ӳ���
void delay2() {
    char i1, i2;
    for (i1 = 15; i1 > 0; i1--) {
        for (i2 = 0x19; i2 > 0; i2--);
    }
}

// �����ʱ�ӳ���
void delay3() {
    char i1, i2;
    for (i1 = 7; i1 > 0; i1--) {
        for (i2 = 0x19; i2 > 0; i2--);
    }
}

// �����ʱ�ӳ���
void delay4() {
    char i1, i2;
    for (i1 = 11; i1 > 0; i1--) {
        for (i2 = 0x19; i2 > 0; i2--);
    }
}

// �����ӳ���
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

// �жϴ�����
void interrupt int_rb() {
    if (INTF == 1) {          // �����ж��ⲿ�жϱ�־λ
        x = 0;
        PORTD = ~0X80;
        sound_delay();
        INTF = 0;
}
      else{                  // �����Ȼ��RBIF=1����������жϣ�
        if (x == 0) {         // ������ɹ����ж��������
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

        y = PORTB;            // ��ȡRB�˿ڵ�ƽ���������붯����
        RBIF = 0;             // ���RB�˿��жϱ�־
    }
}

// ������
void main() {
    TRISD = 0;               // ����PORTDΪ���ģʽ
    PORTD = 0;               // ��ʼ��PORTDΪ0
    TRISB = 0XFF;            // ����PORTBΪ����ģʽ
    nRBPU = 0;               // ʹ��PORTB��������
    INTEDG = 1;              // �����ⲿ�ж�Ϊ�����ش���

    ADCON1 = 7;
    TRISE0 = 0;              // ����RE0Ϊ���ģʽ
    RE0 = 0;                 // ��ʼ��RE0Ϊ�͵�ƽ
    
    x = 1;                   // ��ʼ������״̬
    
    GIE = 1;                 // ʹ��ȫ���ж�
    INTE = 1;                // ʹ���ⲿ�ж�
    RBIE = 1;                // ʹ��PORTB�仯�ж�
    INTF = 0;                // ����ⲿ�жϱ�־
    y = PORTB;               // ��ʼ��ȡPORTB��ƽ
    RBIF = 0;                // ���RB�˿��жϱ�־
    
    while (1) {              // ��ѭ��
        //sound_delay();       // ���÷����ӳ���
    }
}