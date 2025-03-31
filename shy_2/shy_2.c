#include <pic.h>

__CONFIG(0xFF29);

// LCD�����ߺ궨�壬����ʵ�������Ŷ����޸�
#define rs  RA5
#define rw  RA4
#define e   RA3
#define LCD_DATA_PORT PORTD
#define LCD_PORT_DIR TRISD

static volatile char TABLE[16] = {
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35,
    0x36, 0x37, 0x38, 0x39, 0x41, 0x42,
    0x43, 0x44, 0x45, 0x46
};

char adh, adl, a, b, result, preres;

void DELAY() { // ��ʱ�ӳ���
    unsigned int i;
    for (i = 999; i > 0; i--);
}

void ENABLE() { // д�����������ӳ���
    rs = 0;
    rw = 0;
    e = 0;
    DELAY();
    e = 1;
}

void ENABLE1() { // д���ֵ��ӳ���
    rs = 1;
    rw = 0;
    e = 0;
    DELAY();
    e = 1;
}

void main() {    // ������
    TRISB = 0X0F;
    nRBPU = 0;
    result = 0x00;
    preres = 0x00;
    LCD_PORT_DIR = 0;
    RE2 = 1;
    ADCON1 = 7;
    TRISA = 0;
    RA1 = 0;
    LCD_DATA_PORT = 0;
    e = 1;      // ��ǰ�����������0
    
    DELAY();     // ������ʱ�����ϵ�LCD��λ��һ����PIC��
    
    LCD_DATA_PORT = 1;
    ENABLE();    // ����������ʱ����ΪLCD����������
    LCD_DATA_PORT = 0x38;
    ENABLE();    // 8λ2��5x7����
    LCD_DATA_PORT = 0x0C;
    ENABLE();    // ��ʾ���������ء���˸��
    LCD_DATA_PORT = 0x06;
    ENABLE();    // ���ֲ���������Զ�����    

loop:
    LCD_DATA_PORT = 0x80;
    ENABLE();    // ���ָ���һ�е�һ���ַ�λ��

    //-----���³�����4X4����ɨ��--------
    PORTB = 0X7f;                // RB7����͵�ƽ��������λ����ߵ�ƽ
    asm("nop");                  // ����һ����ʱ��ȷ����ƽ�ȶ�
    result = PORTB;              // ����B�ڵ�4λ���
    result = result & 0x0f;      // �����4λ
    
    if (result != 0x0f) {        // �жϵ�4λ�Ƿ�Ϊȫ1��ȫ1����û�������£���
        result = result | 0x70;  // �񣬼��ϸ�4λ0x70����Ϊ����ɨ��Ľ��
    } else {                     // �ǣ��ı��4λ����������ж��Ƿ��а�������
        PORTB = 0Xbf;            // RB6����͵�ƽ��������λ����ߵ�ƽ
        asm("nop");              // ����һ����ʱ��ȷ����ƽ�ȶ�
        result = PORTB;          // ����B�ڸߵ�4λ���
        result = result & 0x0f;  // �����4λ
        
        if (result != 0xf) {     // �жϵ�4λ�Ƿ�Ϊȫ1��ȫ1����û�������£�
            result = result | 0xb0; // ���ϸ�4λ0xb0
        } else {
            PORTB = 0Xdf;        // RB5����͵�ƽ��������λ����ߵ�ƽ
            asm("nop");
            result = PORTB;
            result = result & 0x0f;
            
            if (result != 0x0f) {
                result = result | 0xd0;
            } else {
                PORTB = 0Xef;    // B4����͵�ƽ��������λ����ߵ�ƽ
                asm("nop");
                result = PORTB;
                result = result & 0x0f;
                
                if (result != 0x0f) {
                    result = result | 0xe0;
                } else {
                    result = 0xff; // �ް������±�־
                }
            }
        }
    }

    if (result == 0xff) {        // �޼�������ʾ��X��
        result = preres;
    } else {
        preres = result;
    }

    //-----���³�����4X4����ɨ������LCD��ʾ����--------
    switch (result) {
  case 0xe7: LCD_DATA_PORT = TABLE[3];  break; // K3
        case 0xeb: LCD_DATA_PORT = TABLE[2];  break; // K2
        case 0xed: LCD_DATA_PORT = TABLE[1];  break; // K1
        case 0xee: LCD_DATA_PORT = TABLE[0];  break; // K0
        case 0xd7: LCD_DATA_PORT = TABLE[7];  break; // K7
        case 0xdb: LCD_DATA_PORT = TABLE[6];  break; // K6
        case 0xdd: LCD_DATA_PORT = TABLE[5];  break; // K5
        case 0xde: LCD_DATA_PORT = TABLE[4];  break; // K4
        case 0xb7: LCD_DATA_PORT = TABLE[11]; break; // KB
        case 0xbb: LCD_DATA_PORT = TABLE[10]; break; // KA
        case 0xbd: LCD_DATA_PORT = TABLE[9];  break; // K9
        case 0xbe: LCD_DATA_PORT = TABLE[8];  break; // K8
        case 0x77: LCD_DATA_PORT = TABLE[15]; break; // KF
        case 0x7b: LCD_DATA_PORT = TABLE[14]; break; // KE
        case 0x7d: LCD_DATA_PORT = TABLE[13]; break; // KD
        case 0x7e: LCD_DATA_PORT = TABLE[12]; break; // KC
        case 0x00: LCD_DATA_PORT = 'X';


    }
    
    ENABLE1();
    goto loop;
}