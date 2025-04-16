#include<pic.h>
void interrupt tmr1()
{
TMR1H=0XCF;TMR1L=0X2C;TMR1IF=0;
RC7=!RC7;
}
main()
{
TRISC7=0;
GIE=1;PEIE=1;TMR1IE=1;TMR1IF=0;
TMR1H=0XCF;TMR1L=0X2C;
T1CON=0B00000001;
while(1);
}//产生40HZ方波信号