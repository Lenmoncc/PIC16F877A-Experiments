#include"node.h"
#include"motor.h"
#include"JY62.h"
#include"track.h"
#include"delay.h"

int16_t offset=0;

void Deal_Yaw(int16_t yaw,int16_t aim_angel)
{
    offset=aim_angel-yaw;
    if(offset>180)
    offset-=360;
    if(offset<-180)
    offset+=360;

    if(30>offset&&offset>0)
        Motor_Status(30,30+offset);
    else if(-30<offset&&offset<0)
        Motor_Status(30-offset,30);
    else
        Motor_Status(20,20);
}

