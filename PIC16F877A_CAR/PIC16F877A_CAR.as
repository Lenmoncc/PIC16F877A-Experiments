opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 11 "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\main.c"
	dw 0xFF29 ;#
	FNCALL	_main,_Motor_Init
	FNCALL	_main,_Beep_Init
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_Uart_Init
	FNCALL	_main,_GanWei_Init
	FNCALL	_main,_JY62_ShowData
	FNCALL	_main,_point_status
	FNCALL	_main,_Track_ONE
	FNCALL	_main,_Track_TWO
	FNCALL	_main,_Track_THREE
	FNCALL	_Track_THREE,_Motor_Status
	FNCALL	_Track_THREE,_Delay_ms
	FNCALL	_Track_THREE,_Deal_Yaw
	FNCALL	_Track_THREE,_Track_Run
	FNCALL	_Track_TWO,_Deal_Yaw
	FNCALL	_Track_TWO,_Track_Run
	FNCALL	_Track_TWO,_Motor_Status
	FNCALL	_Track_ONE,_Deal_Yaw
	FNCALL	_Track_ONE,_Motor_Status
	FNCALL	_Track_Run,_HD_Read
	FNCALL	_Track_Run,_Motor_Status
	FNCALL	_Track_Run,_Delay_ms
	FNCALL	_Deal_Yaw,_Motor_Status
	FNCALL	_Motor_Status,_Motor_SetRightSpeed
	FNCALL	_Motor_Status,_Motor_SetLeftSpeed
	FNCALL	_JY62_ShowData,_LCD_Init
	FNCALL	_JY62_ShowData,_LCD_ShowString
	FNCALL	_JY62_ShowData,_sprintf
	FNCALL	_JY62_ShowData,_DELAY
	FNCALL	_Motor_SetLeftSpeed,_PWM2_SetDutyCycle
	FNCALL	_Motor_SetRightSpeed,_PWM1_SetDutyCycle
	FNCALL	_LCD_ShowString,_ENABLE
	FNCALL	_LCD_ShowString,_ENABLE1
	FNCALL	_LCD_ShowString,_DELAY
	FNCALL	_LCD_Init,_DELAY
	FNCALL	_LCD_Init,_ENABLE
	FNCALL	_PWM2_SetDutyCycle,___wmul
	FNCALL	_PWM2_SetDutyCycle,___awdiv
	FNCALL	_PWM1_SetDutyCycle,___wmul
	FNCALL	_PWM1_SetDutyCycle,___awdiv
	FNCALL	_point_status,_Delay_ms
	FNCALL	_Motor_Init,_PWM_Init
	FNCALL	_ENABLE1,_DELAY
	FNCALL	_ENABLE,_DELAY
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNROOT	_main
	FNCALL	_uart_service,_JY62_ReceiveData
	FNCALL	_JY62_ReceiveData,___awtoft
	FNCALL	_JY62_ReceiveData,___ftmul
	FNCALL	_JY62_ReceiveData,___ftdiv
	FNCALL	_JY62_ReceiveData,___fttol
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	intlevel1,_uart_service
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_RxBuffer
	global	_BL_Flag
	global	_BL_Flag_Num
	global	_RxIndex
	global	_RxState
	global	_HD
	global	_Yaw
	global	_last_flag
	global	_offset
	global	_flag
	global	_runflag
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T2CON
_T2CON	set	18
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_SPEN
_SPEN	set	199
	global	_ADCON1
_ADCON1	set	159
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_nRBPU
_nRBPU	set	1039
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	
STR_1:	
	retlw	89	;'Y'
	retlw	97	;'a'
	retlw	119	;'w'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"PIC16F877A_CAR.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_RxBuffer:
       ds      11

_BL_Flag:
       ds      1

_BL_Flag_Num:
       ds      1

_RxIndex:
       ds      1

_RxState:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_HD:
       ds      8

_Yaw:
       ds      2

_last_flag:
       ds      2

_offset:
       ds      2

_flag:
       ds      1

_runflag:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Fh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+010h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_DELAY
??_DELAY:	; 0 bytes @ 0x0
	global	??_Motor_Init
??_Motor_Init:	; 0 bytes @ 0x0
	global	??_GanWei_Init
??_GanWei_Init:	; 0 bytes @ 0x0
	global	??_Beep_Init
??_Beep_Init:	; 0 bytes @ 0x0
	global	??_Uart_Init
??_Uart_Init:	; 0 bytes @ 0x0
	global	??_PWM_Init
??_PWM_Init:	; 0 bytes @ 0x0
	global	?_Delay_ms
?_Delay_ms:	; 0 bytes @ 0x0
	global	??_HD_Read
??_HD_Read:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	DELAY@i
DELAY@i:	; 2 bytes @ 0x0
	global	Delay_ms@delayMs
Delay_ms@delayMs:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_LCD_Init
??_LCD_Init:	; 0 bytes @ 0x2
	global	?_LCD_ShowString
?_LCD_ShowString:	; 0 bytes @ 0x2
	global	??_ENABLE
??_ENABLE:	; 0 bytes @ 0x2
	global	??_ENABLE1
??_ENABLE1:	; 0 bytes @ 0x2
	global	??_Delay_ms
??_Delay_ms:	; 0 bytes @ 0x2
	global	LCD_ShowString@str
LCD_ShowString@str:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	Delay_ms@i
Delay_ms@i:	; 2 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	LCD_ShowString@row
LCD_ShowString@row:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	LCD_ShowString@col
LCD_ShowString@col:	; 1 bytes @ 0x5
	global	Delay_ms@j
Delay_ms@j:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	??_LCD_ShowString
??_LCD_ShowString:	; 0 bytes @ 0x6
	global	??_point_status
??_point_status:	; 0 bytes @ 0x6
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	LCD_ShowString@address
LCD_ShowString@address:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xA
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xB
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xD
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xE
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xE
	ds	1
	global	??_PWM1_SetDutyCycle
??_PWM1_SetDutyCycle:	; 0 bytes @ 0xF
	global	??_PWM2_SetDutyCycle
??_PWM2_SetDutyCycle:	; 0 bytes @ 0xF
	ds	1
	global	PWM1_SetDutyCycle@dutyCycle
PWM1_SetDutyCycle@dutyCycle:	; 1 bytes @ 0x10
	global	PWM2_SetDutyCycle@dutyCycle
PWM2_SetDutyCycle@dutyCycle:	; 1 bytes @ 0x10
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x11
	global	??_Motor_SetRightSpeed
??_Motor_SetRightSpeed:	; 0 bytes @ 0x11
	global	??_Motor_SetLeftSpeed
??_Motor_SetLeftSpeed:	; 0 bytes @ 0x11
	ds	1
	global	Motor_SetRightSpeed@speed
Motor_SetRightSpeed@speed:	; 1 bytes @ 0x12
	global	Motor_SetLeftSpeed@speed
Motor_SetLeftSpeed@speed:	; 1 bytes @ 0x12
	ds	1
	global	?_Motor_Status
?_Motor_Status:	; 0 bytes @ 0x13
	global	Motor_Status@speedR
Motor_Status@speedR:	; 1 bytes @ 0x13
	ds	1
	global	??_Motor_Status
??_Motor_Status:	; 0 bytes @ 0x14
	global	Motor_Status@speedL
Motor_Status@speedL:	; 1 bytes @ 0x14
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x14
	ds	1
	global	?_Deal_Yaw
?_Deal_Yaw:	; 0 bytes @ 0x15
	global	??_Track_Run
??_Track_Run:	; 0 bytes @ 0x15
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x15
	global	Deal_Yaw@yaw
Deal_Yaw@yaw:	; 2 bytes @ 0x15
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x16
	ds	1
	global	Deal_Yaw@aim_angel
Deal_Yaw@aim_angel:	; 2 bytes @ 0x17
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x17
	ds	2
	global	??_Deal_Yaw
??_Deal_Yaw:	; 0 bytes @ 0x19
	ds	2
	global	??_Track_ONE
??_Track_ONE:	; 0 bytes @ 0x1B
	global	??_Track_TWO
??_Track_TWO:	; 0 bytes @ 0x1B
	global	??_Track_THREE
??_Track_THREE:	; 0 bytes @ 0x1B
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1C
	ds	1
	global	?_JY62_ShowData
?_JY62_ShowData:	; 0 bytes @ 0x1D
	global	JY62_ShowData@yaw
JY62_ShowData@yaw:	; 2 bytes @ 0x1D
	ds	2
	global	??_JY62_ShowData
??_JY62_ShowData:	; 0 bytes @ 0x1F
	ds	1
	global	JY62_ShowData@str
JY62_ShowData@str:	; 11 bytes @ 0x20
	ds	11
	global	??_main
??_main:	; 0 bytes @ 0x2B
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_JY62_ReceiveData
?_JY62_ReceiveData:	; 0 bytes @ 0x0
	global	?_LCD_Init
?_LCD_Init:	; 0 bytes @ 0x0
	global	?_DELAY
?_DELAY:	; 0 bytes @ 0x0
	global	?_Motor_Init
?_Motor_Init:	; 0 bytes @ 0x0
	global	?_GanWei_Init
?_GanWei_Init:	; 0 bytes @ 0x0
	global	?_point_status
?_point_status:	; 0 bytes @ 0x0
	global	?_Track_ONE
?_Track_ONE:	; 0 bytes @ 0x0
	global	?_Track_TWO
?_Track_TWO:	; 0 bytes @ 0x0
	global	?_Track_THREE
?_Track_THREE:	; 0 bytes @ 0x0
	global	?_Beep_Init
?_Beep_Init:	; 0 bytes @ 0x0
	global	?_Uart_Init
?_Uart_Init:	; 0 bytes @ 0x0
	global	?_uart_service
?_uart_service:	; 0 bytes @ 0x0
	global	?_ENABLE
?_ENABLE:	; 0 bytes @ 0x0
	global	?_ENABLE1
?_ENABLE1:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_PWM_Init
?_PWM_Init:	; 0 bytes @ 0x0
	global	?_PWM1_SetDutyCycle
?_PWM1_SetDutyCycle:	; 0 bytes @ 0x0
	global	?_PWM2_SetDutyCycle
?_PWM2_SetDutyCycle:	; 0 bytes @ 0x0
	global	?_Motor_SetRightSpeed
?_Motor_SetRightSpeed:	; 0 bytes @ 0x0
	global	?_Motor_SetLeftSpeed
?_Motor_SetLeftSpeed:	; 0 bytes @ 0x0
	global	?_HD_Read
?_HD_Read:	; 0 bytes @ 0x0
	global	?_Track_Run
?_Track_Run:	; 0 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	4
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xA
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xA
	ds	3
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xE
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xE
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x11
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x14
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x19
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1C
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1D
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1E
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1E
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x21
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x24
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x28
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x29
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x2C
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x2D
	ds	1
	global	??_JY62_ReceiveData
??_JY62_ReceiveData:	; 0 bytes @ 0x2E
	ds	4
	global	JY62_ReceiveData@sum
JY62_ReceiveData@sum:	; 1 bytes @ 0x32
	ds	1
	global	JY62_ReceiveData@i
JY62_ReceiveData@i:	; 1 bytes @ 0x33
	ds	1
	global	JY62_ReceiveData@RxData
JY62_ReceiveData@RxData:	; 1 bytes @ 0x34
	ds	1
	global	??_uart_service
??_uart_service:	; 0 bytes @ 0x35
	ds	5
	global	uart_service@RxData
uart_service@RxData:	; 1 bytes @ 0x3A
	ds	1
;;Data sizes: Strings 8, constant 10, data 0, bss 31, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     59      74
;; BANK1           80     43      59
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;;		 -> STR_2(CODE[3]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 11
;;		 -> JY62_ShowData@str(BANK1[11]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK1[2]), 
;;
;; S8801$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; LCD_ShowString@str	PTR unsigned char  size(2) Largest target is 11
;;		 -> JY62_ShowData@str(BANK1[11]), STR_1(CODE[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _uart_service in COMMON
;;
;;   _JY62_ReceiveData->___awtoft
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   ___fttol->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _uart_service in BANK0
;;
;;   _uart_service->_JY62_ReceiveData
;;   _JY62_ReceiveData->___ftdiv
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   ___ftdiv->___ftmul
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_JY62_ShowData
;;   _Track_THREE->_Deal_Yaw
;;   _Track_TWO->_Deal_Yaw
;;   _Track_ONE->_Deal_Yaw
;;   _Track_Run->_Motor_Status
;;   _Deal_Yaw->_Motor_Status
;;   _Motor_Status->_Motor_SetRightSpeed
;;   _Motor_Status->_Motor_SetLeftSpeed
;;   _JY62_ShowData->_sprintf
;;   _Motor_SetLeftSpeed->_PWM2_SetDutyCycle
;;   _Motor_SetRightSpeed->_PWM1_SetDutyCycle
;;   _LCD_ShowString->_DELAY
;;   _LCD_Init->_DELAY
;;   _PWM2_SetDutyCycle->___awdiv
;;   _PWM1_SetDutyCycle->___awdiv
;;   _point_status->_Delay_ms
;;   _ENABLE1->_DELAY
;;   _ENABLE->_DELAY
;;   _sprintf->___lwmod
;;   ___awdiv->___wmul
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _uart_service in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _uart_service in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _uart_service in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0   11733
;;                         _Motor_Init
;;                          _Beep_Init
;;                           _LCD_Init
;;                          _Uart_Init
;;                        _GanWei_Init
;;                      _JY62_ShowData
;;                       _point_status
;;                          _Track_ONE
;;                          _Track_TWO
;;                        _Track_THREE
;; ---------------------------------------------------------------------------------
;; (1) _Track_THREE                                          1     1      0    3924
;;                                             27 BANK1      1     1      0
;;                       _Motor_Status
;;                           _Delay_ms
;;                           _Deal_Yaw
;;                          _Track_Run
;; ---------------------------------------------------------------------------------
;; (1) _Track_TWO                                            0     0      0    3832
;;                           _Deal_Yaw
;;                          _Track_Run
;;                       _Motor_Status
;; ---------------------------------------------------------------------------------
;; (1) _Track_ONE                                            0     0      0    2508
;;                           _Deal_Yaw
;;                       _Motor_Status
;; ---------------------------------------------------------------------------------
;; (2) _Track_Run                                            1     1      0    1324
;;                                             21 BANK1      1     1      0
;;                            _HD_Read
;;                       _Motor_Status
;;                           _Delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _Deal_Yaw                                             6     2      4    1276
;;                                             21 BANK1      6     2      4
;;                       _Motor_Status
;; ---------------------------------------------------------------------------------
;; (3) _Motor_Status                                         2     1      1    1232
;;                                             19 BANK1      2     1      1
;;                _Motor_SetRightSpeed
;;                 _Motor_SetLeftSpeed
;; ---------------------------------------------------------------------------------
;; (1) _JY62_ShowData                                       14    12      2    1285
;;                                             29 BANK1     14    12      2
;;                           _LCD_Init
;;                     _LCD_ShowString
;;                            _sprintf
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (4) _Motor_SetLeftSpeed                                   2     2      0     594
;;                                             17 BANK1      2     2      0
;;                  _PWM2_SetDutyCycle
;; ---------------------------------------------------------------------------------
;; (4) _Motor_SetRightSpeed                                  2     2      0     594
;;                                             17 BANK1      2     2      0
;;                  _PWM1_SetDutyCycle
;; ---------------------------------------------------------------------------------
;; (2) _LCD_ShowString                                       6     2      4     273
;;                                              2 BANK1      6     2      4
;;                             _ENABLE
;;                            _ENABLE1
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (2) _LCD_Init                                             0     0      0      92
;;                              _DELAY
;;                             _ENABLE
;; ---------------------------------------------------------------------------------
;; (5) _PWM2_SetDutyCycle                                    2     2      0     437
;;                                             15 BANK1      2     2      0
;;                             ___wmul
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (5) _PWM1_SetDutyCycle                                    2     2      0     437
;;                                             15 BANK1      2     2      0
;;                             ___wmul
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _point_status                                         2     2      0      92
;;                                              6 BANK1      2     2      0
;;                           _Delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _Motor_Init                                           0     0      0       0
;;                           _PWM_Init
;; ---------------------------------------------------------------------------------
;; (3) _ENABLE1                                              0     0      0      46
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (3) _ENABLE                                               0     0      0      46
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                             15    12      3     798
;;                                             14 BANK1     15    12      3
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (6) ___awdiv                                              9     5      4     300
;;                                              6 BANK1      9     5      4
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              6     2      4     159
;;                                              8 BANK1      6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     162
;;                                              0 BANK1      8     4      4
;; ---------------------------------------------------------------------------------
;; (6) ___wmul                                               6     2      4      92
;;                                              0 BANK1      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _HD_Read                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _Delay_ms                                             6     4      2      92
;;                                              0 BANK1      6     4      2
;; ---------------------------------------------------------------------------------
;; (2) _PWM_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _GanWei_Init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _DELAY                                                2     2      0      46
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Uart_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Beep_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _uart_service                                         6     6      0    1823
;;                                             53 BANK0      6     6      0
;;                   _JY62_ReceiveData
;; ---------------------------------------------------------------------------------
;; (8) _JY62_ReceiveData                                     7     7      0    1800
;;                                             46 BANK0      7     7      0
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftdiv
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (9) ___awtoft                                             6     3      3     300
;;                                             12 COMMON     2     2      0
;;                                             10 BANK0      4     1      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (9) ___ftmul                                             16    10      6     535
;;                                             14 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (9) ___ftdiv                                             16    10      6     489
;;                                             30 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (9) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (10) ___ftpack                                            8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 10
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Motor_Init
;;     _PWM_Init
;;   _Beep_Init
;;   _LCD_Init
;;     _DELAY
;;     _ENABLE
;;       _DELAY
;;   _Uart_Init
;;   _GanWei_Init
;;   _JY62_ShowData
;;     _LCD_Init
;;       _DELAY
;;       _ENABLE
;;         _DELAY
;;     _LCD_ShowString
;;       _ENABLE
;;         _DELAY
;;       _ENABLE1
;;         _DELAY
;;       _DELAY
;;     _sprintf
;;       ___lwdiv
;;       ___lwmod
;;         ___lwdiv (ARG)
;;     _DELAY
;;   _point_status
;;     _Delay_ms
;;   _Track_ONE
;;     _Deal_Yaw
;;       _Motor_Status
;;         _Motor_SetRightSpeed
;;           _PWM1_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;         _Motor_SetLeftSpeed
;;           _PWM2_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;     _Motor_Status
;;       _Motor_SetRightSpeed
;;         _PWM1_SetDutyCycle
;;           ___wmul
;;           ___awdiv
;;             ___wmul (ARG)
;;       _Motor_SetLeftSpeed
;;         _PWM2_SetDutyCycle
;;           ___wmul
;;           ___awdiv
;;             ___wmul (ARG)
;;   _Track_TWO
;;     _Deal_Yaw
;;       _Motor_Status
;;         _Motor_SetRightSpeed
;;           _PWM1_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;         _Motor_SetLeftSpeed
;;           _PWM2_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;     _Track_Run
;;       _HD_Read
;;       _Motor_Status
;;         _Motor_SetRightSpeed
;;           _PWM1_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;         _Motor_SetLeftSpeed
;;           _PWM2_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;       _Delay_ms
;;     _Motor_Status
;;       _Motor_SetRightSpeed
;;         _PWM1_SetDutyCycle
;;           ___wmul
;;           ___awdiv
;;             ___wmul (ARG)
;;       _Motor_SetLeftSpeed
;;         _PWM2_SetDutyCycle
;;           ___wmul
;;           ___awdiv
;;             ___wmul (ARG)
;;   _Track_THREE
;;     _Motor_Status
;;       _Motor_SetRightSpeed
;;         _PWM1_SetDutyCycle
;;           ___wmul
;;           ___awdiv
;;             ___wmul (ARG)
;;       _Motor_SetLeftSpeed
;;         _PWM2_SetDutyCycle
;;           ___wmul
;;           ___awdiv
;;             ___wmul (ARG)
;;     _Delay_ms
;;     _Deal_Yaw
;;       _Motor_Status
;;         _Motor_SetRightSpeed
;;           _PWM1_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;         _Motor_SetLeftSpeed
;;           _PWM2_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;     _Track_Run
;;       _HD_Read
;;       _Motor_Status
;;         _Motor_SetRightSpeed
;;           _PWM1_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;         _Motor_SetLeftSpeed
;;           _PWM2_SetDutyCycle
;;             ___wmul
;;             ___awdiv
;;               ___wmul (ARG)
;;       _Delay_ms
;;
;; _uart_service (ROOT)
;;   _JY62_ReceiveData
;;     ___awtoft
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___ftdiv
;;       ___ftpack
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       E       2        0.0%
;;ABS                  0      0      93       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3B      4A       5       92.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     2B      3B       7       73.8%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      A1      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Motor_Init
;;		_Beep_Init
;;		_LCD_Init
;;		_Uart_Init
;;		_GanWei_Init
;;		_JY62_ShowData
;;		_point_status
;;		_Track_ONE
;;		_Track_TWO
;;		_Track_THREE
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\main.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l10845:	
;main.c: 15: Motor_Init();
	fcall	_Motor_Init
	line	16
	
l10847:	
;main.c: 16: Beep_Init();
	fcall	_Beep_Init
	line	17
	
l10849:	
;main.c: 17: LCD_Init();
	fcall	_LCD_Init
	line	18
	
l10851:	
;main.c: 18: Uart_Init();
	fcall	_Uart_Init
	line	19
	
l10853:	
;main.c: 19: GanWei_Init();
	fcall	_GanWei_Init
	goto	l10855
	line	21
;main.c: 21: while (1)
	
l3508:	
	line	23
	
l10855:	
;main.c: 22: {
;main.c: 23: JY62_ShowData(Yaw);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Yaw+1)^080h,w
	clrf	(?_JY62_ShowData+1)^080h
	addwf	(?_JY62_ShowData+1)^080h
	movf	(_Yaw)^080h,w
	clrf	(?_JY62_ShowData)^080h
	addwf	(?_JY62_ShowData)^080h

	fcall	_JY62_ShowData
	line	24
	
l10857:	
;main.c: 24: point_status();
	fcall	_point_status
	line	25
	
l10859:	
;main.c: 25: Track_ONE();
	fcall	_Track_ONE
	line	26
	
l10861:	
;main.c: 26: Track_TWO();
	fcall	_Track_TWO
	line	27
	
l10863:	
;main.c: 27: Track_THREE();
	fcall	_Track_THREE
	goto	l10855
	line	28
	
l3509:	
	line	21
	goto	l10855
	
l3510:	
	line	29
	
l3511:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Track_THREE
psect	text892,local,class=CODE,delta=2
global __ptext892
__ptext892:

;; *************** function _Track_THREE *****************
;; Defined at:
;;		line 125 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Motor_Status
;;		_Delay_ms
;;		_Deal_Yaw
;;		_Track_Run
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text892
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
	line	125
	global	__size_of_Track_THREE
	__size_of_Track_THREE	equ	__end_of_Track_THREE-_Track_THREE
	
_Track_THREE:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Track_THREE: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	127
	
l10823:	
;track.c: 127: Motor_Status(0,0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_Motor_Status)^080h
	movlw	(0)
	fcall	_Motor_Status
	line	128
;track.c: 128: Delay_ms(3000);
	movlw	low(0BB8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0BB8h)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	129
;track.c: 129: Motor_Status(35,20);
	movlw	(014h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Track_THREE+0)^080h+0
	movf	(??_Track_THREE+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(023h)
	fcall	_Motor_Status
	line	130
;track.c: 130: Delay_ms(3000);
	movlw	low(0BB8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0BB8h)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	131
	
l10825:	
;track.c: 131: Deal_Yaw(Yaw,-36);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Yaw+1)^080h,w
	clrf	(?_Deal_Yaw+1)^080h
	addwf	(?_Deal_Yaw+1)^080h
	movf	(_Yaw)^080h,w
	clrf	(?_Deal_Yaw)^080h
	addwf	(?_Deal_Yaw)^080h

	movlw	low(-36)
	movwf	0+(?_Deal_Yaw)^080h+02h
	movlw	high(-36)
	movwf	(0+(?_Deal_Yaw)^080h+02h)+1
	fcall	_Deal_Yaw
	line	134
	
l10827:	
;track.c: 134: if(runflag==1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_runflag)^080h,w
	xorlw	01h
	skipz
	goto	u5581
	goto	u5580
u5581:
	goto	l10831
u5580:
	line	135
	
l10829:	
;track.c: 135: Track_Run();
	fcall	_Track_Run
	goto	l10831
	
l7099:	
	line	138
	
l10831:	
;track.c: 138: if(runflag==2){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_runflag)^080h,w
	xorlw	02h
	skipz
	goto	u5591
	goto	u5590
u5591:
	goto	l10837
u5590:
	line	139
	
l10833:	
;track.c: 139: Motor_Status(0,0);
	clrf	(?_Motor_Status)^080h
	movlw	(0)
	fcall	_Motor_Status
	line	140
;track.c: 140: Delay_ms(3000);
	movlw	low(0BB8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0BB8h)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	141
;track.c: 141: Motor_Status(20,40);
	movlw	(028h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Track_THREE+0)^080h+0
	movf	(??_Track_THREE+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(014h)
	fcall	_Motor_Status
	line	142
;track.c: 142: Delay_ms(3000);
	movlw	low(0BB8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0BB8h)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	143
	
l10835:	
;track.c: 143: Deal_Yaw(Yaw,140);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Yaw+1)^080h,w
	clrf	(?_Deal_Yaw+1)^080h
	addwf	(?_Deal_Yaw+1)^080h
	movf	(_Yaw)^080h,w
	clrf	(?_Deal_Yaw)^080h
	addwf	(?_Deal_Yaw)^080h

	movlw	low(08Ch)
	movwf	0+(?_Deal_Yaw)^080h+02h
	movlw	high(08Ch)
	movwf	(0+(?_Deal_Yaw)^080h+02h)+1
	fcall	_Deal_Yaw
	goto	l10837
	line	144
	
l7100:	
	line	147
	
l10837:	
;track.c: 144: }
;track.c: 147: if(runflag==3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_runflag)^080h,w
	xorlw	03h
	skipz
	goto	u5601
	goto	u5600
u5601:
	goto	l10841
u5600:
	line	148
	
l10839:	
;track.c: 148: Track_Run();
	fcall	_Track_Run
	goto	l10841
	
l7101:	
	line	150
	
l10841:	
;track.c: 150: if(runflag>=4){
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_runflag)^080h,w
	skipc
	goto	u5611
	goto	u5610
u5611:
	goto	l7106
u5610:
	line	151
	
l10843:	
;track.c: 151: Motor_Status(0,0);
	clrf	(?_Motor_Status)^080h
	movlw	(0)
	fcall	_Motor_Status
	goto	l7104
	line	152
;track.c: 152: while(1);
	
l7103:	
	
l7104:	
	goto	l7104
	
l7105:	
	goto	l7106
	line	153
	
l7102:	
	line	155
	
l7106:	
	return
	opt stack 0
GLOBAL	__end_of_Track_THREE
	__end_of_Track_THREE:
;; =============== function _Track_THREE ends ============

	signat	_Track_THREE,88
	global	_Track_TWO
psect	text893,local,class=CODE,delta=2
global __ptext893
__ptext893:

;; *************** function _Track_TWO *****************
;; Defined at:
;;		line 100 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Deal_Yaw
;;		_Track_Run
;;		_Motor_Status
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text893
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
	line	100
	global	__size_of_Track_TWO
	__size_of_Track_TWO	equ	__end_of_Track_TWO-_Track_TWO
	
_Track_TWO:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Track_TWO: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	102
	
l10805:	
;track.c: 102: Deal_Yaw(Yaw,0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Yaw+1)^080h,w
	clrf	(?_Deal_Yaw+1)^080h
	addwf	(?_Deal_Yaw+1)^080h
	movf	(_Yaw)^080h,w
	clrf	(?_Deal_Yaw)^080h
	addwf	(?_Deal_Yaw)^080h

	movlw	low(0)
	movwf	0+(?_Deal_Yaw)^080h+02h
	movlw	high(0)
	movwf	(0+(?_Deal_Yaw)^080h+02h)+1
	fcall	_Deal_Yaw
	line	105
	
l10807:	
;track.c: 105: if(runflag==1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_runflag)^080h,w
	xorlw	01h
	skipz
	goto	u5541
	goto	u5540
u5541:
	goto	l10811
u5540:
	line	106
	
l10809:	
;track.c: 106: Track_Run();
	fcall	_Track_Run
	goto	l10811
	
l7089:	
	line	109
	
l10811:	
;track.c: 109: if(runflag==2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_runflag)^080h,w
	xorlw	02h
	skipz
	goto	u5551
	goto	u5550
u5551:
	goto	l10815
u5550:
	line	110
	
l10813:	
;track.c: 110: Deal_Yaw(Yaw,180);
	movf	(_Yaw+1)^080h,w
	clrf	(?_Deal_Yaw+1)^080h
	addwf	(?_Deal_Yaw+1)^080h
	movf	(_Yaw)^080h,w
	clrf	(?_Deal_Yaw)^080h
	addwf	(?_Deal_Yaw)^080h

	movlw	low(0B4h)
	movwf	0+(?_Deal_Yaw)^080h+02h
	movlw	high(0B4h)
	movwf	(0+(?_Deal_Yaw)^080h+02h)+1
	fcall	_Deal_Yaw
	goto	l10815
	
l7090:	
	line	113
	
l10815:	
;track.c: 113: if(runflag==3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_runflag)^080h,w
	xorlw	03h
	skipz
	goto	u5561
	goto	u5560
u5561:
	goto	l10819
u5560:
	line	114
	
l10817:	
;track.c: 114: Track_Run();
	fcall	_Track_Run
	goto	l10819
	
l7091:	
	line	116
	
l10819:	
;track.c: 116: if(runflag>=4)
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_runflag)^080h,w
	skipc
	goto	u5571
	goto	u5570
u5571:
	goto	l7096
u5570:
	line	118
	
l10821:	
;track.c: 117: {
;track.c: 118: Motor_Status(0,0);
	clrf	(?_Motor_Status)^080h
	movlw	(0)
	fcall	_Motor_Status
	goto	l7094
	line	119
;track.c: 119: while(1);
	
l7093:	
	
l7094:	
	goto	l7094
	
l7095:	
	goto	l7096
	line	120
	
l7092:	
	line	122
	
l7096:	
	return
	opt stack 0
GLOBAL	__end_of_Track_TWO
	__end_of_Track_TWO:
;; =============== function _Track_TWO ends ============

	signat	_Track_TWO,88
	global	_Track_ONE
psect	text894,local,class=CODE,delta=2
global __ptext894
__ptext894:

;; *************** function _Track_ONE *****************
;; Defined at:
;;		line 90 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Deal_Yaw
;;		_Motor_Status
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text894
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
	line	90
	global	__size_of_Track_ONE
	__size_of_Track_ONE	equ	__end_of_Track_ONE-_Track_ONE
	
_Track_ONE:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Track_ONE: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	
l10799:	
;track.c: 91: Deal_Yaw(Yaw,0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Yaw+1)^080h,w
	clrf	(?_Deal_Yaw+1)^080h
	addwf	(?_Deal_Yaw+1)^080h
	movf	(_Yaw)^080h,w
	clrf	(?_Deal_Yaw)^080h
	addwf	(?_Deal_Yaw)^080h

	movlw	low(0)
	movwf	0+(?_Deal_Yaw)^080h+02h
	movlw	high(0)
	movwf	(0+(?_Deal_Yaw)^080h+02h)+1
	fcall	_Deal_Yaw
	line	92
	
l10801:	
;track.c: 92: if(runflag==1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_runflag)^080h,w
	xorlw	01h
	skipz
	goto	u5531
	goto	u5530
u5531:
	goto	l7086
u5530:
	line	94
	
l10803:	
;track.c: 93: {
;track.c: 94: Motor_Status(0,0);
	clrf	(?_Motor_Status)^080h
	movlw	(0)
	fcall	_Motor_Status
	goto	l7084
	line	95
;track.c: 95: while(1);
	
l7083:	
	
l7084:	
	goto	l7084
	
l7085:	
	goto	l7086
	line	96
	
l7082:	
	line	97
	
l7086:	
	return
	opt stack 0
GLOBAL	__end_of_Track_ONE
	__end_of_Track_ONE:
;; =============== function _Track_ONE ends ============

	signat	_Track_ONE,88
	global	_Track_Run
psect	text895,local,class=CODE,delta=2
global __ptext895
__ptext895:

;; *************** function _Track_Run *****************
;; Defined at:
;;		line 33 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_HD_Read
;;		_Motor_Status
;;		_Delay_ms
;; This function is called by:
;;		_Track_TWO
;;		_Track_THREE
;; This function uses a non-reentrant model
;;
psect	text895
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
	line	33
	global	__size_of_Track_Run
	__size_of_Track_Run	equ	__end_of_Track_Run-_Track_Run
	
_Track_Run:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Track_Run: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l10669:	
;track.c: 34: HD_Read();
	fcall	_HD_Read
	line	35
	
l10671:	
;track.c: 35: if(HD[0]==1 && HD[1]==1 && HD[2]==1 && HD[3]==0 && HD[4]==0 && HD[5]==1 && HD[6]==1 && HD[7]==1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_HD)^080h,w
	xorlw	01h
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l10689
u4970:
	
l10673:	
	movf	0+(_HD)^080h+01h,w
	xorlw	01h
	skipz
	goto	u4981
	goto	u4980
u4981:
	goto	l10689
u4980:
	
l10675:	
	movf	0+(_HD)^080h+02h,w
	xorlw	01h
	skipz
	goto	u4991
	goto	u4990
u4991:
	goto	l10689
u4990:
	
l10677:	
	movf	0+(_HD)^080h+03h,f
	skipz
	goto	u5001
	goto	u5000
u5001:
	goto	l10689
u5000:
	
l10679:	
	movf	0+(_HD)^080h+04h,f
	skipz
	goto	u5011
	goto	u5010
u5011:
	goto	l10689
u5010:
	
l10681:	
	movf	0+(_HD)^080h+05h,w
	xorlw	01h
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l10689
u5020:
	
l10683:	
	movf	0+(_HD)^080h+06h,w
	xorlw	01h
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l10689
u5030:
	
l10685:	
	movf	0+(_HD)^080h+07h,w
	xorlw	01h
	skipz
	goto	u5041
	goto	u5040
u5041:
	goto	l10689
u5040:
	line	37
	
l10687:	
;track.c: 36: {
;track.c: 37: Motor_Status(30,30);
	movlw	(01Eh)
	movwf	(??_Track_Run+0)^080h+0
	movf	(??_Track_Run+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(01Eh)
	fcall	_Motor_Status
	line	38
;track.c: 38: Delay_ms(10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0Ah)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	39
;track.c: 39: }else if((HD[0]==0 || HD[1]==0) && HD[2]==1 && HD[3]==1 && HD[4]==1 && HD[5]==1 && HD[6]==1 && HD[7]==1)
	goto	l7073
	
l7047:	
	
l10689:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_HD)^080h,w
	skipz
	goto	u5050
	goto	l10693
u5050:
	
l10691:	
	movf	0+(_HD)^080h+01h,f
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l10707
u5060:
	goto	l10693
	
l7051:	
	
l10693:	
	movf	0+(_HD)^080h+02h,w
	xorlw	01h
	skipz
	goto	u5071
	goto	u5070
u5071:
	goto	l10707
u5070:
	
l10695:	
	movf	0+(_HD)^080h+03h,w
	xorlw	01h
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l10707
u5080:
	
l10697:	
	movf	0+(_HD)^080h+04h,w
	xorlw	01h
	skipz
	goto	u5091
	goto	u5090
u5091:
	goto	l10707
u5090:
	
l10699:	
	movf	0+(_HD)^080h+05h,w
	xorlw	01h
	skipz
	goto	u5101
	goto	u5100
u5101:
	goto	l10707
u5100:
	
l10701:	
	movf	0+(_HD)^080h+06h,w
	xorlw	01h
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l10707
u5110:
	
l10703:	
	movf	0+(_HD)^080h+07h,w
	xorlw	01h
	skipz
	goto	u5121
	goto	u5120
u5121:
	goto	l10707
u5120:
	line	41
	
l10705:	
;track.c: 40: {
;track.c: 41: Motor_Status(20,35);
	movlw	(023h)
	movwf	(??_Track_Run+0)^080h+0
	movf	(??_Track_Run+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(014h)
	fcall	_Motor_Status
	line	42
;track.c: 42: Delay_ms(10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0Ah)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	43
;track.c: 43: }else if(HD[0]==1 && HD[1]==1 && HD[2]==1 && HD[3]==1 && HD[4]==1 && HD[5]==1 && (HD[6]==0 || HD[7]==0))
	goto	l7073
	
l7049:	
	
l10707:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_HD)^080h,w
	xorlw	01h
	skipz
	goto	u5131
	goto	u5130
u5131:
	goto	l10725
u5130:
	
l10709:	
	movf	0+(_HD)^080h+01h,w
	xorlw	01h
	skipz
	goto	u5141
	goto	u5140
u5141:
	goto	l10725
u5140:
	
l10711:	
	movf	0+(_HD)^080h+02h,w
	xorlw	01h
	skipz
	goto	u5151
	goto	u5150
u5151:
	goto	l10725
u5150:
	
l10713:	
	movf	0+(_HD)^080h+03h,w
	xorlw	01h
	skipz
	goto	u5161
	goto	u5160
u5161:
	goto	l10725
u5160:
	
l10715:	
	movf	0+(_HD)^080h+04h,w
	xorlw	01h
	skipz
	goto	u5171
	goto	u5170
u5171:
	goto	l10725
u5170:
	
l10717:	
	movf	0+(_HD)^080h+05h,w
	xorlw	01h
	skipz
	goto	u5181
	goto	u5180
u5181:
	goto	l10725
u5180:
	
l10719:	
	movf	0+(_HD)^080h+06h,w
	skipz
	goto	u5190
	goto	l10723
u5190:
	
l10721:	
	movf	0+(_HD)^080h+07h,f
	skipz
	goto	u5201
	goto	u5200
u5201:
	goto	l10725
u5200:
	goto	l10723
	
l7055:	
	line	45
	
l10723:	
;track.c: 44: {
;track.c: 45: Motor_Status(35,20);
	movlw	(014h)
	movwf	(??_Track_Run+0)^080h+0
	movf	(??_Track_Run+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(023h)
	fcall	_Motor_Status
	line	46
;track.c: 46: Delay_ms(10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0Ah)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	47
;track.c: 47: }else if(HD[0]==1 && (HD[1]==0 || HD[2]==0) && HD[3]==1 && HD[4]==1 && HD[5]==1 && HD[6]==1 && HD[7]==1)
	goto	l7073
	
l7053:	
	
l10725:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_HD)^080h,w
	xorlw	01h
	skipz
	goto	u5211
	goto	u5210
u5211:
	goto	l10743
u5210:
	
l10727:	
	movf	0+(_HD)^080h+01h,w
	skipz
	goto	u5220
	goto	l10731
u5220:
	
l10729:	
	movf	0+(_HD)^080h+02h,f
	skipz
	goto	u5231
	goto	u5230
u5231:
	goto	l10743
u5230:
	goto	l10731
	
l7059:	
	
l10731:	
	movf	0+(_HD)^080h+03h,w
	xorlw	01h
	skipz
	goto	u5241
	goto	u5240
u5241:
	goto	l10743
u5240:
	
l10733:	
	movf	0+(_HD)^080h+04h,w
	xorlw	01h
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l10743
u5250:
	
l10735:	
	movf	0+(_HD)^080h+05h,w
	xorlw	01h
	skipz
	goto	u5261
	goto	u5260
u5261:
	goto	l10743
u5260:
	
l10737:	
	movf	0+(_HD)^080h+06h,w
	xorlw	01h
	skipz
	goto	u5271
	goto	u5270
u5271:
	goto	l10743
u5270:
	
l10739:	
	movf	0+(_HD)^080h+07h,w
	xorlw	01h
	skipz
	goto	u5281
	goto	u5280
u5281:
	goto	l10743
u5280:
	line	49
	
l10741:	
;track.c: 48: {
;track.c: 49: Motor_Status(20,35);
	movlw	(023h)
	movwf	(??_Track_Run+0)^080h+0
	movf	(??_Track_Run+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(014h)
	fcall	_Motor_Status
	line	50
;track.c: 50: Delay_ms(10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0Ah)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	51
;track.c: 51: }else if(HD[0]==1 && HD[1]==1 && (HD[2]==0 || HD[3]==0) && HD[4]==1 && HD[5]==1 && HD[6]==1 && HD[7]==1)
	goto	l7073
	
l7057:	
	
l10743:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_HD)^080h,w
	xorlw	01h
	skipz
	goto	u5291
	goto	u5290
u5291:
	goto	l10761
u5290:
	
l10745:	
	movf	0+(_HD)^080h+01h,w
	xorlw	01h
	skipz
	goto	u5301
	goto	u5300
u5301:
	goto	l10761
u5300:
	
l10747:	
	movf	0+(_HD)^080h+02h,w
	skipz
	goto	u5310
	goto	l10751
u5310:
	
l10749:	
	movf	0+(_HD)^080h+03h,f
	skipz
	goto	u5321
	goto	u5320
u5321:
	goto	l10761
u5320:
	goto	l10751
	
l7063:	
	
l10751:	
	movf	0+(_HD)^080h+04h,w
	xorlw	01h
	skipz
	goto	u5331
	goto	u5330
u5331:
	goto	l10761
u5330:
	
l10753:	
	movf	0+(_HD)^080h+05h,w
	xorlw	01h
	skipz
	goto	u5341
	goto	u5340
u5341:
	goto	l10761
u5340:
	
l10755:	
	movf	0+(_HD)^080h+06h,w
	xorlw	01h
	skipz
	goto	u5351
	goto	u5350
u5351:
	goto	l10761
u5350:
	
l10757:	
	movf	0+(_HD)^080h+07h,w
	xorlw	01h
	skipz
	goto	u5361
	goto	u5360
u5361:
	goto	l10761
u5360:
	line	53
	
l10759:	
;track.c: 52: {
;track.c: 53: Motor_Status(20,35);
	movlw	(023h)
	movwf	(??_Track_Run+0)^080h+0
	movf	(??_Track_Run+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(014h)
	fcall	_Motor_Status
	line	54
;track.c: 54: Delay_ms(10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0Ah)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	55
;track.c: 55: }else if(HD[0]==1 && HD[1]==1 && HD[2]==1 && HD[3]==1 && HD[4]==1 && (HD[5]==0 || HD[6]==0) && HD[7]==1)
	goto	l7073
	
l7061:	
	
l10761:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_HD)^080h,w
	xorlw	01h
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l10779
u5370:
	
l10763:	
	movf	0+(_HD)^080h+01h,w
	xorlw	01h
	skipz
	goto	u5381
	goto	u5380
u5381:
	goto	l10779
u5380:
	
l10765:	
	movf	0+(_HD)^080h+02h,w
	xorlw	01h
	skipz
	goto	u5391
	goto	u5390
u5391:
	goto	l10779
u5390:
	
l10767:	
	movf	0+(_HD)^080h+03h,w
	xorlw	01h
	skipz
	goto	u5401
	goto	u5400
u5401:
	goto	l10779
u5400:
	
l10769:	
	movf	0+(_HD)^080h+04h,w
	xorlw	01h
	skipz
	goto	u5411
	goto	u5410
u5411:
	goto	l10779
u5410:
	
l10771:	
	movf	0+(_HD)^080h+05h,w
	skipz
	goto	u5420
	goto	l10775
u5420:
	
l10773:	
	movf	0+(_HD)^080h+06h,f
	skipz
	goto	u5431
	goto	u5430
u5431:
	goto	l10779
u5430:
	goto	l10775
	
l7067:	
	
l10775:	
	movf	0+(_HD)^080h+07h,w
	xorlw	01h
	skipz
	goto	u5441
	goto	u5440
u5441:
	goto	l10779
u5440:
	line	57
	
l10777:	
;track.c: 56: {
;track.c: 57: Motor_Status(35,20);
	movlw	(014h)
	movwf	(??_Track_Run+0)^080h+0
	movf	(??_Track_Run+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(023h)
	fcall	_Motor_Status
	line	58
;track.c: 58: Delay_ms(10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0Ah)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	59
;track.c: 59: }else if(HD[0]==1 && HD[1]==1 && HD[2]==1 && HD[3]==1 && (HD[4]==0 || HD[5]==0) && HD[6]==1 && HD[7]==1)
	goto	l7073
	
l7065:	
	
l10779:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_HD)^080h,w
	xorlw	01h
	skipz
	goto	u5451
	goto	u5450
u5451:
	goto	l10797
u5450:
	
l10781:	
	movf	0+(_HD)^080h+01h,w
	xorlw	01h
	skipz
	goto	u5461
	goto	u5460
u5461:
	goto	l10797
u5460:
	
l10783:	
	movf	0+(_HD)^080h+02h,w
	xorlw	01h
	skipz
	goto	u5471
	goto	u5470
u5471:
	goto	l10797
u5470:
	
l10785:	
	movf	0+(_HD)^080h+03h,w
	xorlw	01h
	skipz
	goto	u5481
	goto	u5480
u5481:
	goto	l10797
u5480:
	
l10787:	
	movf	0+(_HD)^080h+04h,w
	skipz
	goto	u5490
	goto	l10791
u5490:
	
l10789:	
	movf	0+(_HD)^080h+05h,f
	skipz
	goto	u5501
	goto	u5500
u5501:
	goto	l10797
u5500:
	goto	l10791
	
l7071:	
	
l10791:	
	movf	0+(_HD)^080h+06h,w
	xorlw	01h
	skipz
	goto	u5511
	goto	u5510
u5511:
	goto	l10797
u5510:
	
l10793:	
	movf	0+(_HD)^080h+07h,w
	xorlw	01h
	skipz
	goto	u5521
	goto	u5520
u5521:
	goto	l10797
u5520:
	line	61
	
l10795:	
;track.c: 60: {
;track.c: 61: Motor_Status(35,20);
	movlw	(014h)
	movwf	(??_Track_Run+0)^080h+0
	movf	(??_Track_Run+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(023h)
	fcall	_Motor_Status
	line	62
;track.c: 62: Delay_ms(10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(0Ah)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	63
;track.c: 63: }else{
	goto	l7073
	
l7069:	
	line	64
	
l10797:	
;track.c: 64: Motor_Status(30,30);
	movlw	(01Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Track_Run+0)^080h+0
	movf	(??_Track_Run+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(01Eh)
	fcall	_Motor_Status
	goto	l7073
	line	65
	
l7072:	
	goto	l7073
	
l7068:	
	goto	l7073
	
l7064:	
	goto	l7073
	
l7060:	
	goto	l7073
	
l7056:	
	goto	l7073
	
l7052:	
	goto	l7073
	
l7048:	
	line	66
	
l7073:	
	return
	opt stack 0
GLOBAL	__end_of_Track_Run
	__end_of_Track_Run:
;; =============== function _Track_Run ends ============

	signat	_Track_Run,88
	global	_Deal_Yaw
psect	text896,local,class=CODE,delta=2
global __ptext896
__ptext896:

;; *************** function _Deal_Yaw *****************
;; Defined at:
;;		line 10 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\node.c"
;; Parameters:    Size  Location     Type
;;  yaw             2   21[BANK1 ] int 
;;  aim_angel       2   23[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Motor_Status
;; This function is called by:
;;		_Track_ONE
;;		_Track_TWO
;;		_Track_THREE
;; This function uses a non-reentrant model
;;
psect	text896
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\node.c"
	line	10
	global	__size_of_Deal_Yaw
	__size_of_Deal_Yaw	equ	__end_of_Deal_Yaw-_Deal_Yaw
	
_Deal_Yaw:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Deal_Yaw: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	11
	
l10645:	
;node.c: 11: offset=aim_angel-yaw;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(Deal_Yaw@yaw)^080h,w
	movwf	(??_Deal_Yaw+0)^080h+0
	comf	(Deal_Yaw@yaw+1)^080h,w
	movwf	((??_Deal_Yaw+0)^080h+0+1)
	incf	(??_Deal_Yaw+0)^080h+0,f
	skipnz
	incf	((??_Deal_Yaw+0)^080h+0+1),f
	movf	(Deal_Yaw@aim_angel)^080h,w
	addwf	0+(??_Deal_Yaw+0)^080h+0,w
	movwf	(_offset)^080h
	movf	(Deal_Yaw@aim_angel+1)^080h,w
	skipnc
	incf	(Deal_Yaw@aim_angel+1)^080h,w
	addwf	1+(??_Deal_Yaw+0)^080h+0,w
	movwf	1+(_offset)^080h
	line	12
	
l10647:	
;node.c: 12: if(offset>180)
	movf	(_offset+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0B5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4915
	movlw	low(0B5h)
	subwf	(_offset)^080h,w
u4915:

	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l10651
u4910:
	line	13
	
l10649:	
;node.c: 13: offset-=360;
	movlw	low(-360)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_offset)^080h,f
	skipnc
	incf	(_offset+1)^080h,f
	movlw	high(-360)
	addwf	(_offset+1)^080h,f
	goto	l10651
	
l6314:	
	line	14
	
l10651:	
;node.c: 14: if(offset<-180)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_offset+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(-180))^80h
	subwf	btemp+1,w
	skipz
	goto	u4925
	movlw	low(-180)
	subwf	(_offset)^080h,w
u4925:

	skipnc
	goto	u4921
	goto	u4920
u4921:
	goto	l10655
u4920:
	line	15
	
l10653:	
;node.c: 15: offset+=360;
	movlw	low(0168h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_offset)^080h,f
	skipnc
	incf	(_offset+1)^080h,f
	movlw	high(0168h)
	addwf	(_offset+1)^080h,f
	goto	l10655
	
l6315:	
	line	17
	
l10655:	
;node.c: 17: if(30>offset&&offset>0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_offset+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4935
	movlw	low(01Eh)
	subwf	(_offset)^080h,w
u4935:

	skipnc
	goto	u4931
	goto	u4930
u4931:
	goto	l10661
u4930:
	
l10657:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_offset+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4945
	movlw	low(01h)
	subwf	(_offset)^080h,w
u4945:

	skipc
	goto	u4941
	goto	u4940
u4941:
	goto	l10661
u4940:
	line	18
	
l10659:	
;node.c: 18: Motor_Status(30,30+offset);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_offset)^080h,w
	addlw	01Eh
	movwf	(??_Deal_Yaw+0)^080h+0
	movf	(??_Deal_Yaw+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(01Eh)
	fcall	_Motor_Status
	goto	l6320
	line	19
	
l6316:	
	
l10661:	
;node.c: 19: else if(-30<offset&&offset<0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_offset+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(-29))^80h
	subwf	btemp+1,w
	skipz
	goto	u4955
	movlw	low(-29)
	subwf	(_offset)^080h,w
u4955:

	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l10667
u4950:
	
l10663:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(_offset+1)^080h,7
	goto	u4961
	goto	u4960
u4961:
	goto	l10667
u4960:
	line	20
	
l10665:	
;node.c: 20: Motor_Status(30-offset,30);
	movlw	(01Eh)
	movwf	(??_Deal_Yaw+0)^080h+0
	movf	(??_Deal_Yaw+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	decf	(_offset)^080h,w
	xorlw	0ffh
	addlw	01Eh
	fcall	_Motor_Status
	goto	l6320
	line	21
	
l6318:	
	line	22
	
l10667:	
;node.c: 21: else
;node.c: 22: Motor_Status(20,20);
	movlw	(014h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Deal_Yaw+0)^080h+0
	movf	(??_Deal_Yaw+0)^080h+0,w
	movwf	(?_Motor_Status)^080h
	movlw	(014h)
	fcall	_Motor_Status
	goto	l6320
	
l6319:	
	goto	l6320
	
l6317:	
	line	23
	
l6320:	
	return
	opt stack 0
GLOBAL	__end_of_Deal_Yaw
	__end_of_Deal_Yaw:
;; =============== function _Deal_Yaw ends ============

	signat	_Deal_Yaw,8312
	global	_Motor_Status
psect	text897,local,class=CODE,delta=2
global __ptext897
__ptext897:

;; *************** function _Motor_Status *****************
;; Defined at:
;;		line 86 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\motor.c"
;; Parameters:    Size  Location     Type
;;  speedL          1    wreg     char 
;;  speedR          1   19[BANK1 ] char 
;; Auto vars:     Size  Location     Type
;;  speedL          1   20[BANK1 ] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       1       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Motor_SetRightSpeed
;;		_Motor_SetLeftSpeed
;; This function is called by:
;;		_Deal_Yaw
;;		_Track_Run
;;		_Track_ONE
;;		_Track_TWO
;;		_Track_THREE
;;		_Motor_Stop
;;		_Motor_Forward
;;		_Motor_Backward
;;		_Motor_TurnLeft
;;		_Motor_TurnRight
;; This function uses a non-reentrant model
;;
psect	text897
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\motor.c"
	line	86
	global	__size_of_Motor_Status
	__size_of_Motor_Status	equ	__end_of_Motor_Status-_Motor_Status
	
_Motor_Status:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Motor_Status: [wreg+status,2+status,0+pclath+cstack]
;Motor_Status@speedL stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Motor_Status@speedL)^080h
	line	87
	
l10643:	
;motor.c: 87: Motor_SetRightSpeed(speedR);
	movf	(Motor_Status@speedR)^080h,w
	fcall	_Motor_SetRightSpeed
	line	88
;motor.c: 88: Motor_SetLeftSpeed(speedL);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_Status@speedL)^080h,w
	fcall	_Motor_SetLeftSpeed
	line	89
	
l5610:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Status
	__end_of_Motor_Status:
;; =============== function _Motor_Status ends ============

	signat	_Motor_Status,8312
	global	_JY62_ShowData
psect	text898,local,class=CODE,delta=2
global __ptext898
__ptext898:

;; *************** function _JY62_ShowData *****************
;; Defined at:
;;		line 83 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\JY62.c"
;; Parameters:    Size  Location     Type
;;  yaw             2   29[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  str            11   32[BANK1 ] unsigned char [11]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LCD_Init
;;		_LCD_ShowString
;;		_sprintf
;;		_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text898
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\JY62.c"
	line	83
	global	__size_of_JY62_ShowData
	__size_of_JY62_ShowData	equ	__end_of_JY62_ShowData-_JY62_ShowData
	
_JY62_ShowData:	
	opt	stack 0
; Regs used in _JY62_ShowData: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	85
	
l10633:	
;JY62.c: 84: unsigned char str[11];
;JY62.c: 85: LCD_Init();
	fcall	_LCD_Init
	line	86
	
l10635:	
;JY62.c: 86: LCD_ShowString("Yaw:", 0, 0);
	movlw	low((STR_1-__stringbase))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_LCD_ShowString)^080h
	movlw	80h
	movwf	(?_LCD_ShowString+1)^080h
	clrf	0+(?_LCD_ShowString)^080h+02h
	clrf	0+(?_LCD_ShowString)^080h+03h
	fcall	_LCD_ShowString
	line	88
	
l10637:	
;JY62.c: 88: sprintf(str, "%d", yaw);
	movlw	((STR_2-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_JY62_ShowData+0)^080h+0
	movf	(??_JY62_ShowData+0)^080h+0,w
	movwf	(?_sprintf)^080h
	movf	(JY62_ShowData@yaw+1)^080h,w
	clrf	1+(?_sprintf)^080h+01h
	addwf	1+(?_sprintf)^080h+01h
	movf	(JY62_ShowData@yaw)^080h,w
	clrf	0+(?_sprintf)^080h+01h
	addwf	0+(?_sprintf)^080h+01h

	movlw	(JY62_ShowData@str)&0ffh
	fcall	_sprintf
	line	89
	
l10639:	
;JY62.c: 89: LCD_ShowString(str, 0, 4);
	movlw	(JY62_ShowData@str&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_LCD_ShowString)^080h
	movlw	(0x1/2)
	movwf	(?_LCD_ShowString+1)^080h
	clrf	0+(?_LCD_ShowString)^080h+02h
	movlw	(04h)
	movwf	(??_JY62_ShowData+0)^080h+0
	movf	(??_JY62_ShowData+0)^080h+0,w
	movwf	0+(?_LCD_ShowString)^080h+03h
	fcall	_LCD_ShowString
	line	91
	
l10641:	
;JY62.c: 91: DELAY();
	fcall	_DELAY
	line	93
	
l1409:	
	return
	opt stack 0
GLOBAL	__end_of_JY62_ShowData
	__end_of_JY62_ShowData:
;; =============== function _JY62_ShowData ends ============

	signat	_JY62_ShowData,4216
	global	_Motor_SetLeftSpeed
psect	text899,local,class=CODE,delta=2
global __ptext899
__ptext899:

;; *************** function _Motor_SetLeftSpeed *****************
;; Defined at:
;;		line 61 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\motor.c"
;; Parameters:    Size  Location     Type
;;  speed           1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  speed           1   18[BANK1 ] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_PWM2_SetDutyCycle
;; This function is called by:
;;		_Motor_Status
;; This function uses a non-reentrant model
;;
psect	text899
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\motor.c"
	line	61
	global	__size_of_Motor_SetLeftSpeed
	__size_of_Motor_SetLeftSpeed	equ	__end_of_Motor_SetLeftSpeed-_Motor_SetLeftSpeed
	
_Motor_SetLeftSpeed:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Motor_SetLeftSpeed: [wreg+status,2+status,0+pclath+cstack]
;Motor_SetLeftSpeed@speed stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Motor_SetLeftSpeed@speed)^080h
	line	62
	
l10615:	
;motor.c: 62: if(speed >100) {
	movf	(Motor_SetLeftSpeed@speed)^080h,w
	xorlw	80h
	addlw	-((065h)^80h)
	skipc
	goto	u4861
	goto	u4860
u4861:
	goto	l10619
u4860:
	line	63
	
l10617:	
;motor.c: 63: speed = 100;
	movlw	(064h)
	movwf	(??_Motor_SetLeftSpeed+0)^080h+0
	movf	(??_Motor_SetLeftSpeed+0)^080h+0,w
	movwf	(Motor_SetLeftSpeed@speed)^080h
	line	64
;motor.c: 64: } else if(speed < -100) {
	goto	l5600
	
l5599:	
	
l10619:	
	movf	(Motor_SetLeftSpeed@speed)^080h,w
	xorlw	80h
	addlw	-((-100)^80h)
	skipnc
	goto	u4871
	goto	u4870
u4871:
	goto	l5600
u4870:
	line	65
	
l10621:	
;motor.c: 65: speed = -100;
	movlw	(-100)
	movwf	(??_Motor_SetLeftSpeed+0)^080h+0
	movf	(??_Motor_SetLeftSpeed+0)^080h+0,w
	movwf	(Motor_SetLeftSpeed@speed)^080h
	goto	l5600
	line	66
	
l5601:	
	line	68
	
l5600:	
;motor.c: 66: }
;motor.c: 68: if (speed > 0) {
	movf	(Motor_SetLeftSpeed@speed)^080h,w
	xorlw	80h
	addlw	-((01h)^80h)
	skipc
	goto	u4881
	goto	u4880
u4881:
	goto	l10625
u4880:
	line	69
	
l10623:	
;motor.c: 69: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	70
;motor.c: 70: RC5 = 0;
	bcf	(61/8),(61)&7
	line	71
;motor.c: 71: } else if(speed == 0){
	goto	l5603
	
l5602:	
	
l10625:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_SetLeftSpeed@speed)^080h,f
	skipz
	goto	u4891
	goto	u4890
u4891:
	goto	l5604
u4890:
	line	72
	
l10627:	
;motor.c: 72: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	73
;motor.c: 73: RC5 = 0;
	bcf	(61/8),(61)&7
	line	74
;motor.c: 74: } else {
	goto	l5603
	
l5604:	
	line	75
;motor.c: 75: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	76
;motor.c: 76: RC5 = 1;
	bsf	(61/8),(61)&7
	goto	l5603
	line	77
	
l5605:	
	
l5603:	
	line	79
;motor.c: 77: }
;motor.c: 79: if(speed < 0) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(Motor_SetLeftSpeed@speed)^080h,7
	goto	u4901
	goto	u4900
u4901:
	goto	l10631
u4900:
	line	80
	
l10629:	
;motor.c: 80: speed = -speed;
	comf	(Motor_SetLeftSpeed@speed)^080h,f
	incf	(Motor_SetLeftSpeed@speed)^080h,f
	goto	l10631
	line	81
	
l5606:	
	line	82
	
l10631:	
;motor.c: 81: }
;motor.c: 82: PWM2_SetDutyCycle(speed);
	movf	(Motor_SetLeftSpeed@speed)^080h,w
	fcall	_PWM2_SetDutyCycle
	line	83
	
l5607:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_SetLeftSpeed
	__end_of_Motor_SetLeftSpeed:
;; =============== function _Motor_SetLeftSpeed ends ============

	signat	_Motor_SetLeftSpeed,4216
	global	_Motor_SetRightSpeed
psect	text900,local,class=CODE,delta=2
global __ptext900
__ptext900:

;; *************** function _Motor_SetRightSpeed *****************
;; Defined at:
;;		line 37 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\motor.c"
;; Parameters:    Size  Location     Type
;;  speed           1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  speed           1   18[BANK1 ] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_PWM1_SetDutyCycle
;; This function is called by:
;;		_Motor_Status
;; This function uses a non-reentrant model
;;
psect	text900
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\motor.c"
	line	37
	global	__size_of_Motor_SetRightSpeed
	__size_of_Motor_SetRightSpeed	equ	__end_of_Motor_SetRightSpeed-_Motor_SetRightSpeed
	
_Motor_SetRightSpeed:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Motor_SetRightSpeed: [wreg+status,2+status,0+pclath+cstack]
;Motor_SetRightSpeed@speed stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Motor_SetRightSpeed@speed)^080h
	line	38
	
l10597:	
;motor.c: 38: if(speed >100) {
	movf	(Motor_SetRightSpeed@speed)^080h,w
	xorlw	80h
	addlw	-((065h)^80h)
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l10601
u4810:
	line	39
	
l10599:	
;motor.c: 39: speed = 100;
	movlw	(064h)
	movwf	(??_Motor_SetRightSpeed+0)^080h+0
	movf	(??_Motor_SetRightSpeed+0)^080h+0,w
	movwf	(Motor_SetRightSpeed@speed)^080h
	line	40
;motor.c: 40: } else if(speed < -100) {
	goto	l5589
	
l5588:	
	
l10601:	
	movf	(Motor_SetRightSpeed@speed)^080h,w
	xorlw	80h
	addlw	-((-100)^80h)
	skipnc
	goto	u4821
	goto	u4820
u4821:
	goto	l5589
u4820:
	line	41
	
l10603:	
;motor.c: 41: speed = -100;
	movlw	(-100)
	movwf	(??_Motor_SetRightSpeed+0)^080h+0
	movf	(??_Motor_SetRightSpeed+0)^080h+0,w
	movwf	(Motor_SetRightSpeed@speed)^080h
	goto	l5589
	line	42
	
l5590:	
	line	44
	
l5589:	
;motor.c: 42: }
;motor.c: 44: if (speed > 0) {
	movf	(Motor_SetRightSpeed@speed)^080h,w
	xorlw	80h
	addlw	-((01h)^80h)
	skipc
	goto	u4831
	goto	u4830
u4831:
	goto	l10607
u4830:
	line	45
	
l10605:	
;motor.c: 45: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	46
;motor.c: 46: RC3 = 0;
	bcf	(59/8),(59)&7
	line	47
;motor.c: 47: } else if(speed == 0){
	goto	l5592
	
l5591:	
	
l10607:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Motor_SetRightSpeed@speed)^080h,f
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l5593
u4840:
	line	48
	
l10609:	
;motor.c: 48: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	49
;motor.c: 49: RC3 = 0;
	bcf	(59/8),(59)&7
	line	50
;motor.c: 50: } else {
	goto	l5592
	
l5593:	
	line	51
;motor.c: 51: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	52
;motor.c: 52: RC3 = 1;
	bsf	(59/8),(59)&7
	goto	l5592
	line	53
	
l5594:	
	
l5592:	
	line	55
;motor.c: 53: }
;motor.c: 55: if(speed < 0) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(Motor_SetRightSpeed@speed)^080h,7
	goto	u4851
	goto	u4850
u4851:
	goto	l10613
u4850:
	line	56
	
l10611:	
;motor.c: 56: speed = -speed;
	comf	(Motor_SetRightSpeed@speed)^080h,f
	incf	(Motor_SetRightSpeed@speed)^080h,f
	goto	l10613
	line	57
	
l5595:	
	line	58
	
l10613:	
;motor.c: 57: }
;motor.c: 58: PWM1_SetDutyCycle(speed);
	movf	(Motor_SetRightSpeed@speed)^080h,w
	fcall	_PWM1_SetDutyCycle
	line	59
	
l5596:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_SetRightSpeed
	__end_of_Motor_SetRightSpeed:
;; =============== function _Motor_SetRightSpeed ends ============

	signat	_Motor_SetRightSpeed,4216
	global	_LCD_ShowString
psect	text901,local,class=CODE,delta=2
global __ptext901
__ptext901:

;; *************** function _LCD_ShowString *****************
;; Defined at:
;;		line 48 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK1 ] PTR unsigned char 
;;		 -> JY62_ShowData@str(11), STR_1(5), 
;;  row             1    4[BANK1 ] unsigned char 
;;  col             1    5[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    7[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ENABLE
;;		_ENABLE1
;;		_DELAY
;; This function is called by:
;;		_JY62_ShowData
;; This function uses a non-reentrant model
;;
psect	text901
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
	line	48
	global	__size_of_LCD_ShowString
	__size_of_LCD_ShowString	equ	__end_of_LCD_ShowString-_LCD_ShowString
	
_LCD_ShowString:	
;; using string table level
	opt	stack 1
; Regs used in _LCD_ShowString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	50
	
l10577:	
;LCD.c: 49: unsigned char address;
;LCD.c: 50: if (row == 0) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_ShowString@row)^080h,f
	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l10581
u4790:
	line	51
	
l10579:	
;LCD.c: 51: address = 0x80 + col;
	movf	(LCD_ShowString@col)^080h,w
	addlw	080h
	movwf	(??_LCD_ShowString+0)^080h+0
	movf	(??_LCD_ShowString+0)^080h+0,w
	movwf	(LCD_ShowString@address)^080h
	line	52
;LCD.c: 52: } else {
	goto	l10583
	
l2111:	
	line	53
	
l10581:	
;LCD.c: 53: address = 0xC0 + col;
	movf	(LCD_ShowString@col)^080h,w
	addlw	0C0h
	movwf	(??_LCD_ShowString+0)^080h+0
	movf	(??_LCD_ShowString+0)^080h+0,w
	movwf	(LCD_ShowString@address)^080h
	goto	l10583
	line	54
	
l2112:	
	line	55
	
l10583:	
;LCD.c: 54: }
;LCD.c: 55: PORTD = address;
	movf	(LCD_ShowString@address)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	56
	
l10585:	
;LCD.c: 56: ENABLE();
	fcall	_ENABLE
	line	58
;LCD.c: 58: while (*str != '\0') {
	goto	l10595
	
l2114:	
	line	59
	
l10587:	
;LCD.c: 59: PORTD = *str++;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_ShowString@str+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_ShowString@str)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	movwf	(8)	;volatile
	
l10589:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(LCD_ShowString@str)^080h,f
	skipnc
	incf	(LCD_ShowString@str+1)^080h,f
	movlw	high(01h)
	addwf	(LCD_ShowString@str+1)^080h,f
	line	60
	
l10591:	
;LCD.c: 60: ENABLE1();
	fcall	_ENABLE1
	line	61
	
l10593:	
;LCD.c: 61: DELAY();
	fcall	_DELAY
	goto	l10595
	line	62
	
l2113:	
	line	58
	
l10595:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_ShowString@str+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_ShowString@str)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l10587
u4800:
	goto	l2116
	
l2115:	
	line	63
	
l2116:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_ShowString
	__end_of_LCD_ShowString:
;; =============== function _LCD_ShowString ends ============

	signat	_LCD_ShowString,12408
	global	_LCD_Init
psect	text902,local,class=CODE,delta=2
global __ptext902
__ptext902:

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 25 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DELAY
;;		_ENABLE
;; This function is called by:
;;		_JY62_ShowData
;;		_main
;; This function uses a non-reentrant model
;;
psect	text902
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
	line	25
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
	opt	stack 0
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l10547:	
;LCD.c: 26: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	27
	
l10549:	
;LCD.c: 27: ADCON1=7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	28
	
l10551:	
;LCD.c: 28: TRISA=0;
	clrf	(133)^080h	;volatile
	line	29
	
l10553:	
;LCD.c: 29: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	30
	
l10555:	
;LCD.c: 30: RA3=1;
	bsf	(43/8),(43)&7
	line	31
	
l10557:	
;LCD.c: 31: DELAY();
	fcall	_DELAY
	line	33
	
l10559:	
;LCD.c: 33: TRISD=0; TRISA=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	
l10561:	
	clrf	(133)^080h	;volatile
	line	34
	
l10563:	
;LCD.c: 34: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	35
	
l10565:	
;LCD.c: 35: DELAY();
	fcall	_DELAY
	line	36
;LCD.c: 36: PORTD=1; ENABLE();
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l10567:	
	fcall	_ENABLE
	line	37
	
l10569:	
;LCD.c: 37: PORTD=0x38; ENABLE();
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	fcall	_ENABLE
	line	38
	
l10571:	
;LCD.c: 38: PORTD=0x0c; ENABLE();
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l10573:	
	fcall	_ENABLE
	line	39
;LCD.c: 39: PORTD=0x06; ENABLE();
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l10575:	
	fcall	_ENABLE
	line	40
	
l2105:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
;; =============== function _LCD_Init ends ============

	signat	_LCD_Init,88
	global	_PWM2_SetDutyCycle
psect	text903,local,class=CODE,delta=2
global __ptext903
__ptext903:

;; *************** function _PWM2_SetDutyCycle *****************
;; Defined at:
;;		line 35 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\PWM.c"
;; Parameters:    Size  Location     Type
;;  dutyCycle       1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  dutyCycle       1   16[BANK1 ] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___wmul
;;		___awdiv
;; This function is called by:
;;		_Motor_SetLeftSpeed
;; This function uses a non-reentrant model
;;
psect	text903
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\PWM.c"
	line	35
	global	__size_of_PWM2_SetDutyCycle
	__size_of_PWM2_SetDutyCycle	equ	__end_of_PWM2_SetDutyCycle-_PWM2_SetDutyCycle
	
_PWM2_SetDutyCycle:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _PWM2_SetDutyCycle: [wreg+status,2+status,0+pclath+cstack]
;PWM2_SetDutyCycle@dutyCycle stored from wreg
	line	37
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(PWM2_SetDutyCycle@dutyCycle)^080h
	
l10541:	
;PWM.c: 37: if (dutyCycle > 100) {
	movf	(PWM2_SetDutyCycle@dutyCycle)^080h,w
	xorlw	80h
	addlw	-((065h)^80h)
	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l10545
u4780:
	line	38
	
l10543:	
;PWM.c: 38: dutyCycle = 100;
	movlw	(064h)
	movwf	(??_PWM2_SetDutyCycle+0)^080h+0
	movf	(??_PWM2_SetDutyCycle+0)^080h+0,w
	movwf	(PWM2_SetDutyCycle@dutyCycle)^080h
	goto	l10545
	line	39
	
l4203:	
	line	42
	
l10545:	
;PWM.c: 39: }
;PWM.c: 42: CCPR2L = (dutyCycle * 255) / 100;
	movlw	low(064h)
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(PWM2_SetDutyCycle@dutyCycle)^080h,w
	movwf	(?___wmul)^080h
	clrf	(?___wmul+1)^080h
	btfsc	(?___wmul)^080h,7
	decf	(?___wmul+1)^080h,f
	movlw	low(0FFh)
	movwf	0+(?___wmul)^080h+02h
	movlw	high(0FFh)
	movwf	(0+(?___wmul)^080h+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___wmul))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___wmul))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	43
	
l4204:	
	return
	opt stack 0
GLOBAL	__end_of_PWM2_SetDutyCycle
	__end_of_PWM2_SetDutyCycle:
;; =============== function _PWM2_SetDutyCycle ends ============

	signat	_PWM2_SetDutyCycle,4216
	global	_PWM1_SetDutyCycle
psect	text904,local,class=CODE,delta=2
global __ptext904
__ptext904:

;; *************** function _PWM1_SetDutyCycle *****************
;; Defined at:
;;		line 24 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\PWM.c"
;; Parameters:    Size  Location     Type
;;  dutyCycle       1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  dutyCycle       1   16[BANK1 ] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___wmul
;;		___awdiv
;; This function is called by:
;;		_Motor_SetRightSpeed
;; This function uses a non-reentrant model
;;
psect	text904
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\PWM.c"
	line	24
	global	__size_of_PWM1_SetDutyCycle
	__size_of_PWM1_SetDutyCycle	equ	__end_of_PWM1_SetDutyCycle-_PWM1_SetDutyCycle
	
_PWM1_SetDutyCycle:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _PWM1_SetDutyCycle: [wreg+status,2+status,0+pclath+cstack]
;PWM1_SetDutyCycle@dutyCycle stored from wreg
	line	26
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(PWM1_SetDutyCycle@dutyCycle)^080h
	
l10535:	
;PWM.c: 26: if (dutyCycle > 100) {
	movf	(PWM1_SetDutyCycle@dutyCycle)^080h,w
	xorlw	80h
	addlw	-((065h)^80h)
	skipc
	goto	u4771
	goto	u4770
u4771:
	goto	l10539
u4770:
	line	27
	
l10537:	
;PWM.c: 27: dutyCycle = 100;
	movlw	(064h)
	movwf	(??_PWM1_SetDutyCycle+0)^080h+0
	movf	(??_PWM1_SetDutyCycle+0)^080h+0,w
	movwf	(PWM1_SetDutyCycle@dutyCycle)^080h
	goto	l10539
	line	28
	
l4199:	
	line	31
	
l10539:	
;PWM.c: 28: }
;PWM.c: 31: CCPR1L = (dutyCycle * 255) / 100;
	movlw	low(064h)
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(PWM1_SetDutyCycle@dutyCycle)^080h,w
	movwf	(?___wmul)^080h
	clrf	(?___wmul+1)^080h
	btfsc	(?___wmul)^080h,7
	decf	(?___wmul+1)^080h,f
	movlw	low(0FFh)
	movwf	0+(?___wmul)^080h+02h
	movlw	high(0FFh)
	movwf	(0+(?___wmul)^080h+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___wmul))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___wmul))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	32
	
l4200:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_SetDutyCycle
	__end_of_PWM1_SetDutyCycle:
;; =============== function _PWM1_SetDutyCycle ends ============

	signat	_PWM1_SetDutyCycle,4216
	global	_point_status
psect	text905,local,class=CODE,delta=2
global __ptext905
__ptext905:

;; *************** function _point_status *****************
;; Defined at:
;;		line 71 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text905
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
	line	71
	global	__size_of_point_status
	__size_of_point_status	equ	__end_of_point_status-_point_status
	
_point_status:	
	opt	stack 2
; Regs used in _point_status: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
l10517:	
;track.c: 72: if(PORTB==0XFF) flag=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	xorlw	0FFh
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l7076
u4740:
	
l10519:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_flag)^080h
	bsf	status,0
	rlf	(_flag)^080h,f
	goto	l10521
	line	73
	
l7076:	
;track.c: 73: else flag=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_flag)^080h
	goto	l10521
	
l7077:	
	line	75
	
l10521:	
;track.c: 75: last_flag=flag;
	movf	(_flag)^080h,w
	movwf	(??_point_status+0)^080h+0
	clrf	(??_point_status+0)^080h+0+1
	movf	0+(??_point_status+0)^080h+0,w
	movwf	(_last_flag)^080h
	movf	1+(??_point_status+0)^080h+0,w
	movwf	(_last_flag+1)^080h
	line	77
;track.c: 77: if(PORTB!=0XFF&&last_flag!=flag)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u4751
	goto	u4750
u4751:
	goto	l7079
u4750:
	
l10523:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flag)^080h,w
	movwf	(??_point_status+0)^080h+0
	clrf	(??_point_status+0)^080h+0+1
	movf	(_last_flag+1)^080h,w
	xorwf	1+(??_point_status+0)^080h+0,w
	skipz
	goto	u4765
	movf	(_last_flag)^080h,w
	xorwf	0+(??_point_status+0)^080h+0,w
u4765:

	skipnz
	goto	u4761
	goto	u4760
u4761:
	goto	l7079
u4760:
	line	79
	
l10525:	
;track.c: 78: {
;track.c: 79: RE0=!RE0;
	movlw	1<<((72)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((72)/8),f
	line	80
	
l10527:	
;track.c: 80: Delay_ms(100);
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(064h)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	81
	
l10529:	
;track.c: 81: RE0=!RE0;
	movlw	1<<((72)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((72)/8),f
	line	82
;track.c: 82: Delay_ms(100);
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_Delay_ms)^080h
	movlw	high(064h)
	movwf	((?_Delay_ms)^080h)+1
	fcall	_Delay_ms
	line	83
	
l10531:	
;track.c: 83: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	85
	
l10533:	
;track.c: 85: runflag++;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_point_status+0)^080h+0
	movf	(??_point_status+0)^080h+0,w
	addwf	(_runflag)^080h,f
	goto	l7079
	line	86
	
l7078:	
	line	87
	
l7079:	
	return
	opt stack 0
GLOBAL	__end_of_point_status
	__end_of_point_status:
;; =============== function _point_status ends ============

	signat	_point_status,88
	global	_Motor_Init
psect	text906,local,class=CODE,delta=2
global __ptext906
__ptext906:

;; *************** function _Motor_Init *****************
;; Defined at:
;;		line 21 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_PWM_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text906
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\motor.c"
	line	21
	global	__size_of_Motor_Init
	__size_of_Motor_Init	equ	__end_of_Motor_Init-_Motor_Init
	
_Motor_Init:	
	opt	stack 2
; Regs used in _Motor_Init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l10505:	
;motor.c: 23: PWM_Init();
	fcall	_PWM_Init
	line	26
	
l10507:	
;motor.c: 26: TRISC = 0XC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	30
	
l10509:	
;motor.c: 30: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	31
	
l10511:	
;motor.c: 31: RC3 = 0;
	bcf	(59/8),(59)&7
	line	32
	
l10513:	
;motor.c: 32: RC4 = 0;
	bcf	(60/8),(60)&7
	line	33
	
l10515:	
;motor.c: 33: RC5 = 0;
	bcf	(61/8),(61)&7
	line	35
	
l5585:	
	return
	opt stack 0
GLOBAL	__end_of_Motor_Init
	__end_of_Motor_Init:
;; =============== function _Motor_Init ends ============

	signat	_Motor_Init,88
	global	_ENABLE1
psect	text907,local,class=CODE,delta=2
global __ptext907
__ptext907:

;; *************** function _ENABLE1 *****************
;; Defined at:
;;		line 17 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DELAY
;; This function is called by:
;;		_LCD_ShowString
;; This function uses a non-reentrant model
;;
psect	text907
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
	line	17
	global	__size_of_ENABLE1
	__size_of_ENABLE1	equ	__end_of_ENABLE1-_ENABLE1
	
_ENABLE1:	
	opt	stack 0
; Regs used in _ENABLE1: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l10499:	
;LCD.c: 18: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	line	19
;LCD.c: 19: RA4 = 0;
	bcf	(44/8),(44)&7
	line	20
;LCD.c: 20: RA3 = 0;
	bcf	(43/8),(43)&7
	line	21
	
l10501:	
;LCD.c: 21: DELAY();
	fcall	_DELAY
	line	22
	
l10503:	
;LCD.c: 22: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	23
	
l2102:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE1
	__end_of_ENABLE1:
;; =============== function _ENABLE1 ends ============

	signat	_ENABLE1,88
	global	_ENABLE
psect	text908,local,class=CODE,delta=2
global __ptext908
__ptext908:

;; *************** function _ENABLE *****************
;; Defined at:
;;		line 9 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DELAY
;; This function is called by:
;;		_LCD_Init
;;		_LCD_ShowString
;;		_LCD_Clear
;; This function uses a non-reentrant model
;;
psect	text908
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
	line	9
	global	__size_of_ENABLE
	__size_of_ENABLE	equ	__end_of_ENABLE-_ENABLE
	
_ENABLE:	
	opt	stack 0
; Regs used in _ENABLE: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l10493:	
;LCD.c: 10: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	line	11
;LCD.c: 11: RA4 = 0;
	bcf	(44/8),(44)&7
	line	12
;LCD.c: 12: RA3 = 0;
	bcf	(43/8),(43)&7
	line	13
	
l10495:	
;LCD.c: 13: DELAY();
	fcall	_DELAY
	line	14
	
l10497:	
;LCD.c: 14: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	15
	
l2099:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE
	__end_of_ENABLE:
;; =============== function _ENABLE ends ============

	signat	_ENABLE,88
	global	_sprintf
psect	text909,local,class=CODE,delta=2
global __ptext909
__ptext909:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> JY62_ShowData@str(11), 
;;  f               1   14[BANK1 ] PTR const unsigned char 
;;		 -> STR_2(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   27[BANK1 ] PTR unsigned char 
;;		 -> JY62_ShowData@str(11), 
;;  _val            4   23[BANK1 ] struct .
;;  c               1   28[BANK1 ] char 
;;  prec            1   22[BANK1 ] char 
;;  flag            1   21[BANK1 ] unsigned char 
;;  ap              1   20[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   14[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       9       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_JY62_ShowData
;; This function uses a non-reentrant model
;;
psect	text909
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 1
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	
l10435:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@ap)^080h
	line	540
	goto	l10487
	
l7120:	
	line	542
	
l10437:	
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u4661
	goto	u4660
u4661:
	goto	l7121
u4660:
	line	545
	
l10439:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l10441:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	546
	goto	l10487
	line	547
	
l7121:	
	line	552
	clrf	(sprintf@flag)^080h
	line	638
	goto	l10445
	line	640
	
l7123:	
	line	641
	goto	l10489
	line	700
	
l7125:	
	goto	l10447
	line	701
	
l7126:	
	line	702
	goto	l10447
	line	805
	
l7128:	
	line	816
	goto	l10487
	line	825
	
l10443:	
	goto	l10447
	line	638
	
l7122:	
	
l10445:	
	movlw	01h
	addwf	(sprintf@f)^080h,f
	movlw	-01h
	addwf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10489
	xorlw	100^0	; case 100
	skipnz
	goto	l10447
	xorlw	105^100	; case 105
	skipnz
	goto	l10447
	goto	l10487
	opt asmopt_on

	line	825
	
l7127:	
	line	1254
	
l10447:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)^080h
	
l10449:	
	movlw	(02h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@ap)^080h,f
	line	1256
	
l10451:	
	btfss	(sprintf@_val+1)^080h,7
	goto	u4671
	goto	u4670
u4671:
	goto	l10457
u4670:
	line	1257
	
l10453:	
	movlw	(03h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	iorwf	(sprintf@flag)^080h,f
	line	1258
	
l10455:	
	comf	(sprintf@_val)^080h,f
	comf	(sprintf@_val+1)^080h,f
	incf	(sprintf@_val)^080h,f
	skipnz
	incf	(sprintf@_val+1)^080h,f
	goto	l10457
	line	1259
	
l7129:	
	line	1300
	
l10457:	
	clrf	(sprintf@c)^080h
	bsf	status,0
	rlf	(sprintf@c)^080h,f
	
l10459:	
	movf	(sprintf@c)^080h,w
	xorlw	05h
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l10463
u4680:
	goto	l10471
	
l10461:	
	goto	l10471
	line	1301
	
l7130:	
	
l10463:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)^080h+0
	fcall	stringdir
	movwf	(??_sprintf+1)^080h+0+1
	movf	1+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u4695
	movf	0+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@_val)^080h,w
u4695:
	skipnc
	goto	u4691
	goto	u4690
u4691:
	goto	l10467
u4690:
	goto	l10471
	line	1302
	
l10465:	
	goto	l10471
	
l7132:	
	line	1300
	
l10467:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@c)^080h,f
	
l10469:	
	movf	(sprintf@c)^080h,w
	xorlw	05h
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l10463
u4700:
	goto	l10471
	
l7131:	
	line	1433
	
l10471:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l10477
u4710:
	line	1434
	
l10473:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l10475:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l10477
	
l7133:	
	line	1467
	
l10477:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@prec)^080h
	line	1469
	goto	l10485
	
l7135:	
	line	1484
	
l10479:	
	movlw	low(0Ah)
	movwf	(?___lwmod)^080h
	movlw	high(0Ah)
	movwf	((?___lwmod)^080h)+1
	movf	(sprintf@prec)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)^080h
	fcall	stringdir
	movwf	(?___lwdiv+1)^080h
	movf	(sprintf@_val+1)^080h,w
	clrf	1+(?___lwdiv)^080h+02h
	addwf	1+(?___lwdiv)^080h+02h
	movf	(sprintf@_val)^080h,w
	clrf	0+(?___lwdiv)^080h+02h
	addwf	0+(?___lwdiv)^080h+02h

	fcall	___lwdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___lwdiv))^080h,w
	clrf	1+(?___lwmod)^080h+02h
	addwf	1+(?___lwmod)^080h+02h
	movf	(0+(?___lwdiv))^080h,w
	clrf	0+(?___lwmod)^080h+02h
	addwf	0+(?___lwmod)^080h+02h

	fcall	___lwmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lwmod))^080h,w
	addlw	030h
	movwf	(??_sprintf+1)^080h+0
	movf	(??_sprintf+1)^080h+0,w
	movwf	(sprintf@c)^080h
	line	1516
	
l10481:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l10483:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l10485
	line	1517
	
l7134:	
	line	1469
	
l10485:	
	movlw	(-1)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@prec)^080h,f
	movf	((sprintf@prec)^080h),w
	xorlw	-1
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l10479
u4720:
	goto	l10487
	
l7136:	
	goto	l10487
	line	1525
	
l7119:	
	line	540
	
l10487:	
	movlw	01h
	addwf	(sprintf@f)^080h,f
	movlw	-01h
	addwf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u4731
	goto	u4730
u4731:
	goto	l10437
u4730:
	goto	l10489
	
l7137:	
	goto	l10489
	line	1527
	
l7124:	
	line	1530
	
l10489:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l7138
	line	1532
	
l10491:	
	line	1533
;	Return value of _sprintf is never used
	
l7138:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	___awdiv
psect	text910,local,class=CODE,delta=2
global __ptext910
__ptext910:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK1 ] int 
;;  dividend        2    8[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   13[BANK1 ] int 
;;  sign            1   12[BANK1 ] unsigned char 
;;  counter         1   11[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK1 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_SetDutyCycle
;;		_PWM2_SetDutyCycle
;; This function uses a non-reentrant model
;;
psect	text910
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l10349:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___awdiv@sign)^080h
	line	10
	btfss	(___awdiv@divisor+1)^080h,7
	goto	u4501
	goto	u4500
u4501:
	goto	l10353
u4500:
	line	11
	
l10351:	
	comf	(___awdiv@divisor)^080h,f
	comf	(___awdiv@divisor+1)^080h,f
	incf	(___awdiv@divisor)^080h,f
	skipnz
	incf	(___awdiv@divisor+1)^080h,f
	line	12
	clrf	(___awdiv@sign)^080h
	bsf	status,0
	rlf	(___awdiv@sign)^080h,f
	goto	l10353
	line	13
	
l7961:	
	line	14
	
l10353:	
	btfss	(___awdiv@dividend+1)^080h,7
	goto	u4511
	goto	u4510
u4511:
	goto	l10359
u4510:
	line	15
	
l10355:	
	comf	(___awdiv@dividend)^080h,f
	comf	(___awdiv@dividend+1)^080h,f
	incf	(___awdiv@dividend)^080h,f
	skipnz
	incf	(___awdiv@dividend+1)^080h,f
	line	16
	
l10357:	
	movlw	(01h)
	movwf	(??___awdiv+0)^080h+0
	movf	(??___awdiv+0)^080h+0,w
	xorwf	(___awdiv@sign)^080h,f
	goto	l10359
	line	17
	
l7962:	
	line	18
	
l10359:	
	clrf	(___awdiv@quotient)^080h
	clrf	(___awdiv@quotient+1)^080h
	line	19
	
l10361:	
	movf	(___awdiv@divisor+1)^080h,w
	iorwf	(___awdiv@divisor)^080h,w
	skipnz
	goto	u4521
	goto	u4520
u4521:
	goto	l10381
u4520:
	line	20
	
l10363:	
	clrf	(___awdiv@counter)^080h
	bsf	status,0
	rlf	(___awdiv@counter)^080h,f
	line	21
	goto	l10369
	
l7965:	
	line	22
	
l10365:	
	movlw	01h
	
u4535:
	clrc
	rlf	(___awdiv@divisor)^080h,f
	rlf	(___awdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u4535
	line	23
	
l10367:	
	movlw	(01h)
	movwf	(??___awdiv+0)^080h+0
	movf	(??___awdiv+0)^080h+0,w
	addwf	(___awdiv@counter)^080h,f
	goto	l10369
	line	24
	
l7964:	
	line	21
	
l10369:	
	btfss	(___awdiv@divisor+1)^080h,(15)&7
	goto	u4541
	goto	u4540
u4541:
	goto	l10365
u4540:
	goto	l10371
	
l7966:	
	goto	l10371
	line	25
	
l7967:	
	line	26
	
l10371:	
	movlw	01h
	
u4555:
	clrc
	rlf	(___awdiv@quotient)^080h,f
	rlf	(___awdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u4555
	line	27
	movf	(___awdiv@divisor+1)^080h,w
	subwf	(___awdiv@dividend+1)^080h,w
	skipz
	goto	u4565
	movf	(___awdiv@divisor)^080h,w
	subwf	(___awdiv@dividend)^080h,w
u4565:
	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l10377
u4560:
	line	28
	
l10373:	
	movf	(___awdiv@divisor)^080h,w
	subwf	(___awdiv@dividend)^080h,f
	movf	(___awdiv@divisor+1)^080h,w
	skipc
	decf	(___awdiv@dividend+1)^080h,f
	subwf	(___awdiv@dividend+1)^080h,f
	line	29
	
l10375:	
	bsf	(___awdiv@quotient)^080h+(0/8),(0)&7
	goto	l10377
	line	30
	
l7968:	
	line	31
	
l10377:	
	movlw	01h
	
u4575:
	clrc
	rrf	(___awdiv@divisor+1)^080h,f
	rrf	(___awdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4575
	line	32
	
l10379:	
	movlw	low(01h)
	subwf	(___awdiv@counter)^080h,f
	btfss	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l10371
u4580:
	goto	l10381
	
l7969:	
	goto	l10381
	line	33
	
l7963:	
	line	34
	
l10381:	
	movf	(___awdiv@sign)^080h,w
	skipz
	goto	u4590
	goto	l10385
u4590:
	line	35
	
l10383:	
	comf	(___awdiv@quotient)^080h,f
	comf	(___awdiv@quotient+1)^080h,f
	incf	(___awdiv@quotient)^080h,f
	skipnz
	incf	(___awdiv@quotient+1)^080h,f
	goto	l10385
	
l7970:	
	line	36
	
l10385:	
	movf	(___awdiv@quotient+1)^080h,w
	clrf	(?___awdiv+1)^080h
	addwf	(?___awdiv+1)^080h
	movf	(___awdiv@quotient)^080h,w
	clrf	(?___awdiv)^080h
	addwf	(?___awdiv)^080h

	goto	l7971
	
l10387:	
	line	37
	
l7971:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text911,local,class=CODE,delta=2
global __ptext911
__ptext911:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[BANK1 ] unsigned int 
;;  dividend        2   10[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text911
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 1
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l10065:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___lwmod@divisor+1)^080h,w
	iorwf	(___lwmod@divisor)^080h,w
	skipnz
	goto	u3751
	goto	u3750
u3751:
	goto	l10083
u3750:
	line	9
	
l10067:	
	clrf	(___lwmod@counter)^080h
	bsf	status,0
	rlf	(___lwmod@counter)^080h,f
	line	10
	goto	l10073
	
l7839:	
	line	11
	
l10069:	
	movlw	01h
	
u3765:
	clrc
	rlf	(___lwmod@divisor)^080h,f
	rlf	(___lwmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u3765
	line	12
	
l10071:	
	movlw	(01h)
	movwf	(??___lwmod+0)^080h+0
	movf	(??___lwmod+0)^080h+0,w
	addwf	(___lwmod@counter)^080h,f
	goto	l10073
	line	13
	
l7838:	
	line	10
	
l10073:	
	btfss	(___lwmod@divisor+1)^080h,(15)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l10069
u3770:
	goto	l10075
	
l7840:	
	goto	l10075
	line	14
	
l7841:	
	line	15
	
l10075:	
	movf	(___lwmod@divisor+1)^080h,w
	subwf	(___lwmod@dividend+1)^080h,w
	skipz
	goto	u3785
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,w
u3785:
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l10079
u3780:
	line	16
	
l10077:	
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,f
	movf	(___lwmod@divisor+1)^080h,w
	skipc
	decf	(___lwmod@dividend+1)^080h,f
	subwf	(___lwmod@dividend+1)^080h,f
	goto	l10079
	
l7842:	
	line	17
	
l10079:	
	movlw	01h
	
u3795:
	clrc
	rrf	(___lwmod@divisor+1)^080h,f
	rrf	(___lwmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u3795
	line	18
	
l10081:	
	movlw	low(01h)
	subwf	(___lwmod@counter)^080h,f
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l10075
u3800:
	goto	l10083
	
l7843:	
	goto	l10083
	line	19
	
l7837:	
	line	20
	
l10083:	
	movf	(___lwmod@dividend+1)^080h,w
	clrf	(?___lwmod+1)^080h
	addwf	(?___lwmod+1)^080h
	movf	(___lwmod@dividend)^080h,w
	clrf	(?___lwmod)^080h
	addwf	(?___lwmod)^080h

	goto	l7844
	
l10085:	
	line	21
	
l7844:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text912,local,class=CODE,delta=2
global __ptext912
__ptext912:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK1 ] unsigned int 
;;  dividend        2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK1 ] unsigned int 
;;  counter         1    7[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text912
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 1
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l10039:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___lwdiv@quotient)^080h
	clrf	(___lwdiv@quotient+1)^080h
	line	10
	
l10041:	
	movf	(___lwdiv@divisor+1)^080h,w
	iorwf	(___lwdiv@divisor)^080h,w
	skipnz
	goto	u3681
	goto	u3680
u3681:
	goto	l10061
u3680:
	line	11
	
l10043:	
	clrf	(___lwdiv@counter)^080h
	bsf	status,0
	rlf	(___lwdiv@counter)^080h,f
	line	12
	goto	l10049
	
l7829:	
	line	13
	
l10045:	
	movlw	01h
	
u3695:
	clrc
	rlf	(___lwdiv@divisor)^080h,f
	rlf	(___lwdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u3695
	line	14
	
l10047:	
	movlw	(01h)
	movwf	(??___lwdiv+0)^080h+0
	movf	(??___lwdiv+0)^080h+0,w
	addwf	(___lwdiv@counter)^080h,f
	goto	l10049
	line	15
	
l7828:	
	line	12
	
l10049:	
	btfss	(___lwdiv@divisor+1)^080h,(15)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l10045
u3700:
	goto	l10051
	
l7830:	
	goto	l10051
	line	16
	
l7831:	
	line	17
	
l10051:	
	movlw	01h
	
u3715:
	clrc
	rlf	(___lwdiv@quotient)^080h,f
	rlf	(___lwdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u3715
	line	18
	movf	(___lwdiv@divisor+1)^080h,w
	subwf	(___lwdiv@dividend+1)^080h,w
	skipz
	goto	u3725
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,w
u3725:
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l10057
u3720:
	line	19
	
l10053:	
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,f
	movf	(___lwdiv@divisor+1)^080h,w
	skipc
	decf	(___lwdiv@dividend+1)^080h,f
	subwf	(___lwdiv@dividend+1)^080h,f
	line	20
	
l10055:	
	bsf	(___lwdiv@quotient)^080h+(0/8),(0)&7
	goto	l10057
	line	21
	
l7832:	
	line	22
	
l10057:	
	movlw	01h
	
u3735:
	clrc
	rrf	(___lwdiv@divisor+1)^080h,f
	rrf	(___lwdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u3735
	line	23
	
l10059:	
	movlw	low(01h)
	subwf	(___lwdiv@counter)^080h,f
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l10051
u3740:
	goto	l10061
	
l7833:	
	goto	l10061
	line	24
	
l7827:	
	line	25
	
l10061:	
	movf	(___lwdiv@quotient+1)^080h,w
	clrf	(?___lwdiv+1)^080h
	addwf	(?___lwdiv+1)^080h
	movf	(___lwdiv@quotient)^080h,w
	clrf	(?___lwdiv)^080h
	addwf	(?___lwdiv)^080h

	goto	l7834
	
l10063:	
	line	26
	
l7834:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text913,local,class=CODE,delta=2
global __ptext913
__ptext913:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK1 ] unsigned int 
;;  multiplicand    2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_SetDutyCycle
;;		_PWM2_SetDutyCycle
;; This function uses a non-reentrant model
;;
psect	text913
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l10027:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___wmul@product)^080h
	clrf	(___wmul@product+1)^080h
	goto	l10029
	line	6
	
l7821:	
	line	7
	
l10029:	
	btfss	(___wmul@multiplier)^080h,(0)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l7822
u3640:
	line	8
	
l10031:	
	movf	(___wmul@multiplicand)^080h,w
	addwf	(___wmul@product)^080h,f
	skipnc
	incf	(___wmul@product+1)^080h,f
	movf	(___wmul@multiplicand+1)^080h,w
	addwf	(___wmul@product+1)^080h,f
	
l7822:	
	line	9
	movlw	01h
	
u3655:
	clrc
	rlf	(___wmul@multiplicand)^080h,f
	rlf	(___wmul@multiplicand+1)^080h,f
	addlw	-1
	skipz
	goto	u3655
	line	10
	
l10033:	
	movlw	01h
	
u3665:
	clrc
	rrf	(___wmul@multiplier+1)^080h,f
	rrf	(___wmul@multiplier)^080h,f
	addlw	-1
	skipz
	goto	u3665
	line	11
	movf	((___wmul@multiplier+1)^080h),w
	iorwf	((___wmul@multiplier)^080h),w
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l10029
u3670:
	goto	l10035
	
l7823:	
	line	12
	
l10035:	
	movf	(___wmul@product+1)^080h,w
	clrf	(?___wmul+1)^080h
	addwf	(?___wmul+1)^080h
	movf	(___wmul@product)^080h,w
	clrf	(?___wmul)^080h
	addwf	(?___wmul)^080h

	goto	l7824
	
l10037:	
	line	13
	
l7824:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_HD_Read
psect	text914,local,class=CODE,delta=2
global __ptext914
__ptext914:

;; *************** function _HD_Read *****************
;; Defined at:
;;		line 20 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Track_Run
;; This function uses a non-reentrant model
;;
psect	text914
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
	line	20
	global	__size_of_HD_Read
	__size_of_HD_Read	equ	__end_of_HD_Read-_HD_Read
	
_HD_Read:	
	opt	stack 1
; Regs used in _HD_Read: [status]
	line	21
	
l9979:	
;track.c: 21: if(RB0==0){HD[0]=0;}else{HD[0]=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l9983
u3560:
	
l9981:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_HD)^080h
	goto	l9985
	
l7028:	
	
l9983:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_HD)^080h
	bsf	status,0
	rlf	(_HD)^080h,f
	goto	l9985
	
l7029:	
	line	22
	
l9985:	
;track.c: 22: if(RB1==0){HD[1]=0;}else{HD[1]=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l9989
u3570:
	
l9987:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+01h
	goto	l9991
	
l7030:	
	
l9989:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+01h
	bsf	status,0
	rlf	0+(_HD)^080h+01h,f
	goto	l9991
	
l7031:	
	line	23
	
l9991:	
;track.c: 23: if(RB2==0){HD[2]=0;}else{HD[2]=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l9995
u3580:
	
l9993:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+02h
	goto	l9997
	
l7032:	
	
l9995:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+02h
	bsf	status,0
	rlf	0+(_HD)^080h+02h,f
	goto	l9997
	
l7033:	
	line	24
	
l9997:	
;track.c: 24: if(RB3==0){HD[3]=0;}else{HD[3]=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(51/8),(51)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l10001
u3590:
	
l9999:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+03h
	goto	l10003
	
l7034:	
	
l10001:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+03h
	bsf	status,0
	rlf	0+(_HD)^080h+03h,f
	goto	l10003
	
l7035:	
	line	25
	
l10003:	
;track.c: 25: if(RB4==0){HD[4]=0;}else{HD[4]=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l10007
u3600:
	
l10005:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+04h
	goto	l10009
	
l7036:	
	
l10007:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+04h
	bsf	status,0
	rlf	0+(_HD)^080h+04h,f
	goto	l10009
	
l7037:	
	line	26
	
l10009:	
;track.c: 26: if(RB5==0){HD[5]=0;}else{HD[5]=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l10013
u3610:
	
l10011:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+05h
	goto	l10015
	
l7038:	
	
l10013:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+05h
	bsf	status,0
	rlf	0+(_HD)^080h+05h,f
	goto	l10015
	
l7039:	
	line	27
	
l10015:	
;track.c: 27: if(RB6==0){HD[6]=0;}else{HD[6]=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l10019
u3620:
	
l10017:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+06h
	goto	l10021
	
l7040:	
	
l10019:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+06h
	bsf	status,0
	rlf	0+(_HD)^080h+06h,f
	goto	l10021
	
l7041:	
	line	28
	
l10021:	
;track.c: 28: if(RB7==0){HD[7]=0;}else{HD[7]=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l10025
u3630:
	
l10023:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+07h
	goto	l7044
	
l7042:	
	
l10025:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(_HD)^080h+07h
	bsf	status,0
	rlf	0+(_HD)^080h+07h,f
	goto	l7044
	
l7043:	
	line	29
	
l7044:	
	return
	opt stack 0
GLOBAL	__end_of_HD_Read
	__end_of_HD_Read:
;; =============== function _HD_Read ends ============

	signat	_HD_Read,88
	global	_Delay_ms
psect	text915,local,class=CODE,delta=2
global __ptext915
__ptext915:

;; *************** function _Delay_ms *****************
;; Defined at:
;;		line 4 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\delay.c"
;; Parameters:    Size  Location     Type
;;  delayMs         2    0[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    3[BANK1 ] unsigned int 
;;  j               1    5[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Track_Run
;;		_point_status
;;		_Track_THREE
;; This function uses a non-reentrant model
;;
psect	text915
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\delay.c"
	line	4
	global	__size_of_Delay_ms
	__size_of_Delay_ms	equ	__end_of_Delay_ms-_Delay_ms
	
_Delay_ms:	
	opt	stack 1
; Regs used in _Delay_ms: [wreg+status,2+status,0]
	line	8
	
l9957:	
;delay.c: 5: unsigned int i;
;delay.c: 6: unsigned char j;
;delay.c: 8: for (i =0; i< delayMs; i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(Delay_ms@i)^080h
	clrf	(Delay_ms@i+1)^080h
	goto	l4889
	line	9
	
l4890:	
	line	10
;delay.c: 9: {
;delay.c: 10: for (j =0 ; j < 200; j++)
	clrf	(Delay_ms@j)^080h
	
l9959:	
	movlw	(0C8h)
	subwf	(Delay_ms@j)^080h,w
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l4891
u3530:
	goto	l9967
	
l9961:	
	goto	l9967
	line	11
	
l4891:	
	line	12
# 12 "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\delay.c"
NOP ;#
	line	13
# 13 "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\delay.c"
NOP ;#
psect	text915
	line	10
	
l9963:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_Delay_ms+0)^080h+0
	movf	(??_Delay_ms+0)^080h+0,w
	addwf	(Delay_ms@j)^080h,f
	
l9965:	
	movlw	(0C8h)
	subwf	(Delay_ms@j)^080h,w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l4891
u3540:
	goto	l9967
	
l4892:	
	line	8
	
l9967:	
	movlw	low(01h)
	addwf	(Delay_ms@i)^080h,f
	skipnc
	incf	(Delay_ms@i+1)^080h,f
	movlw	high(01h)
	addwf	(Delay_ms@i+1)^080h,f
	
l4889:	
	movf	(Delay_ms@delayMs+1)^080h,w
	subwf	(Delay_ms@i+1)^080h,w
	skipz
	goto	u3555
	movf	(Delay_ms@delayMs)^080h,w
	subwf	(Delay_ms@i)^080h,w
u3555:
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l4890
u3550:
	goto	l4894
	
l4893:	
	line	16
	
l4894:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_ms
	__end_of_Delay_ms:
;; =============== function _Delay_ms ends ============

	signat	_Delay_ms,4216
	global	_PWM_Init
psect	text916,local,class=CODE,delta=2
global __ptext916
__ptext916:

;; *************** function _PWM_Init *****************
;; Defined at:
;;		line 4 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Motor_Init
;; This function uses a non-reentrant model
;;
psect	text916
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\PWM.c"
	line	4
	global	__size_of_PWM_Init
	__size_of_PWM_Init	equ	__end_of_PWM_Init-_PWM_Init
	
_PWM_Init:	
	opt	stack 2
; Regs used in _PWM_Init: [wreg+status,2]
	line	6
	
l9941:	
;PWM.c: 6: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	7
;PWM.c: 7: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	8
	
l9943:	
;PWM.c: 8: CCP1CON = 0X0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	9
	
l9945:	
;PWM.c: 9: CCPR1L = 0x00;
	clrf	(21)	;volatile
	line	12
	
l9947:	
;PWM.c: 12: TRISC1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	13
	
l9949:	
;PWM.c: 13: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	14
	
l9951:	
;PWM.c: 14: CCP2CON = 0x0C;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	15
;PWM.c: 15: CCPR2L = 0x00;
	clrf	(27)	;volatile
	line	19
	
l9953:	
;PWM.c: 19: T2CON = 0x04;
	movlw	(04h)
	movwf	(18)	;volatile
	line	20
	
l9955:	
;PWM.c: 20: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	21
	
l4196:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Init
	__end_of_PWM_Init:
;; =============== function _PWM_Init ends ============

	signat	_PWM_Init,88
	global	_GanWei_Init
psect	text917,local,class=CODE,delta=2
global __ptext917
__ptext917:

;; *************** function _GanWei_Init *****************
;; Defined at:
;;		line 15 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text917
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\track.c"
	line	15
	global	__size_of_GanWei_Init
	__size_of_GanWei_Init	equ	__end_of_GanWei_Init-_GanWei_Init
	
_GanWei_Init:	
	opt	stack 3
; Regs used in _GanWei_Init: [wreg]
	line	16
	
l9937:	
;track.c: 16: TRISB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	17
	
l9939:	
;track.c: 17: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	18
	
l7025:	
	return
	opt stack 0
GLOBAL	__end_of_GanWei_Init
	__end_of_GanWei_Init:
;; =============== function _GanWei_Init ends ============

	signat	_GanWei_Init,88
	global	_DELAY
psect	text918,local,class=CODE,delta=2
global __ptext918
__ptext918:

;; *************** function _DELAY *****************
;; Defined at:
;;		line 4 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_JY62_ShowData
;;		_ENABLE
;;		_ENABLE1
;;		_LCD_Init
;;		_LCD_ShowString
;;		_LCD_Clear
;; This function uses a non-reentrant model
;;
psect	text918
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\LCD.c"
	line	4
	global	__size_of_DELAY
	__size_of_DELAY	equ	__end_of_DELAY-_DELAY
	
_DELAY:	
	opt	stack 2
; Regs used in _DELAY: [wreg+status,2+status,0]
	line	6
	
l9921:	
;LCD.c: 5: unsigned int i;
;LCD.c: 6: for (i = 999; i > 0; i--);
	movlw	low(03E7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(DELAY@i)^080h
	movlw	high(03E7h)
	movwf	((DELAY@i)^080h)+1
	
l9923:	
	movf	((DELAY@i+1)^080h),w
	iorwf	((DELAY@i)^080h),w
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l9927
u3510:
	goto	l2096
	
l9925:	
	goto	l2096
	
l2094:	
	
l9927:	
	movlw	low(01h)
	subwf	(DELAY@i)^080h,f
	movlw	high(01h)
	skipc
	decf	(DELAY@i+1)^080h,f
	subwf	(DELAY@i+1)^080h,f
	
l9929:	
	movf	((DELAY@i+1)^080h),w
	iorwf	((DELAY@i)^080h),w
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l9927
u3520:
	goto	l2096
	
l2095:	
	line	7
	
l2096:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY
	__end_of_DELAY:
;; =============== function _DELAY ends ============

	signat	_DELAY,88
	global	_Uart_Init
psect	text919,local,class=CODE,delta=2
global __ptext919
__ptext919:

;; *************** function _Uart_Init *****************
;; Defined at:
;;		line 13 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\JY62.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text919
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\JY62.c"
	line	13
	global	__size_of_Uart_Init
	__size_of_Uart_Init	equ	__end_of_Uart_Init-_Uart_Init
	
_Uart_Init:	
	opt	stack 3
; Regs used in _Uart_Init: [wreg]
	line	14
	
l9851:	
;JY62.c: 14: TRISC = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	16
;JY62.c: 16: TXSTA=0X24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	17
	
l9853:	
;JY62.c: 17: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	line	18
;JY62.c: 18: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	19
	
l9855:	
;JY62.c: 19: SPEN=1;
	bsf	(199/8),(199)&7
	line	21
;JY62.c: 21: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	22
	
l9857:	
;JY62.c: 22: CREN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	23
	
l9859:	
;JY62.c: 23: GIE=1;PEIE=1;RCIE=1;
	bsf	(95/8),(95)&7
	
l9861:	
	bsf	(94/8),(94)&7
	
l9863:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	24
	
l1388:	
	return
	opt stack 0
GLOBAL	__end_of_Uart_Init
	__end_of_Uart_Init:
;; =============== function _Uart_Init ends ============

	signat	_Uart_Init,88
	global	_Beep_Init
psect	text920,local,class=CODE,delta=2
global __ptext920
__ptext920:

;; *************** function _Beep_Init *****************
;; Defined at:
;;		line 3 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\beep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text920
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\beep.c"
	line	3
	global	__size_of_Beep_Init
	__size_of_Beep_Init	equ	__end_of_Beep_Init-_Beep_Init
	
_Beep_Init:	
	opt	stack 3
; Regs used in _Beep_Init: [status,2]
	line	4
	
l9847:	
;beep.c: 4: TRISE = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	5
	
l9849:	
;beep.c: 5: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	6
	
l685:	
	return
	opt stack 0
GLOBAL	__end_of_Beep_Init
	__end_of_Beep_Init:
;; =============== function _Beep_Init ends ============

	signat	_Beep_Init,88
	global	_uart_service
psect	text921,local,class=CODE,delta=2
global __ptext921
__ptext921:

;; *************** function _uart_service *****************
;; Defined at:
;;		line 27 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\JY62.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RxData          1   58[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_JY62_ReceiveData
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text921
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\JY62.c"
	line	27
	global	__size_of_uart_service
	__size_of_uart_service	equ	__end_of_uart_service-_uart_service
	
_uart_service:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _uart_service: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_uart_service+1)
	movf	fsr0,w
	movwf	(??_uart_service+2)
	movf	pclath,w
	movwf	(??_uart_service+3)
	movf	btemp+1,w
	movwf	(??_uart_service+4)
	ljmp	_uart_service
psect	text921
	line	28
	
i1l9865:	
;JY62.c: 28: if (RCIF) {
	btfss	(101/8),(101)&7
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l1392
u341_20:
	line	30
	
i1l9867:	
;JY62.c: 29: uint8_t RxData;
;JY62.c: 30: RxData = RCREG;
	movf	(26),w	;volatile
	movwf	(??_uart_service+0)+0
	movf	(??_uart_service+0)+0,w
	movwf	(uart_service@RxData)
	line	31
	
i1l9869:	
;JY62.c: 31: JY62_ReceiveData(RxData);
	movf	(uart_service@RxData),w
	fcall	_JY62_ReceiveData
	goto	i1l1392
	line	32
	
i1l1391:	
	line	33
	
i1l1392:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_uart_service+4),w
	movwf	btemp+1
	movf	(??_uart_service+3),w
	movwf	pclath
	movf	(??_uart_service+2),w
	movwf	fsr0
	swapf	(??_uart_service+1)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_uart_service
	__end_of_uart_service:
;; =============== function _uart_service ends ============

	signat	_uart_service,88
	global	_JY62_ReceiveData
psect	text922,local,class=CODE,delta=2
global __ptext922
__ptext922:

;; *************** function _JY62_ReceiveData *****************
;; Defined at:
;;		line 36 in file "E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\JY62.c"
;; Parameters:    Size  Location     Type
;;  RxData          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  RxData          1   52[BANK0 ] unsigned char 
;;  i               1   51[BANK0 ] unsigned char 
;;  sum             1   50[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftmul
;;		___ftdiv
;;		___fttol
;; This function is called by:
;;		_uart_service
;; This function uses a non-reentrant model
;;
psect	text922
	file	"E:\MPLAB_IDE\pic16f877a_car\PIC16F877A_CAR\JY62.c"
	line	36
	global	__size_of_JY62_ReceiveData
	__size_of_JY62_ReceiveData	equ	__end_of_JY62_ReceiveData-_JY62_ReceiveData
	
_JY62_ReceiveData:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _JY62_ReceiveData: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;JY62_ReceiveData@RxData stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(JY62_ReceiveData@RxData)
	line	37
	
i1l9871:	
;JY62.c: 37: uint8_t i,sum=0;
	clrf	(JY62_ReceiveData@sum)
	line	39
	
i1l9873:	
;JY62.c: 39: if (RxState == 0)
	movf	(_RxState),f
	skipz	;volatile
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l9883
u342_20:
	line	41
	
i1l9875:	
;JY62.c: 40: {
;JY62.c: 41: if (RxData == 0x55)
	movf	(JY62_ReceiveData@RxData),w
	xorlw	055h
	skipz
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l1406
u343_20:
	line	43
	
i1l9877:	
;JY62.c: 42: {
;JY62.c: 43: RxBuffer[RxIndex] = RxData;
	movf	(JY62_ReceiveData@RxData),w
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(_RxIndex),w
	addlw	_RxBuffer&0ffh
	movwf	fsr0
	movf	(??_JY62_ReceiveData+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	44
	
i1l9879:	
;JY62.c: 44: RxState = 1;
	clrf	(_RxState)	;volatile
	bsf	status,0
	rlf	(_RxState),f	;volatile
	line	45
	
i1l9881:	
;JY62.c: 45: RxIndex = 1;
	clrf	(_RxIndex)
	bsf	status,0
	rlf	(_RxIndex),f
	goto	i1l1406
	line	46
	
i1l1396:	
	line	47
;JY62.c: 46: }
;JY62.c: 47: }
	goto	i1l1406
	line	49
	
i1l1395:	
	
i1l9883:	
;JY62.c: 49: else if (RxState == 1)
	movf	(_RxState),w	;volatile
	xorlw	01h
	skipz
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l9893
u344_20:
	line	51
	
i1l9885:	
;JY62.c: 50: {
;JY62.c: 51: if (RxData == 0x53)
	movf	(JY62_ReceiveData@RxData),w
	xorlw	053h
	skipz
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l1406
u345_20:
	line	53
	
i1l9887:	
;JY62.c: 52: {
;JY62.c: 53: RxBuffer[RxIndex] = RxData;
	movf	(JY62_ReceiveData@RxData),w
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(_RxIndex),w
	addlw	_RxBuffer&0ffh
	movwf	fsr0
	movf	(??_JY62_ReceiveData+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	54
	
i1l9889:	
;JY62.c: 54: RxState = 2;
	movlw	(02h)
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	movwf	(_RxState)	;volatile
	line	55
	
i1l9891:	
;JY62.c: 55: RxIndex = 2;
	movlw	(02h)
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	movwf	(_RxIndex)
	goto	i1l1406
	line	56
	
i1l1399:	
	line	57
;JY62.c: 56: }
;JY62.c: 57: }
	goto	i1l1406
	line	59
	
i1l1398:	
	
i1l9893:	
;JY62.c: 59: else if (RxState == 2)
	movf	(_RxState),w	;volatile
	xorlw	02h
	skipz
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l1406
u346_20:
	line	61
	
i1l9895:	
;JY62.c: 60: {
;JY62.c: 61: RxBuffer[RxIndex++] = RxData;
	movf	(JY62_ReceiveData@RxData),w
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(_RxIndex),w
	addlw	_RxBuffer&0ffh
	movwf	fsr0
	movf	(??_JY62_ReceiveData+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l9897:	
	movlw	(01h)
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	addwf	(_RxIndex),f
	line	62
	
i1l9899:	
;JY62.c: 62: if(RxIndex == 11)
	movf	(_RxIndex),w
	xorlw	0Bh
	skipz
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l1406
u347_20:
	line	64
	
i1l9901:	
;JY62.c: 63: {
;JY62.c: 64: for(i=0;i<10;i++)
	clrf	(JY62_ReceiveData@i)
	
i1l9903:	
	movlw	(0Ah)
	subwf	(JY62_ReceiveData@i),w
	skipc
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l9907
u348_20:
	goto	i1l9913
	
i1l9905:	
	goto	i1l9913
	line	65
	
i1l1403:	
	line	66
	
i1l9907:	
;JY62.c: 65: {
;JY62.c: 66: sum = sum + RxBuffer[i];
	movf	(JY62_ReceiveData@i),w
	addlw	_RxBuffer&0ffh
	movwf	fsr0
	movf	(JY62_ReceiveData@sum),w
	addwf	indf,w
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	movwf	(JY62_ReceiveData@sum)
	line	64
	
i1l9909:	
	movlw	(01h)
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	addwf	(JY62_ReceiveData@i),f
	
i1l9911:	
	movlw	(0Ah)
	subwf	(JY62_ReceiveData@i),w
	skipc
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l9907
u349_20:
	goto	i1l9913
	
i1l1404:	
	line	68
	
i1l9913:	
;JY62.c: 67: }
;JY62.c: 68: if(sum == RxBuffer[10])
	movf	0+(_RxBuffer)+0Ah,w
	xorwf	(JY62_ReceiveData@sum),w
	skipz
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l9917
u350_20:
	line	71
	
i1l9915:	
;JY62.c: 69: {
;JY62.c: 71: Yaw = (int16_t)(((((int16_t)RxBuffer[7] << 8) | (int16_t)RxBuffer[6]))*180.0f/32768.0f);
	movf	0+(_RxBuffer)+06h,w
	movwf	(??_JY62_ReceiveData+0)+0
	clrf	(??_JY62_ReceiveData+0)+0+1
	movf	0+(_RxBuffer)+07h,w
	movwf	(??_JY62_ReceiveData+2)+0
	clrf	(??_JY62_ReceiveData+2)+0+1
	movf	(??_JY62_ReceiveData+2)+0,w
	movwf	(??_JY62_ReceiveData+2)+1
	clrf	(??_JY62_ReceiveData+2)+0
	movf	0+(??_JY62_ReceiveData+0)+0,w
	iorwf	0+(??_JY62_ReceiveData+2)+0,w
	movwf	(?___awtoft)
	movf	1+(??_JY62_ReceiveData+0)+0,w
	iorwf	1+(??_JY62_ReceiveData+2)+0,w
	movwf	1+(?___awtoft)
	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x34
	movwf	(?___ftmul+1)
	movlw	0x43
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftdiv)+03h
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x47
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?___fttol)
	movf	(1+(?___ftdiv)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Yaw+1)^080h
	addwf	(_Yaw+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(_Yaw)^080h
	addwf	(_Yaw)^080h

	goto	i1l9917
	line	72
	
i1l1405:	
	line	73
	
i1l9917:	
;JY62.c: 72: }
;JY62.c: 73: RxState = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_RxState)	;volatile
	line	74
	
i1l9919:	
;JY62.c: 74: RxIndex = 0;
	clrf	(_RxIndex)
	goto	i1l1406
	line	75
	
i1l1402:	
	goto	i1l1406
	line	76
	
i1l1401:	
	goto	i1l1406
	line	77
	
i1l1400:	
	goto	i1l1406
	
i1l1397:	
	
i1l1406:	
	return
	opt stack 0
GLOBAL	__end_of_JY62_ReceiveData
	__end_of_JY62_ReceiveData:
;; =============== function _JY62_ReceiveData ends ============

	signat	_JY62_ReceiveData,4216
	global	___awtoft
psect	text923,local,class=CODE,delta=2
global __ptext923
__ptext923:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   10[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_JY62_ReceiveData
;; This function uses a non-reentrant model
;;
psect	text923
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l10341:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u449_21
	goto	u449_20
u449_21:
	goto	i1l10345
u449_20:
	line	38
	
i1l10343:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	i1l10345
	line	40
	
i1l7957:	
	line	41
	
i1l10345:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	i1l7958
	
i1l10347:	
	line	42
	
i1l7958:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text924,local,class=CODE,delta=2
global __ptext924
__ptext924:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[BANK0 ] float 
;;  f2              3   17[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   25[BANK0 ] unsigned um
;;  sign            1   29[BANK0 ] unsigned char 
;;  cntr            1   28[BANK0 ] unsigned char 
;;  exp             1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_JY62_ReceiveData
;; This function uses a non-reentrant model
;;
psect	text924
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
i1l10235:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u424_21
	goto	u424_20
u424_21:
	goto	i1l10241
u424_20:
	line	57
	
i1l10237:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l7920
	
i1l10239:	
	goto	i1l7920
	
i1l7919:	
	line	58
	
i1l10241:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u425_21
	goto	u425_20
u425_21:
	goto	i1l10247
u425_20:
	line	59
	
i1l10243:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l7920
	
i1l10245:	
	goto	i1l7920
	
i1l7921:	
	line	60
	
i1l10247:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u426_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u426_20:
	addlw	-1
	skipz
	goto	u426_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u427_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u427_20:
	addlw	-1
	skipz
	goto	u427_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
i1l10249:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
i1l10251:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
i1l10253:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
i1l10255:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
i1l10257:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l10259
	line	70
	
i1l7922:	
	line	71
	
i1l10259:	
	btfss	(___ftmul@f1),(0)&7
	goto	u428_21
	goto	u428_20
u428_21:
	goto	i1l10263
u428_20:
	line	72
	
i1l10261:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u429_21
	addwf	(___ftmul@f3_as_product+1),f
u429_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u429_22
	addwf	(___ftmul@f3_as_product+2),f
u429_22:

	goto	i1l10263
	
i1l7923:	
	line	73
	
i1l10263:	
	movlw	01h
u430_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u430_25

	line	74
	
i1l10265:	
	movlw	01h
u431_25:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u431_25
	line	75
	
i1l10267:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u432_21
	goto	u432_20
u432_21:
	goto	i1l10259
u432_20:
	goto	i1l10269
	
i1l7924:	
	line	76
	
i1l10269:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l10271
	line	77
	
i1l7925:	
	line	78
	
i1l10271:	
	btfss	(___ftmul@f1),(0)&7
	goto	u433_21
	goto	u433_20
u433_21:
	goto	i1l10275
u433_20:
	line	79
	
i1l10273:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u434_21
	addwf	(___ftmul@f3_as_product+1),f
u434_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u434_22
	addwf	(___ftmul@f3_as_product+2),f
u434_22:

	goto	i1l10275
	
i1l7926:	
	line	80
	
i1l10275:	
	movlw	01h
u435_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u435_25

	line	81
	
i1l10277:	
	movlw	01h
u436_25:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u436_25

	line	82
	
i1l10279:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u437_21
	goto	u437_20
u437_21:
	goto	i1l10271
u437_20:
	goto	i1l10281
	
i1l7927:	
	line	83
	
i1l10281:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	i1l7920
	
i1l10283:	
	line	84
	
i1l7920:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text925,local,class=CODE,delta=2
global __ptext925
__ptext925:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   30[BANK0 ] float 
;;  f1              3   33[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   41[BANK0 ] float 
;;  sign            1   45[BANK0 ] unsigned char 
;;  exp             1   44[BANK0 ] unsigned char 
;;  cntr            1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   30[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_JY62_ReceiveData
;; This function uses a non-reentrant model
;;
psect	text925
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l10193:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u416_21
	goto	u416_20
u416_21:
	goto	i1l10199
u416_20:
	line	56
	
i1l10195:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l7910
	
i1l10197:	
	goto	i1l7910
	
i1l7909:	
	line	57
	
i1l10199:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u417_21
	goto	u417_20
u417_21:
	goto	i1l10205
u417_20:
	line	58
	
i1l10201:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l7910
	
i1l10203:	
	goto	i1l7910
	
i1l7911:	
	line	59
	
i1l10205:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
i1l10207:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
i1l10209:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u418_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u418_20:
	addlw	-1
	skipz
	goto	u418_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
i1l10211:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u419_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u419_20:
	addlw	-1
	skipz
	goto	u419_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
i1l10213:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
i1l10215:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
i1l10217:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	i1l10219
	line	69
	
i1l7912:	
	line	70
	
i1l10219:	
	movlw	01h
u420_25:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u420_25
	line	71
	
i1l10221:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u421_25
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u421_25
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u421_25:
	skipc
	goto	u421_21
	goto	u421_20
u421_21:
	goto	i1l10227
u421_20:
	line	72
	
i1l10223:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
i1l10225:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	i1l10227
	line	74
	
i1l7913:	
	line	75
	
i1l10227:	
	movlw	01h
u422_25:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u422_25
	line	76
	
i1l10229:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u423_21
	goto	u423_20
u423_21:
	goto	i1l10219
u423_20:
	goto	i1l10231
	
i1l7914:	
	line	77
	
i1l10231:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	i1l7910
	
i1l10233:	
	line	78
	
i1l7910:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___fttol
psect	text926,local,class=CODE,delta=2
global __ptext926
__ptext926:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_JY62_ReceiveData
;; This function uses a non-reentrant model
;;
psect	text926
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
i1l10285:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u438_21
	goto	u438_20
u438_21:
	goto	i1l10291
u438_20:
	line	50
	
i1l10287:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l7931
	
i1l10289:	
	goto	i1l7931
	
i1l7930:	
	line	51
	
i1l10291:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u439_25:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u439_20:
	addlw	-1
	skipz
	goto	u439_25
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
i1l10293:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l10295:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
i1l10297:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
i1l10299:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
i1l10301:	
	btfss	(___fttol@exp1),7
	goto	u440_21
	goto	u440_20
u440_21:
	goto	i1l10311
u440_20:
	line	57
	
i1l10303:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u441_21
	goto	u441_20
u441_21:
	goto	i1l10309
u441_20:
	line	58
	
i1l10305:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l7931
	
i1l10307:	
	goto	i1l7931
	
i1l7933:	
	goto	i1l10309
	line	59
	
i1l7934:	
	line	60
	
i1l10309:	
	movlw	01h
u442_25:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u442_25

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u443_21
	goto	u443_20
u443_21:
	goto	i1l10309
u443_20:
	goto	i1l10321
	
i1l7935:	
	line	62
	goto	i1l10321
	
i1l7932:	
	line	63
	
i1l10311:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u444_21
	goto	u444_20
u444_21:
	goto	i1l10319
u444_20:
	line	64
	
i1l10313:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l7931
	
i1l10315:	
	goto	i1l7931
	
i1l7937:	
	line	65
	goto	i1l10319
	
i1l7939:	
	line	66
	
i1l10317:	
	movlw	01h
	movwf	(??___fttol+0)+0
u445_25:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u445_25
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	i1l10319
	line	68
	
i1l7938:	
	line	65
	
i1l10319:	
	movf	(___fttol@exp1),f
	skipz
	goto	u446_21
	goto	u446_20
u446_21:
	goto	i1l10317
u446_20:
	goto	i1l10321
	
i1l7940:	
	goto	i1l10321
	line	69
	
i1l7936:	
	line	70
	
i1l10321:	
	movf	(___fttol@sign1),w
	skipz
	goto	u447_20
	goto	i1l10325
u447_20:
	line	71
	
i1l10323:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	i1l10325
	
i1l7941:	
	line	72
	
i1l10325:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	i1l7931
	
i1l10327:	
	line	73
	
i1l7931:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text927,local,class=CODE,delta=2
global __ptext927
__ptext927:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___ftadd
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text927
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l10157:	
	movf	(___ftpack@exp),w
	skipz
	goto	u405_20
	goto	i1l10161
u405_20:
	
i1l10159:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u406_21
	goto	u406_20
u406_21:
	goto	i1l10167
u406_20:
	goto	i1l10161
	
i1l8155:	
	line	65
	
i1l10161:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l8156
	
i1l10163:	
	goto	i1l8156
	
i1l8153:	
	line	66
	goto	i1l10167
	
i1l8158:	
	line	67
	
i1l10165:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u407_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u407_25

	goto	i1l10167
	line	69
	
i1l8157:	
	line	66
	
i1l10167:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u408_21
	goto	u408_20
u408_21:
	goto	i1l10165
u408_20:
	goto	i1l8160
	
i1l8159:	
	line	70
	goto	i1l8160
	
i1l8161:	
	line	71
	
i1l10169:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l10171:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
i1l10173:	
	movlw	01h
u409_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u409_25

	line	74
	
i1l8160:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u410_21
	goto	u410_20
u410_21:
	goto	i1l10169
u410_20:
	goto	i1l10177
	
i1l8162:	
	line	75
	goto	i1l10177
	
i1l8164:	
	line	76
	
i1l10175:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u411_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u411_25
	goto	i1l10177
	line	78
	
i1l8163:	
	line	75
	
i1l10177:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u412_21
	goto	u412_20
u412_21:
	goto	i1l10175
u412_20:
	
i1l8165:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u413_21
	goto	u413_20
u413_21:
	goto	i1l8166
u413_20:
	line	80
	
i1l10179:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l8166:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l10181:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u414_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u414_20:
	addlw	-1
	skipz
	goto	u414_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l10183:	
	movf	(___ftpack@sign),w
	skipz
	goto	u415_20
	goto	i1l8167
u415_20:
	line	84
	
i1l10185:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l8167:	
	line	85
	line	86
	
i1l8156:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
psect	text928,local,class=CODE,delta=2
global __ptext928
__ptext928:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
