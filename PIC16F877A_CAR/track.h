#ifndef __TRACK_H__
#define __TRACK_H__ 

#include<pic.h>
#include<stdint.h>

extern uint8_t HD[8];
extern uint8_t runflag;
extern uint8_t BL_Flag;
extern uint8_t BL_Flag_Num;
extern uint8_t flag;
extern int last_flag;


void point_status();
void GanWei_Init(void);
void HD_Read(void);
void Track_Run(void);
void Track_ONE(void);
void Track_TWO();
void Track_THREE();
void Track_FOUR();

#endif// __TRACK_H__