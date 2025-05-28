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
# 2 "E:\MPLAB_IDE\shy_7\RX.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\MPLAB_IDE\shy_7\RX.c"
	dw 0xFF29 ;#
	FNCALL	_main,_DELAY
	FNCALL	_main,_ENABLE
	FNCALL	_main,_ENABLE1
	FNCALL	_ENABLE1,_DELAY
	FNCALL	_ENABLE,_DELAY
	FNROOT	_main
	FNCALL	_usart_seve,_div
	FNCALL	_usart_seve,_DELAY1
	FNCALL	_div,___lmul
	FNCALL	_div,___aldiv
	FNCALL	_div,___wmul
	FNCALL	_div,___awdiv
	FNCALL	intlevel1,_usart_seve
	global	intlevel1
	FNROOT	intlevel1
	global	_table
	global	_table1
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	6

;initializer for _table
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
	line	7

;initializer for _table1
	retlw	041h
	retlw	049h
	retlw	051h
	retlw	059h
	retlw	061h
	retlw	069h
	retlw	0
	retlw	0
	global	_buf
	global	_buf1
	global	_dc
	global	_a2
	global	_a3
	global	_a4
	global	_a5
	global	_a6
	global	_b1
	global	_b2
	global	_b3
	global	_b4
	global	_a
	global	_adh
	global	_adl
	global	_rcreg
	global	_temp
	global	_x
	global	_y
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_y:
       ds      1

	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
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
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RCIF
_RCIF	set	101
	global	_RX9
_RX9	set	198
	global	_RX9D
_RX9D	set	192
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
	global	_TXSTA
_TXSTA	set	152
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TX9D
_TX9D	set	1216
	global	_TXEN
_TXEN	set	1221
	global	_TXIE
_TXIE	set	1124
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
	file	"RX.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_x:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_buf:
       ds      4

_buf1:
       ds      4

_dc:
       ds      4

_a2:
       ds      2

_a3:
       ds      2

_a4:
       ds      2

_a5:
       ds      2

_a6:
       ds      2

_b1:
       ds      2

_b2:
       ds      2

_b3:
       ds      2

_b4:
       ds      2

_a:
       ds      1

_adh:
       ds      1

_adl:
       ds      1

_rcreg:
       ds      1

_temp:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	6
_table:
       ds      16

psect	dataBANK0
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	7
_table1:
       ds      8

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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+023h)
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
	movlw low(__pdataBANK0+24)
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
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_DELAY
??_DELAY:	; 0 bytes @ 0x0
	global	DELAY@i
DELAY@i:	; 2 bytes @ 0x0
	ds	2
	global	??_ENABLE
??_ENABLE:	; 0 bytes @ 0x2
	global	??_ENABLE1
??_ENABLE1:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DELAY
?_DELAY:	; 0 bytes @ 0x0
	global	?_ENABLE
?_ENABLE:	; 0 bytes @ 0x0
	global	?_ENABLE1
?_ENABLE1:	; 0 bytes @ 0x0
	global	?_DELAY1
?_DELAY1:	; 0 bytes @ 0x0
	global	??_DELAY1
??_DELAY1:	; 0 bytes @ 0x0
	global	?_div
?_div:	; 0 bytes @ 0x0
	global	?_usart_seve
?_usart_seve:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	DELAY1@i
DELAY1@i:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x8
	ds	1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	4
	global	??_div
??_div:	; 0 bytes @ 0x6
	ds	2
	global	??_usart_seve
??_usart_seve:	; 0 bytes @ 0x8
	ds	6
;;Data sizes: Strings 0, constant 0, data 24, bss 36, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80     14      74
;; BANK1           80      3       3
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___aldiv	long  size(1) Largest target is 0
;;
;; ?___lmul	unsigned long  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _usart_seve in COMMON
;;
;;   _div->___lmul
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _usart_seve in BANK0
;;
;;   _usart_seve->_div
;;   _div->___aldiv
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_DELAY
;;   _ENABLE1->_DELAY
;;   _ENABLE->_DELAY
;;
;; Critical Paths under _usart_seve in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _usart_seve in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _usart_seve in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     204
;;                                              2 BANK1      1     1      0
;;                              _DELAY
;;                             _ENABLE
;;                            _ENABLE1
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE1                                              0     0      0      68
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE                                               0     0      0      68
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (2) _DELAY                                                2     2      0      68
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _usart_seve                                           6     6      0     830
;;                                              8 BANK0      6     6      0
;;                                _div
;;                             _DELAY1
;; ---------------------------------------------------------------------------------
;; (4) _div                                                  2     2      0     784
;;                                              6 BANK0      2     2      0
;;                             ___lmul
;;                            ___aldiv
;;                             ___wmul
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (5) ___aldiv                                             15     7      8     300
;;                                              0 COMMON     9     1      8
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (5) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (5) ___lmul                                              13     5      8      92
;;                                              0 COMMON    13     5      8
;; ---------------------------------------------------------------------------------
;; (5) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (4) _DELAY1                                               2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DELAY
;;   _ENABLE
;;     _DELAY
;;   _ENABLE1
;;     _DELAY
;;
;; _usart_seve (ROOT)
;;   _div
;;     ___lmul
;;     ___aldiv
;;     ___wmul
;;     ___awdiv
;;   _DELAY1
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      3       3       7        3.8%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      63      12        0.0%
;;ABS                  0      0      5B       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       8       2        0.0%
;;BANK0               50      E      4A       5       92.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 90 in file "E:\MPLAB_IDE\shy_7\RX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  760[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_DELAY
;;		_ENABLE
;;		_ENABLE1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	90
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	91
	
l3483:	
;RX.c: 91: TRISD=0;dc.count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	
l3485:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dc+3)
	movlw	0
	movwf	(_dc+2)
	movlw	0
	movwf	(_dc+1)
	movlw	0
	movwf	(_dc)

	line	92
	
l3487:	
;RX.c: 92: TRISA=0;ADCON1=7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	93
;RX.c: 93: TRISB=0XF0;nRBPU=0;
	movlw	(0F0h)
	movwf	(134)^080h	;volatile
	
l3489:	
	bcf	(1039/8)^080h,(1039)&7
	line	94
	
l3491:	
;RX.c: 94: GIE=RBIE=1;y=PORTB;RBIF=0;PORTB=0;
	bsf	(91/8),(91)&7
	btfsc	(91/8),(91)&7
	goto	u3051
	goto	u3050
	
u3051:
	bsf	(95/8),(95)&7
	goto	u3064
u3050:
	bcf	(95/8),(95)&7
u3064:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_y)
	
l3493:	
	bcf	(88/8),(88)&7
	
l3495:	
	clrf	(6)	;volatile
	line	95
	
l3497:	
;RX.c: 95: DELAY();
	fcall	_DELAY
	line	96
	
l3499:	
;RX.c: 96: PORTD =1;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	97
	
l3501:	
;RX.c: 97: ENABLE();
	fcall	_ENABLE
	line	98
	
l3503:	
;RX.c: 98: PORTD=0x38;
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	99
	
l3505:	
;RX.c: 99: ENABLE();
	fcall	_ENABLE
	line	100
	
l3507:	
;RX.c: 100: PORTD=0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	101
	
l3509:	
;RX.c: 101: ENABLE();
	fcall	_ENABLE
	line	102
	
l3511:	
;RX.c: 102: PORTD=0x06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	103
	
l3513:	
;RX.c: 103: ENABLE();
	fcall	_ENABLE
	line	104
	
l3515:	
;RX.c: 104: TRISC=0xc0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	105
	
l3517:	
;RX.c: 105: SPBRG=38;BRGH=0;
	movlw	(026h)
	movwf	(153)^080h	;volatile
	
l3519:	
	bcf	(1218/8)^080h,(1218)&7
	line	106
	
l3521:	
;RX.c: 106: TXSTA=0;SYNC=0;
	clrf	(152)^080h	;volatile
	
l3523:	
	bcf	(1220/8)^080h,(1220)&7
	line	107
	
l3525:	
;RX.c: 107: RCSTA=0;SPEN=1;CREN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	
l3527:	
	bsf	(199/8),(199)&7
	
l3529:	
	bsf	(196/8),(196)&7
	line	108
	
l3531:	
;RX.c: 108: TXEN=1;RX9=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l3533:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(198/8),(198)&7
	line	109
	
l3535:	
;RX.c: 109: GIE=1;PEIE=1;TXIE=0;RCIE=1;
	bsf	(95/8),(95)&7
	
l3537:	
	bsf	(94/8),(94)&7
	
l3539:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7
	
l3541:	
	bsf	(1125/8)^080h,(1125)&7
	goto	l3543
	line	110
;RX.c: 110: loop:
	
l761:	
	line	111
	
l3543:	
;RX.c: 111: PORTD=0x80; ENABLE();
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3545:	
	fcall	_ENABLE
	line	112
	
l3547:	
;RX.c: 112: PORTD=table[adh]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_adh),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3549:	
	fcall	_ENABLE1
	line	113
	
l3551:	
;RX.c: 113: PORTD=table[adl>>4]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_adl),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movlw	04h
u3075:
	clrc
	rrf	(??_main+0)^080h+0,f
	addlw	-1
	skipz
	goto	u3075
	movf	0+(??_main+0)^080h+0,w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3553:	
	fcall	_ENABLE1
	line	114
	
l3555:	
;RX.c: 114: PORTD=table[adl&0x0f]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_adl),w
	andlw	0Fh
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3557:	
	fcall	_ENABLE1
	line	115
	
l3559:	
;RX.c: 115: PORTD='H'; ENABLE1();
	movlw	(048h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3561:	
	fcall	_ENABLE1
	line	116
	
l3563:	
;RX.c: 116: PORTD=' '; ENABLE1();
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3565:	
	fcall	_ENABLE1
	line	117
	
l3567:	
;RX.c: 117: PORTD=0xc0; ENABLE();
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3569:	
	fcall	_ENABLE
	line	118
	
l3571:	
;RX.c: 118: PORTD=table[a6]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a6),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3573:	
	fcall	_ENABLE1
	line	119
	
l3575:	
;RX.c: 119: PORTD='.'; ENABLE1();
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3577:	
	fcall	_ENABLE1
	line	120
	
l3579:	
;RX.c: 120: PORTD=table[a5]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a5),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3581:	
	fcall	_ENABLE1
	line	121
	
l3583:	
;RX.c: 121: PORTD=table[a4]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a4),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3585:	
	fcall	_ENABLE1
	line	122
	
l3587:	
;RX.c: 122: PORTD=table[a3]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a3),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3589:	
	fcall	_ENABLE1
	line	123
	
l3591:	
;RX.c: 123: PORTD=table[a2]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a2),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3593:	
	fcall	_ENABLE1
	line	124
	
l3595:	
;RX.c: 124: PORTD='V'; ENABLE1();
	movlw	(056h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3597:	
	fcall	_ENABLE1
	line	125
	
l3599:	
;RX.c: 125: PORTD=' '; ENABLE1();
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3601:	
	fcall	_ENABLE1
	line	126
	
l3603:	
;RX.c: 126: PORTD=0xCb; ENABLE();
	movlw	(0CBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3605:	
	fcall	_ENABLE
	line	127
	
l3607:	
;RX.c: 127: {PORTD=table[temp]; ENABLE1();};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3609:	
	fcall	_ENABLE1
	line	128
	
l3611:	
;RX.c: 128: PORTD=' '; ENABLE1();
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3613:	
	fcall	_ENABLE1
	line	129
	
l3615:	
;RX.c: 129: PORTD=0xCf; ENABLE();
	movlw	(0CFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3617:	
	fcall	_ENABLE
	line	130
	
l3619:	
;RX.c: 130: {PORTD=table[a]; ENABLE1();};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3621:	
	fcall	_ENABLE1
	line	131
	
l3623:	
;RX.c: 131: PORTD=' '; ENABLE1();
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3625:	
	fcall	_ENABLE1
	line	132
;RX.c: 132: goto loop;
	goto	l3543
	line	133
	
l762:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_ENABLE1
psect	text351,local,class=CODE,delta=2
global __ptext351
__ptext351:

;; *************** function _ENABLE1 *****************
;; Defined at:
;;		line 21 in file "E:\MPLAB_IDE\shy_7\RX.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text351
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	21
	global	__size_of_ENABLE1
	__size_of_ENABLE1	equ	__end_of_ENABLE1-_ENABLE1
	
_ENABLE1:	
	opt	stack 3
; Regs used in _ENABLE1: [wreg+status,2+status,0+pclath+cstack]
	
l3477:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	
l3479:	
	fcall	_DELAY
	
l3481:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE1
	__end_of_ENABLE1:
;; =============== function _ENABLE1 ends ============

	signat	_ENABLE1,88
	global	_ENABLE
psect	text352,local,class=CODE,delta=2
global __ptext352
__ptext352:

;; *************** function _ENABLE *****************
;; Defined at:
;;		line 18 in file "E:\MPLAB_IDE\shy_7\RX.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text352
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	18
	global	__size_of_ENABLE
	__size_of_ENABLE	equ	__end_of_ENABLE-_ENABLE
	
_ENABLE:	
	opt	stack 3
; Regs used in _ENABLE: [wreg+status,2+status,0+pclath+cstack]
	
l3471:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	
l3473:	
	fcall	_DELAY
	
l3475:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE
	__end_of_ENABLE:
;; =============== function _ENABLE ends ============

	signat	_ENABLE,88
	global	_DELAY
psect	text353,local,class=CODE,delta=2
global __ptext353
__ptext353:

;; *************** function _DELAY *****************
;; Defined at:
;;		line 15 in file "E:\MPLAB_IDE\shy_7\RX.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ENABLE
;;		_ENABLE1
;;		_main
;; This function uses a non-reentrant model
;;
psect	text353
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	15
	global	__size_of_DELAY
	__size_of_DELAY	equ	__end_of_DELAY-_DELAY
	
_DELAY:	
	opt	stack 3
; Regs used in _DELAY: [wreg+status,2+status,0]
	
l3461:	
	movlw	low(03E7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(DELAY@i)^080h
	movlw	high(03E7h)
	movwf	((DELAY@i)^080h)+1
	
l3463:	
	movf	((DELAY@i+1)^080h),w
	iorwf	((DELAY@i)^080h),w
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l3467
u3030:
	goto	l729
	
l3465:	
	goto	l729
	
l727:	
	
l3467:	
	movlw	low(01h)
	subwf	(DELAY@i)^080h,f
	movlw	high(01h)
	skipc
	decf	(DELAY@i+1)^080h,f
	subwf	(DELAY@i+1)^080h,f
	
l3469:	
	movf	((DELAY@i+1)^080h),w
	iorwf	((DELAY@i)^080h),w
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l3467
u3040:
	goto	l729
	
l728:	
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY
	__end_of_DELAY:
;; =============== function _DELAY ends ============

	signat	_DELAY,88
	global	_usart_seve
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:

;; *************** function _usart_seve *****************
;; Defined at:
;;		line 53 in file "E:\MPLAB_IDE\shy_7\RX.c"
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
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_div
;;		_DELAY1
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text354
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	53
	global	__size_of_usart_seve
	__size_of_usart_seve	equ	__end_of_usart_seve-_usart_seve
	
_usart_seve:	
	opt	stack 3
; Regs used in _usart_seve: [wreg+status,2+status,0+pclath+cstack]
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
	movwf	(??_usart_seve+2)
	movf	fsr0,w
	movwf	(??_usart_seve+3)
	movf	pclath,w
	movwf	(??_usart_seve+4)
	movf	btemp+1,w
	movwf	(??_usart_seve+5)
	ljmp	_usart_seve
psect	text354
	line	54
	
i1l3121:	
;RX.c: 54: if (RCIF == 1)
	btfss	(101/8),(101)&7
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l3141
u252_20:
	line	56
	
i1l3123:	
;RX.c: 55: {
;RX.c: 56: if (RX9D == 1)
	btfss	(192/8),(192)&7
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l3127
u253_20:
	line	58
	
i1l3125:	
;RX.c: 57: {
;RX.c: 58: adl = RCREG;
	movf	(26),w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_adl)
	line	59
;RX.c: 59: }
	goto	i1l3129
	line	60
	
i1l747:	
	
i1l3127:	
;RX.c: 60: else rcreg = RCREG;adh = rcreg & 0x0f;temp = rcreg >> 4;
	movf	(26),w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_rcreg)
	goto	i1l3129
	
i1l748:	
	
i1l3129:	
	movf	(_rcreg),w
	andlw	0Fh
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_adh)
	
i1l3131:	
	movf	(_rcreg),w
	movwf	(??_usart_seve+0)+0
	movlw	04h
u254_25:
	clrc
	rrf	(??_usart_seve+0)+0,f
	addlw	-1
	skipz
	goto	u254_25
	movf	0+(??_usart_seve+0)+0,w
	movwf	(??_usart_seve+1)+0
	movf	(??_usart_seve+1)+0,w
	movwf	(_temp)
	line	61
	
i1l3133:	
;RX.c: 61: RCIF = 0;
	bcf	(101/8),(101)&7
	line	62
	
i1l3135:	
;RX.c: 62: dc.data[1] = adh;
	movf	(_adh),w
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	0+(_dc)+01h
	line	63
	
i1l3137:	
;RX.c: 63: dc.data[0] = adl;
	movf	(_adl),w
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_dc)
	line	64
	
i1l3139:	
;RX.c: 64: div();
	fcall	_div
	line	65
;RX.c: 65: }
	goto	i1l758
	line	67
	
i1l746:	
	line	69
	
i1l3141:	
;RX.c: 67: else
;RX.c: 68: {
;RX.c: 69: y = y ^ PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y),w
	xorwf	(6),w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_y)
	line	70
	
i1l3143:	
;RX.c: 70: TRISB = 0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	71
	
i1l3145:	
;RX.c: 71: PORTB = (~y) & 0xf0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(_y),w
	andlw	0F0h
	movwf	(6)	;volatile
	line	72
	
i1l3147:	
;RX.c: 72: DELAY1();
	fcall	_DELAY1
	line	73
	
i1l3149:	
;RX.c: 73: x = PORTB & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w
	andlw	0Fh
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_x)
	line	74
	
i1l3151:	
;RX.c: 74: if(y==0x10 && x==0x0e)a=0;
	movf	(_y),w
	xorlw	010h
	skipz
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l3157
u255_20:
	
i1l3153:	
	movf	(_x),w
	xorlw	0Eh
	skipz
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l3157
u256_20:
	
i1l3155:	
	clrf	(_a)
	goto	i1l3157
	
i1l750:	
	line	75
	
i1l3157:	
;RX.c: 75: if(y==0x10 && x==0x0d)a=4;
	movf	(_y),w
	xorlw	010h
	skipz
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l751
u257_20:
	
i1l3159:	
	movf	(_x),w
	xorlw	0Dh
	skipz
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l751
u258_20:
	
i1l3161:	
	movlw	(04h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l751:	
	line	76
;RX.c: 76: if(y==0x20 && x==0x0e)a=1;
	movf	(_y),w
	xorlw	020h
	skipz
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l3167
u259_20:
	
i1l3163:	
	movf	(_x),w
	xorlw	0Eh
	skipz
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l3167
u260_20:
	
i1l3165:	
	clrf	(_a)
	bsf	status,0
	rlf	(_a),f
	goto	i1l3167
	
i1l752:	
	line	77
	
i1l3167:	
;RX.c: 77: if(y==0x20 && x==0x0d)a=5;
	movf	(_y),w
	xorlw	020h
	skipz
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l753
u261_20:
	
i1l3169:	
	movf	(_x),w
	xorlw	0Dh
	skipz
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l753
u262_20:
	
i1l3171:	
	movlw	(05h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l753:	
	line	78
;RX.c: 78: if(y==0x40 && x==0x0e)a=2;
	movf	(_y),w
	xorlw	040h
	skipz
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l754
u263_20:
	
i1l3173:	
	movf	(_x),w
	xorlw	0Eh
	skipz
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l754
u264_20:
	
i1l3175:	
	movlw	(02h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l754:	
	line	79
;RX.c: 79: if(y==0x40 && x==0x0d)a=6;
	movf	(_y),w
	xorlw	040h
	skipz
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l755
u265_20:
	
i1l3177:	
	movf	(_x),w
	xorlw	0Dh
	skipz
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l755
u266_20:
	
i1l3179:	
	movlw	(06h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l755:	
	line	80
;RX.c: 80: if(y==0x80 && x==0x0e)a=3;
	movf	(_y),w
	xorlw	080h
	skipz
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l756
u267_20:
	
i1l3181:	
	movf	(_x),w
	xorlw	0Eh
	skipz
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l756
u268_20:
	
i1l3183:	
	movlw	(03h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l756:	
	line	81
;RX.c: 81: if(y==0x80 && x==0x0d)a=7;
	movf	(_y),w
	xorlw	080h
	skipz
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l3189
u269_20:
	
i1l3185:	
	movf	(_x),w
	xorlw	0Dh
	skipz
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l3189
u270_20:
	
i1l3187:	
	movlw	(07h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	goto	i1l3189
	
i1l757:	
	line	82
	
i1l3189:	
;RX.c: 82: TX9D=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1216/8)^080h,(1216)&7
	line	83
;RX.c: 83: TXREG=a;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	movwf	(25)	;volatile
	line	84
;RX.c: 84: TRISB=0XF0;PORTB=0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
i1l3191:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	85
	
i1l3193:	
;RX.c: 85: y=PORTB;RBIF=0;
	movf	(6),w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_y)
	
i1l3195:	
	bcf	(88/8),(88)&7
	goto	i1l758
	line	86
	
i1l749:	
	line	87
	
i1l758:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_usart_seve+5),w
	movwf	btemp+1
	movf	(??_usart_seve+4),w
	movwf	pclath
	movf	(??_usart_seve+3),w
	movwf	fsr0
	swapf	(??_usart_seve+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_usart_seve
	__end_of_usart_seve:
;; =============== function _usart_seve ends ============

	signat	_usart_seve,88
	global	_div
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function _div *****************
;; Defined at:
;;		line 41 in file "E:\MPLAB_IDE\shy_7\RX.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lmul
;;		___aldiv
;;		___wmul
;;		___awdiv
;; This function is called by:
;;		_usart_seve
;; This function uses a non-reentrant model
;;
psect	text355
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	41
	global	__size_of_div
	__size_of_div	equ	__end_of_div-_div
	
_div:	
	opt	stack 3
; Regs used in _div: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
i1l3117:	
;RX.c: 42: buf1=(int)dc.count*50000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dc),w
	movwf	(?___lmul)
	movf	(_dc+1),w
	movwf	(?___lmul+1)
	movlw	0
	btfsc	(?___lmul+1),7
	movlw	255
	movwf	(?___lmul+2)
	movwf	(?___lmul+3)
	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	0
	movwf	2+(?___lmul)+04h
	movlw	0C3h
	movwf	1+(?___lmul)+04h
	movlw	050h
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(3+(?___lmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_buf1+3)
	movf	(2+(?___lmul)),w
	movwf	(_buf1+2)
	movf	(1+(?___lmul)),w
	movwf	(_buf1+1)
	movf	(0+(?___lmul)),w
	movwf	(_buf1)

	line	43
;RX.c: 43: buf=buf1/1023;
	movlw	0
	movwf	(?___aldiv+3)
	movlw	0
	movwf	(?___aldiv+2)
	movlw	03h
	movwf	(?___aldiv+1)
	movlw	0FFh
	movwf	(?___aldiv)

	movf	(_buf1+3),w
	movwf	3+(?___aldiv)+04h
	movf	(_buf1+2),w
	movwf	2+(?___aldiv)+04h
	movf	(_buf1+1),w
	movwf	1+(?___aldiv)+04h
	movf	(_buf1),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	(3+(?___aldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_buf+3)
	movf	(2+(?___aldiv)),w
	movwf	(_buf+2)
	movf	(1+(?___aldiv)),w
	movwf	(_buf+1)
	movf	(0+(?___aldiv)),w
	movwf	(_buf)

	line	44
;RX.c: 44: a6=buf/10000;b1=buf-a6*10000;
	movlw	0
	movwf	(?___aldiv+3)
	movlw	0
	movwf	(?___aldiv+2)
	movlw	027h
	movwf	(?___aldiv+1)
	movlw	010h
	movwf	(?___aldiv)

	movf	(_buf+3),w
	movwf	3+(?___aldiv)+04h
	movf	(_buf+2),w
	movwf	2+(?___aldiv)+04h
	movf	(_buf+1),w
	movwf	1+(?___aldiv)+04h
	movf	(_buf),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a6+1)
	addwf	(_a6+1)
	movf	0+(((0+(?___aldiv)))),w
	clrf	(_a6)
	addwf	(_a6)

	movf	(_a6+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_a6),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(02710h)
	movwf	0+(?___wmul)+02h
	movlw	high(02710h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	comf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_div+0)+0
	comf	(1+(?___wmul)),w
	movwf	((??_div+0)+0+1)
	incf	(??_div+0)+0,f
	skipnz
	incf	((??_div+0)+0+1),f
	movf	(_buf),w
	addwf	0+(??_div+0)+0,w
	movwf	(_b1)
	movf	(_buf+1),w
	skipnc
	incf	(_buf+1),w
	addwf	1+(??_div+0)+0,w
	movwf	1+(_b1)
	line	45
;RX.c: 45: a5=b1/1000;b2=b1-a5*1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_b1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a5+1)
	addwf	(_a5+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a5)
	addwf	(_a5)

	movf	(_a5+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_a5),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	comf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_div+0)+0
	comf	(1+(?___wmul)),w
	movwf	((??_div+0)+0+1)
	incf	(??_div+0)+0,f
	skipnz
	incf	((??_div+0)+0+1),f
	movf	(_b1),w
	addwf	0+(??_div+0)+0,w
	movwf	(_b2)
	movf	(_b1+1),w
	skipnc
	incf	(_b1+1),w
	addwf	1+(??_div+0)+0,w
	movwf	1+(_b2)
	line	46
;RX.c: 46: a4=b2/100;b3=b2-a4*100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b2+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b2),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a4+1)
	addwf	(_a4+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a4)
	addwf	(_a4)

	movf	(_a4+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_a4),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	comf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_div+0)+0
	comf	(1+(?___wmul)),w
	movwf	((??_div+0)+0+1)
	incf	(??_div+0)+0,f
	skipnz
	incf	((??_div+0)+0+1),f
	movf	(_b2),w
	addwf	0+(??_div+0)+0,w
	movwf	(_b3)
	movf	(_b2+1),w
	skipnc
	incf	(_b2+1),w
	addwf	1+(??_div+0)+0,w
	movwf	1+(_b3)
	line	47
;RX.c: 47: a3=b3/10;b4=b3-a3*10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_b3+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b3),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a3+1)
	addwf	(_a3+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a3)
	addwf	(_a3)

	movf	(_a3+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_a3),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	comf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_div+0)+0
	comf	(1+(?___wmul)),w
	movwf	((??_div+0)+0+1)
	incf	(??_div+0)+0,f
	skipnz
	incf	((??_div+0)+0+1),f
	movf	(_b3),w
	addwf	0+(??_div+0)+0,w
	movwf	(_b4)
	movf	(_b3+1),w
	skipnc
	incf	(_b3+1),w
	addwf	1+(??_div+0)+0,w
	movwf	1+(_b4)
	line	48
	
i1l3119:	
;RX.c: 48: a2=b4;
	movf	(_b4+1),w
	clrf	(_a2+1)
	addwf	(_a2+1)
	movf	(_b4),w
	clrf	(_a2)
	addwf	(_a2)

	line	50
	
i1l743:	
	return
	opt stack 0
GLOBAL	__end_of_div
	__end_of_div:
;; =============== function _div ends ============

	signat	_div,88
	global	___aldiv
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] long 
;;  dividend        4    4[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK0 ] long 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;; This function uses a non-reentrant model
;;
psect	text356
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 3
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
i1l3263:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l3269
u290_20:
	line	11
	
i1l3265:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	
i1l3267:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	i1l3269
	line	13
	
i1l1640:	
	line	14
	
i1l3269:	
	btfss	(___aldiv@dividend+3),7
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l3275
u291_20:
	line	15
	
i1l3271:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
i1l3273:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	i1l3275
	line	17
	
i1l1641:	
	line	18
	
i1l3275:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
i1l3277:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l3297
u292_20:
	line	20
	
i1l3279:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	i1l3283
	
i1l1644:	
	line	22
	
i1l3281:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u293_25:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u293_25
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	i1l3283
	line	24
	
i1l1643:	
	line	21
	
i1l3283:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l3281
u294_20:
	goto	i1l3285
	
i1l1645:	
	goto	i1l3285
	line	25
	
i1l1646:	
	line	26
	
i1l3285:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u295_25:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u295_25
	line	27
	
i1l3287:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u296_25
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u296_25
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u296_25
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u296_25:
	skipc
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l3293
u296_20:
	line	28
	
i1l3289:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	29
	
i1l3291:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	i1l3293
	line	30
	
i1l1647:	
	line	31
	
i1l3293:	
	movlw	01h
u297_25:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u297_25

	line	32
	
i1l3295:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l3285
u298_20:
	goto	i1l3297
	
i1l1648:	
	goto	i1l3297
	line	33
	
i1l1642:	
	line	34
	
i1l3297:	
	movf	(___aldiv@sign),w
	skipz
	goto	u299_20
	goto	i1l3301
u299_20:
	line	35
	
i1l3299:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	goto	i1l3301
	
i1l1649:	
	line	36
	
i1l3301:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	i1l1650
	
i1l3303:	
	line	37
	
i1l1650:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___awdiv
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;; This function uses a non-reentrant model
;;
psect	text357
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 3
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
i1l3223:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l3227
u280_20:
	line	11
	
i1l3225:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	i1l3227
	line	13
	
i1l1585:	
	line	14
	
i1l3227:	
	btfss	(___awdiv@dividend+1),7
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l3233
u281_20:
	line	15
	
i1l3229:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
i1l3231:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	i1l3233
	line	17
	
i1l1586:	
	line	18
	
i1l3233:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
i1l3235:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l3255
u282_20:
	line	20
	
i1l3237:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	i1l3243
	
i1l1589:	
	line	22
	
i1l3239:	
	movlw	01h
	
u283_25:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u283_25
	line	23
	
i1l3241:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	i1l3243
	line	24
	
i1l1588:	
	line	21
	
i1l3243:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l3239
u284_20:
	goto	i1l3245
	
i1l1590:	
	goto	i1l3245
	line	25
	
i1l1591:	
	line	26
	
i1l3245:	
	movlw	01h
	
u285_25:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u285_25
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u286_25
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u286_25:
	skipc
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l3251
u286_20:
	line	28
	
i1l3247:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
i1l3249:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	i1l3251
	line	30
	
i1l1592:	
	line	31
	
i1l3251:	
	movlw	01h
	
u287_25:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u287_25
	line	32
	
i1l3253:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l3245
u288_20:
	goto	i1l3255
	
i1l1593:	
	goto	i1l3255
	line	33
	
i1l1587:	
	line	34
	
i1l3255:	
	movf	(___awdiv@sign),w
	skipz
	goto	u289_20
	goto	i1l3259
u289_20:
	line	35
	
i1l3257:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	i1l3259
	
i1l1594:	
	line	36
	
i1l3259:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	i1l1595
	
i1l3261:	
	line	37
	
i1l1595:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lmul
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 3
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
i1l3209:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	i1l3211
	line	6
	
i1l1520:	
	line	7
	
i1l3211:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l3215
u275_20:
	line	8
	
i1l3213:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u276_21
	addwf	(___lmul@product+1),f
u276_21:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u276_22
	addwf	(___lmul@product+2),f
u276_22:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u276_23
	addwf	(___lmul@product+3),f
u276_23:

	goto	i1l3215
	
i1l1521:	
	line	9
	
i1l3215:	
	movlw	01h
	movwf	(??___lmul+0)+0
u277_25:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u277_25
	line	10
	
i1l3217:	
	movlw	01h
u278_25:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u278_25

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l3211
u279_20:
	goto	i1l3219
	
i1l1522:	
	line	12
	
i1l3219:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	i1l1523
	
i1l3221:	
	line	13
	
i1l1523:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___wmul
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
i1l3197:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	i1l3199
	line	6
	
i1l1445:	
	line	7
	
i1l3199:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l1446
u271_20:
	line	8
	
i1l3201:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
i1l1446:	
	line	9
	movlw	01h
	
u272_25:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u272_25
	line	10
	
i1l3203:	
	movlw	01h
	
u273_25:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u273_25
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l3199
u274_20:
	goto	i1l3205
	
i1l1447:	
	line	12
	
i1l3205:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	i1l1448
	
i1l3207:	
	line	13
	
i1l1448:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_DELAY1
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _DELAY1 *****************
;; Defined at:
;;		line 24 in file "E:\MPLAB_IDE\shy_7\RX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_usart_seve
;; This function uses a non-reentrant model
;;
psect	text360
	file	"E:\MPLAB_IDE\shy_7\RX.c"
	line	24
	global	__size_of_DELAY1
	__size_of_DELAY1	equ	__end_of_DELAY1-_DELAY1
	
_DELAY1:	
	opt	stack 4
; Regs used in _DELAY1: [wreg+status,2+status,0]
	
i1l3107:	
	movlw	low(063h)
	movwf	(DELAY1@i)
	movlw	high(063h)
	movwf	((DELAY1@i))+1
	
i1l3109:	
	movf	((DELAY1@i+1)),w
	iorwf	((DELAY1@i)),w
	skipz
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l3113
u250_20:
	goto	i1l740
	
i1l3111:	
	goto	i1l740
	
i1l738:	
	
i1l3113:	
	movlw	low(01h)
	subwf	(DELAY1@i),f
	movlw	high(01h)
	skipc
	decf	(DELAY1@i+1),f
	subwf	(DELAY1@i+1),f
	
i1l3115:	
	movf	((DELAY1@i+1)),w
	iorwf	((DELAY1@i)),w
	skipz
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l3113
u251_20:
	goto	i1l740
	
i1l739:	
	
i1l740:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY1
	__end_of_DELAY1:
;; =============== function _DELAY1 ends ============

	signat	_DELAY1,88
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
