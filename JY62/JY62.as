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
# 8 "E:\MPLAB_IDE\JY62\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "E:\MPLAB_IDE\JY62\main.c"
	dw 0xFF29 ;#
	FNCALL	_main,_Beep_Init
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_ShowString
	FNCALL	_main,_LCD_Clear
	FNCALL	_main,_KEY_Init
	FNCALL	_main,_Uart_Init
	FNCALL	_main,_JY62_ShowData
	FNCALL	_JY62_ShowData,_LCD_ShowString
	FNCALL	_JY62_ShowData,_JY62_InfiniteYaw
	FNCALL	_JY62_ShowData,___fttol
	FNCALL	_JY62_ShowData,_sprintf
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,_scale
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	___ftsub,___ftadd
	FNCALL	_scale,___awmod
	FNCALL	_scale,___bmul
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___ftmul
	FNCALL	_fround,___awmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___awdiv
	FNCALL	_fround,___ftmul
	FNCALL	_JY62_InfiniteYaw,___fttol
	FNCALL	_JY62_InfiniteYaw,___awmod
	FNCALL	_JY62_InfiniteYaw,___awtoft
	FNCALL	_LCD_ShowString,_ENABLE
	FNCALL	_LCD_ShowString,_ENABLE1
	FNCALL	_LCD_ShowString,_DELAY
	FNCALL	_LCD_Clear,_ENABLE
	FNCALL	_LCD_Clear,_DELAY
	FNCALL	_LCD_Init,_DELAY
	FNCALL	_LCD_Init,_ENABLE
	FNCALL	___lltoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_ENABLE1,_DELAY
	FNCALL	_ENABLE,_DELAY
	FNROOT	_main
	FNCALL	_uart_service,_JY62_ReceiveData
	FNCALL	_JY62_ReceiveData,i1___awtoft
	FNCALL	_JY62_ReceiveData,___ftdiv
	FNCALL	_JY62_ReceiveData,i1___ftmul
	FNCALL	i1___awtoft,i1___ftpack
	FNCALL	i1___ftmul,i1___ftpack
	FNCALL	___ftdiv,i1___ftpack
	FNCALL	intlevel1,_uart_service
	global	intlevel1
	FNROOT	intlevel1
	global	_TABLE
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\MPLAB_IDE\JY62\KEY.c"
	line	4

;initializer for _TABLE
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	041h
	retlw	042h
	retlw	043h
	retlw	044h
	retlw	045h
	retlw	046h
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global	__npowers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global	_dpowers
	global	__npowers_
	global	__powers_
	global	_RxBuffer
	global	_RxIndex
	global	_RxState
	global	_preres
	global	_result
	global	_Pitch
	global	_Roll
	global	_Yaw
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
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
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_SPEN
_SPEN	set	199
	global	_ADCON1
_ADCON1	set	159
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
	
STR_3:	
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	108	;'l'
	retlw	100	;'d'
	retlw	33	;'!'
	retlw	10
	retlw	0
psect	strings
	
STR_4:	
	retlw	80	;'P'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	46	;'.'
	retlw	51	;'3'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_5:	
	retlw	89	;'Y'
	retlw	97	;'a'
	retlw	119	;'w'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_6:	
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_7	equ	STR_6+0
	file	"JY62.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_RxBuffer:
       ds      11

_RxIndex:
       ds      1

_RxState:
       ds      1

_preres:
       ds      1

_result:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\MPLAB_IDE\JY62\KEY.c"
	line	4
_TABLE:
       ds      16

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_Pitch:
       ds      3

_Roll:
       ds      3

_Yaw:
       ds      3

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
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+09h)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+16)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1
global __pcstackBANK3
__pcstackBANK3:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	4
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x4
	ds	6
	global	_sprintf$5503
_sprintf$5503:	; 4 bytes @ 0xA
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xE
	ds	1
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0xF
	ds	3
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x12
	ds	4
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x16
	ds	2
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x18
	ds	2
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1A
	ds	2
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x1C
	ds	3
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x1F
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x21
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x22
	ds	1
	global	?_JY62_ShowData
?_JY62_ShowData:	; 0 bytes @ 0x23
	global	JY62_ShowData@roll
JY62_ShowData@roll:	; 3 bytes @ 0x23
	ds	3
	global	JY62_ShowData@pitch
JY62_ShowData@pitch:	; 3 bytes @ 0x26
	ds	3
	global	JY62_ShowData@yaw
JY62_ShowData@yaw:	; 3 bytes @ 0x29
	ds	3
	global	JY62_ShowData@str
JY62_ShowData@str:	; 11 bytes @ 0x2C
	ds	11
	global	JY62_ShowData@infinite_yaw
JY62_ShowData@infinite_yaw:	; 2 bytes @ 0x37
	ds	2
	global	_JY62_ShowData$6334
_JY62_ShowData$6334:	; 2 bytes @ 0x39
	ds	2
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_Beep_Init
??_Beep_Init:	; 0 bytes @ 0x0
	global	??_Uart_Init
??_Uart_Init:	; 0 bytes @ 0x0
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	??_DELAY
??_DELAY:	; 0 bytes @ 0x0
	global	??_KEY_Init
??_KEY_Init:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	_isdigit$5858
_isdigit$5858:	; 1 bytes @ 0x0
	global	DELAY@i
DELAY@i:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_ENABLE
??_ENABLE:	; 0 bytes @ 0x2
	global	??_ENABLE1
??_ENABLE1:	; 0 bytes @ 0x2
	global	??_LCD_Init
??_LCD_Init:	; 0 bytes @ 0x2
	global	??_LCD_Clear
??_LCD_Clear:	; 0 bytes @ 0x2
	global	?_LCD_ShowString
?_LCD_ShowString:	; 0 bytes @ 0x2
	global	LCD_ShowString@str
LCD_ShowString@str:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	LCD_ShowString@row
LCD_ShowString@row:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	LCD_ShowString@col
LCD_ShowString@col:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
	global	??_LCD_ShowString
??_LCD_ShowString:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	LCD_ShowString@address
LCD_ShowString@address:	; 1 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	1
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0xA
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xB
	ds	1
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xC
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xC
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xD
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	ds	1
	global	?___llmod
?___llmod:	; 4 bytes @ 0xE
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0xE
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xE
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0xE
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0xE
	ds	1
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0xF
	ds	1
	global	?___bmul
?___bmul:	; 1 bytes @ 0x10
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x10
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x11
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x12
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x12
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x12
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x13
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x13
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x14
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x14
	ds	2
	global	??___llmod
??___llmod:	; 0 bytes @ 0x16
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x17
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x18
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1C
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1D
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x21
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x22
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x22
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x22
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x22
	ds	3
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x25
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x25
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x27
	ds	1
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x28
	global	?_JY62_InfiniteYaw
?_JY62_InfiniteYaw:	; 3 bytes @ 0x28
	global	JY62_InfiniteYaw@yaw
JY62_InfiniteYaw@yaw:	; 3 bytes @ 0x28
	ds	3
	global	??_JY62_InfiniteYaw
??_JY62_InfiniteYaw:	; 0 bytes @ 0x2B
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2C
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2D
	ds	2
	global	JY62_InfiniteYaw@new_yaw
JY62_InfiniteYaw@new_yaw:	; 3 bytes @ 0x2F
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x30
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x31
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x32
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x32
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x32
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x35
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x35
	ds	2
	global	_scale$6337
_scale$6337:	; 3 bytes @ 0x37
	ds	1
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x38
	ds	2
	global	scale@scl
scale@scl:	; 1 bytes @ 0x3A
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3C
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x3D
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x3E
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x3F
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x3F
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x3F
	ds	3
	global	??_fround
??_fround:	; 0 bytes @ 0x42
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x42
	ds	3
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x45
	ds	3
	global	_fround$6336
_fround$6336:	; 3 bytes @ 0x48
	ds	3
	global	_fround$6335
_fround$6335:	; 3 bytes @ 0x4B
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x4E
	ds	1
	global	??_JY62_ShowData
??_JY62_ShowData:	; 0 bytes @ 0x4F
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x50
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Beep_Init
?_Beep_Init:	; 0 bytes @ 0x0
	global	?_Uart_Init
?_Uart_Init:	; 0 bytes @ 0x0
	global	?_JY62_ReceiveData
?_JY62_ReceiveData:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_DELAY
?_DELAY:	; 0 bytes @ 0x0
	global	?_ENABLE
?_ENABLE:	; 0 bytes @ 0x0
	global	?_ENABLE1
?_ENABLE1:	; 0 bytes @ 0x0
	global	?_LCD_Init
?_LCD_Init:	; 0 bytes @ 0x0
	global	?_LCD_Clear
?_LCD_Clear:	; 0 bytes @ 0x0
	global	?_KEY_Init
?_KEY_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_uart_service
?_uart_service:	; 0 bytes @ 0x0
	global	?i1___ftpack
?i1___ftpack:	; 3 bytes @ 0x0
	global	i1___ftpack@arg
i1___ftpack@arg:	; 3 bytes @ 0x0
	ds	3
	global	i1___ftpack@exp
i1___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	i1___ftpack@sign
i1___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??i1___ftpack
??i1___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?i1___awtoft
?i1___awtoft:	; 3 bytes @ 0x8
	global	i1___awtoft@c
i1___awtoft@c:	; 2 bytes @ 0x8
	ds	3
	global	??i1___awtoft
??i1___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	i1___awtoft@sign
i1___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x6
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xB
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xE
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	?i1___ftmul
?i1___ftmul:	; 3 bytes @ 0x10
	global	i1___ftmul@f1
i1___ftmul@f1:	; 3 bytes @ 0x10
	ds	3
	global	i1___ftmul@f2
i1___ftmul@f2:	; 3 bytes @ 0x13
	ds	3
	global	??i1___ftmul
??i1___ftmul:	; 0 bytes @ 0x16
	ds	4
	global	i1___ftmul@exp
i1___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	i1___ftmul@f3_as_product
i1___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	i1___ftmul@cntr
i1___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	i1___ftmul@sign
i1___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	??_JY62_ReceiveData
??_JY62_ReceiveData:	; 0 bytes @ 0x20
	ds	4
	global	JY62_ReceiveData@sum
JY62_ReceiveData@sum:	; 1 bytes @ 0x24
	ds	1
	global	JY62_ReceiveData@i
JY62_ReceiveData@i:	; 1 bytes @ 0x25
	ds	1
	global	JY62_ReceiveData@RxData
JY62_ReceiveData@RxData:	; 1 bytes @ 0x26
	ds	1
	global	??_uart_service
??_uart_service:	; 0 bytes @ 0x27
	ds	5
	global	uart_service@RxData
uart_service@RxData:	; 1 bytes @ 0x2C
	ds	1
;;Data sizes: Strings 41, constant 118, data 16, bss 24, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     45      76
;; BANK1           80     80      80
;; BANK3           96     59      68
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___ftpack	float  size(1) Largest target is 0
;;
;; ?i1___awtoft	float  size(1) Largest target is 0
;;
;; ?i1___ftmul	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?_scale	float  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_fround	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_JY62_InfiniteYaw	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_7(CODE[4]), STR_6(CODE[4]), STR_1(CODE[6]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 11
;;		 -> JY62_ShowData@str(BANK3[11]), floatToStr@charbuf(COMMON[10]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK3[2]), 
;;
;; S5492$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; LCD_ShowString@str	PTR unsigned char  size(2) Largest target is 14
;;		 -> JY62_ShowData@str(BANK3[11]), STR_5(CODE[5]), STR_4(CODE[7]), STR_3(CODE[14]), 
;;		 -> STR_2(CODE[5]), floatToStr@charbuf(COMMON[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _uart_service in COMMON
;;
;;   _JY62_ReceiveData->i1___awtoft
;;   i1___awtoft->i1___ftpack
;;   i1___ftmul->i1___awtoft
;;   ___ftdiv->i1___awtoft
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _uart_service in BANK0
;;
;;   _uart_service->_JY62_ReceiveData
;;   _JY62_ReceiveData->i1___ftmul
;;   i1___ftmul->___ftdiv
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_JY62_ShowData
;;   _sprintf->_fround
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   _JY62_InfiniteYaw->___awtoft
;;   _LCD_ShowString->_DELAY
;;   _LCD_Clear->_DELAY
;;   _LCD_Init->_DELAY
;;   ___lltoft->___ftpack
;;   ___awtoft->___fttol
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;   _ENABLE1->_DELAY
;;   _ENABLE->_DELAY
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___bmul
;;   ___bmul->___awdiv
;;
;; Critical Paths under _uart_service in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   _main->_JY62_ShowData
;;   _JY62_ShowData->_sprintf
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
;; (0) _main                                                 0     0      0   12998
;;                          _Beep_Init
;;                           _LCD_Init
;;                     _LCD_ShowString
;;                          _LCD_Clear
;;                           _KEY_Init
;;                          _Uart_Init
;;                      _JY62_ShowData
;; ---------------------------------------------------------------------------------
;; (1) _JY62_ShowData                                       25    16      9   12541
;;                                             79 BANK1      1     1      0
;;                                             35 BANK3     24    15      9
;;                     _LCD_ShowString
;;                   _JY62_InfiniteYaw
;;                            ___fttol
;;                            _sprintf
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                             39    35      4   10913
;;                                              0 BANK3     35    31      4
;;                            _isdigit
;;                             ___wmul
;;                             ___ftge
;;                            ___ftneg
;;                            ___awdiv
;;                              _scale
;;                            ___ftmul
;;                             _fround
;;                            ___ftadd
;;                            ___fttol
;;                         __div_to_l_
;;                        __tdiv_to_l_
;;                           ___lltoft
;;                            ___ftsub
;;                            ___lldiv
;;                            ___llmod
;; ---------------------------------------------------------------------------------
;; (3) ___ftsub                                              6     0      6    1094
;;                                             63 BANK1      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _scale                                               12     9      3    1688
;;                                             50 BANK1      9     6      3
;;                            ___awmod
;;                             ___bmul
;;                            ___awdiv
;;                            ___ftmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _fround                                              19    16      3    1490
;;                                             63 BANK1     16    13      3
;;                            ___awmod
;;                             ___bmul
;;                            ___awdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _JY62_InfiniteYaw                                    10     7      3     893
;;                                             40 BANK1     10     7      3
;;                            ___fttol
;;                            ___awmod
;;                           ___awtoft
;; ---------------------------------------------------------------------------------
;; (2) _LCD_ShowString                                       6     2      4     273
;;                                              2 BANK1      6     2      4
;;                             _ENABLE
;;                            _ENABLE1
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Clear                                            0     0      0      92
;;                             _ENABLE
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Init                                             0     0      0      92
;;                              _DELAY
;;                             _ENABLE
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             6     2      4     278
;;                                              8 BANK1      6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (3) ___awtoft                                             6     3      3     300
;;                                             34 BANK1      6     3      3
;;                           ___ftpack
;;                            ___awmod (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftmul                                             16    10      6     535
;;                                             34 BANK1     16    10      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftadd                                             13     7      6    1049
;;                                             50 BANK1     13     7      6
;;                           ___ftpack
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _ENABLE1                                              0     0      0      46
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (3) _ENABLE                                               0     0      0      46
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (4) ___awmod                                              7     3      4     296
;;                                              0 BANK1      7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             14     6      8     162
;;                                              0 BANK1     14     6      8
;; ---------------------------------------------------------------------------------
;; (3) ___ftge                                              12     6      6     136
;;                                              0 BANK1     12     6      6
;; ---------------------------------------------------------------------------------
;; (3) ___ftneg                                              3     0      3      45
;;                                              0 BANK1      3     0      3
;; ---------------------------------------------------------------------------------
;; (3) ___llmod                                             10     2      8     159
;;                                             14 BANK1     10     2      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awdiv                                              9     5      4     300
;;                                              7 BANK1      9     5      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___fttol                                             14    10      4     252
;;                                             20 BANK1     14    10      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (5) ___ftpack                                             8     3      5     209
;;                                              0 BANK1      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 BANK1      6     2      4
;; ---------------------------------------------------------------------------------
;; (4) ___bmul                                               4     3      1      68
;;                                             16 BANK1      4     3      1
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) __div_to_l_                                          20    14      6     446
;;                                              0 BANK1     20    14      6
;; ---------------------------------------------------------------------------------
;; (3) __tdiv_to_l_                                         16    10      6     303
;;                                              0 BANK1     16    10      6
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      68
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Uart_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Beep_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _KEY_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _DELAY                                                2     2      0      46
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _uart_service                                         6     6      0    3920
;;                                             39 BANK0      6     6      0
;;                   _JY62_ReceiveData
;; ---------------------------------------------------------------------------------
;; (7) _JY62_ReceiveData                                     7     7      0    3897
;;                                             32 BANK0      7     7      0
;;                         i1___awtoft
;;                            ___ftdiv
;;                          i1___ftmul
;; ---------------------------------------------------------------------------------
;; (8) i1___awtoft                                           6     3      3     977
;;                                              8 COMMON     6     3      3
;;                         i1___ftpack
;; ---------------------------------------------------------------------------------
;; (8) i1___ftmul                                           16    10      6    1737
;;                                             16 BANK0     16    10      6
;;                         i1___ftpack
;;                            ___ftdiv (ARG)
;;                         i1___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (8) ___ftdiv                                             16    10      6     959
;;                                              0 BANK0     16    10      6
;;                         i1___ftpack
;;                         i1___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (9) i1___ftpack                                           8     3      5     679
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 9
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Beep_Init
;;   _LCD_Init
;;     _DELAY
;;     _ENABLE
;;       _DELAY
;;   _LCD_ShowString
;;     _ENABLE
;;       _DELAY
;;     _ENABLE1
;;       _DELAY
;;     _DELAY
;;   _LCD_Clear
;;     _ENABLE
;;       _DELAY
;;     _DELAY
;;   _KEY_Init
;;   _Uart_Init
;;   _JY62_ShowData
;;     _LCD_ShowString
;;       _ENABLE
;;         _DELAY
;;       _ENABLE1
;;         _DELAY
;;       _DELAY
;;     _JY62_InfiniteYaw
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       ___awmod
;;       ___awtoft
;;         ___ftpack
;;         ___awmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;     _sprintf
;;       _isdigit
;;       ___wmul
;;       ___ftge
;;       ___ftneg
;;       ___awdiv
;;         ___awmod (ARG)
;;       _scale
;;         ___awmod
;;         ___bmul
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;       _fround
;;         ___awmod
;;         ___bmul
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv
;;           ___awmod (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___awmod (ARG)
;;                 ___awdiv (ARG)
;;                   ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;       ___ftadd
;;         ___ftpack
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;       __div_to_l_
;;       __tdiv_to_l_
;;       ___lltoft
;;         ___ftpack
;;       ___ftsub
;;         ___ftadd
;;           ___ftpack
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___awmod (ARG)
;;                 ___awdiv (ARG)
;;                   ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___awmod (ARG)
;;         ___lltoft (ARG)
;;           ___ftpack
;;       ___lldiv
;;       ___llmod
;;         ___lldiv (ARG)
;;
;; _uart_service (ROOT)
;;   _JY62_ReceiveData
;;     i1___awtoft
;;       i1___ftpack
;;     ___ftdiv
;;       i1___ftpack
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;     i1___ftmul
;;       i1___ftpack
;;       ___ftdiv (ARG)
;;         i1___ftpack
;;         i1___awtoft (ARG)
;;           i1___ftpack
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60     3B      44       9       70.8%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50     50      50       7      100.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      FB      12        0.0%
;;ABS                  0      0      EE       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       D       2        0.0%
;;BANK0               50     2D      4C       5       95.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "E:\MPLAB_IDE\JY62\main.c"
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Beep_Init
;;		_LCD_Init
;;		_LCD_ShowString
;;		_LCD_Clear
;;		_KEY_Init
;;		_Uart_Init
;;		_JY62_ShowData
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\JY62\main.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	12
	
l10138:	
;main.c: 12: Beep_Init();
	fcall	_Beep_Init
	line	13
	
l10140:	
;main.c: 13: LCD_Init();
	fcall	_LCD_Init
	line	14
	
l10142:	
;main.c: 14: LCD_ShowString("1001", 0, 0);
	movlw	low((STR_2-__stringbase))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_LCD_ShowString)^080h
	movlw	80h
	movwf	(?_LCD_ShowString+1)^080h
	clrf	0+(?_LCD_ShowString)^080h+02h
	clrf	0+(?_LCD_ShowString)^080h+03h
	fcall	_LCD_ShowString
	line	15
	
l10144:	
;main.c: 15: LCD_ShowString("Hello World!\n", 1, 0);
	movlw	low((STR_3-__stringbase))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_LCD_ShowString)^080h
	movlw	80h
	movwf	(?_LCD_ShowString+1)^080h
	clrf	0+(?_LCD_ShowString)^080h+02h
	bsf	status,0
	rlf	0+(?_LCD_ShowString)^080h+02h,f
	clrf	0+(?_LCD_ShowString)^080h+03h
	fcall	_LCD_ShowString
	line	16
	
l10146:	
;main.c: 16: LCD_Clear();
	fcall	_LCD_Clear
	line	17
	
l10148:	
;main.c: 17: KEY_Init();
	fcall	_KEY_Init
	line	18
	
l10150:	
;main.c: 18: Uart_Init();
	fcall	_Uart_Init
	line	20
	
l10152:	
;main.c: 20: LCD_Init();
	fcall	_LCD_Init
	goto	l10154
	line	21
;main.c: 21: while(1) {
	
l2162:	
	line	23
	
l10154:	
;main.c: 23: JY62_ShowData(Roll,Pitch,Yaw);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_Roll)^0180h,w
	movwf	(?_JY62_ShowData)^0180h
	movf	(_Roll+1)^0180h,w
	movwf	(?_JY62_ShowData+1)^0180h
	movf	(_Roll+2)^0180h,w
	movwf	(?_JY62_ShowData+2)^0180h
	movf	(_Pitch)^0180h,w
	movwf	0+(?_JY62_ShowData)^0180h+03h
	movf	(_Pitch+1)^0180h,w
	movwf	1+(?_JY62_ShowData)^0180h+03h
	movf	(_Pitch+2)^0180h,w
	movwf	2+(?_JY62_ShowData)^0180h+03h
	movf	(_Yaw)^0180h,w
	movwf	0+(?_JY62_ShowData)^0180h+06h
	movf	(_Yaw+1)^0180h,w
	movwf	1+(?_JY62_ShowData)^0180h+06h
	movf	(_Yaw+2)^0180h,w
	movwf	2+(?_JY62_ShowData)^0180h+06h
	fcall	_JY62_ShowData
	goto	l10154
	line	25
	
l2163:	
	line	21
	goto	l10154
	
l2164:	
	line	26
	
l2165:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_JY62_ShowData
psect	text930,local,class=CODE,delta=2
global __ptext930
__ptext930:

;; *************** function _JY62_ShowData *****************
;; Defined at:
;;		line 105 in file "E:\MPLAB_IDE\JY62\JY62.c"
;; Parameters:    Size  Location     Type
;;  roll            3   35[BANK3 ] float 
;;  pitch           3   38[BANK3 ] float 
;;  yaw             3   41[BANK3 ] float 
;; Auto vars:     Size  Location     Type
;;  str            11   44[BANK3 ] unsigned char [11]
;;  infinite_yaw    2   55[BANK3 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       9       0
;;      Locals:         0       0       0      15       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1      24       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_LCD_ShowString
;;		_JY62_InfiniteYaw
;;		___fttol
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text930
	file	"E:\MPLAB_IDE\JY62\JY62.c"
	line	105
	global	__size_of_JY62_ShowData
	__size_of_JY62_ShowData	equ	__end_of_JY62_ShowData-_JY62_ShowData
	
_JY62_ShowData:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _JY62_ShowData: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	109
	
l10128:	
;JY62.c: 106: unsigned char str[11];
;JY62.c: 109: LCD_ShowString("Pitch:", 0, 0);
	movlw	low((STR_4-__stringbase))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_LCD_ShowString)^080h
	movlw	80h
	movwf	(?_LCD_ShowString+1)^080h
	clrf	0+(?_LCD_ShowString)^080h+02h
	clrf	0+(?_LCD_ShowString)^080h+03h
	fcall	_LCD_ShowString
	line	110
;JY62.c: 110: LCD_ShowString("Yaw:", 1, 0);
	movlw	low((STR_5-__stringbase))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_LCD_ShowString)^080h
	movlw	80h
	movwf	(?_LCD_ShowString+1)^080h
	clrf	0+(?_LCD_ShowString)^080h+02h
	bsf	status,0
	rlf	0+(?_LCD_ShowString)^080h+02h,f
	clrf	0+(?_LCD_ShowString)^080h+03h
	fcall	_LCD_ShowString
	line	112
	
l10130:	
;JY62.c: 112: uint16_t infinite_yaw = JY62_InfiniteYaw(yaw);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(JY62_ShowData@yaw)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_JY62_InfiniteYaw)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(JY62_ShowData@yaw+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_JY62_InfiniteYaw+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(JY62_ShowData@yaw+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_JY62_InfiniteYaw+2)^080h
	fcall	_JY62_InfiniteYaw
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_JY62_InfiniteYaw))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?_JY62_InfiniteYaw))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?_JY62_InfiniteYaw))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(JY62_ShowData@infinite_yaw+1)^0180h
	addwf	(JY62_ShowData@infinite_yaw+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(JY62_ShowData@infinite_yaw)^0180h
	addwf	(JY62_ShowData@infinite_yaw)^0180h

	line	113
	
l10132:	
;JY62.c: 113: sprintf(str, "%3d",infinite_yaw);
	movlw	((STR_6-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_JY62_ShowData+0)^080h+0
	movf	(??_JY62_ShowData+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(?_sprintf)^0180h
	movf	(JY62_ShowData@infinite_yaw+1)^0180h,w
	clrf	1+(?_sprintf)^0180h+01h
	addwf	1+(?_sprintf)^0180h+01h
	movf	(JY62_ShowData@infinite_yaw)^0180h,w
	clrf	0+(?_sprintf)^0180h+01h
	addwf	0+(?_sprintf)^0180h+01h

	movlw	(JY62_ShowData@str)&0ffh
	fcall	_sprintf
	line	114
	
l10134:	
;JY62.c: 114: LCD_ShowString(str, 1, 4);
	movlw	(JY62_ShowData@str&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_LCD_ShowString)^080h
	movlw	(0x3/2)
	movwf	(?_LCD_ShowString+1)^080h
	clrf	0+(?_LCD_ShowString)^080h+02h
	bsf	status,0
	rlf	0+(?_LCD_ShowString)^080h+02h,f
	movlw	(04h)
	movwf	(??_JY62_ShowData+0)^080h+0
	movf	(??_JY62_ShowData+0)^080h+0,w
	movwf	0+(?_LCD_ShowString)^080h+03h
	fcall	_LCD_ShowString
	line	116
	
l10136:	
;JY62.c: 116: sprintf(str, "%3d",(uint16_t)pitch);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(JY62_ShowData@pitch)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(JY62_ShowData@pitch+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(JY62_ShowData@pitch+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_JY62_ShowData$6334+1)^0180h
	addwf	(_JY62_ShowData$6334+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_JY62_ShowData$6334)^0180h
	addwf	(_JY62_ShowData$6334)^0180h

;JY62.c: 116: sprintf(str, "%3d",(uint16_t)pitch);
	movlw	((STR_7-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_JY62_ShowData+0)^080h+0
	movf	(??_JY62_ShowData+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(?_sprintf)^0180h
	movf	(_JY62_ShowData$6334+1)^0180h,w
	clrf	1+(?_sprintf)^0180h+01h
	addwf	1+(?_sprintf)^0180h+01h
	movf	(_JY62_ShowData$6334)^0180h,w
	clrf	0+(?_sprintf)^0180h+01h
	addwf	0+(?_sprintf)^0180h+01h

	movlw	(JY62_ShowData@str)&0ffh
	fcall	_sprintf
	line	117
;JY62.c: 117: LCD_ShowString(str, 0, 6);
	movlw	(JY62_ShowData@str&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_LCD_ShowString)^080h
	movlw	(0x3/2)
	movwf	(?_LCD_ShowString+1)^080h
	clrf	0+(?_LCD_ShowString)^080h+02h
	movlw	(06h)
	movwf	(??_JY62_ShowData+0)^080h+0
	movf	(??_JY62_ShowData+0)^080h+0,w
	movwf	0+(?_LCD_ShowString)^080h+03h
	fcall	_LCD_ShowString
	line	121
	
l2892:	
	return
	opt stack 0
GLOBAL	__end_of_JY62_ShowData
	__end_of_JY62_ShowData:
;; =============== function _JY62_ShowData ends ============

	signat	_JY62_ShowData,12408
	global	_sprintf
psect	text931,local,class=CODE,delta=2
global __ptext931
__ptext931:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> JY62_ShowData@str(11), floatToStr@charbuf(10), 
;;  f               1    0[BANK3 ] PTR const unsigned char 
;;		 -> STR_7(4), STR_6(4), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  sp              1   33[BANK3 ] PTR unsigned char 
;;		 -> JY62_ShowData@str(11), floatToStr@charbuf(10), 
;;  _val            4   18[BANK3 ] struct .
;;  fval            3   28[BANK3 ] struct .
;;  integ           3   15[BANK3 ] struct .
;;  ival            3    0        struct .
;;  prec            2   31[BANK3 ] int 
;;  width           2   26[BANK3 ] int 
;;  exp             2   24[BANK3 ] int 
;;  flag            2   22[BANK3 ] unsigned short 
;;  c               1   34[BANK3 ] char 
;;  ap              1   14[BANK3 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK3 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0      25       0
;;      Temps:          0       0       0       6       0
;;      Totals:         0       0       0      35       0
;;Total ram usage:       35 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_isdigit
;;		___wmul
;;		___ftge
;;		___ftneg
;;		___awdiv
;;		_scale
;;		___ftmul
;;		_fround
;;		___ftadd
;;		___fttol
;;		__div_to_l_
;;		__tdiv_to_l_
;;		___lltoft
;;		___ftsub
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_JY62_ShowData
;;		_floatToStr
;; This function uses a non-reentrant model
;;
psect	text931
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@sp)^0180h
	
l9814:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@ap)^0180h
	line	540
	goto	l10122
	
l4298:	
	line	542
	
l9816:	
	movf	(sprintf@c)^0180h,w
	xorlw	025h
	skipnz
	goto	u5931
	goto	u5930
u5931:
	goto	l9822
u5930:
	line	545
	
l9818:	
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l9820:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	line	546
	goto	l10122
	line	547
	
l4299:	
	line	550
	
l9822:	
	clrf	(sprintf@width)^0180h
	clrf	(sprintf@width+1)^0180h
	line	552
	clrf	(sprintf@flag)^0180h
	clrf	(sprintf@flag+1)^0180h
	goto	l9828
	line	554
	
l4300:	
	line	555
	goto	l9828
	line	583
	
l4302:	
	line	584
	bsf	(sprintf@flag)^0180h+(2/8),(2)&7
	line	585
	
l9824:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@f)^0180h,f
	line	586
	goto	l9828
	line	588
	
l9826:	
	goto	l9830
	line	555
	
l4301:	
	
l9828:	
	movf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l4302
	goto	l9830
	opt asmopt_on

	line	588
	
l4304:	
	line	589
	goto	l9830
	line	590
	
l4303:	
	goto	l9828
	
l4305:	
	line	601
	
l9830:	
	movf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u5941
	goto	u5940
u5941:
	goto	l9840
u5940:
	line	602
	
l9832:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@width)^0180h
	clrf	(sprintf@width+1)^0180h
	goto	l9834
	line	603
	
l4307:	
	line	604
	
l9834:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@width+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___wmul+1)^080h
	addwf	(?___wmul+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@width)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___wmul)^080h
	addwf	(?___wmul)^080h

	movlw	low(0Ah)
	movwf	0+(?___wmul)^080h+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)^080h+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(0+(?___wmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+0)^0180h+0
	movlw	0
	skipnc
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(1+(?___wmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(??_sprintf+0)^0180h+0
	movf	0+(??_sprintf+0)^0180h+0,w
	addlw	low(0FFD0h)
	movwf	(sprintf@width)^0180h
	movf	1+(??_sprintf+0)^0180h+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(sprintf@width)^0180h
	
l9836:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@f)^0180h,f
	line	605
	
l9838:	
	movf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5951
	goto	u5950
u5951:
	goto	l9834
u5950:
	goto	l9840
	
l4308:	
	goto	l9840
	line	611
	
l4306:	
	line	614
	
l9840:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u5961
	goto	u5960
u5961:
	goto	l9854
u5960:
	line	615
	
l9842:	
	bsf	(sprintf@flag)^0180h+(14/8),(14)&7
	line	616
	
l9844:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@f)^0180h,f
	line	624
	
l9846:	
	clrf	(sprintf@prec)^0180h
	clrf	(sprintf@prec+1)^0180h
	line	625
	goto	l9852
	
l4311:	
	line	626
	
l9848:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___wmul+1)^080h
	addwf	(?___wmul+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___wmul)^080h
	addwf	(?___wmul)^080h

	movlw	low(0Ah)
	movwf	0+(?___wmul)^080h+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)^080h+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(0+(?___wmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+0)^0180h+0
	movlw	0
	skipnc
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(1+(?___wmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(??_sprintf+0)^0180h+0
	movf	0+(??_sprintf+0)^0180h+0,w
	addlw	low(0FFD0h)
	movwf	(sprintf@prec)^0180h
	movf	1+(??_sprintf+0)^0180h+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(sprintf@prec)^0180h
	
l9850:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@f)^0180h,f
	goto	l9852
	
l4310:	
	line	625
	
l9852:	
	movf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5971
	goto	u5970
u5971:
	goto	l9848
u5970:
	goto	l9860
	
l4312:	
	line	628
	goto	l9860
	
l4309:	
	line	629
	
l9854:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@prec)^0180h
	clrf	(sprintf@prec+1)^0180h
	line	631
	
l9856:	
	bsf	(sprintf@flag)^0180h+(12/8),(12)&7
	goto	l9860
	line	633
	
l4313:	
	line	638
	goto	l9860
	line	640
	
l4315:	
	line	641
	goto	l10124
	line	665
	
l4317:	
	line	666
	bsf	(sprintf@flag)^0180h+(10/8),(10)&7
	line	667
	goto	l9862
	line	700
	
l4319:	
	goto	l9862
	line	701
	
l4320:	
	line	702
	goto	l9862
	line	805
	
l4321:	
	line	816
	goto	l10122
	line	825
	
l9858:	
	goto	l9862
	line	638
	
l4314:	
	
l9860:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(sprintf@f)^0180h,f
	movlw	-01h
	addwf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)^0180h
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10124
	xorlw	100^0	; case 100
	skipnz
	goto	l9862
	xorlw	102^100	; case 102
	skipnz
	goto	l4317
	xorlw	105^102	; case 105
	skipnz
	goto	l9862
	goto	l10122
	opt asmopt_on

	line	825
	
l4318:	
	line	828
	
l9862:	
	movlw	low(0700h)
	andwf	(sprintf@flag)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	high(0700h)
	andwf	(sprintf@flag+1)^0180h,w
	movwf	1+(??_sprintf+0)^0180h+0
	movf	1+(??_sprintf+0)^0180h+0,w
	iorwf	0+(??_sprintf+0)^0180h+0,w
	skipnz
	goto	u5981
	goto	u5980
u5981:
	goto	l10026
u5980:
	line	830
	
l9864:	
	btfss	(sprintf@flag+1)^0180h,(12)&7
	goto	u5991
	goto	u5990
u5991:
	goto	l9868
u5990:
	line	832
	
l9866:	
	movlw	low(06h)
	movwf	(sprintf@prec)^0180h
	movlw	high(06h)
	movwf	((sprintf@prec)^0180h)+1
	goto	l9868
	
l4323:	
	line	833
	
l9868:	
	movf	(sprintf@ap)^0180h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(sprintf@fval)^0180h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^0180h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^0180h
	
l9870:	
	movlw	(03h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@ap)^0180h,f
	line	834
	
l9872:	
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+2)^080h
	movlw	0x0
	movwf	0+(?___ftge)^080h+03h
	movlw	0x0
	movwf	1+(?___ftge)^080h+03h
	movlw	0x0
	movwf	2+(?___ftge)^080h+03h
	fcall	___ftge
	btfsc	status,0
	goto	u6001
	goto	u6000
u6001:
	goto	l9878
u6000:
	line	835
	
l9874:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftneg)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftneg+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftneg+2)^080h
	fcall	___ftneg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftneg))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftneg))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftneg))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval+2)^0180h
	line	836
	
l9876:	
	movlw	low(03h)
	iorwf	(sprintf@flag)^0180h,f
	movlw	high(03h)
	iorwf	(sprintf@flag+1)^0180h,f
	goto	l9878
	line	837
	
l4324:	
	line	838
	
l9878:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@exp)^0180h
	clrf	(sprintf@exp+1)^0180h
	line	839
	
l9880:	
	movf	(sprintf@fval+2)^0180h,w
	iorwf	(sprintf@fval+1)^0180h,w
	iorwf	(sprintf@fval)^0180h,w
	skipnz
	goto	u6011
	goto	u6010
u6011:
	goto	l9906
u6010:
	line	840
	
l9882:	
	movlw	low(sprintf@fval)
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_sprintf+0)^0180h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)^0180h+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)^0180h+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)^0180h+0+3
	movlw	0Fh
u6025:
	clrc
	rrf	(??_sprintf+0)^0180h+3,f
	rrf	(??_sprintf+0)^0180h+2,f
	rrf	(??_sprintf+0)^0180h+1,f
	rrf	(??_sprintf+0)^0180h+0,f
u6020:
	addlw	-1
	skipz
	goto	u6025
	movlw	low(0FFh)
	andwf	0+(??_sprintf+0)^0180h+0,w
	movwf	(??_sprintf+4)^0180h+0
	movlw	high(0FFh)
	andwf	1+(??_sprintf+0)^0180h+0,w
	movwf	1+(??_sprintf+4)^0180h+0
	movf	0+(??_sprintf+4)^0180h+0,w
	addlw	low(-126)
	movwf	(sprintf@exp)^0180h
	movf	1+(??_sprintf+4)^0180h+0,w
	skipnc
	addlw	1
	addlw	high(-126)
	movwf	1+(sprintf@exp)^0180h
	line	841
	
l9884:	
	movlw	low(-1)
	addwf	(sprintf@exp)^0180h,f
	skipnc
	incf	(sprintf@exp+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^0180h,f
	line	842
	
l9886:	
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___wmul)^080h
	movlw	high(03h)
	movwf	((?___wmul)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@exp+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___wmul)^080h+02h
	addwf	1+(?___wmul)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@exp)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___wmul)^080h+02h
	addwf	0+(?___wmul)^080h+02h

	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___wmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@exp+1)^0180h
	addwf	(sprintf@exp+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___wmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@exp)^0180h
	addwf	(sprintf@exp)^0180h

	line	843
	
l9888:	
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@exp+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@exp)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@exp+1)^0180h
	addwf	(sprintf@exp+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@exp)^0180h
	addwf	(sprintf@exp)^0180h

	line	844
	
l9890:	
	btfss	(sprintf@exp+1)^0180h,7
	goto	u6031
	goto	u6030
u6031:
	goto	l9894
u6030:
	line	845
	
l9892:	
	movlw	low(-1)
	addwf	(sprintf@exp)^0180h,f
	skipnc
	incf	(sprintf@exp+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^0180h,f
	goto	l9894
	
l4326:	
	line	849
	
l9894:	
	decf	(sprintf@exp)^0180h,w
	xorlw	0ffh
	fcall	_scale
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_scale))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_scale))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_scale))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ+2)^0180h
	line	850
	
l9896:	
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___ftmul)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftmul))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ+2)^0180h
	line	851
	
l9898:	
	movf	(sprintf@integ)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+2)^080h
	movlw	0x0
	movwf	0+(?___ftge)^080h+03h
	movlw	0x80
	movwf	1+(?___ftge)^080h+03h
	movlw	0x3f
	movwf	2+(?___ftge)^080h+03h
	fcall	___ftge
	btfsc	status,0
	goto	u6041
	goto	u6040
u6041:
	goto	l9902
u6040:
	line	852
	
l9900:	
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(sprintf@exp)^0180h,f
	skipnc
	incf	(sprintf@exp+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^0180h,f
	goto	l9906
	line	853
	
l4327:	
	
l9902:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+2)^080h
	movlw	0x0
	movwf	0+(?___ftge)^080h+03h
	movlw	0x20
	movwf	1+(?___ftge)^080h+03h
	movlw	0x41
	movwf	2+(?___ftge)^080h+03h
	fcall	___ftge
	btfss	status,0
	goto	u6051
	goto	u6050
u6051:
	goto	l9906
u6050:
	line	854
	
l9904:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(sprintf@exp)^0180h,f
	skipnc
	incf	(sprintf@exp+1)^0180h,f
	movlw	high(01h)
	addwf	(sprintf@exp+1)^0180h,f
	goto	l9906
	
l4329:	
	goto	l9906
	line	855
	
l4328:	
	goto	l9906
	
l4325:	
	line	1115
	
l9906:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u6065
	movlw	low(0Dh)
	subwf	(sprintf@prec)^0180h,w
u6065:

	skipnc
	goto	u6061
	goto	u6060
u6061:
	goto	l9910
u6060:
	line	1116
	
l9908:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec)^0180h,w
	fcall	_fround
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_fround))^080h,w
	movwf	(?___ftadd)^080h
	movf	(1+(?_fround))^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(2+(?_fround))^080h,w
	movwf	(?___ftadd+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftadd)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___ftadd)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___ftadd)^080h+03h
	fcall	___ftadd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftadd))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftadd))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftadd))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval+2)^0180h
	goto	l9910
	
l4330:	
	line	1119
	
l9910:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@exp+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u6075
	movlw	low(0Ah)
	subwf	(sprintf@exp)^0180h,w
u6075:

	skipnc
	goto	u6071
	goto	u6070
u6071:
	goto	l9918
u6070:
	
l9912:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	iorwf	(sprintf@fval+1)^0180h,w
	iorwf	(sprintf@fval)^0180h,w
	skipnz
	goto	u6081
	goto	u6080
u6081:
	goto	l9934
u6080:
	
l9914:	
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___fttol))^080h,w
	iorwf	(2+(?___fttol))^080h,w
	iorwf	(1+(?___fttol))^080h,w
	iorwf	(0+(?___fttol))^080h,w
	skipz
	goto	u6091
	goto	u6090
u6091:
	goto	l9934
u6090:
	
l9916:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@exp+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6105
	movlw	low(02h)
	subwf	(sprintf@exp)^0180h,w
u6105:

	skipc
	goto	u6101
	goto	u6100
u6101:
	goto	l9934
u6100:
	goto	l9918
	
l4333:	
	line	1123
	
l9918:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+2)^080h
	movlw	0x70
	movwf	0+(?___ftge)^080h+03h
	movlw	0x89
	movwf	1+(?___ftge)^080h+03h
	movlw	0x40
	movwf	2+(?___ftge)^080h+03h
	fcall	___ftge
	btfsc	status,0
	goto	u6111
	goto	u6110
u6111:
	goto	l9922
u6110:
	line	1124
	
l9920:	
	movlw	low(-9)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(sprintf@exp)^0180h,f
	skipnc
	incf	(sprintf@exp+1)^0180h,f
	movlw	high(-9)
	addwf	(sprintf@exp+1)^0180h,f
	line	1125
	goto	l9924
	
l4334:	
	line	1126
	
l9922:	
	movlw	low(-8)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(sprintf@exp)^0180h,f
	skipnc
	incf	(sprintf@exp+1)^0180h,f
	movlw	high(-8)
	addwf	(sprintf@exp+1)^0180h,f
	goto	l9924
	line	1127
	
l4335:	
	line	1128
	
l9924:	
	movf	(sprintf@exp)^0180h,w
	fcall	_scale
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_scale))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_scale))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_scale))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@integ+2)^0180h
	line	1129
	goto	l9928
	
l9926:	
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?__div_to_l_)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?__div_to_l_+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?__div_to_l_+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?__div_to_l_)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?__div_to_l_)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?__div_to_l_)^080h+03h
	fcall	__div_to_l_
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?__div_to_l_))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_sprintf$5503+3)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?__div_to_l_))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_sprintf$5503+2)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?__div_to_l_))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_sprintf$5503+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?__div_to_l_))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_sprintf$5503)^0180h

	goto	l9930
	
l4337:	
	
l9928:	
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?__tdiv_to_l_)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?__tdiv_to_l_+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?__tdiv_to_l_+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?__tdiv_to_l_)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?__tdiv_to_l_)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@integ+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?__tdiv_to_l_)^080h+03h
	fcall	__tdiv_to_l_
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?__tdiv_to_l_))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_sprintf$5503+3)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?__tdiv_to_l_))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_sprintf$5503+2)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?__tdiv_to_l_))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_sprintf$5503+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?__tdiv_to_l_))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_sprintf$5503)^0180h

	goto	l9930
	
l4339:	
	
l9930:	
	movf	(_sprintf$5503+3)^0180h,w
	movwf	(sprintf@_val+3)^0180h
	movf	(_sprintf$5503+2)^0180h,w
	movwf	(sprintf@_val+2)^0180h
	movf	(_sprintf$5503+1)^0180h,w
	movwf	(sprintf@_val+1)^0180h
	movf	(_sprintf$5503)^0180h,w
	movwf	(sprintf@_val)^0180h

	line	1132
	
l9932:	
	movlw	0x0
	movwf	(sprintf@fval)^0180h
	movlw	0x0
	movwf	(sprintf@fval+1)^0180h
	movlw	0x0
	movwf	(sprintf@fval+2)^0180h
	line	1133
	goto	l9938
	
l4331:	
	line	1134
	
l9934:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___fttol))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+3)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___fttol))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+2)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___fttol))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___fttol))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val)^0180h

	line	1135
	movf	(sprintf@_val+3)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lltoft+3)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lltoft+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lltoft+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lltoft)^080h

	fcall	___lltoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lltoft))^080h,w
	movwf	(?___ftsub)^080h
	movf	(1+(?___lltoft))^080h,w
	movwf	(?___ftsub+1)^080h
	movf	(2+(?___lltoft))^080h,w
	movwf	(?___ftsub+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftsub)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___ftsub)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___ftsub)^080h+03h
	fcall	___ftsub
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftsub))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftsub))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftsub))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@fval+2)^0180h
	line	1136
	
l9936:	
	clrf	(sprintf@exp)^0180h
	clrf	(sprintf@exp+1)^0180h
	goto	l9938
	line	1137
	
l4340:	
	line	1139
	
l9938:	
	clrf	(sprintf@c)^0180h
	bsf	status,0
	rlf	(sprintf@c)^0180h,f
	
l9940:	
	movf	(sprintf@c)^0180h,w
	xorlw	0Ah
	skipz
	goto	u6121
	goto	u6120
u6121:
	goto	l9944
u6120:
	goto	l9952
	
l9942:	
	goto	l9952
	line	1140
	
l4341:	
	
l9944:	
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	(02h)-1
u6135:
	clrc
	rlf	(??_sprintf+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u6135
	clrc
	rlf	(??_sprintf+0)^0180h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)^0180h+0)
	fcall	stringdir
	movwf	((??_sprintf+1)^0180h+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)^0180h+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)^0180h+0+3)
	movf	3+(??_sprintf+1)^0180h+0,w
	subwf	(sprintf@_val+3)^0180h,w
	skipz
	goto	u6145
	movf	2+(??_sprintf+1)^0180h+0,w
	subwf	(sprintf@_val+2)^0180h,w
	skipz
	goto	u6145
	movf	1+(??_sprintf+1)^0180h+0,w
	subwf	(sprintf@_val+1)^0180h,w
	skipz
	goto	u6145
	movf	0+(??_sprintf+1)^0180h+0,w
	subwf	(sprintf@_val)^0180h,w
u6145:
	skipnc
	goto	u6141
	goto	u6140
u6141:
	goto	l9948
u6140:
	goto	l9952
	line	1141
	
l9946:	
	goto	l9952
	
l4343:	
	line	1139
	
l9948:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@c)^0180h,f
	
l9950:	
	movf	(sprintf@c)^0180h,w
	xorlw	0Ah
	skipz
	goto	u6151
	goto	u6150
u6151:
	goto	l9944
u6150:
	goto	l9952
	
l4342:	
	line	1145
	
l9952:	
	movf	(sprintf@prec)^0180h,w
	addwf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@prec+1)^0180h,w
	skipnc
	incf	(sprintf@prec+1)^0180h,w
	addlw	0
	btfsc	(sprintf@c)^0180h,7
	addlw	0ffh
	movwf	(??_sprintf+0)^0180h+0+1
	movf	(sprintf@exp)^0180h,w
	addwf	0+(??_sprintf+0)^0180h+0,w
	movwf	(??_sprintf+2)^0180h+0
	movf	(sprintf@exp+1)^0180h,w
	skipnc
	incf	(sprintf@exp+1)^0180h,w
	addwf	1+(??_sprintf+0)^0180h+0,w
	movwf	1+(??_sprintf+2)^0180h+0
	movf	0+(??_sprintf+2)^0180h+0,w
	subwf	(sprintf@width)^0180h,f
	movf	1+(??_sprintf+2)^0180h+0,w
	skipc
	decf	(sprintf@width+1)^0180h,f
	subwf	(sprintf@width+1)^0180h,f
	line	1150
	
l9954:	
	movf	(sprintf@prec+1)^0180h,w
	iorwf	(sprintf@prec)^0180h,w
	skipnz
	goto	u6161
	goto	u6160
u6161:
	goto	l4344
u6160:
	line	1151
	
l9956:	
	movlw	low(-1)
	addwf	(sprintf@width)^0180h,f
	skipnc
	incf	(sprintf@width+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0180h,f
	
l4344:	
	line	1152
	movlw	low(03h)
	andwf	(sprintf@flag)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	high(03h)
	andwf	(sprintf@flag+1)^0180h,w
	movwf	1+(??_sprintf+0)^0180h+0
	movf	1+(??_sprintf+0)^0180h+0,w
	iorwf	0+(??_sprintf+0)^0180h+0,w
	skipnz
	goto	u6171
	goto	u6170
u6171:
	goto	l9960
u6170:
	line	1153
	
l9958:	
	movlw	low(-1)
	addwf	(sprintf@width)^0180h,f
	skipnc
	incf	(sprintf@width+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0180h,f
	goto	l9960
	
l4345:	
	line	1156
	
l9960:	
	btfss	(sprintf@flag)^0180h,(2)&7
	goto	u6181
	goto	u6180
u6181:
	goto	l9978
u6180:
	goto	l9970
	line	1169
	
l9962:	
	goto	l9970
	
l4348:	
	line	1170
	
l9964:	
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l9966:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	line	1171
	
l9968:	
	movlw	low(-1)
	addwf	(sprintf@width)^0180h,f
	skipnc
	incf	(sprintf@width+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0180h,f
	goto	l9970
	line	1172
	
l4347:	
	line	1169
	
l9970:	
	movf	(sprintf@width+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6195
	movlw	low(01h)
	subwf	(sprintf@width)^0180h,w
u6195:

	skipnc
	goto	u6191
	goto	u6190
u6191:
	goto	l9964
u6190:
	goto	l9990
	
l4349:	
	line	1174
	goto	l9990
	
l4346:	
	line	1181
	goto	l9978
	
l4352:	
	line	1182
	
l9972:	
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l9974:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	line	1183
	
l9976:	
	movlw	low(-1)
	addwf	(sprintf@width)^0180h,f
	skipnc
	incf	(sprintf@width+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0180h,f
	goto	l9978
	line	1184
	
l4351:	
	line	1181
	
l9978:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@width+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6205
	movlw	low(01h)
	subwf	(sprintf@width)^0180h,w
u6205:

	skipnc
	goto	u6201
	goto	u6200
u6201:
	goto	l9972
u6200:
	goto	l9980
	
l4353:	
	line	1189
	
l9980:	
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(sprintf@flag)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	high(03h)
	andwf	(sprintf@flag+1)^0180h,w
	movwf	1+(??_sprintf+0)^0180h+0
	movf	1+(??_sprintf+0)^0180h+0,w
	iorwf	0+(??_sprintf+0)^0180h+0,w
	skipnz
	goto	u6211
	goto	u6210
u6211:
	goto	l9990
u6210:
	line	1191
	
l9982:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l9984:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	goto	l9990
	
l4354:	
	goto	l9990
	line	1196
	
l4350:	
	line	1197
	goto	l9990
	
l4356:	
	line	1201
	
l9986:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___llmod+3)^080h
	movlw	0
	movwf	(?___llmod+2)^080h
	movlw	0
	movwf	(?___llmod+1)^080h
	movlw	0Ah
	movwf	(?___llmod)^080h

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	(02h)-1
u6225:
	clrc
	rlf	(??_sprintf+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u6225
	clrc
	rlf	(??_sprintf+0)^0180h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lldiv)^080h
	fcall	stringdir
	movwf	(?___lldiv+1)^080h
	fcall	stringdir
	movwf	(?___lldiv+2)^080h
	fcall	stringdir
	movwf	(?___lldiv+3)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+3)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	3+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___lldiv)^080h+04h

	fcall	___lldiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___lldiv))^080h,w
	movwf	3+(?___llmod)^080h+04h
	movf	(2+(?___lldiv))^080h,w
	movwf	2+(?___llmod)^080h+04h
	movf	(1+(?___lldiv))^080h,w
	movwf	1+(?___llmod)^080h+04h
	movf	(0+(?___lldiv))^080h,w
	movwf	0+(?___llmod)^080h+04h

	fcall	___llmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___llmod))^080h)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+1)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+1)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l9988:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	goto	l9990
	line	1203
	
l4355:	
	line	1197
	
l9990:	
	movlw	(-1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@c)^0180h,f
	movf	((sprintf@c)^0180h),w
	xorlw	-1
	skipz
	goto	u6231
	goto	u6230
u6231:
	goto	l9986
u6230:
	goto	l9998
	
l4357:	
	line	1204
	goto	l9998
	
l4359:	
	line	1205
	
l9992:	
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l9994:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	line	1206
	
l9996:	
	movlw	low(-1)
	addwf	(sprintf@exp)^0180h,f
	skipnc
	incf	(sprintf@exp+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^0180h,f
	goto	l9998
	line	1207
	
l4358:	
	line	1204
	
l9998:	
	movf	(sprintf@exp+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6245
	movlw	low(01h)
	subwf	(sprintf@exp)^0180h,w
u6245:

	skipnc
	goto	u6241
	goto	u6240
u6241:
	goto	l9992
u6240:
	goto	l10000
	
l4360:	
	line	1208
	
l10000:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6255
	movlw	low(09h)
	subwf	(sprintf@prec)^0180h,w
u6255:

	skipc
	goto	u6251
	goto	u6250
u6251:
	goto	l10004
u6250:
	line	1209
	
l10002:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@c)^0180h
	goto	l4362
	line	1210
	
l4361:	
	line	1211
	
l10004:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@c)^0180h
	
l4362:	
	line	1212
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	clrf	(??_sprintf+0)^0180h+0+1
	btfsc	(??_sprintf+0)^0180h+0,7
	decf	(??_sprintf+0)^0180h+0+1,f
	movf	0+(??_sprintf+0)^0180h+0,w
	subwf	(sprintf@prec)^0180h,f
	movf	1+(??_sprintf+0)^0180h+0,w
	skipc
	decf	(sprintf@prec+1)^0180h,f
	subwf	(sprintf@prec+1)^0180h,f
	line	1216
	movf	(sprintf@c)^0180h,w
	skipz
	goto	u6260
	goto	l10010
u6260:
	line	1218
	
l10006:	
	movlw	(02Eh)
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10008:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	goto	l10010
	
l4363:	
	line	1224
	
l10010:	
	movf	(sprintf@c)^0180h,w
	fcall	_scale
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_scale))^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(1+(?_scale))^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(2+(?_scale))^080h,w
	movwf	2+(?___ftmul)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@fval+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul+2)^080h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___fttol))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+3)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___fttol))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+2)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___fttol))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___fttol))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val)^0180h

	line	1225
	goto	l4364
	
l4365:	
	line	1226
	
l10012:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___llmod+3)^080h
	movlw	0
	movwf	(?___llmod+2)^080h
	movlw	0
	movwf	(?___llmod+1)^080h
	movlw	0Ah
	movwf	(?___llmod)^080h

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	(02h)-1
u6275:
	clrc
	rlf	(??_sprintf+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u6275
	clrc
	rlf	(??_sprintf+0)^0180h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lldiv)^080h
	fcall	stringdir
	movwf	(?___lldiv+1)^080h
	fcall	stringdir
	movwf	(?___lldiv+2)^080h
	fcall	stringdir
	movwf	(?___lldiv+3)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+3)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	3+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___lldiv)^080h+04h

	fcall	___lldiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___lldiv))^080h,w
	movwf	3+(?___llmod)^080h+04h
	movf	(2+(?___lldiv))^080h,w
	movwf	2+(?___llmod)^080h+04h
	movf	(1+(?___lldiv))^080h,w
	movwf	1+(?___llmod)^080h+04h
	movf	(0+(?___lldiv))^080h,w
	movwf	0+(?___llmod)^080h+04h

	fcall	___llmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___llmod))^080h)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+1)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+1)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10014:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	line	1227
	
l10016:	
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	(02h)-1
u6285:
	clrc
	rlf	(??_sprintf+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u6285
	clrc
	rlf	(??_sprintf+0)^0180h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___llmod)^080h
	fcall	stringdir
	movwf	(?___llmod+1)^080h
	fcall	stringdir
	movwf	(?___llmod+2)^080h
	fcall	stringdir
	movwf	(?___llmod+3)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+3)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	3+(?___llmod)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___llmod)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___llmod)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___llmod)^080h+04h

	fcall	___llmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___llmod))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+3)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___llmod))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+2)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___llmod))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___llmod))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(sprintf@_val)^0180h

	line	1228
	
l4364:	
	line	1225
	movlw	(-1)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@c)^0180h,f
	movf	((sprintf@c)^0180h),w
	xorlw	-1
	skipz
	goto	u6291
	goto	u6290
u6291:
	goto	l10012
u6290:
	goto	l10024
	
l4366:	
	line	1230
	goto	l10024
	
l4368:	
	line	1231
	
l10018:	
	movlw	(030h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10020:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	line	1232
	
l10022:	
	movlw	low(-1)
	addwf	(sprintf@prec)^0180h,f
	skipnc
	incf	(sprintf@prec+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@prec+1)^0180h,f
	goto	l10024
	line	1233
	
l4367:	
	line	1230
	
l10024:	
	movf	((sprintf@prec+1)^0180h),w
	iorwf	((sprintf@prec)^0180h),w
	skipz
	goto	u6301
	goto	u6300
u6301:
	goto	l10018
u6300:
	goto	l10122
	
l4369:	
	line	1240
	goto	l10122
	line	1241
	
l4322:	
	line	1254
	
l10026:	
	movf	(sprintf@ap)^0180h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_sprintf+0)^0180h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)^0180h+0+1
	movf	0+(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@_val)^0180h
	movf	1+(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@_val+1)^0180h
	movlw	0
	btfsc	(sprintf@_val+1)^0180h,7
	movlw	255
	movwf	(sprintf@_val+2)^0180h
	movwf	(sprintf@_val+3)^0180h
	
l10028:	
	movlw	(02h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@ap)^0180h,f
	line	1256
	
l10030:	
	btfss	(sprintf@_val+3)^0180h,7
	goto	u6311
	goto	u6310
u6311:
	goto	l10036
u6310:
	line	1257
	
l10032:	
	movlw	low(03h)
	iorwf	(sprintf@flag)^0180h,f
	movlw	high(03h)
	iorwf	(sprintf@flag+1)^0180h,f
	line	1258
	
l10034:	
	comf	(sprintf@_val)^0180h,f
	comf	(sprintf@_val+1)^0180h,f
	comf	(sprintf@_val+2)^0180h,f
	comf	(sprintf@_val+3)^0180h,f
	incf	(sprintf@_val)^0180h,f
	skipnz
	incf	(sprintf@_val+1)^0180h,f
	skipnz
	incf	(sprintf@_val+2)^0180h,f
	skipnz
	incf	(sprintf@_val+3)^0180h,f
	goto	l10036
	line	1259
	
l4370:	
	line	1285
	
l10036:	
	movf	((sprintf@prec+1)^0180h),w
	iorwf	((sprintf@prec)^0180h),w
	skipz
	goto	u6321
	goto	u6320
u6321:
	goto	l10042
u6320:
	
l10038:	
	movf	(sprintf@_val+3)^0180h,w
	iorwf	(sprintf@_val+2)^0180h,w
	iorwf	(sprintf@_val+1)^0180h,w
	iorwf	(sprintf@_val)^0180h,w
	skipz
	goto	u6331
	goto	u6330
u6331:
	goto	l10042
u6330:
	line	1286
	
l10040:	
	movlw	low(01h)
	addwf	(sprintf@prec)^0180h,f
	skipnc
	incf	(sprintf@prec+1)^0180h,f
	movlw	high(01h)
	addwf	(sprintf@prec+1)^0180h,f
	goto	l10042
	
l4371:	
	line	1300
	
l10042:	
	clrf	(sprintf@c)^0180h
	bsf	status,0
	rlf	(sprintf@c)^0180h,f
	
l10044:	
	movf	(sprintf@c)^0180h,w
	xorlw	0Ah
	skipz
	goto	u6341
	goto	u6340
u6341:
	goto	l10048
u6340:
	goto	l10056
	
l10046:	
	goto	l10056
	line	1301
	
l4372:	
	
l10048:	
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	(02h)-1
u6355:
	clrc
	rlf	(??_sprintf+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u6355
	clrc
	rlf	(??_sprintf+0)^0180h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)^0180h+0)
	fcall	stringdir
	movwf	((??_sprintf+1)^0180h+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)^0180h+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)^0180h+0+3)
	movf	3+(??_sprintf+1)^0180h+0,w
	subwf	(sprintf@_val+3)^0180h,w
	skipz
	goto	u6365
	movf	2+(??_sprintf+1)^0180h+0,w
	subwf	(sprintf@_val+2)^0180h,w
	skipz
	goto	u6365
	movf	1+(??_sprintf+1)^0180h+0,w
	subwf	(sprintf@_val+1)^0180h,w
	skipz
	goto	u6365
	movf	0+(??_sprintf+1)^0180h+0,w
	subwf	(sprintf@_val)^0180h,w
u6365:
	skipnc
	goto	u6361
	goto	u6360
u6361:
	goto	l10052
u6360:
	goto	l10056
	line	1302
	
l10050:	
	goto	l10056
	
l4374:	
	line	1300
	
l10052:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@c)^0180h,f
	
l10054:	
	movf	(sprintf@c)^0180h,w
	xorlw	0Ah
	skipz
	goto	u6371
	goto	u6370
u6371:
	goto	l10048
u6370:
	goto	l10056
	
l4373:	
	line	1334
	
l10056:	
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	clrf	(??_sprintf+0)^0180h+0+1
	btfsc	(??_sprintf+0)^0180h+0,7
	decf	(??_sprintf+0)^0180h+0+1,f
	movf	1+(??_sprintf+0)^0180h+0,w
	xorlw	80h
	movwf	(??_sprintf+2)^0180h+0
	movf	(sprintf@prec+1)^0180h,w
	xorlw	80h
	subwf	(??_sprintf+2)^0180h+0,w
	skipz
	goto	u6385
	movf	(sprintf@prec)^0180h,w
	subwf	0+(??_sprintf+0)^0180h+0,w
u6385:

	skipnc
	goto	u6381
	goto	u6380
u6381:
	goto	l10060
u6380:
	line	1335
	
l10058:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@c)^0180h
	goto	l10064
	line	1336
	
l4375:	
	
l10060:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	clrf	(??_sprintf+0)^0180h+0+1
	btfsc	(??_sprintf+0)^0180h+0,7
	decf	(??_sprintf+0)^0180h+0+1,f
	movf	(sprintf@prec+1)^0180h,w
	xorlw	80h
	movwf	(??_sprintf+2)^0180h+0
	movf	1+(??_sprintf+0)^0180h+0,w
	xorlw	80h
	subwf	(??_sprintf+2)^0180h+0,w
	skipz
	goto	u6395
	movf	0+(??_sprintf+0)^0180h+0,w
	subwf	(sprintf@prec)^0180h,w
u6395:

	skipnc
	goto	u6391
	goto	u6390
u6391:
	goto	l10064
u6390:
	line	1337
	
l10062:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@c)^0180h,w
	movwf	(sprintf@prec)^0180h
	clrf	(sprintf@prec+1)^0180h
	btfsc	(sprintf@prec)^0180h,7
	decf	(sprintf@prec+1)^0180h,f
	goto	l10064
	
l4377:	
	goto	l10064
	line	1340
	
l4376:	
	
l10064:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@width+1)^0180h,w
	iorwf	(sprintf@width)^0180h,w
	skipnz
	goto	u6401
	goto	u6400
u6401:
	goto	l10070
u6400:
	
l10066:	
	movlw	low(03h)
	andwf	(sprintf@flag)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	high(03h)
	andwf	(sprintf@flag+1)^0180h,w
	movwf	1+(??_sprintf+0)^0180h+0
	movf	1+(??_sprintf+0)^0180h+0,w
	iorwf	0+(??_sprintf+0)^0180h+0,w
	skipnz
	goto	u6411
	goto	u6410
u6411:
	goto	l10070
u6410:
	line	1341
	
l10068:	
	movlw	low(-1)
	addwf	(sprintf@width)^0180h,f
	skipnc
	incf	(sprintf@width+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0180h,f
	goto	l10070
	
l4378:	
	line	1343
	
l10070:	
	btfss	(sprintf@flag+1)^0180h,(14)&7
	goto	u6421
	goto	u6420
u6421:
	goto	l10078
u6420:
	line	1344
	
l10072:	
	movf	(sprintf@prec+1)^0180h,w
	xorlw	80h
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@width+1)^0180h,w
	xorlw	80h
	subwf	(??_sprintf+0)^0180h+0,w
	skipz
	goto	u6435
	movf	(sprintf@width)^0180h,w
	subwf	(sprintf@prec)^0180h,w
u6435:

	skipnc
	goto	u6431
	goto	u6430
u6431:
	goto	l10076
u6430:
	line	1345
	
l10074:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec)^0180h,w
	subwf	(sprintf@width)^0180h,f
	movf	(sprintf@prec+1)^0180h,w
	skipc
	decf	(sprintf@width+1)^0180h,f
	subwf	(sprintf@width+1)^0180h,f
	goto	l10078
	line	1346
	
l4380:	
	line	1347
	
l10076:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@width)^0180h
	clrf	(sprintf@width+1)^0180h
	goto	l10078
	
l4381:	
	goto	l10078
	line	1348
	
l4379:	
	line	1376
	
l10078:	
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	clrf	(??_sprintf+0)^0180h+0+1
	btfsc	(??_sprintf+0)^0180h+0,7
	decf	(??_sprintf+0)^0180h+0+1,f
	movf	1+(??_sprintf+0)^0180h+0,w
	xorlw	80h
	movwf	(??_sprintf+2)^0180h+0
	movf	(sprintf@width+1)^0180h,w
	xorlw	80h
	subwf	(??_sprintf+2)^0180h+0,w
	skipz
	goto	u6445
	movf	(sprintf@width)^0180h,w
	subwf	0+(??_sprintf+0)^0180h+0,w
u6445:

	skipnc
	goto	u6441
	goto	u6440
u6441:
	goto	l10082
u6440:
	line	1377
	
l10080:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	clrf	(??_sprintf+0)^0180h+0+1
	btfsc	(??_sprintf+0)^0180h+0,7
	decf	(??_sprintf+0)^0180h+0+1,f
	movf	0+(??_sprintf+0)^0180h+0,w
	subwf	(sprintf@width)^0180h,f
	movf	1+(??_sprintf+0)^0180h+0,w
	skipc
	decf	(sprintf@width+1)^0180h,f
	subwf	(sprintf@width+1)^0180h,f
	goto	l10084
	line	1378
	
l4382:	
	line	1379
	
l10082:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(sprintf@width)^0180h
	clrf	(sprintf@width+1)^0180h
	goto	l10084
	
l4383:	
	line	1382
	
l10084:	
	btfss	(sprintf@flag)^0180h,(2)&7
	goto	u6451
	goto	u6450
u6451:
	goto	l10100
u6450:
	line	1387
	
l10086:	
	movlw	low(03h)
	andwf	(sprintf@flag)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	high(03h)
	andwf	(sprintf@flag+1)^0180h,w
	movwf	1+(??_sprintf+0)^0180h+0
	movf	1+(??_sprintf+0)^0180h+0,w
	iorwf	0+(??_sprintf+0)^0180h+0,w
	skipnz
	goto	u6461
	goto	u6460
u6461:
	goto	l10092
u6460:
	line	1388
	
l10088:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10090:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	goto	l10092
	
l4385:	
	line	1410
	
l10092:	
	movf	(sprintf@width+1)^0180h,w
	iorwf	(sprintf@width)^0180h,w
	skipnz
	goto	u6471
	goto	u6470
u6471:
	goto	l10120
u6470:
	goto	l10094
	line	1411
	
l4387:	
	line	1412
	
l10094:	
	movlw	(030h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10096:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	line	1413
	
l10098:	
	movlw	low(-1)
	addwf	(sprintf@width)^0180h,f
	skipnc
	incf	(sprintf@width+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0180h,f
	movf	(((sprintf@width+1)^0180h)),w
	iorwf	(((sprintf@width)^0180h)),w
	skipz
	goto	u6481
	goto	u6480
u6481:
	goto	l10094
u6480:
	goto	l10120
	
l4388:	
	goto	l10120
	
l4386:	
	line	1415
	goto	l10120
	
l4384:	
	line	1423
	
l10100:	
	movf	(sprintf@width+1)^0180h,w
	iorwf	(sprintf@width)^0180h,w
	skipnz
	goto	u6491
	goto	u6490
u6491:
	goto	l10108
u6490:
	goto	l10102
	line	1424
	
l4391:	
	line	1425
	
l10102:	
	movlw	(020h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10104:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	line	1426
	
l10106:	
	movlw	low(-1)
	addwf	(sprintf@width)^0180h,f
	skipnc
	incf	(sprintf@width+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0180h,f
	movf	(((sprintf@width+1)^0180h)),w
	iorwf	(((sprintf@width)^0180h)),w
	skipz
	goto	u6501
	goto	u6500
u6501:
	goto	l10102
u6500:
	goto	l10108
	
l4392:	
	goto	l10108
	
l4390:	
	line	1433
	
l10108:	
	movlw	low(03h)
	andwf	(sprintf@flag)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	high(03h)
	andwf	(sprintf@flag+1)^0180h,w
	movwf	1+(??_sprintf+0)^0180h+0
	movf	1+(??_sprintf+0)^0180h+0,w
	iorwf	0+(??_sprintf+0)^0180h+0,w
	skipnz
	goto	u6511
	goto	u6510
u6511:
	goto	l10120
u6510:
	line	1434
	
l10110:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10112:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	goto	l10120
	
l4393:	
	goto	l10120
	line	1464
	
l4389:	
	line	1469
	goto	l10120
	
l4395:	
	line	1484
	
l10114:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___llmod+3)^080h
	movlw	0
	movwf	(?___llmod+2)^080h
	movlw	0
	movwf	(?___llmod+1)^080h
	movlw	0Ah
	movwf	(?___llmod)^080h

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@prec)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movlw	(02h)-1
u6525:
	clrc
	rlf	(??_sprintf+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u6525
	clrc
	rlf	(??_sprintf+0)^0180h+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lldiv)^080h
	fcall	stringdir
	movwf	(?___lldiv+1)^080h
	fcall	stringdir
	movwf	(?___lldiv+2)^080h
	fcall	stringdir
	movwf	(?___lldiv+3)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+3)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	3+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___lldiv)^080h+04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(sprintf@_val)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___lldiv)^080h+04h

	fcall	___lldiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___lldiv))^080h,w
	movwf	3+(?___llmod)^080h+04h
	movf	(2+(?___lldiv))^080h,w
	movwf	2+(?___llmod)^080h+04h
	movf	(1+(?___lldiv))^080h,w
	movwf	1+(?___llmod)^080h+04h
	movf	(0+(?___lldiv))^080h,w
	movwf	0+(?___llmod)^080h+04h

	fcall	___llmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___llmod))^080h)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_sprintf+1)^0180h+0
	movf	(??_sprintf+1)^0180h+0,w
	movwf	(sprintf@c)^0180h
	line	1516
	
l10116:	
	movf	(sprintf@c)^0180h,w
	movwf	(??_sprintf+0)^0180h+0
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0180h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l10118:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	addwf	(sprintf@sp)^0180h,f
	goto	l10120
	line	1517
	
l4394:	
	line	1469
	
l10120:	
	movlw	low(-1)
	addwf	(sprintf@prec)^0180h,f
	skipnc
	incf	(sprintf@prec+1)^0180h,f
	movlw	high(-1)
	addwf	(sprintf@prec+1)^0180h,f
	movlw	high(-1)
	xorwf	((sprintf@prec+1)^0180h),w
	skipz
	goto	u6535
	movlw	low(-1)
	xorwf	((sprintf@prec)^0180h),w
u6535:

	skipz
	goto	u6531
	goto	u6530
u6531:
	goto	l10114
u6530:
	goto	l10122
	
l4396:	
	goto	l10122
	line	1525
	
l4297:	
	line	540
	
l10122:	
	movlw	01h
	addwf	(sprintf@f)^0180h,f
	movlw	-01h
	addwf	(sprintf@f)^0180h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)^0180h+0
	movf	(??_sprintf+0)^0180h+0,w
	movwf	(sprintf@c)^0180h
	movf	((sprintf@c)^0180h),f
	skipz
	goto	u6541
	goto	u6540
u6541:
	goto	l9816
u6540:
	goto	l10124
	
l4397:	
	goto	l10124
	line	1527
	
l4316:	
	line	1530
	
l10124:	
	movf	(sprintf@sp)^0180h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	goto	l4398
	line	1532
	
l10126:	
	line	1533
;	Return value of _sprintf is never used
	
l4398:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	___ftsub
psect	text932,local,class=CODE,delta=2
global __ptext932
__ptext932:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   63[BANK1 ] float 
;;  f1              3   66[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   63[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text932
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l9808:	
	movlw	080h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(___ftsub@f2+2)^080h,f
	line	19
	
l9810:	
	movf	(___ftsub@f1)^080h,w
	movwf	(?___ftadd)^080h
	movf	(___ftsub@f1+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(___ftsub@f1+2)^080h,w
	movwf	(?___ftadd+2)^080h
	movf	(___ftsub@f2)^080h,w
	movwf	0+(?___ftadd)^080h+03h
	movf	(___ftsub@f2+1)^080h,w
	movwf	1+(?___ftadd)^080h+03h
	movf	(___ftsub@f2+2)^080h,w
	movwf	2+(?___ftadd)^080h+03h
	fcall	___ftadd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftadd))^080h,w
	movwf	(?___ftsub)^080h
	movf	(1+(?___ftadd))^080h,w
	movwf	(?___ftsub+1)^080h
	movf	(2+(?___ftadd))^080h,w
	movwf	(?___ftsub+2)^080h
	goto	l5173
	
l9812:	
	line	20
	
l5173:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text933,local,class=CODE,delta=2
global __ptext933
__ptext933:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   58[BANK1 ] char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK1 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awmod
;;		___bmul
;;		___awdiv
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text933
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(scale@scl)^080h
	
l9768:	
	btfss	(scale@scl)^080h,7
	goto	u5881
	goto	u5880
u5881:
	goto	l9790
u5880:
	line	425
	
l9770:	
	comf	(scale@scl)^080h,f
	incf	(scale@scl)^080h,f
	line	426
	
l9772:	
	movf	(scale@scl)^080h,w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u5891
	goto	u5890
u5891:
	goto	l9780
u5890:
	line	427
	
l9774:	
	movlw	(03h)
	movwf	(??_scale+0)^080h+0
	movf	(??_scale+0)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(scale@scl)^080h,w
	movwf	0+(?___awmod)^080h+02h
	clrf	1+(?___awmod)^080h+02h
	btfsc	0+(?___awmod)^080h+02h,7
	decf	1+(?___awmod)^080h+02h,f
	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movlw	(03h)
	movwf	(??_scale+1)^080h+0
	movf	(??_scale+1)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(064h)
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(scale@scl)^080h,w
	movwf	0+(?___awdiv)^080h+02h
	clrf	1+(?___awdiv)^080h+02h
	btfsc	0+(?___awdiv)^080h+02h,7
	decf	1+(?___awdiv)^080h+02h,f
	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	1+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(_scale$6337)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(_scale$6337+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(_scale$6337+2)^080h
	movlw	(03h)
	movwf	(??_scale+0)^080h+0
	movf	(??_scale+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(scale@scl)^080h,w
	movwf	0+(?___awmod)^080h+02h
	clrf	1+(?___awmod)^080h+02h
	btfsc	0+(?___awmod)^080h+02h,7
	decf	1+(?___awmod)^080h+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movf	(_scale$6337)^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(_scale$6337+1)^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(_scale$6337+2)^080h,w
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?_scale)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?_scale+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?_scale+2)^080h
	goto	l4289
	
l9776:	
	goto	l4289
	
l9778:	
	goto	l9786
	line	428
	
l4288:	
	
l9780:	
	movf	(scale@scl)^080h,w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u5901
	goto	u5900
u5901:
	goto	l9786
u5900:
	line	429
	
l9782:	
	movlw	(03h)
	movwf	(??_scale+0)^080h+0
	movf	(??_scale+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(scale@scl)^080h,w
	movwf	0+(?___awmod)^080h+02h
	clrf	1+(?___awmod)^080h+02h
	btfsc	0+(?___awmod)^080h+02h,7
	decf	1+(?___awmod)^080h+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movlw	(03h)
	movwf	(??_scale+1)^080h+0
	movf	(??_scale+1)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(scale@scl)^080h,w
	movwf	0+(?___awdiv)^080h+02h
	clrf	1+(?___awdiv)^080h+02h
	btfsc	0+(?___awdiv)^080h+02h,7
	decf	1+(?___awdiv)^080h+02h,f
	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	1+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?_scale)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?_scale+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?_scale+2)^080h
	goto	l4289
	
l9784:	
	goto	l4289
	
l4291:	
	goto	l9786
	line	430
	
l4290:	
	
l9786:	
	movlw	(03h)
	movwf	(??_scale+0)^080h+0
	movf	(??_scale+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(scale@scl)^080h,w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_scale)^080h
	fcall	stringdir
	movwf	(?_scale+1)^080h
	fcall	stringdir
	movwf	(?_scale+2)^080h
	goto	l4289
	
l9788:	
	goto	l4289
	line	431
	
l4287:	
	line	432
	
l9790:	
	movf	(scale@scl)^080h,w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u5911
	goto	u5910
u5911:
	goto	l9798
u5910:
	line	433
	
l9792:	
	movlw	(03h)
	movwf	(??_scale+0)^080h+0
	movf	(??_scale+0)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(scale@scl)^080h,w
	movwf	0+(?___awmod)^080h+02h
	clrf	1+(?___awmod)^080h+02h
	btfsc	0+(?___awmod)^080h+02h,7
	decf	1+(?___awmod)^080h+02h,f
	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movlw	(03h)
	movwf	(??_scale+1)^080h+0
	movf	(??_scale+1)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(064h)
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(scale@scl)^080h,w
	movwf	0+(?___awdiv)^080h+02h
	clrf	1+(?___awdiv)^080h+02h
	btfsc	0+(?___awdiv)^080h+02h,7
	decf	1+(?___awdiv)^080h+02h,f
	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	012h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	1+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(_scale$6337)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(_scale$6337+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(_scale$6337+2)^080h
	movlw	(03h)
	movwf	(??_scale+0)^080h+0
	movf	(??_scale+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(scale@scl)^080h,w
	movwf	0+(?___awmod)^080h+02h
	clrf	1+(?___awmod)^080h+02h
	btfsc	0+(?___awmod)^080h+02h,7
	decf	1+(?___awmod)^080h+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movf	(_scale$6337)^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(_scale$6337+1)^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(_scale$6337+2)^080h,w
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?_scale)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?_scale+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?_scale+2)^080h
	goto	l4289
	
l9794:	
	goto	l4289
	
l9796:	
	goto	l9804
	line	434
	
l4292:	
	
l9798:	
	movf	(scale@scl)^080h,w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u5921
	goto	u5920
u5921:
	goto	l9804
u5920:
	line	435
	
l9800:	
	movlw	(03h)
	movwf	(??_scale+0)^080h+0
	movf	(??_scale+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(scale@scl)^080h,w
	movwf	0+(?___awmod)^080h+02h
	clrf	1+(?___awmod)^080h+02h
	btfsc	0+(?___awmod)^080h+02h,7
	decf	1+(?___awmod)^080h+02h,f
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movlw	(03h)
	movwf	(??_scale+1)^080h+0
	movf	(??_scale+1)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(scale@scl)^080h,w
	movwf	0+(?___awdiv)^080h+02h
	clrf	1+(?___awdiv)^080h+02h
	btfsc	0+(?___awdiv)^080h+02h,7
	decf	1+(?___awdiv)^080h+02h,f
	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	1+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?_scale)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?_scale+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?_scale+2)^080h
	goto	l4289
	
l9802:	
	goto	l4289
	
l4294:	
	goto	l9804
	line	436
	
l4293:	
	
l9804:	
	movlw	(03h)
	movwf	(??_scale+0)^080h+0
	movf	(??_scale+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(scale@scl)^080h,w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_scale)^080h
	fcall	stringdir
	movwf	(?_scale+1)^080h
	fcall	stringdir
	movwf	(?_scale+2)^080h
	goto	l4289
	
l9806:	
	line	437
	
l4289:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text934,local,class=CODE,delta=2
global __ptext934
__ptext934:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   78[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   63[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       7       0       0
;;      Temps:          0       0       6       0       0
;;      Totals:         0       0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awmod
;;		___bmul
;;		___awdiv
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text934
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(fround@prec)^080h
	
l9746:	
	movlw	(06Eh)
	subwf	(fround@prec)^080h,w
	skipc
	goto	u5861
	goto	u5860
u5861:
	goto	l9756
u5860:
	line	410
	
l9748:	
	movlw	(03h)
	movwf	(??_fround+0)^080h+0
	movf	(??_fround+0)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(fround@prec)^080h,w
	movwf	(??_fround+1)^080h+0
	clrf	(??_fround+1)^080h+0+1
	movf	0+(??_fround+1)^080h+0,w
	movwf	0+(?___awmod)^080h+02h
	movf	1+(??_fround+1)^080h+0,w
	movwf	1+(?___awmod)^080h+02h
	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movlw	(03h)
	movwf	(??_fround+3)^080h+0
	movf	(??_fround+3)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(064h)
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(fround@prec)^080h,w
	movwf	(??_fround+4)^080h+0
	clrf	(??_fround+4)^080h+0+1
	movf	0+(??_fround+4)^080h+0,w
	movwf	0+(?___awdiv)^080h+02h
	movf	1+(??_fround+4)^080h+0,w
	movwf	1+(?___awdiv)^080h+02h
	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	1+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(_fround$6335)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(_fround$6335+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(_fround$6335+2)^080h
	movlw	(03h)
	movwf	(??_fround+0)^080h+0
	movf	(??_fround+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(fround@prec)^080h,w
	movwf	(??_fround+1)^080h+0
	clrf	(??_fround+1)^080h+0+1
	movf	0+(??_fround+1)^080h+0,w
	movwf	0+(?___awmod)^080h+02h
	movf	1+(??_fround+1)^080h+0,w
	movwf	1+(?___awmod)^080h+02h
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movf	(_fround$6335)^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(_fround$6335+1)^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(_fround$6335+2)^080h,w
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(_fround$6336)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(_fround$6336+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(_fround$6336+2)^080h
	
l9750:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x3f
	movwf	(?___ftmul+2)^080h
	movf	(_fround$6336)^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(_fround$6336+1)^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(_fround$6336+2)^080h,w
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?_fround)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?_fround+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?_fround+2)^080h
	goto	l4282
	
l9752:	
	goto	l4282
	
l9754:	
	goto	l9764
	line	411
	
l4281:	
	
l9756:	
	movlw	(0Bh)
	subwf	(fround@prec)^080h,w
	skipc
	goto	u5871
	goto	u5870
u5871:
	goto	l9764
u5870:
	line	412
	
l9758:	
	movlw	(03h)
	movwf	(??_fround+0)^080h+0
	movf	(??_fround+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(fround@prec)^080h,w
	movwf	(??_fround+1)^080h+0
	clrf	(??_fround+1)^080h+0+1
	movf	0+(??_fround+1)^080h+0,w
	movwf	0+(?___awmod)^080h+02h
	movf	1+(??_fround+1)^080h+0,w
	movwf	1+(?___awmod)^080h+02h
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftmul)^080h
	fcall	stringdir
	movwf	(?___ftmul+1)^080h
	fcall	stringdir
	movwf	(?___ftmul+2)^080h
	movlw	(03h)
	movwf	(??_fround+3)^080h+0
	movf	(??_fround+3)^080h+0,w
	movwf	(?___bmul)^080h
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(fround@prec)^080h,w
	movwf	(??_fround+4)^080h+0
	clrf	(??_fround+4)^080h+0+1
	movf	0+(??_fround+4)^080h+0,w
	movwf	0+(?___awdiv)^080h+02h
	movf	1+(??_fround+4)^080h+0,w
	movwf	1+(?___awdiv)^080h+02h
	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	1+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(_fround$6335)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(_fround$6335+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(_fround$6335+2)^080h
	
l9760:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x3f
	movwf	(?___ftmul+2)^080h
	movf	(_fround$6335)^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(_fround$6335+1)^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(_fround$6335+2)^080h,w
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?_fround)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?_fround+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?_fround+2)^080h
	goto	l4282
	
l9762:	
	goto	l4282
	
l4284:	
	goto	l9764
	line	413
	
l4283:	
	
l9764:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x3f
	movwf	(?___ftmul+2)^080h
	movlw	(03h)
	movwf	(??_fround+0)^080h+0
	movf	(??_fround+0)^080h+0,w
	movwf	(?___bmul)^080h
	movf	(fround@prec)^080h,w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	1+(?___ftmul)^080h+03h
	fcall	stringdir
	movwf	2+(?___ftmul)^080h+03h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?_fround)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?_fround+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?_fround+2)^080h
	goto	l4282
	
l9766:	
	line	414
	
l4282:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_JY62_InfiniteYaw
psect	text935,local,class=CODE,delta=2
global __ptext935
__ptext935:

;; *************** function _JY62_InfiniteYaw *****************
;; Defined at:
;;		line 86 in file "E:\MPLAB_IDE\JY62\JY62.c"
;; Parameters:    Size  Location     Type
;;  yaw             3   40[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  new_yaw         3   47[BANK1 ] float 
;; Return value:  Size  Location     Type
;;                  3   40[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___fttol
;;		___awmod
;;		___awtoft
;; This function is called by:
;;		_JY62_ShowData
;; This function uses a non-reentrant model
;;
psect	text935
	file	"E:\MPLAB_IDE\JY62\JY62.c"
	line	86
	global	__size_of_JY62_InfiniteYaw
	__size_of_JY62_InfiniteYaw	equ	__end_of_JY62_InfiniteYaw-_JY62_InfiniteYaw
	
_JY62_InfiniteYaw:	
	opt	stack 0
; Regs used in _JY62_InfiniteYaw: [wreg+status,2+status,0+pclath+cstack]
	line	98
	
l9740:	
;JY62.c: 97: float new_yaw;
;JY62.c: 98: new_yaw = 180 - (180 - (int)yaw) % 360;
	movlw	low(0168h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awmod)^080h
	movlw	high(0168h)
	movwf	((?___awmod)^080h)+1
	movf	(JY62_InfiniteYaw@yaw)^080h,w
	movwf	(?___fttol)^080h
	movf	(JY62_InfiniteYaw@yaw+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(JY62_InfiniteYaw@yaw+2)^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	0+(((0+(?___fttol))^080h)),w
	movwf	(??_JY62_InfiniteYaw+0)^080h+0
	comf	1+(((0+(?___fttol))^080h)),w
	movwf	((??_JY62_InfiniteYaw+0)^080h+0+1)
	incf	(??_JY62_InfiniteYaw+0)^080h+0,f
	skipnz
	incf	((??_JY62_InfiniteYaw+0)^080h+0+1),f
	movf	0+(??_JY62_InfiniteYaw+0)^080h+0,w
	addlw	low(0B4h)
	movwf	0+(?___awmod)^080h+02h
	movf	1+(??_JY62_InfiniteYaw+0)^080h+0,w
	skipnc
	addlw	1
	addlw	high(0B4h)
	movwf	1+0+(?___awmod)^080h+02h
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(0+(?___awmod))^080h,w
	movwf	(??_JY62_InfiniteYaw+2)^080h+0
	comf	(1+(?___awmod))^080h,w
	movwf	((??_JY62_InfiniteYaw+2)^080h+0+1)
	incf	(??_JY62_InfiniteYaw+2)^080h+0,f
	skipnz
	incf	((??_JY62_InfiniteYaw+2)^080h+0+1),f
	movf	0+(??_JY62_InfiniteYaw+2)^080h+0,w
	addlw	low(0B4h)
	movwf	(?___awtoft)^080h
	movf	1+(??_JY62_InfiniteYaw+2)^080h+0,w
	skipnc
	addlw	1
	addlw	high(0B4h)
	movwf	1+(?___awtoft)^080h
	fcall	___awtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awtoft))^080h,w
	movwf	(JY62_InfiniteYaw@new_yaw)^080h
	movf	(1+(?___awtoft))^080h,w
	movwf	(JY62_InfiniteYaw@new_yaw+1)^080h
	movf	(2+(?___awtoft))^080h,w
	movwf	(JY62_InfiniteYaw@new_yaw+2)^080h
	line	99
	
l9742:	
;JY62.c: 99: return new_yaw;
	movf	(JY62_InfiniteYaw@new_yaw)^080h,w
	movwf	(?_JY62_InfiniteYaw)^080h
	movf	(JY62_InfiniteYaw@new_yaw+1)^080h,w
	movwf	(?_JY62_InfiniteYaw+1)^080h
	movf	(JY62_InfiniteYaw@new_yaw+2)^080h,w
	movwf	(?_JY62_InfiniteYaw+2)^080h
	goto	l2889
	
l9744:	
	line	100
	
l2889:	
	return
	opt stack 0
GLOBAL	__end_of_JY62_InfiniteYaw
	__end_of_JY62_InfiniteYaw:
;; =============== function _JY62_InfiniteYaw ends ============

	signat	_JY62_InfiniteYaw,4219
	global	_LCD_ShowString
psect	text936,local,class=CODE,delta=2
global __ptext936
__ptext936:

;; *************** function _LCD_ShowString *****************
;; Defined at:
;;		line 48 in file "E:\MPLAB_IDE\JY62\LCD.c"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK1 ] PTR unsigned char 
;;		 -> JY62_ShowData@str(11), STR_5(5), STR_4(7), STR_3(14), 
;;		 -> STR_2(5), floatToStr@charbuf(10), 
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
;;		_main
;;		_JY62_ShowData
;;		_floatToStr
;; This function uses a non-reentrant model
;;
psect	text936
	file	"E:\MPLAB_IDE\JY62\LCD.c"
	line	48
	global	__size_of_LCD_ShowString
	__size_of_LCD_ShowString	equ	__end_of_LCD_ShowString-_LCD_ShowString
	
_LCD_ShowString:	
;; using string table level
	opt	stack 1
; Regs used in _LCD_ShowString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	50
	
l9720:	
;LCD.c: 49: unsigned char address;
;LCD.c: 50: if (row == 0) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_ShowString@row)^080h,f
	skipz
	goto	u5841
	goto	u5840
u5841:
	goto	l9724
u5840:
	line	51
	
l9722:	
;LCD.c: 51: address = 0x80 + col;
	movf	(LCD_ShowString@col)^080h,w
	addlw	080h
	movwf	(??_LCD_ShowString+0)^080h+0
	movf	(??_LCD_ShowString+0)^080h+0,w
	movwf	(LCD_ShowString@address)^080h
	line	52
;LCD.c: 52: } else {
	goto	l9726
	
l704:	
	line	53
	
l9724:	
;LCD.c: 53: address = 0xC0 + col;
	movf	(LCD_ShowString@col)^080h,w
	addlw	0C0h
	movwf	(??_LCD_ShowString+0)^080h+0
	movf	(??_LCD_ShowString+0)^080h+0,w
	movwf	(LCD_ShowString@address)^080h
	goto	l9726
	line	54
	
l705:	
	line	55
	
l9726:	
;LCD.c: 54: }
;LCD.c: 55: PORTD = address;
	movf	(LCD_ShowString@address)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	56
	
l9728:	
;LCD.c: 56: ENABLE();
	fcall	_ENABLE
	line	58
;LCD.c: 58: while (*str != '\0') {
	goto	l9738
	
l707:	
	line	59
	
l9730:	
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
	
l9732:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(LCD_ShowString@str)^080h,f
	skipnc
	incf	(LCD_ShowString@str+1)^080h,f
	movlw	high(01h)
	addwf	(LCD_ShowString@str+1)^080h,f
	line	60
	
l9734:	
;LCD.c: 60: ENABLE1();
	fcall	_ENABLE1
	line	61
	
l9736:	
;LCD.c: 61: DELAY();
	fcall	_DELAY
	goto	l9738
	line	62
	
l706:	
	line	58
	
l9738:	
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
	goto	u5851
	goto	u5850
u5851:
	goto	l9730
u5850:
	goto	l709
	
l708:	
	line	63
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_ShowString
	__end_of_LCD_ShowString:
;; =============== function _LCD_ShowString ends ============

	signat	_LCD_ShowString,12408
	global	_LCD_Clear
psect	text937,local,class=CODE,delta=2
global __ptext937
__ptext937:

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 42 in file "E:\MPLAB_IDE\JY62\LCD.c"
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
;;		_ENABLE
;;		_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text937
	file	"E:\MPLAB_IDE\JY62\LCD.c"
	line	42
	global	__size_of_LCD_Clear
	__size_of_LCD_Clear	equ	__end_of_LCD_Clear-_LCD_Clear
	
_LCD_Clear:	
	opt	stack 1
; Regs used in _LCD_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	43
	
l9714:	
;LCD.c: 43: ENABLE();
	fcall	_ENABLE
	line	44
	
l9716:	
;LCD.c: 44: PORTD = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	45
	
l9718:	
;LCD.c: 45: DELAY();
	fcall	_DELAY
	line	46
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
;; =============== function _LCD_Clear ends ============

	signat	_LCD_Clear,88
	global	_LCD_Init
psect	text938,local,class=CODE,delta=2
global __ptext938
__ptext938:

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 25 in file "E:\MPLAB_IDE\JY62\LCD.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text938
	file	"E:\MPLAB_IDE\JY62\LCD.c"
	line	25
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
	opt	stack 1
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l9684:	
;LCD.c: 26: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	27
	
l9686:	
;LCD.c: 27: ADCON1=7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	28
	
l9688:	
;LCD.c: 28: TRISA=0;
	clrf	(133)^080h	;volatile
	line	29
	
l9690:	
;LCD.c: 29: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	30
	
l9692:	
;LCD.c: 30: RA3=1;
	bsf	(43/8),(43)&7
	line	31
	
l9694:	
;LCD.c: 31: DELAY();
	fcall	_DELAY
	line	33
	
l9696:	
;LCD.c: 33: TRISD=0; TRISA=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	
l9698:	
	clrf	(133)^080h	;volatile
	line	34
	
l9700:	
;LCD.c: 34: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	35
	
l9702:	
;LCD.c: 35: DELAY();
	fcall	_DELAY
	line	36
;LCD.c: 36: PORTD=1; ENABLE();
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l9704:	
	fcall	_ENABLE
	line	37
	
l9706:	
;LCD.c: 37: PORTD=0x38; ENABLE();
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	fcall	_ENABLE
	line	38
	
l9708:	
;LCD.c: 38: PORTD=0x0c; ENABLE();
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l9710:	
	fcall	_ENABLE
	line	39
;LCD.c: 39: PORTD=0x06; ENABLE();
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l9712:	
	fcall	_ENABLE
	line	40
	
l698:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
;; =============== function _LCD_Init ends ============

	signat	_LCD_Init,88
	global	___lltoft
psect	text939,local,class=CODE,delta=2
global __ptext939
__ptext939:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[BANK1 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text939
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 0
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l9674:	
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??___lltoft+0)^080h+0
	movf	(??___lltoft+0)^080h+0,w
	movwf	(___lltoft@exp)^080h
	line	41
	goto	l9678
	
l5328:	
	line	42
	
l9676:	
	movlw	01h
u5825:
	clrc
	rrf	(___lltoft@c+3)^080h,f
	rrf	(___lltoft@c+2)^080h,f
	rrf	(___lltoft@c+1)^080h,f
	rrf	(___lltoft@c)^080h,f
	addlw	-1
	skipz
	goto	u5825

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)^080h+0
	movf	(??___lltoft+0)^080h+0,w
	addwf	(___lltoft@exp)^080h,f
	goto	l9678
	line	44
	
l5327:	
	line	41
	
l9678:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3)^080h,w
	btfss	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l9676
u5830:
	goto	l9680
	
l5329:	
	line	45
	
l9680:	
	movf	(___lltoft@c)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___lltoft@c+1)^080h,w
	movwf	(?___ftpack+1)^080h
	movf	(___lltoft@c+2)^080h,w
	movwf	(?___ftpack+2)^080h
	movf	(___lltoft@exp)^080h,w
	movwf	(??___lltoft+0)^080h+0
	movf	(??___lltoft+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	clrf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___lltoft)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___lltoft+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___lltoft+2)^080h
	goto	l5330
	
l9682:	
	line	46
	
l5330:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text940,local,class=CODE,delta=2
global __ptext940
__ptext940:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   34[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   39[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   34[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_JY62_InfiniteYaw
;; This function uses a non-reentrant model
;;
psect	text940
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 0
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l9666:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___awtoft@sign)^080h
	line	37
	btfss	(___awtoft@c+1)^080h,7
	goto	u5811
	goto	u5810
u5811:
	goto	l9670
u5810:
	line	38
	
l9668:	
	comf	(___awtoft@c)^080h,f
	comf	(___awtoft@c+1)^080h,f
	incf	(___awtoft@c)^080h,f
	skipnz
	incf	(___awtoft@c+1)^080h,f
	line	39
	clrf	(___awtoft@sign)^080h
	bsf	status,0
	rlf	(___awtoft@sign)^080h,f
	goto	l9670
	line	40
	
l5226:	
	line	41
	
l9670:	
	movf	(___awtoft@c)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___awtoft@c+1)^080h,w
	movwf	(?___ftpack+1)^080h
	clrf	(?___ftpack+2)^080h
	movlw	(08Eh)
	movwf	(??___awtoft+0)^080h+0
	movf	(??___awtoft+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___awtoft@sign)^080h,w
	movwf	(??___awtoft+1)^080h+0
	movf	(??___awtoft+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___awtoft)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___awtoft+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___awtoft+2)^080h
	goto	l5227
	
l9672:	
	line	42
	
l5227:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text941,local,class=CODE,delta=2
global __ptext941
__ptext941:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   34[BANK1 ] float 
;;  f2              3   37[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   45[BANK1 ] unsigned um
;;  sign            1   49[BANK1 ] unsigned char 
;;  cntr            1   48[BANK1 ] unsigned char 
;;  exp             1   44[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   34[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text941
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l9616:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftmul@f1)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f1+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f1+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	clrc
	rlf	(??___ftmul+0)^080h+1,w
	rlf	(??___ftmul+0)^080h+2,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@exp)^080h
	movf	((___ftmul@exp)^080h),f
	skipz
	goto	u5671
	goto	u5670
u5671:
	goto	l9622
u5670:
	line	57
	
l9618:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x0
	movwf	(?___ftmul+2)^080h
	goto	l5189
	
l9620:	
	goto	l5189
	
l5188:	
	line	58
	
l9622:	
	movf	(___ftmul@f2)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f2+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f2+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	clrc
	rlf	(??___ftmul+0)^080h+1,w
	rlf	(??___ftmul+0)^080h+2,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@sign)^080h
	movf	((___ftmul@sign)^080h),f
	skipz
	goto	u5681
	goto	u5680
u5681:
	goto	l9628
u5680:
	line	59
	
l9624:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x0
	movwf	(?___ftmul+2)^080h
	goto	l5189
	
l9626:	
	goto	l5189
	
l5190:	
	line	60
	
l9628:	
	movf	(___ftmul@sign)^080h,w
	addlw	07Bh
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	addwf	(___ftmul@exp)^080h,f
	line	61
	movf	(___ftmul@f1)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f1+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f1+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	movlw	010h
u5695:
	clrc
	rrf	(??___ftmul+0)^080h+2,f
	rrf	(??___ftmul+0)^080h+1,f
	rrf	(??___ftmul+0)^080h+0,f
u5690:
	addlw	-1
	skipz
	goto	u5695
	movf	0+(??___ftmul+0)^080h+0,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@sign)^080h
	line	62
	movf	(___ftmul@f2)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f2+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f2+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	movlw	010h
u5705:
	clrc
	rrf	(??___ftmul+0)^080h+2,f
	rrf	(??___ftmul+0)^080h+1,f
	rrf	(??___ftmul+0)^080h+0,f
u5700:
	addlw	-1
	skipz
	goto	u5705
	movf	0+(??___ftmul+0)^080h+0,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	xorwf	(___ftmul@sign)^080h,f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	andwf	(___ftmul@sign)^080h,f
	line	64
	
l9630:	
	bsf	(___ftmul@f1)^080h+(15/8),(15)&7
	line	66
	
l9632:	
	bsf	(___ftmul@f2)^080h+(15/8),(15)&7
	line	67
	
l9634:	
	movlw	0FFh
	andwf	(___ftmul@f2)^080h,f
	movlw	0FFh
	andwf	(___ftmul@f2+1)^080h,f
	movlw	0
	andwf	(___ftmul@f2+2)^080h,f
	line	68
	
l9636:	
	movlw	0
	movwf	(___ftmul@f3_as_product)^080h
	movlw	0
	movwf	(___ftmul@f3_as_product+1)^080h
	movlw	0
	movwf	(___ftmul@f3_as_product+2)^080h
	line	69
	
l9638:	
	movlw	(07h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	(___ftmul@cntr)^080h
	goto	l9640
	line	70
	
l5191:	
	line	71
	
l9640:	
	btfss	(___ftmul@f1)^080h,(0)&7
	goto	u5711
	goto	u5710
u5711:
	goto	l9644
u5710:
	line	72
	
l9642:	
	movf	(___ftmul@f2)^080h,w
	addwf	(___ftmul@f3_as_product)^080h,f
	movf	(___ftmul@f2+1)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+1)^080h,w
	skipnz
	goto	u5721
	addwf	(___ftmul@f3_as_product+1)^080h,f
u5721:
	movf	(___ftmul@f2+2)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+2)^080h,w
	skipnz
	goto	u5722
	addwf	(___ftmul@f3_as_product+2)^080h,f
u5722:

	goto	l9644
	
l5192:	
	line	73
	
l9644:	
	movlw	01h
u5735:
	clrc
	rrf	(___ftmul@f1+2)^080h,f
	rrf	(___ftmul@f1+1)^080h,f
	rrf	(___ftmul@f1)^080h,f
	addlw	-1
	skipz
	goto	u5735

	line	74
	
l9646:	
	movlw	01h
u5745:
	clrc
	rlf	(___ftmul@f2)^080h,f
	rlf	(___ftmul@f2+1)^080h,f
	rlf	(___ftmul@f2+2)^080h,f
	addlw	-1
	skipz
	goto	u5745
	line	75
	
l9648:	
	movlw	low(01h)
	subwf	(___ftmul@cntr)^080h,f
	btfss	status,2
	goto	u5751
	goto	u5750
u5751:
	goto	l9640
u5750:
	goto	l9650
	
l5193:	
	line	76
	
l9650:	
	movlw	(09h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	(___ftmul@cntr)^080h
	goto	l9652
	line	77
	
l5194:	
	line	78
	
l9652:	
	btfss	(___ftmul@f1)^080h,(0)&7
	goto	u5761
	goto	u5760
u5761:
	goto	l9656
u5760:
	line	79
	
l9654:	
	movf	(___ftmul@f2)^080h,w
	addwf	(___ftmul@f3_as_product)^080h,f
	movf	(___ftmul@f2+1)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+1)^080h,w
	skipnz
	goto	u5771
	addwf	(___ftmul@f3_as_product+1)^080h,f
u5771:
	movf	(___ftmul@f2+2)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+2)^080h,w
	skipnz
	goto	u5772
	addwf	(___ftmul@f3_as_product+2)^080h,f
u5772:

	goto	l9656
	
l5195:	
	line	80
	
l9656:	
	movlw	01h
u5785:
	clrc
	rrf	(___ftmul@f1+2)^080h,f
	rrf	(___ftmul@f1+1)^080h,f
	rrf	(___ftmul@f1)^080h,f
	addlw	-1
	skipz
	goto	u5785

	line	81
	
l9658:	
	movlw	01h
u5795:
	clrc
	rrf	(___ftmul@f3_as_product+2)^080h,f
	rrf	(___ftmul@f3_as_product+1)^080h,f
	rrf	(___ftmul@f3_as_product)^080h,f
	addlw	-1
	skipz
	goto	u5795

	line	82
	
l9660:	
	movlw	low(01h)
	subwf	(___ftmul@cntr)^080h,f
	btfss	status,2
	goto	u5801
	goto	u5800
u5801:
	goto	l9652
u5800:
	goto	l9662
	
l5196:	
	line	83
	
l9662:	
	movf	(___ftmul@f3_as_product)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___ftmul@f3_as_product+1)^080h,w
	movwf	(?___ftpack+1)^080h
	movf	(___ftmul@f3_as_product+2)^080h,w
	movwf	(?___ftpack+2)^080h
	movf	(___ftmul@exp)^080h,w
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___ftmul@sign)^080h,w
	movwf	(??___ftmul+1)^080h+0
	movf	(??___ftmul+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___ftmul)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___ftmul+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___ftmul+2)^080h
	goto	l5189
	
l9664:	
	line	84
	
l5189:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text942,local,class=CODE,delta=2
global __ptext942
__ptext942:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   50[BANK1 ] float 
;;  f2              3   53[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   62[BANK1 ] unsigned char 
;;  exp2            1   61[BANK1 ] unsigned char 
;;  sign            1   60[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text942
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l9546:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1)^080h,w
	movwf	((??___ftadd+0)^080h+0)
	movf	(___ftadd@f1+1)^080h,w
	movwf	((??___ftadd+0)^080h+0+1)
	movf	(___ftadd@f1+2)^080h,w
	movwf	((??___ftadd+0)^080h+0+2)
	clrc
	rlf	(??___ftadd+0)^080h+1,w
	rlf	(??___ftadd+0)^080h+2,w
	movwf	(??___ftadd+3)^080h+0
	movf	(??___ftadd+3)^080h+0,w
	movwf	(___ftadd@exp1)^080h
	line	91
	movf	(___ftadd@f2)^080h,w
	movwf	((??___ftadd+0)^080h+0)
	movf	(___ftadd@f2+1)^080h,w
	movwf	((??___ftadd+0)^080h+0+1)
	movf	(___ftadd@f2+2)^080h,w
	movwf	((??___ftadd+0)^080h+0+2)
	clrc
	rlf	(??___ftadd+0)^080h+1,w
	rlf	(??___ftadd+0)^080h+2,w
	movwf	(??___ftadd+3)^080h+0
	movf	(??___ftadd+3)^080h+0,w
	movwf	(___ftadd@exp2)^080h
	line	92
	
l9548:	
	movf	(___ftadd@exp1)^080h,w
	skipz
	goto	u5430
	goto	l9554
u5430:
	
l9550:	
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u5441
	goto	u5440
u5441:
	goto	l9558
u5440:
	
l9552:	
	decf	(___ftadd@exp1)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp2)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)^080h+0,w
	skipc
	goto	u5451
	goto	u5450
u5451:
	goto	l9558
u5450:
	goto	l9554
	
l5136:	
	line	93
	
l9554:	
	movf	(___ftadd@f2)^080h,w
	movwf	(?___ftadd)^080h
	movf	(___ftadd@f2+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(___ftadd@f2+2)^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l5137
	
l9556:	
	goto	l5137
	
l5134:	
	line	94
	
l9558:	
	movf	(___ftadd@exp2)^080h,w
	skipz
	goto	u5460
	goto	l5140
u5460:
	
l9560:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u5471
	goto	u5470
u5471:
	goto	l9564
u5470:
	
l9562:	
	decf	(___ftadd@exp2)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp1)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)^080h+0,w
	skipc
	goto	u5481
	goto	u5480
u5481:
	goto	l9564
u5480:
	
l5140:	
	line	95
	goto	l5137
	
l5138:	
	line	96
	
l9564:	
	movlw	(06h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	movwf	(___ftadd@sign)^080h
	line	97
	
l9566:	
	btfss	(___ftadd@f1+2)^080h,(23)&7
	goto	u5491
	goto	u5490
u5491:
	goto	l5141
u5490:
	line	98
	
l9568:	
	bsf	(___ftadd@sign)^080h+(7/8),(7)&7
	
l5141:	
	line	99
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u5501
	goto	u5500
u5501:
	goto	l5142
u5500:
	line	100
	
l9570:	
	bsf	(___ftadd@sign)^080h+(6/8),(6)&7
	
l5142:	
	line	101
	bsf	(___ftadd@f1)^080h+(15/8),(15)&7
	line	102
	
l9572:	
	movlw	0FFh
	andwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f1+1)^080h,f
	movlw	0
	andwf	(___ftadd@f1+2)^080h,f
	line	103
	
l9574:	
	bsf	(___ftadd@f2)^080h+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f2+1)^080h,f
	movlw	0
	andwf	(___ftadd@f2+2)^080h,f
	line	106
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u5511
	goto	u5510
u5511:
	goto	l9586
u5510:
	goto	l9576
	line	109
	
l5144:	
	line	110
	
l9576:	
	movlw	01h
u5525:
	clrc
	rlf	(___ftadd@f2)^080h,f
	rlf	(___ftadd@f2+1)^080h,f
	rlf	(___ftadd@f2+2)^080h,f
	addlw	-1
	skipz
	goto	u5525
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2)^080h,f
	line	112
	
l9578:	
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u5531
	goto	u5530
u5531:
	goto	l9584
u5530:
	
l9580:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h),w
	andlw	07h
	btfss	status,2
	goto	u5541
	goto	u5540
u5541:
	goto	l9576
u5540:
	goto	l9584
	
l5146:	
	goto	l9584
	
l5147:	
	line	113
	goto	l9584
	
l5149:	
	line	114
	
l9582:	
	movlw	01h
u5555:
	clrc
	rrf	(___ftadd@f1+2)^080h,f
	rrf	(___ftadd@f1+1)^080h,f
	rrf	(___ftadd@f1)^080h,f
	addlw	-1
	skipz
	goto	u5555

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	addwf	(___ftadd@exp1)^080h,f
	goto	l9584
	line	116
	
l5148:	
	line	113
	
l9584:	
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u5561
	goto	u5560
u5561:
	goto	l9582
u5560:
	goto	l5151
	
l5150:	
	line	117
	goto	l5151
	
l5143:	
	
l9586:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u5571
	goto	u5570
u5571:
	goto	l5151
u5570:
	goto	l9588
	line	120
	
l5153:	
	line	121
	
l9588:	
	movlw	01h
u5585:
	clrc
	rlf	(___ftadd@f1)^080h,f
	rlf	(___ftadd@f1+1)^080h,f
	rlf	(___ftadd@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u5585
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1)^080h,f
	line	123
	
l9590:	
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u5591
	goto	u5590
u5591:
	goto	l9596
u5590:
	
l9592:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h),w
	andlw	07h
	btfss	status,2
	goto	u5601
	goto	u5600
u5601:
	goto	l9588
u5600:
	goto	l9596
	
l5155:	
	goto	l9596
	
l5156:	
	line	124
	goto	l9596
	
l5158:	
	line	125
	
l9594:	
	movlw	01h
u5615:
	clrc
	rrf	(___ftadd@f2+2)^080h,f
	rrf	(___ftadd@f2+1)^080h,f
	rrf	(___ftadd@f2)^080h,f
	addlw	-1
	skipz
	goto	u5615

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	addwf	(___ftadd@exp2)^080h,f
	goto	l9596
	line	127
	
l5157:	
	line	124
	
l9596:	
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u5621
	goto	u5620
u5621:
	goto	l9594
u5620:
	goto	l5151
	
l5159:	
	goto	l5151
	line	128
	
l5152:	
	line	129
	
l5151:	
	btfss	(___ftadd@sign)^080h,(7)&7
	goto	u5631
	goto	u5630
u5631:
	goto	l9600
u5630:
	line	131
	
l9598:	
	movlw	0FFh
	xorwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f1+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f1+2)^080h,f
	line	132
	movlw	01h
	addwf	(___ftadd@f1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2)^080h,f
	goto	l9600
	line	133
	
l5160:	
	line	134
	
l9600:	
	btfss	(___ftadd@sign)^080h,(6)&7
	goto	u5641
	goto	u5640
u5641:
	goto	l9604
u5640:
	line	136
	
l9602:	
	movlw	0FFh
	xorwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+2)^080h,f
	line	137
	movlw	01h
	addwf	(___ftadd@f2)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2)^080h,f
	goto	l9604
	line	138
	
l5161:	
	line	139
	
l9604:	
	clrf	(___ftadd@sign)^080h
	line	140
	movf	(___ftadd@f1)^080h,w
	addwf	(___ftadd@f2)^080h,f
	movf	(___ftadd@f1+1)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+1)^080h,w
	skipnz
	goto	u5651
	addwf	(___ftadd@f2+1)^080h,f
u5651:
	movf	(___ftadd@f1+2)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+2)^080h,w
	skipnz
	goto	u5652
	addwf	(___ftadd@f2+2)^080h,f
u5652:

	line	141
	
l9606:	
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u5661
	goto	u5660
u5661:
	goto	l9612
u5660:
	line	142
	
l9608:	
	movlw	0FFh
	xorwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+2)^080h,f
	line	143
	movlw	01h
	addwf	(___ftadd@f2)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2)^080h,f
	line	144
	
l9610:	
	clrf	(___ftadd@sign)^080h
	bsf	status,0
	rlf	(___ftadd@sign)^080h,f
	goto	l9612
	line	145
	
l5162:	
	line	146
	
l9612:	
	movf	(___ftadd@f2)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___ftadd@f2+1)^080h,w
	movwf	(?___ftpack+1)^080h
	movf	(___ftadd@f2+2)^080h,w
	movwf	(?___ftpack+2)^080h
	movf	(___ftadd@exp1)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___ftadd@sign)^080h,w
	movwf	(??___ftadd+1)^080h+0
	movf	(??___ftadd+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___ftadd)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l5137
	
l9614:	
	line	148
	
l5137:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_ENABLE1
psect	text943,local,class=CODE,delta=2
global __ptext943
__ptext943:

;; *************** function _ENABLE1 *****************
;; Defined at:
;;		line 17 in file "E:\MPLAB_IDE\JY62\LCD.c"
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
;;		_KEY_ShowTest
;; This function uses a non-reentrant model
;;
psect	text943
	file	"E:\MPLAB_IDE\JY62\LCD.c"
	line	17
	global	__size_of_ENABLE1
	__size_of_ENABLE1	equ	__end_of_ENABLE1-_ENABLE1
	
_ENABLE1:	
	opt	stack 0
; Regs used in _ENABLE1: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l9540:	
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
	
l9542:	
;LCD.c: 21: DELAY();
	fcall	_DELAY
	line	22
	
l9544:	
;LCD.c: 22: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	23
	
l695:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE1
	__end_of_ENABLE1:
;; =============== function _ENABLE1 ends ============

	signat	_ENABLE1,88
	global	_ENABLE
psect	text944,local,class=CODE,delta=2
global __ptext944
__ptext944:

;; *************** function _ENABLE *****************
;; Defined at:
;;		line 9 in file "E:\MPLAB_IDE\JY62\LCD.c"
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
;;		_LCD_Clear
;;		_LCD_ShowString
;;		_KEY_Scan
;;		_KEY_ShowTest
;; This function uses a non-reentrant model
;;
psect	text944
	file	"E:\MPLAB_IDE\JY62\LCD.c"
	line	9
	global	__size_of_ENABLE
	__size_of_ENABLE	equ	__end_of_ENABLE-_ENABLE
	
_ENABLE:	
	opt	stack 0
; Regs used in _ENABLE: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l9534:	
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
	
l9536:	
;LCD.c: 13: DELAY();
	fcall	_DELAY
	line	14
	
l9538:	
;LCD.c: 14: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	15
	
l692:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE
	__end_of_ENABLE:
;; =============== function _ENABLE ends ============

	signat	_ENABLE,88
	global	___awmod
psect	text945,local,class=CODE,delta=2
global __ptext945
__ptext945:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK1 ] int 
;;  dividend        2    2[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK1 ] unsigned char 
;;  counter         1    5[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_JY62_InfiniteYaw
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text945
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 0
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l9376:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___awmod@sign)^080h
	line	9
	btfss	(___awmod@dividend+1)^080h,7
	goto	u5041
	goto	u5040
u5041:
	goto	l9380
u5040:
	line	10
	
l9378:	
	comf	(___awmod@dividend)^080h,f
	comf	(___awmod@dividend+1)^080h,f
	incf	(___awmod@dividend)^080h,f
	skipnz
	incf	(___awmod@dividend+1)^080h,f
	line	11
	clrf	(___awmod@sign)^080h
	bsf	status,0
	rlf	(___awmod@sign)^080h,f
	goto	l9380
	line	12
	
l5298:	
	line	13
	
l9380:	
	btfss	(___awmod@divisor+1)^080h,7
	goto	u5051
	goto	u5050
u5051:
	goto	l9384
u5050:
	line	14
	
l9382:	
	comf	(___awmod@divisor)^080h,f
	comf	(___awmod@divisor+1)^080h,f
	incf	(___awmod@divisor)^080h,f
	skipnz
	incf	(___awmod@divisor+1)^080h,f
	goto	l9384
	
l5299:	
	line	15
	
l9384:	
	movf	(___awmod@divisor+1)^080h,w
	iorwf	(___awmod@divisor)^080h,w
	skipnz
	goto	u5061
	goto	u5060
u5061:
	goto	l9402
u5060:
	line	16
	
l9386:	
	clrf	(___awmod@counter)^080h
	bsf	status,0
	rlf	(___awmod@counter)^080h,f
	line	17
	goto	l9392
	
l5302:	
	line	18
	
l9388:	
	movlw	01h
	
u5075:
	clrc
	rlf	(___awmod@divisor)^080h,f
	rlf	(___awmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u5075
	line	19
	
l9390:	
	movlw	(01h)
	movwf	(??___awmod+0)^080h+0
	movf	(??___awmod+0)^080h+0,w
	addwf	(___awmod@counter)^080h,f
	goto	l9392
	line	20
	
l5301:	
	line	17
	
l9392:	
	btfss	(___awmod@divisor+1)^080h,(15)&7
	goto	u5081
	goto	u5080
u5081:
	goto	l9388
u5080:
	goto	l9394
	
l5303:	
	goto	l9394
	line	21
	
l5304:	
	line	22
	
l9394:	
	movf	(___awmod@divisor+1)^080h,w
	subwf	(___awmod@dividend+1)^080h,w
	skipz
	goto	u5095
	movf	(___awmod@divisor)^080h,w
	subwf	(___awmod@dividend)^080h,w
u5095:
	skipc
	goto	u5091
	goto	u5090
u5091:
	goto	l9398
u5090:
	line	23
	
l9396:	
	movf	(___awmod@divisor)^080h,w
	subwf	(___awmod@dividend)^080h,f
	movf	(___awmod@divisor+1)^080h,w
	skipc
	decf	(___awmod@dividend+1)^080h,f
	subwf	(___awmod@dividend+1)^080h,f
	goto	l9398
	
l5305:	
	line	24
	
l9398:	
	movlw	01h
	
u5105:
	clrc
	rrf	(___awmod@divisor+1)^080h,f
	rrf	(___awmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u5105
	line	25
	
l9400:	
	movlw	low(01h)
	subwf	(___awmod@counter)^080h,f
	btfss	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l9394
u5110:
	goto	l9402
	
l5306:	
	goto	l9402
	line	26
	
l5300:	
	line	27
	
l9402:	
	movf	(___awmod@sign)^080h,w
	skipz
	goto	u5120
	goto	l9406
u5120:
	line	28
	
l9404:	
	comf	(___awmod@dividend)^080h,f
	comf	(___awmod@dividend+1)^080h,f
	incf	(___awmod@dividend)^080h,f
	skipnz
	incf	(___awmod@dividend+1)^080h,f
	goto	l9406
	
l5307:	
	line	29
	
l9406:	
	movf	(___awmod@dividend+1)^080h,w
	clrf	(?___awmod+1)^080h
	addwf	(?___awmod+1)^080h
	movf	(___awmod@dividend)^080h,w
	clrf	(?___awmod)^080h
	addwf	(?___awmod)^080h

	goto	l5308
	
l9408:	
	line	30
	
l5308:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text946,local,class=CODE,delta=2
global __ptext946
__ptext946:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK1 ] unsigned long 
;;  dividend        4    4[BANK1 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[BANK1 ] unsigned long 
;;  counter         1   13[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK1 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0       5       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text946
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 1
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l9352:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___lldiv@quotient+3)^080h
	movlw	0
	movwf	(___lldiv@quotient+2)^080h
	movlw	0
	movwf	(___lldiv@quotient+1)^080h
	movlw	0
	movwf	(___lldiv@quotient)^080h

	line	10
	movf	(___lldiv@divisor+3)^080h,w
	iorwf	(___lldiv@divisor+2)^080h,w
	iorwf	(___lldiv@divisor+1)^080h,w
	iorwf	(___lldiv@divisor)^080h,w
	skipnz
	goto	u4971
	goto	u4970
u4971:
	goto	l9372
u4970:
	line	11
	
l9354:	
	clrf	(___lldiv@counter)^080h
	bsf	status,0
	rlf	(___lldiv@counter)^080h,f
	line	12
	goto	l9358
	
l5264:	
	line	13
	
l9356:	
	movlw	01h
	movwf	(??___lldiv+0)^080h+0
u4985:
	clrc
	rlf	(___lldiv@divisor)^080h,f
	rlf	(___lldiv@divisor+1)^080h,f
	rlf	(___lldiv@divisor+2)^080h,f
	rlf	(___lldiv@divisor+3)^080h,f
	decfsz	(??___lldiv+0)^080h+0
	goto	u4985
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)^080h+0
	movf	(??___lldiv+0)^080h+0,w
	addwf	(___lldiv@counter)^080h,f
	goto	l9358
	line	15
	
l5263:	
	line	12
	
l9358:	
	btfss	(___lldiv@divisor+3)^080h,(31)&7
	goto	u4991
	goto	u4990
u4991:
	goto	l9356
u4990:
	goto	l9360
	
l5265:	
	goto	l9360
	line	16
	
l5266:	
	line	17
	
l9360:	
	movlw	01h
	movwf	(??___lldiv+0)^080h+0
u5005:
	clrc
	rlf	(___lldiv@quotient)^080h,f
	rlf	(___lldiv@quotient+1)^080h,f
	rlf	(___lldiv@quotient+2)^080h,f
	rlf	(___lldiv@quotient+3)^080h,f
	decfsz	(??___lldiv+0)^080h+0
	goto	u5005
	line	18
	
l9362:	
	movf	(___lldiv@divisor+3)^080h,w
	subwf	(___lldiv@dividend+3)^080h,w
	skipz
	goto	u5015
	movf	(___lldiv@divisor+2)^080h,w
	subwf	(___lldiv@dividend+2)^080h,w
	skipz
	goto	u5015
	movf	(___lldiv@divisor+1)^080h,w
	subwf	(___lldiv@dividend+1)^080h,w
	skipz
	goto	u5015
	movf	(___lldiv@divisor)^080h,w
	subwf	(___lldiv@dividend)^080h,w
u5015:
	skipc
	goto	u5011
	goto	u5010
u5011:
	goto	l9368
u5010:
	line	19
	
l9364:	
	movf	(___lldiv@divisor)^080h,w
	subwf	(___lldiv@dividend)^080h,f
	movf	(___lldiv@divisor+1)^080h,w
	skipc
	incfsz	(___lldiv@divisor+1)^080h,w
	subwf	(___lldiv@dividend+1)^080h,f
	movf	(___lldiv@divisor+2)^080h,w
	skipc
	incfsz	(___lldiv@divisor+2)^080h,w
	subwf	(___lldiv@dividend+2)^080h,f
	movf	(___lldiv@divisor+3)^080h,w
	skipc
	incfsz	(___lldiv@divisor+3)^080h,w
	subwf	(___lldiv@dividend+3)^080h,f
	line	20
	
l9366:	
	bsf	(___lldiv@quotient)^080h+(0/8),(0)&7
	goto	l9368
	line	21
	
l5267:	
	line	22
	
l9368:	
	movlw	01h
u5025:
	clrc
	rrf	(___lldiv@divisor+3)^080h,f
	rrf	(___lldiv@divisor+2)^080h,f
	rrf	(___lldiv@divisor+1)^080h,f
	rrf	(___lldiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u5025

	line	23
	
l9370:	
	movlw	low(01h)
	subwf	(___lldiv@counter)^080h,f
	btfss	status,2
	goto	u5031
	goto	u5030
u5031:
	goto	l9360
u5030:
	goto	l9372
	
l5268:	
	goto	l9372
	line	24
	
l5262:	
	line	25
	
l9372:	
	movf	(___lldiv@quotient+3)^080h,w
	movwf	(?___lldiv+3)^080h
	movf	(___lldiv@quotient+2)^080h,w
	movwf	(?___lldiv+2)^080h
	movf	(___lldiv@quotient+1)^080h,w
	movwf	(?___lldiv+1)^080h
	movf	(___lldiv@quotient)^080h,w
	movwf	(?___lldiv)^080h

	goto	l5269
	
l9374:	
	line	26
	
l5269:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text947,local,class=CODE,delta=2
global __ptext947
__ptext947:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK1 ] float 
;;  ff2             3    3[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       6       0       0
;;      Totals:         0       0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text947
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 1
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l9332:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(___ftge@ff1+2)^080h,(23)&7
	goto	u4921
	goto	u4920
u4921:
	goto	l9336
u4920:
	line	7
	
l9334:	
	movlw	0
	movwf	((??___ftge+0)^080h+0)
	movlw	0
	movwf	((??___ftge+0)^080h+0+1)
	movlw	080h
	movwf	((??___ftge+0)^080h+0+2)
	comf	(___ftge@ff1)^080h,w
	movwf	(??___ftge+3)^080h+0
	comf	(___ftge@ff1+1)^080h,w
	movwf	((??___ftge+3)^080h+0+1)
	comf	(___ftge@ff1+2)^080h,w
	movwf	((??___ftge+3)^080h+0+2)
	incf	(??___ftge+3)^080h+0,f
	skipnz
	incf	((??___ftge+3)^080h+0+1),f
	skipnz
	incf	((??___ftge+3)^080h+0+2),f
	movf	0+(??___ftge+3)^080h+0,w
	addwf	(??___ftge+0)^080h+0,f
	movf	1+(??___ftge+3)^080h+0,w
	skipnc
	incfsz	1+(??___ftge+3)^080h+0,w
	goto	u4931
	goto	u4932
u4931:
	addwf	(??___ftge+0)^080h+1,f
	
u4932:
	movf	2+(??___ftge+3)^080h+0,w
	skipnc
	incfsz	2+(??___ftge+3)^080h+0,w
	goto	u4933
	goto	u4934
u4933:
	addwf	(??___ftge+0)^080h+2,f
	
u4934:
	movf	0+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff1)^080h
	movf	1+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff1+1)^080h
	movf	2+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff1+2)^080h
	goto	l9336
	
l5257:	
	line	8
	
l9336:	
	btfss	(___ftge@ff2+2)^080h,(23)&7
	goto	u4941
	goto	u4940
u4941:
	goto	l9340
u4940:
	line	9
	
l9338:	
	movlw	0
	movwf	((??___ftge+0)^080h+0)
	movlw	0
	movwf	((??___ftge+0)^080h+0+1)
	movlw	080h
	movwf	((??___ftge+0)^080h+0+2)
	comf	(___ftge@ff2)^080h,w
	movwf	(??___ftge+3)^080h+0
	comf	(___ftge@ff2+1)^080h,w
	movwf	((??___ftge+3)^080h+0+1)
	comf	(___ftge@ff2+2)^080h,w
	movwf	((??___ftge+3)^080h+0+2)
	incf	(??___ftge+3)^080h+0,f
	skipnz
	incf	((??___ftge+3)^080h+0+1),f
	skipnz
	incf	((??___ftge+3)^080h+0+2),f
	movf	0+(??___ftge+3)^080h+0,w
	addwf	(??___ftge+0)^080h+0,f
	movf	1+(??___ftge+3)^080h+0,w
	skipnc
	incfsz	1+(??___ftge+3)^080h+0,w
	goto	u4951
	goto	u4952
u4951:
	addwf	(??___ftge+0)^080h+1,f
	
u4952:
	movf	2+(??___ftge+3)^080h+0,w
	skipnc
	incfsz	2+(??___ftge+3)^080h+0,w
	goto	u4953
	goto	u4954
u4953:
	addwf	(??___ftge+0)^080h+2,f
	
u4954:
	movf	0+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff2)^080h
	movf	1+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff2+1)^080h
	movf	2+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff2+2)^080h
	goto	l9340
	
l5258:	
	line	10
	
l9340:	
	movlw	080h
	xorwf	(___ftge@ff1+2)^080h,f
	line	11
	
l9342:	
	movlw	080h
	xorwf	(___ftge@ff2+2)^080h,f
	line	12
	
l9344:	
	movf	(___ftge@ff2+2)^080h,w
	subwf	(___ftge@ff1+2)^080h,w
	skipz
	goto	u4965
	movf	(___ftge@ff2+1)^080h,w
	subwf	(___ftge@ff1+1)^080h,w
	skipz
	goto	u4965
	movf	(___ftge@ff2)^080h,w
	subwf	(___ftge@ff1)^080h,w
u4965:
	skipnc
	goto	u4961
	goto	u4960
u4961:
	goto	l9348
u4960:
	
l9346:	
	clrc
	
	goto	l5259
	
l8798:	
	
l9348:	
	setc
	
	goto	l5259
	
l8800:	
	goto	l5259
	
l9350:	
	line	13
	
l5259:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text948,local,class=CODE,delta=2
global __ptext948
__ptext948:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text948
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 1
; Regs used in ___ftneg: [wreg]
	line	17
	
l9324:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftneg@f1+2)^080h,w
	iorwf	(___ftneg@f1+1)^080h,w
	iorwf	(___ftneg@f1)^080h,w
	skipnz
	goto	u4911
	goto	u4910
u4911:
	goto	l9328
u4910:
	line	18
	
l9326:	
	movlw	080h
	xorwf	(___ftneg@f1+2)^080h,f
	goto	l9328
	
l5253:	
	line	19
	
l9328:	
	goto	l5254
	
l9330:	
	line	20
	
l5254:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text949,local,class=CODE,delta=2
global __ptext949
__ptext949:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   14[BANK1 ] unsigned long 
;;  dividend        4   18[BANK1 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   23[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[BANK1 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text949
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 1
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l9304:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___llmod@divisor+3)^080h,w
	iorwf	(___llmod@divisor+2)^080h,w
	iorwf	(___llmod@divisor+1)^080h,w
	iorwf	(___llmod@divisor)^080h,w
	skipnz
	goto	u4851
	goto	u4850
u4851:
	goto	l9320
u4850:
	line	9
	
l9306:	
	clrf	(___llmod@counter)^080h
	bsf	status,0
	rlf	(___llmod@counter)^080h,f
	line	10
	goto	l9310
	
l5245:	
	line	11
	
l9308:	
	movlw	01h
	movwf	(??___llmod+0)^080h+0
u4865:
	clrc
	rlf	(___llmod@divisor)^080h,f
	rlf	(___llmod@divisor+1)^080h,f
	rlf	(___llmod@divisor+2)^080h,f
	rlf	(___llmod@divisor+3)^080h,f
	decfsz	(??___llmod+0)^080h+0
	goto	u4865
	line	12
	movlw	(01h)
	movwf	(??___llmod+0)^080h+0
	movf	(??___llmod+0)^080h+0,w
	addwf	(___llmod@counter)^080h,f
	goto	l9310
	line	13
	
l5244:	
	line	10
	
l9310:	
	btfss	(___llmod@divisor+3)^080h,(31)&7
	goto	u4871
	goto	u4870
u4871:
	goto	l9308
u4870:
	goto	l9312
	
l5246:	
	goto	l9312
	line	14
	
l5247:	
	line	15
	
l9312:	
	movf	(___llmod@divisor+3)^080h,w
	subwf	(___llmod@dividend+3)^080h,w
	skipz
	goto	u4885
	movf	(___llmod@divisor+2)^080h,w
	subwf	(___llmod@dividend+2)^080h,w
	skipz
	goto	u4885
	movf	(___llmod@divisor+1)^080h,w
	subwf	(___llmod@dividend+1)^080h,w
	skipz
	goto	u4885
	movf	(___llmod@divisor)^080h,w
	subwf	(___llmod@dividend)^080h,w
u4885:
	skipc
	goto	u4881
	goto	u4880
u4881:
	goto	l9316
u4880:
	line	16
	
l9314:	
	movf	(___llmod@divisor)^080h,w
	subwf	(___llmod@dividend)^080h,f
	movf	(___llmod@divisor+1)^080h,w
	skipc
	incfsz	(___llmod@divisor+1)^080h,w
	subwf	(___llmod@dividend+1)^080h,f
	movf	(___llmod@divisor+2)^080h,w
	skipc
	incfsz	(___llmod@divisor+2)^080h,w
	subwf	(___llmod@dividend+2)^080h,f
	movf	(___llmod@divisor+3)^080h,w
	skipc
	incfsz	(___llmod@divisor+3)^080h,w
	subwf	(___llmod@dividend+3)^080h,f
	goto	l9316
	
l5248:	
	line	17
	
l9316:	
	movlw	01h
u4895:
	clrc
	rrf	(___llmod@divisor+3)^080h,f
	rrf	(___llmod@divisor+2)^080h,f
	rrf	(___llmod@divisor+1)^080h,f
	rrf	(___llmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4895

	line	18
	
l9318:	
	movlw	low(01h)
	subwf	(___llmod@counter)^080h,f
	btfss	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l9312
u4900:
	goto	l9320
	
l5249:	
	goto	l9320
	line	19
	
l5243:	
	line	20
	
l9320:	
	movf	(___llmod@dividend+3)^080h,w
	movwf	(?___llmod+3)^080h
	movf	(___llmod@dividend+2)^080h,w
	movwf	(?___llmod+2)^080h
	movf	(___llmod@dividend+1)^080h,w
	movwf	(?___llmod+1)^080h
	movf	(___llmod@dividend)^080h,w
	movwf	(?___llmod)^080h

	goto	l5250
	
l9322:	
	line	21
	
l5250:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text950,local,class=CODE,delta=2
global __ptext950
__ptext950:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK1 ] int 
;;  dividend        2    9[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   14[BANK1 ] int 
;;  sign            1   13[BANK1 ] unsigned char 
;;  counter         1   12[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK1 ] int 
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
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text950
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 0
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l9264:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___awdiv@sign)^080h
	line	10
	btfss	(___awdiv@divisor+1)^080h,7
	goto	u4751
	goto	u4750
u4751:
	goto	l9268
u4750:
	line	11
	
l9266:	
	comf	(___awdiv@divisor)^080h,f
	comf	(___awdiv@divisor+1)^080h,f
	incf	(___awdiv@divisor)^080h,f
	skipnz
	incf	(___awdiv@divisor+1)^080h,f
	line	12
	clrf	(___awdiv@sign)^080h
	bsf	status,0
	rlf	(___awdiv@sign)^080h,f
	goto	l9268
	line	13
	
l5230:	
	line	14
	
l9268:	
	btfss	(___awdiv@dividend+1)^080h,7
	goto	u4761
	goto	u4760
u4761:
	goto	l9274
u4760:
	line	15
	
l9270:	
	comf	(___awdiv@dividend)^080h,f
	comf	(___awdiv@dividend+1)^080h,f
	incf	(___awdiv@dividend)^080h,f
	skipnz
	incf	(___awdiv@dividend+1)^080h,f
	line	16
	
l9272:	
	movlw	(01h)
	movwf	(??___awdiv+0)^080h+0
	movf	(??___awdiv+0)^080h+0,w
	xorwf	(___awdiv@sign)^080h,f
	goto	l9274
	line	17
	
l5231:	
	line	18
	
l9274:	
	clrf	(___awdiv@quotient)^080h
	clrf	(___awdiv@quotient+1)^080h
	line	19
	
l9276:	
	movf	(___awdiv@divisor+1)^080h,w
	iorwf	(___awdiv@divisor)^080h,w
	skipnz
	goto	u4771
	goto	u4770
u4771:
	goto	l9296
u4770:
	line	20
	
l9278:	
	clrf	(___awdiv@counter)^080h
	bsf	status,0
	rlf	(___awdiv@counter)^080h,f
	line	21
	goto	l9284
	
l5234:	
	line	22
	
l9280:	
	movlw	01h
	
u4785:
	clrc
	rlf	(___awdiv@divisor)^080h,f
	rlf	(___awdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u4785
	line	23
	
l9282:	
	movlw	(01h)
	movwf	(??___awdiv+0)^080h+0
	movf	(??___awdiv+0)^080h+0,w
	addwf	(___awdiv@counter)^080h,f
	goto	l9284
	line	24
	
l5233:	
	line	21
	
l9284:	
	btfss	(___awdiv@divisor+1)^080h,(15)&7
	goto	u4791
	goto	u4790
u4791:
	goto	l9280
u4790:
	goto	l9286
	
l5235:	
	goto	l9286
	line	25
	
l5236:	
	line	26
	
l9286:	
	movlw	01h
	
u4805:
	clrc
	rlf	(___awdiv@quotient)^080h,f
	rlf	(___awdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u4805
	line	27
	movf	(___awdiv@divisor+1)^080h,w
	subwf	(___awdiv@dividend+1)^080h,w
	skipz
	goto	u4815
	movf	(___awdiv@divisor)^080h,w
	subwf	(___awdiv@dividend)^080h,w
u4815:
	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l9292
u4810:
	line	28
	
l9288:	
	movf	(___awdiv@divisor)^080h,w
	subwf	(___awdiv@dividend)^080h,f
	movf	(___awdiv@divisor+1)^080h,w
	skipc
	decf	(___awdiv@dividend+1)^080h,f
	subwf	(___awdiv@dividend+1)^080h,f
	line	29
	
l9290:	
	bsf	(___awdiv@quotient)^080h+(0/8),(0)&7
	goto	l9292
	line	30
	
l5237:	
	line	31
	
l9292:	
	movlw	01h
	
u4825:
	clrc
	rrf	(___awdiv@divisor+1)^080h,f
	rrf	(___awdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4825
	line	32
	
l9294:	
	movlw	low(01h)
	subwf	(___awdiv@counter)^080h,f
	btfss	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l9286
u4830:
	goto	l9296
	
l5238:	
	goto	l9296
	line	33
	
l5232:	
	line	34
	
l9296:	
	movf	(___awdiv@sign)^080h,w
	skipz
	goto	u4840
	goto	l9300
u4840:
	line	35
	
l9298:	
	comf	(___awdiv@quotient)^080h,f
	comf	(___awdiv@quotient+1)^080h,f
	incf	(___awdiv@quotient)^080h,f
	skipnz
	incf	(___awdiv@quotient+1)^080h,f
	goto	l9300
	
l5239:	
	line	36
	
l9300:	
	movf	(___awdiv@quotient+1)^080h,w
	clrf	(?___awdiv+1)^080h
	addwf	(?___awdiv+1)^080h
	movf	(___awdiv@quotient)^080h,w
	clrf	(?___awdiv)^080h
	addwf	(?___awdiv)^080h

	goto	l5240
	
l9302:	
	line	37
	
l5240:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text951,local,class=CODE,delta=2
global __ptext951
__ptext951:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   20[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   29[BANK1 ] unsigned long 
;;  exp1            1   33[BANK1 ] unsigned char 
;;  sign1           1   28[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   20[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_JY62_InfiniteYaw
;;		_JY62_ShowData
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text951
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 1
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l9208:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	clrc
	rlf	(??___fttol+0)^080h+1,w
	rlf	(??___fttol+0)^080h+2,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@exp1)^080h
	movf	((___fttol@exp1)^080h),f
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l9214
u4640:
	line	50
	
l9210:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l5200
	
l9212:	
	goto	l5200
	
l5199:	
	line	51
	
l9214:	
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	movlw	017h
u4655:
	clrc
	rrf	(??___fttol+0)^080h+2,f
	rrf	(??___fttol+0)^080h+1,f
	rrf	(??___fttol+0)^080h+0,f
u4650:
	addlw	-1
	skipz
	goto	u4655
	movf	0+(??___fttol+0)^080h+0,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@sign1)^080h
	line	52
	
l9216:	
	bsf	(___fttol@f1)^080h+(15/8),(15)&7
	line	53
	
l9218:	
	movlw	0FFh
	andwf	(___fttol@f1)^080h,f
	movlw	0FFh
	andwf	(___fttol@f1+1)^080h,f
	movlw	0
	andwf	(___fttol@f1+2)^080h,f
	line	54
	
l9220:	
	movf	(___fttol@f1)^080h,w
	movwf	(___fttol@lval)^080h
	movf	(___fttol@f1+1)^080h,w
	movwf	((___fttol@lval)^080h)+1
	movf	(___fttol@f1+2)^080h,w
	movwf	((___fttol@lval)^080h)+2
	clrf	((___fttol@lval)^080h)+3
	line	55
	
l9222:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1)^080h,f
	line	56
	
l9224:	
	btfss	(___fttol@exp1)^080h,7
	goto	u4661
	goto	u4660
u4661:
	goto	l9234
u4660:
	line	57
	
l9226:	
	movf	(___fttol@exp1)^080h,w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4671
	goto	u4670
u4671:
	goto	l9232
u4670:
	line	58
	
l9228:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l5200
	
l9230:	
	goto	l5200
	
l5202:	
	goto	l9232
	line	59
	
l5203:	
	line	60
	
l9232:	
	movlw	01h
u4685:
	clrc
	rrf	(___fttol@lval+3)^080h,f
	rrf	(___fttol@lval+2)^080h,f
	rrf	(___fttol@lval+1)^080h,f
	rrf	(___fttol@lval)^080h,f
	addlw	-1
	skipz
	goto	u4685

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)^080h+0
	movf	(??___fttol+0)^080h+0,w
	addwf	(___fttol@exp1)^080h,f
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l9232
u4690:
	goto	l9244
	
l5204:	
	line	62
	goto	l9244
	
l5201:	
	line	63
	
l9234:	
	movlw	(018h)
	subwf	(___fttol@exp1)^080h,w
	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l9242
u4700:
	line	64
	
l9236:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l5200
	
l9238:	
	goto	l5200
	
l5206:	
	line	65
	goto	l9242
	
l5208:	
	line	66
	
l9240:	
	movlw	01h
	movwf	(??___fttol+0)^080h+0
u4715:
	clrc
	rlf	(___fttol@lval)^080h,f
	rlf	(___fttol@lval+1)^080h,f
	rlf	(___fttol@lval+2)^080h,f
	rlf	(___fttol@lval+3)^080h,f
	decfsz	(??___fttol+0)^080h+0
	goto	u4715
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1)^080h,f
	goto	l9242
	line	68
	
l5207:	
	line	65
	
l9242:	
	movf	(___fttol@exp1)^080h,f
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l9240
u4720:
	goto	l9244
	
l5209:	
	goto	l9244
	line	69
	
l5205:	
	line	70
	
l9244:	
	movf	(___fttol@sign1)^080h,w
	skipz
	goto	u4730
	goto	l9248
u4730:
	line	71
	
l9246:	
	comf	(___fttol@lval)^080h,f
	comf	(___fttol@lval+1)^080h,f
	comf	(___fttol@lval+2)^080h,f
	comf	(___fttol@lval+3)^080h,f
	incf	(___fttol@lval)^080h,f
	skipnz
	incf	(___fttol@lval+1)^080h,f
	skipnz
	incf	(___fttol@lval+2)^080h,f
	skipnz
	incf	(___fttol@lval+3)^080h,f
	goto	l9248
	
l5210:	
	line	72
	
l9248:	
	movf	(___fttol@lval+3)^080h,w
	movwf	(?___fttol+3)^080h
	movf	(___fttol@lval+2)^080h,w
	movwf	(?___fttol+2)^080h
	movf	(___fttol@lval+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(___fttol@lval)^080h,w
	movwf	(?___fttol)^080h

	goto	l5200
	
l9250:	
	line	73
	
l5200:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text952,local,class=CODE,delta=2
global __ptext952
__ptext952:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK1 ] unsigned um
;;  exp             1    3[BANK1 ] unsigned char 
;;  sign            1    4[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       5       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___awtoft
;;		___lltoft
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text952
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l9136:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftpack@exp)^080h,w
	skipz
	goto	u4450
	goto	l9140
u4450:
	
l9138:	
	movf	(___ftpack@arg+2)^080h,w
	iorwf	(___ftpack@arg+1)^080h,w
	iorwf	(___ftpack@arg)^080h,w
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l9146
u4460:
	goto	l9140
	
l5458:	
	line	65
	
l9140:	
	movlw	0x0
	movwf	(?___ftpack)^080h
	movlw	0x0
	movwf	(?___ftpack+1)^080h
	movlw	0x0
	movwf	(?___ftpack+2)^080h
	goto	l5459
	
l9142:	
	goto	l5459
	
l5456:	
	line	66
	goto	l9146
	
l5461:	
	line	67
	
l9144:	
	movlw	(01h)
	movwf	(??___ftpack+0)^080h+0
	movf	(??___ftpack+0)^080h+0,w
	addwf	(___ftpack@exp)^080h,f
	line	68
	movlw	01h
u4475:
	clrc
	rrf	(___ftpack@arg+2)^080h,f
	rrf	(___ftpack@arg+1)^080h,f
	rrf	(___ftpack@arg)^080h,f
	addlw	-1
	skipz
	goto	u4475

	goto	l9146
	line	69
	
l5460:	
	line	66
	
l9146:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2)^080h,w
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l9144
u4480:
	goto	l5463
	
l5462:	
	line	70
	goto	l5463
	
l5464:	
	line	71
	
l9148:	
	movlw	(01h)
	movwf	(??___ftpack+0)^080h+0
	movf	(??___ftpack+0)^080h+0,w
	addwf	(___ftpack@exp)^080h,f
	line	72
	
l9150:	
	movlw	01h
	addwf	(___ftpack@arg)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2)^080h,f
	line	73
	
l9152:	
	movlw	01h
u4495:
	clrc
	rrf	(___ftpack@arg+2)^080h,f
	rrf	(___ftpack@arg+1)^080h,f
	rrf	(___ftpack@arg)^080h,f
	addlw	-1
	skipz
	goto	u4495

	line	74
	
l5463:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2)^080h,w
	btfss	status,2
	goto	u4501
	goto	u4500
u4501:
	goto	l9148
u4500:
	goto	l9156
	
l5465:	
	line	75
	goto	l9156
	
l5467:	
	line	76
	
l9154:	
	movlw	low(01h)
	subwf	(___ftpack@exp)^080h,f
	line	77
	movlw	01h
u4515:
	clrc
	rlf	(___ftpack@arg)^080h,f
	rlf	(___ftpack@arg+1)^080h,f
	rlf	(___ftpack@arg+2)^080h,f
	addlw	-1
	skipz
	goto	u4515
	goto	l9156
	line	78
	
l5466:	
	line	75
	
l9156:	
	btfss	(___ftpack@arg+1)^080h,(15)&7
	goto	u4521
	goto	u4520
u4521:
	goto	l9154
u4520:
	
l5468:	
	line	79
	btfsc	(___ftpack@exp)^080h,(0)&7
	goto	u4531
	goto	u4530
u4531:
	goto	l5469
u4530:
	line	80
	
l9158:	
	movlw	0FFh
	andwf	(___ftpack@arg)^080h,f
	movlw	07Fh
	andwf	(___ftpack@arg+1)^080h,f
	movlw	0FFh
	andwf	(___ftpack@arg+2)^080h,f
	
l5469:	
	line	81
	clrc
	rrf	(___ftpack@exp)^080h,f

	line	82
	
l9160:	
	movf	(___ftpack@exp)^080h,w
	movwf	((??___ftpack+0)^080h+0)
	clrf	((??___ftpack+0)^080h+0+1)
	clrf	((??___ftpack+0)^080h+0+2)
	movlw	010h
u4545:
	clrc
	rlf	(??___ftpack+0)^080h+0,f
	rlf	(??___ftpack+0)^080h+1,f
	rlf	(??___ftpack+0)^080h+2,f
u4540:
	addlw	-1
	skipz
	goto	u4545
	movf	0+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg)^080h,f
	movf	1+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg+1)^080h,f
	movf	2+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg+2)^080h,f
	line	83
	
l9162:	
	movf	(___ftpack@sign)^080h,w
	skipz
	goto	u4550
	goto	l5470
u4550:
	line	84
	
l9164:	
	bsf	(___ftpack@arg)^080h+(23/8),(23)&7
	
l5470:	
	line	85
	line	86
	
l5459:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text953,local,class=CODE,delta=2
global __ptext953
__ptext953:

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
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text953
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 1
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l9124:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___wmul@product)^080h
	clrf	(___wmul@product+1)^080h
	goto	l9126
	line	6
	
l5090:	
	line	7
	
l9126:	
	btfss	(___wmul@multiplier)^080h,(0)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l5091
u4410:
	line	8
	
l9128:	
	movf	(___wmul@multiplicand)^080h,w
	addwf	(___wmul@product)^080h,f
	skipnc
	incf	(___wmul@product+1)^080h,f
	movf	(___wmul@multiplicand+1)^080h,w
	addwf	(___wmul@product+1)^080h,f
	
l5091:	
	line	9
	movlw	01h
	
u4425:
	clrc
	rlf	(___wmul@multiplicand)^080h,f
	rlf	(___wmul@multiplicand+1)^080h,f
	addlw	-1
	skipz
	goto	u4425
	line	10
	
l9130:	
	movlw	01h
	
u4435:
	clrc
	rrf	(___wmul@multiplier+1)^080h,f
	rrf	(___wmul@multiplier)^080h,f
	addlw	-1
	skipz
	goto	u4435
	line	11
	movf	((___wmul@multiplier+1)^080h),w
	iorwf	((___wmul@multiplier)^080h),w
	skipz
	goto	u4441
	goto	u4440
u4441:
	goto	l9126
u4440:
	goto	l9132
	
l5092:	
	line	12
	
l9132:	
	movf	(___wmul@product+1)^080h,w
	clrf	(?___wmul+1)^080h
	addwf	(?___wmul+1)^080h
	movf	(___wmul@product)^080h,w
	clrf	(?___wmul)^080h
	addwf	(?___wmul)^080h

	goto	l5093
	
l9134:	
	line	13
	
l5093:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text954,local,class=CODE,delta=2
global __ptext954
__ptext954:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1   16[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1   19[BANK1 ] unsigned char 
;;  product         1   18[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       1       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text954
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 0
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___bmul@multiplier)^080h
	line	4
	
l9110:	
	clrf	(___bmul@product)^080h
	line	6
	
l5084:	
	line	7
	btfss	(___bmul@multiplier)^080h,(0)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l9114
u4390:
	line	8
	
l9112:	
	movf	(___bmul@multiplicand)^080h,w
	movwf	(??___bmul+0)^080h+0
	movf	(??___bmul+0)^080h+0,w
	addwf	(___bmul@product)^080h,f
	goto	l9114
	
l5085:	
	line	9
	
l9114:	
	clrc
	rlf	(___bmul@multiplicand)^080h,f

	line	10
	
l9116:	
	clrc
	rrf	(___bmul@multiplier)^080h,f

	line	11
	
l9118:	
	movf	(___bmul@multiplier)^080h,f
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l5084
u4400:
	goto	l9120
	
l5086:	
	line	12
	
l9120:	
	movf	(___bmul@product)^080h,w
	goto	l5087
	
l9122:	
	line	13
	
l5087:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text955,local,class=CODE,delta=2
global __ptext955
__ptext955:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK1 ] unsigned char 
;;  f2              3    3[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4   14[BANK1 ] unsigned long 
;;  exp1            1   19[BANK1 ] unsigned char 
;;  cntr            1   18[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK1 ] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       8       0       0
;;      Totals:         0       0      20       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text955
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 1
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l9056:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??__div_to_l_+0)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+3
	clrc
	rlf	(??__div_to_l_+0)^080h+2,w
	rlf	(??__div_to_l_+0)^080h+3,w
	movwf	(??__div_to_l_+4)^080h+0
	movf	(??__div_to_l_+4)^080h+0,w
	movwf	(__div_to_l_@exp1)^080h
	movf	((__div_to_l_@exp1)^080h),f
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l9062
u4260:
	line	67
	
l9058:	
	movlw	0
	movwf	(?__div_to_l_+3)^080h
	movlw	0
	movwf	(?__div_to_l_+2)^080h
	movlw	0
	movwf	(?__div_to_l_+1)^080h
	movlw	0
	movwf	(?__div_to_l_)^080h

	goto	l5377
	
l9060:	
	goto	l5377
	
l5376:	
	line	68
	
l9062:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+3
	clrc
	rlf	(??__div_to_l_+0)^080h+2,w
	rlf	(??__div_to_l_+0)^080h+3,w
	movwf	(??__div_to_l_+4)^080h+0
	movf	(??__div_to_l_+4)^080h+0,w
	movwf	(__div_to_l_@cntr)^080h
	movf	((__div_to_l_@cntr)^080h),f
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l9068
u4270:
	line	69
	
l9064:	
	movlw	0
	movwf	(?__div_to_l_+3)^080h
	movlw	0
	movwf	(?__div_to_l_+2)^080h
	movlw	0
	movwf	(?__div_to_l_+1)^080h
	movlw	0
	movwf	(?__div_to_l_)^080h

	goto	l5377
	
l9066:	
	goto	l5377
	
l5378:	
	line	70
	
l9068:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l9070:	
	movlw	0
	movwf	(__div_to_l_@quot+3)^080h
	movlw	0
	movwf	(__div_to_l_@quot+2)^080h
	movlw	0
	movwf	(__div_to_l_@quot+1)^080h
	movlw	0
	movwf	(__div_to_l_@quot)^080h

	line	75
	
l9072:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1)^080h,f
	line	76
	
l9074:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr)^080h,w
	movwf	(??__div_to_l_+0)^080h+0
	movf	0+(??__div_to_l_+0)^080h+0,w
	subwf	(__div_to_l_@exp1)^080h,f
	line	77
	
l9076:	
	movlw	(020h)
	movwf	(??__div_to_l_+0)^080h+0
	movf	(??__div_to_l_+0)^080h+0,w
	movwf	(__div_to_l_@cntr)^080h
	goto	l9078
	line	78
	
l5379:	
	line	79
	
l9078:	
	movlw	01h
	movwf	(??__div_to_l_+0)^080h+0
u4285:
	clrc
	rlf	(__div_to_l_@quot)^080h,f
	rlf	(__div_to_l_@quot+1)^080h,f
	rlf	(__div_to_l_@quot+2)^080h,f
	rlf	(__div_to_l_@quot+3)^080h,f
	decfsz	(??__div_to_l_+0)^080h+0
	goto	u4285
	line	80
	
l9080:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)^080h+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)^080h+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)^080h+0+3
	movf	3+(??__div_to_l_+0)^080h+0,w
	subwf	3+(??__div_to_l_+4)^080h+0,w
	skipz
	goto	u4295
	movf	2+(??__div_to_l_+0)^080h+0,w
	subwf	2+(??__div_to_l_+4)^080h+0,w
	skipz
	goto	u4295
	movf	1+(??__div_to_l_+0)^080h+0,w
	subwf	1+(??__div_to_l_+4)^080h+0,w
	skipz
	goto	u4295
	movf	0+(??__div_to_l_+0)^080h+0,w
	subwf	0+(??__div_to_l_+4)^080h+0,w
u4295:
	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l5380
u4290:
	line	81
	
l9082:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)^080h+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)^080h+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)^080h+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)^080h+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)^080h+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)^080h+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)^080h+0,w
	skipc
	incf	3+(??__div_to_l_+0)^080h+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l9084:	
	bsf	(__div_to_l_@quot)^080h+(0/8),(0)&7
	line	83
	
l5380:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	01h
u4305:
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	decf	fsr0,f
	decf	fsr0,f
	decf	fsr0,f
	addlw	-1
	skipz
	goto	u4305
	line	85
	
l9086:	
	movlw	low(01h)
	subwf	(__div_to_l_@cntr)^080h,f
	btfss	status,2
	goto	u4311
	goto	u4310
u4311:
	goto	l9078
u4310:
	
l5381:	
	line	86
	btfss	(__div_to_l_@exp1)^080h,7
	goto	u4321
	goto	u4320
u4321:
	goto	l9096
u4320:
	line	87
	
l9088:	
	movf	(__div_to_l_@exp1)^080h,w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u4331
	goto	u4330
u4331:
	goto	l9094
u4330:
	line	88
	
l9090:	
	movlw	0
	movwf	(?__div_to_l_+3)^080h
	movlw	0
	movwf	(?__div_to_l_+2)^080h
	movlw	0
	movwf	(?__div_to_l_+1)^080h
	movlw	0
	movwf	(?__div_to_l_)^080h

	goto	l5377
	
l9092:	
	goto	l5377
	
l5383:	
	goto	l9094
	line	89
	
l5384:	
	line	90
	
l9094:	
	movlw	01h
u4345:
	clrc
	rrf	(__div_to_l_@quot+3)^080h,f
	rrf	(__div_to_l_@quot+2)^080h,f
	rrf	(__div_to_l_@quot+1)^080h,f
	rrf	(__div_to_l_@quot)^080h,f
	addlw	-1
	skipz
	goto	u4345

	line	91
	movlw	(01h)
	movwf	(??__div_to_l_+0)^080h+0
	movf	(??__div_to_l_+0)^080h+0,w
	addwf	(__div_to_l_@exp1)^080h,f
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l9094
u4350:
	goto	l9106
	
l5385:	
	line	92
	goto	l9106
	
l5382:	
	line	93
	
l9096:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1)^080h,w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l9104
u4360:
	line	94
	
l9098:	
	movlw	0
	movwf	(?__div_to_l_+3)^080h
	movlw	0
	movwf	(?__div_to_l_+2)^080h
	movlw	0
	movwf	(?__div_to_l_+1)^080h
	movlw	0
	movwf	(?__div_to_l_)^080h

	goto	l5377
	
l9100:	
	goto	l5377
	
l5387:	
	line	95
	goto	l9104
	
l5389:	
	line	96
	
l9102:	
	movlw	01h
	movwf	(??__div_to_l_+0)^080h+0
u4375:
	clrc
	rlf	(__div_to_l_@quot)^080h,f
	rlf	(__div_to_l_@quot+1)^080h,f
	rlf	(__div_to_l_@quot+2)^080h,f
	rlf	(__div_to_l_@quot+3)^080h,f
	decfsz	(??__div_to_l_+0)^080h+0
	goto	u4375
	line	97
	movlw	low(01h)
	subwf	(__div_to_l_@exp1)^080h,f
	goto	l9104
	line	98
	
l5388:	
	line	95
	
l9104:	
	movf	(__div_to_l_@exp1)^080h,f
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l9102
u4380:
	goto	l9106
	
l5390:	
	goto	l9106
	line	99
	
l5386:	
	line	100
	
l9106:	
	movf	(__div_to_l_@quot+3)^080h,w
	movwf	(?__div_to_l_+3)^080h
	movf	(__div_to_l_@quot+2)^080h,w
	movwf	(?__div_to_l_+2)^080h
	movf	(__div_to_l_@quot+1)^080h,w
	movwf	(?__div_to_l_+1)^080h
	movf	(__div_to_l_@quot)^080h,w
	movwf	(?__div_to_l_)^080h

	goto	l5377
	
l9108:	
	line	101
	
l5377:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text956,local,class=CODE,delta=2
global __ptext956
__ptext956:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK1 ] float 
;;  f2              3    3[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  quot            4   10[BANK1 ] unsigned long 
;;  exp1            1   15[BANK1 ] unsigned char 
;;  cntr            1   14[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK1 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text956
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 1
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l9002:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(__tdiv_to_l_@f1)^080h,w
	movwf	((??__tdiv_to_l_+0)^080h+0)
	movf	(__tdiv_to_l_@f1+1)^080h,w
	movwf	((??__tdiv_to_l_+0)^080h+0+1)
	movf	(__tdiv_to_l_@f1+2)^080h,w
	movwf	((??__tdiv_to_l_+0)^080h+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)^080h+1,w
	rlf	(??__tdiv_to_l_+0)^080h+2,w
	movwf	(??__tdiv_to_l_+3)^080h+0
	movf	(??__tdiv_to_l_+3)^080h+0,w
	movwf	(__tdiv_to_l_@exp1)^080h
	movf	((__tdiv_to_l_@exp1)^080h),f
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l9008
u4130:
	line	67
	
l9004:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)^080h
	movlw	0
	movwf	(?__tdiv_to_l_+2)^080h
	movlw	0
	movwf	(?__tdiv_to_l_+1)^080h
	movlw	0
	movwf	(?__tdiv_to_l_)^080h

	goto	l5334
	
l9006:	
	goto	l5334
	
l5333:	
	line	68
	
l9008:	
	movf	(__tdiv_to_l_@f2)^080h,w
	movwf	((??__tdiv_to_l_+0)^080h+0)
	movf	(__tdiv_to_l_@f2+1)^080h,w
	movwf	((??__tdiv_to_l_+0)^080h+0+1)
	movf	(__tdiv_to_l_@f2+2)^080h,w
	movwf	((??__tdiv_to_l_+0)^080h+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)^080h+1,w
	rlf	(??__tdiv_to_l_+0)^080h+2,w
	movwf	(??__tdiv_to_l_+3)^080h+0
	movf	(??__tdiv_to_l_+3)^080h+0,w
	movwf	(__tdiv_to_l_@cntr)^080h
	movf	((__tdiv_to_l_@cntr)^080h),f
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l5335
u4140:
	line	69
	
l9010:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)^080h
	movlw	0
	movwf	(?__tdiv_to_l_+2)^080h
	movlw	0
	movwf	(?__tdiv_to_l_+1)^080h
	movlw	0
	movwf	(?__tdiv_to_l_)^080h

	goto	l5334
	
l9012:	
	goto	l5334
	
l5335:	
	line	70
	bsf	(__tdiv_to_l_@f1)^080h+(15/8),(15)&7
	line	71
	
l9014:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1)^080h,f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1)^080h,f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2)^080h,f
	line	72
	
l9016:	
	bsf	(__tdiv_to_l_@f2)^080h+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2)^080h,f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1)^080h,f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2)^080h,f
	line	74
	movlw	0
	movwf	(__tdiv_to_l_@quot+3)^080h
	movlw	0
	movwf	(__tdiv_to_l_@quot+2)^080h
	movlw	0
	movwf	(__tdiv_to_l_@quot+1)^080h
	movlw	0
	movwf	(__tdiv_to_l_@quot)^080h

	line	75
	
l9018:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1)^080h,f
	line	76
	
l9020:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr)^080h,w
	movwf	(??__tdiv_to_l_+0)^080h+0
	movf	0+(??__tdiv_to_l_+0)^080h+0,w
	subwf	(__tdiv_to_l_@exp1)^080h,f
	line	77
	movlw	(018h)
	movwf	(??__tdiv_to_l_+0)^080h+0
	movf	(??__tdiv_to_l_+0)^080h+0,w
	movwf	(__tdiv_to_l_@cntr)^080h
	goto	l9022
	line	78
	
l5336:	
	line	79
	
l9022:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)^080h+0
u4155:
	clrc
	rlf	(__tdiv_to_l_@quot)^080h,f
	rlf	(__tdiv_to_l_@quot+1)^080h,f
	rlf	(__tdiv_to_l_@quot+2)^080h,f
	rlf	(__tdiv_to_l_@quot+3)^080h,f
	decfsz	(??__tdiv_to_l_+0)^080h+0
	goto	u4155
	line	80
	
l9024:	
	movf	(__tdiv_to_l_@f2+2)^080h,w
	subwf	(__tdiv_to_l_@f1+2)^080h,w
	skipz
	goto	u4165
	movf	(__tdiv_to_l_@f2+1)^080h,w
	subwf	(__tdiv_to_l_@f1+1)^080h,w
	skipz
	goto	u4165
	movf	(__tdiv_to_l_@f2)^080h,w
	subwf	(__tdiv_to_l_@f1)^080h,w
u4165:
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l9030
u4160:
	line	81
	
l9026:	
	movf	(__tdiv_to_l_@f2)^080h,w
	subwf	(__tdiv_to_l_@f1)^080h,f
	movf	(__tdiv_to_l_@f2+1)^080h,w
	skipc
	incfsz	(__tdiv_to_l_@f2+1)^080h,w
	subwf	(__tdiv_to_l_@f1+1)^080h,f
	movf	(__tdiv_to_l_@f2+2)^080h,w
	skipc
	incf	(__tdiv_to_l_@f2+2)^080h,w
	subwf	(__tdiv_to_l_@f1+2)^080h,f
	line	82
	
l9028:	
	bsf	(__tdiv_to_l_@quot)^080h+(0/8),(0)&7
	goto	l9030
	line	83
	
l5337:	
	line	84
	
l9030:	
	movlw	01h
u4175:
	clrc
	rlf	(__tdiv_to_l_@f1)^080h,f
	rlf	(__tdiv_to_l_@f1+1)^080h,f
	rlf	(__tdiv_to_l_@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u4175
	line	85
	
l9032:	
	movlw	low(01h)
	subwf	(__tdiv_to_l_@cntr)^080h,f
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l9022
u4180:
	
l5338:	
	line	86
	btfss	(__tdiv_to_l_@exp1)^080h,7
	goto	u4191
	goto	u4190
u4191:
	goto	l9042
u4190:
	line	87
	
l9034:	
	movf	(__tdiv_to_l_@exp1)^080h,w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u4201
	goto	u4200
u4201:
	goto	l9040
u4200:
	line	88
	
l9036:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)^080h
	movlw	0
	movwf	(?__tdiv_to_l_+2)^080h
	movlw	0
	movwf	(?__tdiv_to_l_+1)^080h
	movlw	0
	movwf	(?__tdiv_to_l_)^080h

	goto	l5334
	
l9038:	
	goto	l5334
	
l5340:	
	goto	l9040
	line	89
	
l5341:	
	line	90
	
l9040:	
	movlw	01h
u4215:
	clrc
	rrf	(__tdiv_to_l_@quot+3)^080h,f
	rrf	(__tdiv_to_l_@quot+2)^080h,f
	rrf	(__tdiv_to_l_@quot+1)^080h,f
	rrf	(__tdiv_to_l_@quot)^080h,f
	addlw	-1
	skipz
	goto	u4215

	line	91
	movlw	(01h)
	movwf	(??__tdiv_to_l_+0)^080h+0
	movf	(??__tdiv_to_l_+0)^080h+0,w
	addwf	(__tdiv_to_l_@exp1)^080h,f
	btfss	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l9040
u4220:
	goto	l9052
	
l5342:	
	line	92
	goto	l9052
	
l5339:	
	line	93
	
l9042:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1)^080h,w
	skipc
	goto	u4231
	goto	u4230
u4231:
	goto	l9050
u4230:
	line	94
	
l9044:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)^080h
	movlw	0
	movwf	(?__tdiv_to_l_+2)^080h
	movlw	0
	movwf	(?__tdiv_to_l_+1)^080h
	movlw	0
	movwf	(?__tdiv_to_l_)^080h

	goto	l5334
	
l9046:	
	goto	l5334
	
l5344:	
	line	95
	goto	l9050
	
l5346:	
	line	96
	
l9048:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)^080h+0
u4245:
	clrc
	rlf	(__tdiv_to_l_@quot)^080h,f
	rlf	(__tdiv_to_l_@quot+1)^080h,f
	rlf	(__tdiv_to_l_@quot+2)^080h,f
	rlf	(__tdiv_to_l_@quot+3)^080h,f
	decfsz	(??__tdiv_to_l_+0)^080h+0
	goto	u4245
	line	97
	movlw	low(01h)
	subwf	(__tdiv_to_l_@exp1)^080h,f
	goto	l9050
	line	98
	
l5345:	
	line	95
	
l9050:	
	movf	(__tdiv_to_l_@exp1)^080h,f
	skipz
	goto	u4251
	goto	u4250
u4251:
	goto	l9048
u4250:
	goto	l9052
	
l5347:	
	goto	l9052
	line	99
	
l5343:	
	line	100
	
l9052:	
	movf	(__tdiv_to_l_@quot+3)^080h,w
	movwf	(?__tdiv_to_l_+3)^080h
	movf	(__tdiv_to_l_@quot+2)^080h,w
	movwf	(?__tdiv_to_l_+2)^080h
	movf	(__tdiv_to_l_@quot+1)^080h,w
	movwf	(?__tdiv_to_l_+1)^080h
	movf	(__tdiv_to_l_@quot)^080h,w
	movwf	(?__tdiv_to_l_)^080h

	goto	l5334
	
l9054:	
	line	101
	
l5334:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text957,local,class=CODE,delta=2
global __ptext957
__ptext957:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK1 ] unsigned char 
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text957
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 1
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(isdigit@c)^080h
	line	14
	
l8990:	
	clrf	(_isdigit$5858)^080h
	
l8992:	
	movlw	(03Ah)
	subwf	(isdigit@c)^080h,w
	skipnc
	goto	u4111
	goto	u4110
u4111:
	goto	l8998
u4110:
	
l8994:	
	movlw	(030h)
	subwf	(isdigit@c)^080h,w
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l8998
u4120:
	
l8996:	
	clrf	(_isdigit$5858)^080h
	bsf	status,0
	rlf	(_isdigit$5858)^080h,f
	goto	l8998
	
l5076:	
	
l8998:	
	rrf	(_isdigit$5858)^080h,w
	
	goto	l5077
	
l9000:	
	line	15
	
l5077:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_Uart_Init
psect	text958,local,class=CODE,delta=2
global __ptext958
__ptext958:

;; *************** function _Uart_Init *****************
;; Defined at:
;;		line 12 in file "E:\MPLAB_IDE\JY62\JY62.c"
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
psect	text958
	file	"E:\MPLAB_IDE\JY62\JY62.c"
	line	12
	global	__size_of_Uart_Init
	__size_of_Uart_Init	equ	__end_of_Uart_Init-_Uart_Init
	
_Uart_Init:	
	opt	stack 3
; Regs used in _Uart_Init: [wreg]
	line	13
	
l8920:	
;JY62.c: 13: TRISC = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	15
;JY62.c: 15: TXSTA=0X24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	16
	
l8922:	
;JY62.c: 16: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	line	17
;JY62.c: 17: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	18
	
l8924:	
;JY62.c: 18: SPEN=1;
	bsf	(199/8),(199)&7
	line	20
;JY62.c: 20: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	21
	
l8926:	
;JY62.c: 21: CREN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	22
	
l8928:	
;JY62.c: 22: GIE=1;PEIE=1;RCIE=1;
	bsf	(95/8),(95)&7
	
l8930:	
	bsf	(94/8),(94)&7
	
l8932:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	23
	
l2868:	
	return
	opt stack 0
GLOBAL	__end_of_Uart_Init
	__end_of_Uart_Init:
;; =============== function _Uart_Init ends ============

	signat	_Uart_Init,88
	global	_Beep_Init
psect	text959,local,class=CODE,delta=2
global __ptext959
__ptext959:

;; *************** function _Beep_Init *****************
;; Defined at:
;;		line 3 in file "E:\MPLAB_IDE\JY62\beep.c"
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
psect	text959
	file	"E:\MPLAB_IDE\JY62\beep.c"
	line	3
	global	__size_of_Beep_Init
	__size_of_Beep_Init	equ	__end_of_Beep_Init-_Beep_Init
	
_Beep_Init:	
	opt	stack 3
; Regs used in _Beep_Init: [status,2]
	line	4
	
l8916:	
;beep.c: 4: TRISE = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	5
	
l8918:	
;beep.c: 5: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	6
	
l4262:	
	return
	opt stack 0
GLOBAL	__end_of_Beep_Init
	__end_of_Beep_Init:
;; =============== function _Beep_Init ends ============

	signat	_Beep_Init,88
	global	_KEY_Init
psect	text960,local,class=CODE,delta=2
global __ptext960
__ptext960:

;; *************** function _KEY_Init *****************
;; Defined at:
;;		line 11 in file "E:\MPLAB_IDE\JY62\KEY.c"
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
psect	text960
	file	"E:\MPLAB_IDE\JY62\KEY.c"
	line	11
	global	__size_of_KEY_Init
	__size_of_KEY_Init	equ	__end_of_KEY_Init-_KEY_Init
	
_KEY_Init:	
	opt	stack 3
; Regs used in _KEY_Init: [wreg]
	line	12
	
l8814:	
;KEY.c: 12: TRISB = 0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	13
	
l8816:	
;KEY.c: 13: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	14
	
l1418:	
	return
	opt stack 0
GLOBAL	__end_of_KEY_Init
	__end_of_KEY_Init:
;; =============== function _KEY_Init ends ============

	signat	_KEY_Init,88
	global	_DELAY
psect	text961,local,class=CODE,delta=2
global __ptext961
__ptext961:

;; *************** function _DELAY *****************
;; Defined at:
;;		line 4 in file "E:\MPLAB_IDE\JY62\LCD.c"
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
;;		_ENABLE
;;		_ENABLE1
;;		_LCD_Init
;;		_LCD_Clear
;;		_LCD_ShowString
;;		_KEY_ShowTest
;; This function uses a non-reentrant model
;;
psect	text961
	file	"E:\MPLAB_IDE\JY62\LCD.c"
	line	4
	global	__size_of_DELAY
	__size_of_DELAY	equ	__end_of_DELAY-_DELAY
	
_DELAY:	
	opt	stack 1
; Regs used in _DELAY: [wreg+status,2+status,0]
	line	6
	
l8802:	
;LCD.c: 5: unsigned int i;
;LCD.c: 6: for (i = 999; i > 0; i--);
	movlw	low(03E7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(DELAY@i)^080h
	movlw	high(03E7h)
	movwf	((DELAY@i)^080h)+1
	
l8804:	
	movf	((DELAY@i+1)^080h),w
	iorwf	((DELAY@i)^080h),w
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l8808
u3940:
	goto	l689
	
l8806:	
	goto	l689
	
l687:	
	
l8808:	
	movlw	low(01h)
	subwf	(DELAY@i)^080h,f
	movlw	high(01h)
	skipc
	decf	(DELAY@i+1)^080h,f
	subwf	(DELAY@i+1)^080h,f
	
l8810:	
	movf	((DELAY@i+1)^080h),w
	iorwf	((DELAY@i)^080h),w
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l8808
u3950:
	goto	l689
	
l688:	
	line	7
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY
	__end_of_DELAY:
;; =============== function _DELAY ends ============

	signat	_DELAY,88
	global	_uart_service
psect	text962,local,class=CODE,delta=2
global __ptext962
__ptext962:

;; *************** function _uart_service *****************
;; Defined at:
;;		line 26 in file "E:\MPLAB_IDE\JY62\JY62.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RxData          1   44[BANK0 ] unsigned char 
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
psect	text962
	file	"E:\MPLAB_IDE\JY62\JY62.c"
	line	26
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
psect	text962
	line	28
	
i1l8934:	
;JY62.c: 28: if (RCIF) {
	btfss	(101/8),(101)&7
	goto	u401_21
	goto	u401_20
u401_21:
	goto	i1l2872
u401_20:
	line	30
	
i1l8936:	
;JY62.c: 30: RE0 = !RE0;
	movlw	1<<((72)&7)
	xorwf	((72)/8),f
	line	34
;JY62.c: 33: uint8_t RxData;
;JY62.c: 34: RxData = RCREG;
	movf	(26),w	;volatile
	movwf	(??_uart_service+0)+0
	movf	(??_uart_service+0)+0,w
	movwf	(uart_service@RxData)
	line	35
	
i1l8938:	
;JY62.c: 35: JY62_ReceiveData(RxData);
	movf	(uart_service@RxData),w
	fcall	_JY62_ReceiveData
	goto	i1l2872
	line	36
	
i1l2871:	
	line	37
	
i1l2872:	
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
psect	text963,local,class=CODE,delta=2
global __ptext963
__ptext963:

;; *************** function _JY62_ReceiveData *****************
;; Defined at:
;;		line 40 in file "E:\MPLAB_IDE\JY62\JY62.c"
;; Parameters:    Size  Location     Type
;;  RxData          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  RxData          1   38[BANK0 ] unsigned char 
;;  i               1   37[BANK0 ] unsigned char 
;;  sum             1   36[BANK0 ] unsigned char 
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
;;		i1___awtoft
;;		___ftdiv
;;		i1___ftmul
;; This function is called by:
;;		_uart_service
;; This function uses a non-reentrant model
;;
psect	text963
	file	"E:\MPLAB_IDE\JY62\JY62.c"
	line	40
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
	line	41
	
i1l8940:	
;JY62.c: 41: uint8_t i,sum=0;
	clrf	(JY62_ReceiveData@sum)
	line	43
	
i1l8942:	
;JY62.c: 43: if (RxState == 0)
	movf	(_RxState),f
	skipz	;volatile
	goto	u402_21
	goto	u402_20
u402_21:
	goto	i1l8952
u402_20:
	line	45
	
i1l8944:	
;JY62.c: 44: {
;JY62.c: 45: if (RxData == 0x55)
	movf	(JY62_ReceiveData@RxData),w
	xorlw	055h
	skipz
	goto	u403_21
	goto	u403_20
u403_21:
	goto	i1l2886
u403_20:
	line	47
	
i1l8946:	
;JY62.c: 46: {
;JY62.c: 47: RxBuffer[RxIndex] = RxData;
	movf	(JY62_ReceiveData@RxData),w
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(_RxIndex),w
	addlw	_RxBuffer&0ffh
	movwf	fsr0
	movf	(??_JY62_ReceiveData+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	48
	
i1l8948:	
;JY62.c: 48: RxState = 1;
	clrf	(_RxState)	;volatile
	bsf	status,0
	rlf	(_RxState),f	;volatile
	line	49
	
i1l8950:	
;JY62.c: 49: RxIndex = 1;
	clrf	(_RxIndex)
	bsf	status,0
	rlf	(_RxIndex),f
	goto	i1l2886
	line	50
	
i1l2876:	
	line	51
;JY62.c: 50: }
;JY62.c: 51: }
	goto	i1l2886
	line	53
	
i1l2875:	
	
i1l8952:	
;JY62.c: 53: else if (RxState == 1)
	movf	(_RxState),w	;volatile
	xorlw	01h
	skipz
	goto	u404_21
	goto	u404_20
u404_21:
	goto	i1l8962
u404_20:
	line	55
	
i1l8954:	
;JY62.c: 54: {
;JY62.c: 55: if (RxData == 0x53)
	movf	(JY62_ReceiveData@RxData),w
	xorlw	053h
	skipz
	goto	u405_21
	goto	u405_20
u405_21:
	goto	i1l2886
u405_20:
	line	57
	
i1l8956:	
;JY62.c: 56: {
;JY62.c: 57: RxBuffer[RxIndex] = RxData;
	movf	(JY62_ReceiveData@RxData),w
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(_RxIndex),w
	addlw	_RxBuffer&0ffh
	movwf	fsr0
	movf	(??_JY62_ReceiveData+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	58
	
i1l8958:	
;JY62.c: 58: RxState = 2;
	movlw	(02h)
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	movwf	(_RxState)	;volatile
	line	59
	
i1l8960:	
;JY62.c: 59: RxIndex = 2;
	movlw	(02h)
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	movwf	(_RxIndex)
	goto	i1l2886
	line	60
	
i1l2879:	
	line	61
;JY62.c: 60: }
;JY62.c: 61: }
	goto	i1l2886
	line	63
	
i1l2878:	
	
i1l8962:	
;JY62.c: 63: else if (RxState == 2)
	movf	(_RxState),w	;volatile
	xorlw	02h
	skipz
	goto	u406_21
	goto	u406_20
u406_21:
	goto	i1l2886
u406_20:
	line	65
	
i1l8964:	
;JY62.c: 64: {
;JY62.c: 65: RxBuffer[RxIndex++] = RxData;
	movf	(JY62_ReceiveData@RxData),w
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(_RxIndex),w
	addlw	_RxBuffer&0ffh
	movwf	fsr0
	movf	(??_JY62_ReceiveData+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l8966:	
	movlw	(01h)
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	addwf	(_RxIndex),f
	line	66
	
i1l8968:	
;JY62.c: 66: if(RxIndex == 11)
	movf	(_RxIndex),w
	xorlw	0Bh
	skipz
	goto	u407_21
	goto	u407_20
u407_21:
	goto	i1l2886
u407_20:
	line	68
	
i1l8970:	
;JY62.c: 67: {
;JY62.c: 68: for(i=0;i<10;i++)
	clrf	(JY62_ReceiveData@i)
	
i1l8972:	
	movlw	(0Ah)
	subwf	(JY62_ReceiveData@i),w
	skipc
	goto	u408_21
	goto	u408_20
u408_21:
	goto	i1l8976
u408_20:
	goto	i1l8982
	
i1l8974:	
	goto	i1l8982
	line	69
	
i1l2883:	
	line	70
	
i1l8976:	
;JY62.c: 69: {
;JY62.c: 70: sum = sum + RxBuffer[i];
	movf	(JY62_ReceiveData@i),w
	addlw	_RxBuffer&0ffh
	movwf	fsr0
	movf	(JY62_ReceiveData@sum),w
	addwf	indf,w
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	movwf	(JY62_ReceiveData@sum)
	line	68
	
i1l8978:	
	movlw	(01h)
	movwf	(??_JY62_ReceiveData+0)+0
	movf	(??_JY62_ReceiveData+0)+0,w
	addwf	(JY62_ReceiveData@i),f
	
i1l8980:	
	movlw	(0Ah)
	subwf	(JY62_ReceiveData@i),w
	skipc
	goto	u409_21
	goto	u409_20
u409_21:
	goto	i1l8976
u409_20:
	goto	i1l8982
	
i1l2884:	
	line	72
	
i1l8982:	
;JY62.c: 71: }
;JY62.c: 72: if(sum == RxBuffer[10])
	movf	0+(_RxBuffer)+0Ah,w
	xorwf	(JY62_ReceiveData@sum),w
	skipz
	goto	u410_21
	goto	u410_20
u410_21:
	goto	i1l8986
u410_20:
	line	75
	
i1l8984:	
;JY62.c: 73: {
;JY62.c: 75: Roll = ((int16_t) ((int16_t) RxBuffer[3] << 8 | (int16_t) RxBuffer[2])) / 32768.0 * 180;
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0x34
	movwf	(?i1___ftmul+1)
	movlw	0x43
	movwf	(?i1___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x47
	movwf	(?___ftdiv+2)
	movf	0+(_RxBuffer)+02h,w
	movwf	(??_JY62_ReceiveData+0)+0
	clrf	(??_JY62_ReceiveData+0)+0+1
	movf	0+(_RxBuffer)+03h,w
	movwf	(??_JY62_ReceiveData+2)+0
	clrf	(??_JY62_ReceiveData+2)+0+1
	movf	(??_JY62_ReceiveData+2)+0,w
	movwf	(??_JY62_ReceiveData+2)+1
	clrf	(??_JY62_ReceiveData+2)+0
	movf	0+(??_JY62_ReceiveData+0)+0,w
	iorwf	0+(??_JY62_ReceiveData+2)+0,w
	movwf	(?i1___awtoft)
	movf	1+(??_JY62_ReceiveData+0)+0,w
	iorwf	1+(??_JY62_ReceiveData+2)+0,w
	movwf	1+(?i1___awtoft)
	fcall	i1___awtoft
	movf	(0+(?i1___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?i1___awtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?i1___awtoft)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?i1___ftmul)+03h
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Roll)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Roll+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Roll+2)^0180h
	line	76
;JY62.c: 76: Pitch = ((int16_t) ((int16_t) RxBuffer[5] << 8 | (int16_t) RxBuffer[4])) / 32768.0 * 180;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul)
	movlw	0x34
	movwf	(?i1___ftmul+1)
	movlw	0x43
	movwf	(?i1___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x47
	movwf	(?___ftdiv+2)
	movf	0+(_RxBuffer)+04h,w
	movwf	(??_JY62_ReceiveData+0)+0
	clrf	(??_JY62_ReceiveData+0)+0+1
	movf	0+(_RxBuffer)+05h,w
	movwf	(??_JY62_ReceiveData+2)+0
	clrf	(??_JY62_ReceiveData+2)+0+1
	movf	(??_JY62_ReceiveData+2)+0,w
	movwf	(??_JY62_ReceiveData+2)+1
	clrf	(??_JY62_ReceiveData+2)+0
	movf	0+(??_JY62_ReceiveData+0)+0,w
	iorwf	0+(??_JY62_ReceiveData+2)+0,w
	movwf	(?i1___awtoft)
	movf	1+(??_JY62_ReceiveData+0)+0,w
	iorwf	1+(??_JY62_ReceiveData+2)+0,w
	movwf	1+(?i1___awtoft)
	fcall	i1___awtoft
	movf	(0+(?i1___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?i1___awtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?i1___awtoft)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?i1___ftmul)+03h
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Pitch)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Pitch+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Pitch+2)^0180h
	line	77
;JY62.c: 77: Yaw = ((int16_t) ((int16_t) RxBuffer[7] << 8 | (int16_t) RxBuffer[6])) / 32768.0 * 180;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul)
	movlw	0x34
	movwf	(?i1___ftmul+1)
	movlw	0x43
	movwf	(?i1___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x47
	movwf	(?___ftdiv+2)
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
	movwf	(?i1___awtoft)
	movf	1+(??_JY62_ReceiveData+0)+0,w
	iorwf	1+(??_JY62_ReceiveData+2)+0,w
	movwf	1+(?i1___awtoft)
	fcall	i1___awtoft
	movf	(0+(?i1___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?i1___awtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?i1___awtoft)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?i1___ftmul)+03h
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Yaw)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Yaw+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?i1___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_Yaw+2)^0180h
	goto	i1l8986
	line	78
	
i1l2885:	
	line	79
	
i1l8986:	
;JY62.c: 78: }
;JY62.c: 79: RxState = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_RxState)	;volatile
	line	80
	
i1l8988:	
;JY62.c: 80: RxIndex = 0;
	clrf	(_RxIndex)
	goto	i1l2886
	line	81
	
i1l2882:	
	goto	i1l2886
	line	82
	
i1l2881:	
	goto	i1l2886
	line	83
	
i1l2880:	
	goto	i1l2886
	
i1l2877:	
	
i1l2886:	
	return
	opt stack 0
GLOBAL	__end_of_JY62_ReceiveData
	__end_of_JY62_ReceiveData:
;; =============== function _JY62_ReceiveData ends ============

	signat	_JY62_ReceiveData,4216
	global	i1___awtoft
psect	text964,local,class=CODE,delta=2
global __ptext964
__ptext964:

;; *************** function i1___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  __awtoft        2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  __awtoft        1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___ftpack
;; This function is called by:
;;		_JY62_ReceiveData
;; This function uses a non-reentrant model
;;
psect	text964
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_ofi1___awtoft
	__size_ofi1___awtoft	equ	__end_ofi1___awtoft-i1___awtoft
	
i1___awtoft:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l9496:	
	clrf	(i1___awtoft@sign)
	line	37
	btfss	(i1___awtoft@c+1),7
	goto	u531_21
	goto	u531_20
u531_21:
	goto	i1l9500
u531_20:
	line	38
	
i1l9498:	
	comf	(i1___awtoft@c),f
	comf	(i1___awtoft@c+1),f
	incf	(i1___awtoft@c),f
	skipnz
	incf	(i1___awtoft@c+1),f
	line	39
	clrf	(i1___awtoft@sign)
	bsf	status,0
	rlf	(i1___awtoft@sign),f
	goto	i1l9500
	line	40
	
i1l5226:	
	line	41
	
i1l9500:	
	movf	(i1___awtoft@c),w
	movwf	(?i1___ftpack)
	movf	(i1___awtoft@c+1),w
	movwf	(?i1___ftpack+1)
	clrf	(?i1___ftpack+2)
	movlw	(08Eh)
	movwf	(??i1___awtoft+0)+0
	movf	(??i1___awtoft+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___awtoft@sign),w
	movwf	(??i1___awtoft+1)+0
	movf	(??i1___awtoft+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	movwf	(?i1___awtoft)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___awtoft+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___awtoft+2)
	goto	i1l5227
	
i1l9502:	
	line	42
	
i1l5227:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awtoft
	__end_ofi1___awtoft:
;; =============== function i1___awtoft ends ============

	signat	i1___awtoft,91
	global	i1___ftmul
psect	text965,local,class=CODE,delta=2
global __ptext965
__ptext965:

;; *************** function i1___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  __ftmul         3   16[BANK0 ] float 
;;  __ftmul         3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  __ftmul         3   27[BANK0 ] unsigned um
;;  __ftmul         1   31[BANK0 ] unsigned char 
;;  __ftmul         1   30[BANK0 ] unsigned char 
;;  __ftmul         1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
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
;;		i1___ftpack
;; This function is called by:
;;		_JY62_ReceiveData
;; This function uses a non-reentrant model
;;
psect	text965
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_ofi1___ftmul
	__size_ofi1___ftmul	equ	__end_ofi1___ftmul-i1___ftmul
	
i1___ftmul:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
i1l9446:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1___ftmul@f1),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f1+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f1+2),w
	movwf	((??i1___ftmul+0)+0+2)
	clrc
	rlf	(??i1___ftmul+0)+1,w
	rlf	(??i1___ftmul+0)+2,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@exp)
	movf	((i1___ftmul@exp)),f
	skipz
	goto	u517_21
	goto	u517_20
u517_21:
	goto	i1l9452
u517_20:
	line	57
	
i1l9448:	
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0x0
	movwf	(?i1___ftmul+1)
	movlw	0x0
	movwf	(?i1___ftmul+2)
	goto	i1l5189
	
i1l9450:	
	goto	i1l5189
	
i1l5188:	
	line	58
	
i1l9452:	
	movf	(i1___ftmul@f2),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f2+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f2+2),w
	movwf	((??i1___ftmul+0)+0+2)
	clrc
	rlf	(??i1___ftmul+0)+1,w
	rlf	(??i1___ftmul+0)+2,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@sign)
	movf	((i1___ftmul@sign)),f
	skipz
	goto	u518_21
	goto	u518_20
u518_21:
	goto	i1l9458
u518_20:
	line	59
	
i1l9454:	
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0x0
	movwf	(?i1___ftmul+1)
	movlw	0x0
	movwf	(?i1___ftmul+2)
	goto	i1l5189
	
i1l9456:	
	goto	i1l5189
	
i1l5190:	
	line	60
	
i1l9458:	
	movf	(i1___ftmul@sign),w
	addlw	07Bh
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	addwf	(i1___ftmul@exp),f
	line	61
	movf	(i1___ftmul@f1),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f1+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f1+2),w
	movwf	((??i1___ftmul+0)+0+2)
	movlw	010h
u519_25:
	clrc
	rrf	(??i1___ftmul+0)+2,f
	rrf	(??i1___ftmul+0)+1,f
	rrf	(??i1___ftmul+0)+0,f
u519_20:
	addlw	-1
	skipz
	goto	u519_25
	movf	0+(??i1___ftmul+0)+0,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@sign)
	line	62
	movf	(i1___ftmul@f2),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f2+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f2+2),w
	movwf	((??i1___ftmul+0)+0+2)
	movlw	010h
u520_25:
	clrc
	rrf	(??i1___ftmul+0)+2,f
	rrf	(??i1___ftmul+0)+1,f
	rrf	(??i1___ftmul+0)+0,f
u520_20:
	addlw	-1
	skipz
	goto	u520_25
	movf	0+(??i1___ftmul+0)+0,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	xorwf	(i1___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	andwf	(i1___ftmul@sign),f
	line	64
	
i1l9460:	
	bsf	(i1___ftmul@f1)+(15/8),(15)&7
	line	66
	
i1l9462:	
	bsf	(i1___ftmul@f2)+(15/8),(15)&7
	line	67
	
i1l9464:	
	movlw	0FFh
	andwf	(i1___ftmul@f2),f
	movlw	0FFh
	andwf	(i1___ftmul@f2+1),f
	movlw	0
	andwf	(i1___ftmul@f2+2),f
	line	68
	
i1l9466:	
	movlw	0
	movwf	(i1___ftmul@f3_as_product)
	movlw	0
	movwf	(i1___ftmul@f3_as_product+1)
	movlw	0
	movwf	(i1___ftmul@f3_as_product+2)
	line	69
	
i1l9468:	
	movlw	(07h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	(i1___ftmul@cntr)
	goto	i1l9470
	line	70
	
i1l5191:	
	line	71
	
i1l9470:	
	btfss	(i1___ftmul@f1),(0)&7
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l9474
u521_20:
	line	72
	
i1l9472:	
	movf	(i1___ftmul@f2),w
	addwf	(i1___ftmul@f3_as_product),f
	movf	(i1___ftmul@f2+1),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+1),w
	skipnz
	goto	u522_21
	addwf	(i1___ftmul@f3_as_product+1),f
u522_21:
	movf	(i1___ftmul@f2+2),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+2),w
	skipnz
	goto	u522_22
	addwf	(i1___ftmul@f3_as_product+2),f
u522_22:

	goto	i1l9474
	
i1l5192:	
	line	73
	
i1l9474:	
	movlw	01h
u523_25:
	clrc
	rrf	(i1___ftmul@f1+2),f
	rrf	(i1___ftmul@f1+1),f
	rrf	(i1___ftmul@f1),f
	addlw	-1
	skipz
	goto	u523_25

	line	74
	
i1l9476:	
	movlw	01h
u524_25:
	clrc
	rlf	(i1___ftmul@f2),f
	rlf	(i1___ftmul@f2+1),f
	rlf	(i1___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u524_25
	line	75
	
i1l9478:	
	movlw	low(01h)
	subwf	(i1___ftmul@cntr),f
	btfss	status,2
	goto	u525_21
	goto	u525_20
u525_21:
	goto	i1l9470
u525_20:
	goto	i1l9480
	
i1l5193:	
	line	76
	
i1l9480:	
	movlw	(09h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	(i1___ftmul@cntr)
	goto	i1l9482
	line	77
	
i1l5194:	
	line	78
	
i1l9482:	
	btfss	(i1___ftmul@f1),(0)&7
	goto	u526_21
	goto	u526_20
u526_21:
	goto	i1l9486
u526_20:
	line	79
	
i1l9484:	
	movf	(i1___ftmul@f2),w
	addwf	(i1___ftmul@f3_as_product),f
	movf	(i1___ftmul@f2+1),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+1),w
	skipnz
	goto	u527_21
	addwf	(i1___ftmul@f3_as_product+1),f
u527_21:
	movf	(i1___ftmul@f2+2),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+2),w
	skipnz
	goto	u527_22
	addwf	(i1___ftmul@f3_as_product+2),f
u527_22:

	goto	i1l9486
	
i1l5195:	
	line	80
	
i1l9486:	
	movlw	01h
u528_25:
	clrc
	rrf	(i1___ftmul@f1+2),f
	rrf	(i1___ftmul@f1+1),f
	rrf	(i1___ftmul@f1),f
	addlw	-1
	skipz
	goto	u528_25

	line	81
	
i1l9488:	
	movlw	01h
u529_25:
	clrc
	rrf	(i1___ftmul@f3_as_product+2),f
	rrf	(i1___ftmul@f3_as_product+1),f
	rrf	(i1___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u529_25

	line	82
	
i1l9490:	
	movlw	low(01h)
	subwf	(i1___ftmul@cntr),f
	btfss	status,2
	goto	u530_21
	goto	u530_20
u530_21:
	goto	i1l9482
u530_20:
	goto	i1l9492
	
i1l5196:	
	line	83
	
i1l9492:	
	movf	(i1___ftmul@f3_as_product),w
	movwf	(?i1___ftpack)
	movf	(i1___ftmul@f3_as_product+1),w
	movwf	(?i1___ftpack+1)
	movf	(i1___ftmul@f3_as_product+2),w
	movwf	(?i1___ftpack+2)
	movf	(i1___ftmul@exp),w
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___ftmul@sign),w
	movwf	(??i1___ftmul+1)+0
	movf	(??i1___ftmul+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___ftmul+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___ftmul+2)
	goto	i1l5189
	
i1l9494:	
	line	84
	
i1l5189:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftmul
	__end_ofi1___ftmul:
;; =============== function i1___ftmul ends ============

	signat	i1___ftmul,91
	global	___ftdiv
psect	text966,local,class=CODE,delta=2
global __ptext966
__ptext966:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   11[BANK0 ] float 
;;  sign            1   15[BANK0 ] unsigned char 
;;  exp             1   14[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
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
;;		i1___ftpack
;; This function is called by:
;;		_JY62_ReceiveData
;; This function uses a non-reentrant model
;;
psect	text966
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l9166:	
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
	goto	u456_21
	goto	u456_20
u456_21:
	goto	i1l9172
u456_20:
	line	56
	
i1l9168:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l5179
	
i1l9170:	
	goto	i1l5179
	
i1l5178:	
	line	57
	
i1l9172:	
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
	goto	u457_21
	goto	u457_20
u457_21:
	goto	i1l9178
u457_20:
	line	58
	
i1l9174:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l5179
	
i1l9176:	
	goto	i1l5179
	
i1l5180:	
	line	59
	
i1l9178:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
i1l9180:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
i1l9182:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u458_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u458_20:
	addlw	-1
	skipz
	goto	u458_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
i1l9184:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u459_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u459_20:
	addlw	-1
	skipz
	goto	u459_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
i1l9186:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
i1l9188:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
i1l9190:	
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
	goto	i1l9192
	line	69
	
i1l5181:	
	line	70
	
i1l9192:	
	movlw	01h
u460_25:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u460_25
	line	71
	
i1l9194:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u461_25
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u461_25
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u461_25:
	skipc
	goto	u461_21
	goto	u461_20
u461_21:
	goto	i1l9200
u461_20:
	line	72
	
i1l9196:	
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
	
i1l9198:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	i1l9200
	line	74
	
i1l5182:	
	line	75
	
i1l9200:	
	movlw	01h
u462_25:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u462_25
	line	76
	
i1l9202:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u463_21
	goto	u463_20
u463_21:
	goto	i1l9192
u463_20:
	goto	i1l9204
	
i1l5183:	
	line	77
	
i1l9204:	
	movf	(___ftdiv@f3),w
	movwf	(?i1___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?i1___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?i1___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?i1___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	i1l5179
	
i1l9206:	
	line	78
	
i1l5179:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	i1___ftpack
psect	text967,local,class=CODE,delta=2
global __ptext967
__ptext967:

;; *************** function i1___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  __ftpack        3    0[COMMON] unsigned um
;;  __ftpack        1    3[COMMON] unsigned char 
;;  __ftpack        1    4[COMMON] unsigned char 
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
;;		i1___ftmul
;;		i1___awtoft
;; This function uses a non-reentrant model
;;
psect	text967
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_ofi1___ftpack
	__size_ofi1___ftpack	equ	__end_ofi1___ftpack-i1___ftpack
	
i1___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l9504:	
	movf	(i1___ftpack@exp),w
	skipz
	goto	u532_20
	goto	i1l9508
u532_20:
	
i1l9506:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u533_21
	goto	u533_20
u533_21:
	goto	i1l9514
u533_20:
	goto	i1l9508
	
i1l5458:	
	line	65
	
i1l9508:	
	movlw	0x0
	movwf	(?i1___ftpack)
	movlw	0x0
	movwf	(?i1___ftpack+1)
	movlw	0x0
	movwf	(?i1___ftpack+2)
	goto	i1l5459
	
i1l9510:	
	goto	i1l5459
	
i1l5456:	
	line	66
	goto	i1l9514
	
i1l5461:	
	line	67
	
i1l9512:	
	movlw	(01h)
	movwf	(??i1___ftpack+0)+0
	movf	(??i1___ftpack+0)+0,w
	addwf	(i1___ftpack@exp),f
	line	68
	movlw	01h
u534_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u534_25

	goto	i1l9514
	line	69
	
i1l5460:	
	line	66
	
i1l9514:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u535_21
	goto	u535_20
u535_21:
	goto	i1l9512
u535_20:
	goto	i1l5463
	
i1l5462:	
	line	70
	goto	i1l5463
	
i1l5464:	
	line	71
	
i1l9516:	
	movlw	(01h)
	movwf	(??i1___ftpack+0)+0
	movf	(??i1___ftpack+0)+0,w
	addwf	(i1___ftpack@exp),f
	line	72
	
i1l9518:	
	movlw	01h
	addwf	(i1___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftpack@arg+2),f
	line	73
	
i1l9520:	
	movlw	01h
u536_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u536_25

	line	74
	
i1l5463:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u537_21
	goto	u537_20
u537_21:
	goto	i1l9516
u537_20:
	goto	i1l9524
	
i1l5465:	
	line	75
	goto	i1l9524
	
i1l5467:	
	line	76
	
i1l9522:	
	movlw	low(01h)
	subwf	(i1___ftpack@exp),f
	line	77
	movlw	01h
u538_25:
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u538_25
	goto	i1l9524
	line	78
	
i1l5466:	
	line	75
	
i1l9524:	
	btfss	(i1___ftpack@arg+1),(15)&7
	goto	u539_21
	goto	u539_20
u539_21:
	goto	i1l9522
u539_20:
	
i1l5468:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u540_21
	goto	u540_20
u540_21:
	goto	i1l5469
u540_20:
	line	80
	
i1l9526:	
	movlw	0FFh
	andwf	(i1___ftpack@arg),f
	movlw	07Fh
	andwf	(i1___ftpack@arg+1),f
	movlw	0FFh
	andwf	(i1___ftpack@arg+2),f
	
i1l5469:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f

	line	82
	
i1l9528:	
	movf	(i1___ftpack@exp),w
	movwf	((??i1___ftpack+0)+0)
	clrf	((??i1___ftpack+0)+0+1)
	clrf	((??i1___ftpack+0)+0+2)
	movlw	010h
u541_25:
	clrc
	rlf	(??i1___ftpack+0)+0,f
	rlf	(??i1___ftpack+0)+1,f
	rlf	(??i1___ftpack+0)+2,f
u541_20:
	addlw	-1
	skipz
	goto	u541_25
	movf	0+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg),f
	movf	1+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+1),f
	movf	2+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+2),f
	line	83
	
i1l9530:	
	movf	(i1___ftpack@sign),w
	skipz
	goto	u542_20
	goto	i1l5470
u542_20:
	line	84
	
i1l9532:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l5470:	
	line	85
	line	86
	
i1l5459:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftpack
	__end_ofi1___ftpack:
;; =============== function i1___ftpack ends ============

	signat	i1___ftpack,91
psect	text968,local,class=CODE,delta=2
global __ptext968
__ptext968:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
