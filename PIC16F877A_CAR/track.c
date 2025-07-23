#include"track.h"
#include"motor.h"
#include"delay.h"
#include"JY62.h"
#include"beep.h"
#include"node.h"

uint8_t HD[8];
uint8_t runflag=0; 
uint8_t BL_Flag=0;
uint8_t BL_Flag_Num=0;
uint8_t flag=0;
int last_flag=0;

void GanWei_Init(void) {
    TRISB = 0xFF; 
    nRBPU = 0; 
}

void HD_Read(void) {
    if(RB0==0){HD[0]=0;}else{HD[0]=1;}
    if(RB1==0){HD[1]=0;}else{HD[1]=1;}
    if(RB2==0){HD[2]=0;}else{HD[2]=1;}
    if(RB3==0){HD[3]=0;}else{HD[3]=1;}
    if(RB4==0){HD[4]=0;}else{HD[4]=1;}
    if(RB5==0){HD[5]=0;}else{HD[5]=1;}
    if(RB6==0){HD[6]=0;}else{HD[6]=1;}
    if(RB7==0){HD[7]=0;}else{HD[7]=1;}
}


//黑色-0 白色-1
void Track_Run(void) {
    HD_Read();
    if(HD[0]==1 && HD[1]==1 && HD[2]==1 && HD[3]==0 && HD[4]==0 && HD[5]==1 && HD[6]==1 && HD[7]==1)
    {
        Motor_Status(30,30);
        Delay_ms(10);
    }else if((HD[0]==0 || HD[1]==0) && HD[2]==1 && HD[3]==1 && HD[4]==1 && HD[5]==1 && HD[6]==1 && HD[7]==1)
    {
        Motor_Status(20,35);
        Delay_ms(10);
    }else if(HD[0]==1 && HD[1]==1 && HD[2]==1 && HD[3]==1 && HD[4]==1 && HD[5]==1 && (HD[6]==0 || HD[7]==0))
    {
        Motor_Status(35,20);
        Delay_ms(10);
    }else if(HD[0]==1 && (HD[1]==0 || HD[2]==0) && HD[3]==1 && HD[4]==1 && HD[5]==1 && HD[6]==1 && HD[7]==1)
    {
        Motor_Status(20,35);
        Delay_ms(10);
    }else if(HD[0]==1 && HD[1]==1 && (HD[2]==0 || HD[3]==0) && HD[4]==1 && HD[5]==1 && HD[6]==1 && HD[7]==1)
    {
        Motor_Status(20,35);
        Delay_ms(10);
    }else if(HD[0]==1 && HD[1]==1 && HD[2]==1 && HD[3]==1 && HD[4]==1 && (HD[5]==0 || HD[6]==0) && HD[7]==1)
    {
        Motor_Status(35,20);
        Delay_ms(10);
    }else if(HD[0]==1 && HD[1]==1 && HD[2]==1 && HD[3]==1 && (HD[4]==0 || HD[5]==0) && HD[6]==1 && HD[7]==1)
    {
        Motor_Status(35,20);
        Delay_ms(10);
    }else{
        Motor_Status(30,30); 
    }
}



void point_status()
{
    if(PORTB==0XFF) flag=1;
    else flag=0;

    last_flag=flag;

    if(PORTB!=0XFF&&last_flag!=flag)
    {
        RE0=!RE0;
        Delay_ms(100);
        RE0=!RE0;
        Delay_ms(100);
        RE0=0;

        runflag++;
    }
}


void Track_ONE(){
    Deal_Yaw(Yaw,0);
    if(runflag==1)
    {
        Motor_Status(0,0);
        while(1);
    }
}


void Track_TWO(){
    //A->B
    Deal_Yaw(Yaw,0);
    
    //B->C
    if(runflag==1)
    Track_Run();

    //C->D
    if(runflag==2)
    Deal_Yaw(Yaw,180);

    //D->A
    if(runflag==3)
    Track_Run();

    if(runflag>=4)
    {
        Motor_Status(0,0);
        while(1);
    }

}


void Track_THREE(){
    //A->C
    Motor_Status(0,0);
    Delay_ms(3000);
    Motor_Status(35,20);
    Delay_ms(3000);
    Deal_Yaw(Yaw,-36);
    
    //C->B
    if(runflag==1)
        Track_Run();

    //B->D
    if(runflag==2){
		Motor_Status(0,0);
        Delay_ms(3000);
		Motor_Status(20,40); 
        Delay_ms(3000);
        Deal_Yaw(Yaw,-140);
    }

    //D->A
    if(runflag==3)
    Track_Run();

    if(runflag>=4){
        Motor_Status(0,0);
        while(1);
    }

}


void Track_FOUR(){
    if(1){;}
}