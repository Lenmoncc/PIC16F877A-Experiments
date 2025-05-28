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
# 5 "E:\MPLAB_IDE\shy_6\shy_6.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "E:\MPLAB_IDE\shy_6\shy_6.c"
	dw 0XFF29 ;#
	FNCALL	_main,_DELAY
	FNCALL	_main,_ENABLE
	FNCALL	_main,___lmul
	FNCALL	_main,___aldiv
	FNCALL	_main,_div
	FNCALL	_main,_ENABLE1
	FNCALL	_div,___lldiv
	FNCALL	_div,___lmul
	FNCALL	_div,___wmul
	FNCALL	_div,___awdiv
	FNCALL	_div,___bmul
	FNCALL	_ENABLE1,_DELAY
	FNCALL	_ENABLE,_DELAY
	FNROOT	_main
	FNCALL	intlevel1,_tmr2_serve
	global	intlevel1
	FNROOT	intlevel1
	global	_table
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	10

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
	global	_table1
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	12
_table1:
	retlw	0
	retlw	0
	retlw	0
	retlw	0

	retlw	050h
	retlw	0C3h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	0Dh
	retlw	03h
	retlw	0

	retlw	0E0h
	retlw	093h
	retlw	04h
	retlw	0

	retlw	080h
	retlw	01Ah
	retlw	06h
	retlw	0

	retlw	020h
	retlw	0A1h
	retlw	07h
	retlw	0

	global	_table1
	global	_buf
	global	_x1
	global	_y
	global	_b
	global	_c
	global	_d
	global	_f
	global	_x
	global	_flag
	global	_ad_data
	global	_a
	global	_t
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_ADIF
_ADIF	set	102
	global	_CARRY
_CARRY	set	24
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
	global	_TMR2IF
_TMR2IF	set	97
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISD
_TRISD	set	136
	global	_TMR2IE
_TMR2IE	set	1121
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
	file	"shy_6.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_flag:
       ds      1

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

_x1:
       ds      4

_y:
       ds      2

_b:
       ds      1

_c:
       ds      1

_d:
       ds      1

_f:
       ds      1

_ad_data:
       ds      2

_a:
       ds      1

_t:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	10
_table:
       ds      16

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

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+012h)
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
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DELAY
?_DELAY:	; 0 bytes @ 0x0
	global	?_ENABLE
?_ENABLE:	; 0 bytes @ 0x0
	global	?_ENABLE1
?_ENABLE1:	; 0 bytes @ 0x0
	global	?_div
?_div:	; 0 bytes @ 0x0
	global	?_tmr2_serve
?_tmr2_serve:	; 0 bytes @ 0x0
	global	??_tmr2_serve
??_tmr2_serve:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	5
	global	??_DELAY
??_DELAY:	; 0 bytes @ 0x5
	global	??___wmul
??___wmul:	; 0 bytes @ 0x5
	global	??___lmul
??___lmul:	; 0 bytes @ 0x5
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x5
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x5
	global	?___bmul
?___bmul:	; 1 bytes @ 0x5
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x5
	global	DELAY@i
DELAY@i:	; 2 bytes @ 0x5
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x5
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x6
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x6
	ds	1
	global	??_ENABLE
??_ENABLE:	; 0 bytes @ 0x7
	global	??_ENABLE1
??_ENABLE1:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x1
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x8
	ds	4
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0xC
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xC
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0xC
	ds	1
	global	??_div
??_div:	; 0 bytes @ 0xD
	ds	3
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x10
	ds	4
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x14
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x15
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x16
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x1A
	ds	1
;;Data sizes: Strings 0, constant 28, data 16, bss 19, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       9
;; BANK0           80     27      61
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___aldiv	long  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DELAY
;;   _main->___aldiv
;;   _div->___wmul
;;   _div->___bmul
;;   _ENABLE1->_DELAY
;;   _ENABLE->_DELAY
;;   ___aldiv->___lmul
;;
;; Critical Paths under _tmr2_serve in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___aldiv
;;   _div->___lldiv
;;   ___aldiv->___lmul
;;
;; Critical Paths under _tmr2_serve in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _tmr2_serve in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _tmr2_serve in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _tmr2_serve in BANK2
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
;; (0) _main                                                 1     1      0    1501
;;                                             26 BANK0      1     1      0
;;                              _DELAY
;;                             _ENABLE
;;                             ___lmul
;;                            ___aldiv
;;                                _div
;;                            _ENABLE1
;; ---------------------------------------------------------------------------------
;; (1) _div                                                 12    12      0     971
;;                                             13 BANK0     12    12      0
;;                            ___lldiv
;;                             ___lmul
;;                             ___wmul
;;                            ___awdiv
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE1                                              0     0      0      46
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE                                               0     0      0      46
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) ___aldiv                                             15     7      8     300
;;                                              6 COMMON     1     1      0
;;                                             12 BANK0     14     6      8
;;                             ___lmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             14     6      8     162
;;                                              5 COMMON     1     1      0
;;                                              0 BANK0     13     5      8
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     445
;;                                              5 COMMON     1     1      0
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___lmul                                              13     5      8      92
;;                                              5 COMMON     1     1      0
;;                                              0 BANK0     12     4      8
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4     136
;;                                              5 COMMON     2     2      0
;;                                              0 BANK0      4     0      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               4     3      1     136
;;                                              5 COMMON     2     1      1
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _DELAY                                                2     2      0      46
;;                                              5 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _tmr2_serve                                           5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DELAY
;;   _ENABLE
;;     _DELAY
;;   ___lmul
;;   ___aldiv
;;     ___lmul (ARG)
;;   _div
;;     ___lldiv
;;     ___lmul
;;     ___wmul
;;     ___awdiv
;;     ___bmul
;;   _ENABLE1
;;     _DELAY
;;
;; _tmr2_serve (ROOT)
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
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      48      12        0.0%
;;ABS                  0      0      46       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     1B      3D       5       76.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      7       9       1       64.3%
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 67 in file "E:\MPLAB_IDE\shy_6\shy_6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  731[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DELAY
;;		_ENABLE
;;		___lmul
;;		___aldiv
;;		_div
;;		_ENABLE1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	67
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	68
	
l3356:	
;shy_6.c: 68: ADCON0 = 0B01000001;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	69
;shy_6.c: 69: ADCON1 = 0B10001110;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	70
;shy_6.c: 70: TRISA = 0B00000001;
	movlw	(01h)
	movwf	(133)^080h	;volatile
	line	71
	
l3358:	
;shy_6.c: 71: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	73
	
l3360:	
;shy_6.c: 73: DELAY();
	fcall	_DELAY
	line	74
	
l3362:	
;shy_6.c: 74: PORTD = 1; ENABLE();
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3364:	
	fcall	_ENABLE
	line	75
	
l3366:	
;shy_6.c: 75: PORTD = 0x38; ENABLE();
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3368:	
	fcall	_ENABLE
	line	76
	
l3370:	
;shy_6.c: 76: PORTD = 0x0c; ENABLE();
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3372:	
	fcall	_ENABLE
	line	77
	
l3374:	
;shy_6.c: 77: PORTD = 0x06; ENABLE();
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3376:	
	fcall	_ENABLE
	line	79
	
l3378:	
;shy_6.c: 79: GIE = 1; PEIE = 1; TMR2IE = 1; TMR2IF = 0; ADIF = 0;
	bsf	(95/8),(95)&7
	
l3380:	
	bsf	(94/8),(94)&7
	
l3382:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7
	
l3384:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7
	
l3386:	
	bcf	(102/8),(102)&7
	line	83
	
l3388:	
;shy_6.c: 83: T2CON = 0B01111111;
	movlw	(07Fh)
	movwf	(18)	;volatile
	line	84
	
l3390:	
;shy_6.c: 84: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	goto	l3392
	line	85
;shy_6.c: 85: while(1)
	
l732:	
	line	86
	
l3392:	
;shy_6.c: 86: { buf = 500000*ad_data.count/0x3ff;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+3)
	movlw	0
	movwf	(?___aldiv+2)
	movlw	03h
	movwf	(?___aldiv+1)
	movlw	0FFh
	movwf	(?___aldiv)

	movf	(_ad_data),w
	movwf	(?___lmul)
	movf	(_ad_data+1),w
	movwf	((?___lmul))+1
	clrf	2+((?___lmul))
	clrf	3+((?___lmul))
	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	07h
	movwf	2+(?___lmul)+04h
	movlw	0A1h
	movwf	1+(?___lmul)+04h
	movlw	020h
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lmul)),w
	movwf	3+(?___aldiv)+04h
	movf	(2+(?___lmul)),w
	movwf	2+(?___aldiv)+04h
	movf	(1+(?___lmul)),w
	movwf	1+(?___aldiv)+04h
	movf	(0+(?___lmul)),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___aldiv)),w
	movwf	(_buf+3)
	movf	(2+(?___aldiv)),w
	movwf	(_buf+2)
	movf	(1+(?___aldiv)),w
	movwf	(_buf+1)
	movf	(0+(?___aldiv)),w
	movwf	(_buf)

	line	88
	
l3394:	
;shy_6.c: 88: div();
	fcall	_div
	line	89
	
l3396:	
;shy_6.c: 89: PORTD = 0x80; ENABLE();
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3398:	
	fcall	_ENABLE
	line	90
	
l3400:	
;shy_6.c: 90: PORTD = table[a]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3402:	
	fcall	_ENABLE1
	line	91
	
l3404:	
;shy_6.c: 91: PORTD = '.'; ENABLE1();
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3406:	
	fcall	_ENABLE1
	line	92
	
l3408:	
;shy_6.c: 92: PORTD = table[b]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3410:	
	fcall	_ENABLE1
	line	93
	
l3412:	
;shy_6.c: 93: PORTD = table[c]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3414:	
	fcall	_ENABLE1
	line	94
	
l3416:	
;shy_6.c: 94: PORTD = table[d]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3418:	
	fcall	_ENABLE1
	line	95
	
l3420:	
;shy_6.c: 95: PORTD = table[t]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_t),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3422:	
	fcall	_ENABLE1
	line	96
	
l3424:	
;shy_6.c: 96: PORTD = table[f]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3426:	
	fcall	_ENABLE1
	line	97
	
l3428:	
;shy_6.c: 97: PORTD = 'V'; ENABLE1();
	movlw	(056h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3430:	
	fcall	_ENABLE1
	line	98
	
l3432:	
;shy_6.c: 98: PORTD = 0xc0; ENABLE();
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3434:	
	fcall	_ENABLE
	line	99
	
l3436:	
;shy_6.c: 99: PORTD = table[ad_data.data[1]]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_ad_data)+01h,w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3438:	
	fcall	_ENABLE1
	line	100
	
l3440:	
;shy_6.c: 100: PORTD = table[ad_data.data[0]>>4]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ad_data),w
	movwf	(??_main+0)+0
	movlw	04h
u2875:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u2875
	movf	0+(??_main+0)+0,w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3442:	
	fcall	_ENABLE1
	line	101
	
l3444:	
;shy_6.c: 101: PORTD = table[ad_data.data[0]&0x0f]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ad_data),w
	andlw	0Fh
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3446:	
	fcall	_ENABLE1
	line	102
	
l3448:	
;shy_6.c: 102: PORTD = 'H'; ENABLE1();
	movlw	(048h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3450:	
	fcall	_ENABLE1
	goto	l3392
	line	107
	
l733:	
	line	85
	goto	l3392
	
l734:	
	line	108
	
l735:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_div
psect	text406,local,class=CODE,delta=2
global __ptext406
__ptext406:

;; *************** function _div *****************
;; Defined at:
;;		line 32 in file "E:\MPLAB_IDE\shy_6\shy_6.c"
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
;;      Temps:          0      12       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lldiv
;;		___lmul
;;		___wmul
;;		___awdiv
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text406
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	32
	global	__size_of_div
	__size_of_div	equ	__end_of_div-_div
	
_div:	
	opt	stack 5
; Regs used in _div: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l3354:	
;shy_6.c: 33: a = buf/100000;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lldiv+3)
	movlw	01h
	movwf	(?___lldiv+2)
	movlw	086h
	movwf	(?___lldiv+1)
	movlw	0A0h
	movwf	(?___lldiv)

	movf	(_buf+3),w
	movwf	3+(?___lldiv)+04h
	movf	(_buf+2),w
	movwf	2+(?___lldiv)+04h
	movf	(_buf+1),w
	movwf	1+(?___lldiv)+04h
	movf	(_buf),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___lldiv)))),w
	movwf	(??_div+0)+0
	movf	(??_div+0)+0,w
	movwf	(_a)
	line	34
;shy_6.c: 34: x1 = buf-a*100000;
	movf	(_buf),w
	movwf	(??_div+0)+0
	movf	(_buf+1),w
	movwf	((??_div+0)+0+1)
	movf	(_buf+2),w
	movwf	((??_div+0)+0+2)
	movf	(_buf+3),w
	movwf	((??_div+0)+0+3)
	movf	(_a),w
	movwf	(??_div+4)+0
	clrf	((??_div+4)+0+1)
	clrf	((??_div+4)+0+2)
	clrf	((??_div+4)+0+3)
	movf	3+(??_div+4)+0,w
	movwf	(?___lmul+3)
	movf	2+(??_div+4)+0,w
	movwf	(?___lmul+2)
	movf	1+(??_div+4)+0,w
	movwf	(?___lmul+1)
	movf	0+(??_div+4)+0,w
	movwf	(?___lmul)

	movlw	0
	movwf	3+(?___lmul)+04h
	movlw	01h
	movwf	2+(?___lmul)+04h
	movlw	086h
	movwf	1+(?___lmul)+04h
	movlw	0A0h
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(0+(?___lmul)),w
	movwf	(??_div+8)+0
	comf	(1+(?___lmul)),w
	movwf	((??_div+8)+0+1)
	comf	(2+(?___lmul)),w
	movwf	((??_div+8)+0+2)
	comf	(3+(?___lmul)),w
	movwf	((??_div+8)+0+3)
	incf	(??_div+8)+0,f
	skipnz
	incf	((??_div+8)+0+1),f
	skipnz
	incf	((??_div+8)+0+2),f
	skipnz
	incf	((??_div+8)+0+3),f
	movf	0+(??_div+8)+0,w
	addwf	(??_div+0)+0,f
	movf	1+(??_div+8)+0,w
	skipnc
	incfsz	1+(??_div+8)+0,w
	goto	u2860
	goto	u2861
u2860:
	addwf	(??_div+0)+1,f
u2861:
	movf	2+(??_div+8)+0,w
	skipnc
	incfsz	2+(??_div+8)+0,w
	goto	u2862
	goto	u2863
u2862:
	addwf	(??_div+0)+2,f
u2863:
	movf	3+(??_div+8)+0,w
	skipnc
	incf	3+(??_div+8)+0,w
	addwf	(??_div+0)+3,f
	movf	3+(??_div+0)+0,w
	movwf	(_x1+3)
	movf	2+(??_div+0)+0,w
	movwf	(_x1+2)
	movf	1+(??_div+0)+0,w
	movwf	(_x1+1)
	movf	0+(??_div+0)+0,w
	movwf	(_x1)

	line	35
;shy_6.c: 35: b = x1/10000; y = x1-b*10000;
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	027h
	movwf	(?___lldiv+1)
	movlw	010h
	movwf	(?___lldiv)

	movf	(_x1+3),w
	movwf	3+(?___lldiv)+04h
	movf	(_x1+2),w
	movwf	2+(?___lldiv)+04h
	movf	(_x1+1),w
	movwf	1+(?___lldiv)+04h
	movf	(_x1),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___lldiv)))),w
	movwf	(??_div+0)+0
	movf	(??_div+0)+0,w
	movwf	(_b)
	movf	(_b),w
	movwf	(??_div+0)+0
	clrf	(??_div+0)+0+1
	movf	0+(??_div+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_div+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(02710h)
	movwf	0+(?___wmul)+02h
	movlw	high(02710h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(0+(?___wmul)),w
	movwf	(??_div+2)+0
	comf	(1+(?___wmul)),w
	movwf	((??_div+2)+0+1)
	incf	(??_div+2)+0,f
	skipnz
	incf	((??_div+2)+0+1),f
	movf	(_x1),w
	addwf	0+(??_div+2)+0,w
	movwf	(_y)
	movf	(_x1+1),w
	skipnc
	incf	(_x1+1),w
	addwf	1+(??_div+2)+0,w
	movwf	1+(_y)
	line	36
;shy_6.c: 36: c = y/1000; x1 = y-c*1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_y+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_y),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_div+0)+0
	movf	(??_div+0)+0,w
	movwf	(_c)
	movf	(_c),w
	movwf	(??_div+0)+0
	clrf	(??_div+0)+0+1
	movf	0+(??_div+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_div+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(0+(?___wmul)),w
	movwf	(??_div+2)+0
	comf	(1+(?___wmul)),w
	movwf	((??_div+2)+0+1)
	incf	(??_div+2)+0,f
	skipnz
	incf	((??_div+2)+0+1),f
	movf	(_y),w
	addwf	0+(??_div+2)+0,w
	movwf	(_x1)
	movf	(_y+1),w
	skipnc
	incf	(_y+1),w
	addwf	1+(??_div+2)+0,w
	movwf	1+(_x1)
	clrf	(_x1)+2
	btfsc	(_x1)+1,7
	decf	2+(_x1),f
	movf	(_x1)+2,w
	movwf	3+(_x1)
	line	37
;shy_6.c: 37: d = x1/100; y = x1-d*100;
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	0
	movwf	(?___lldiv+1)
	movlw	064h
	movwf	(?___lldiv)

	movf	(_x1+3),w
	movwf	3+(?___lldiv)+04h
	movf	(_x1+2),w
	movwf	2+(?___lldiv)+04h
	movf	(_x1+1),w
	movwf	1+(?___lldiv)+04h
	movf	(_x1),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___lldiv)))),w
	movwf	(??_div+0)+0
	movf	(??_div+0)+0,w
	movwf	(_d)
	movf	(_d),w
	movwf	(??_div+0)+0
	clrf	(??_div+0)+0+1
	movf	0+(??_div+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_div+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(0+(?___wmul)),w
	movwf	(??_div+2)+0
	comf	(1+(?___wmul)),w
	movwf	((??_div+2)+0+1)
	incf	(??_div+2)+0,f
	skipnz
	incf	((??_div+2)+0+1),f
	movf	(_x1),w
	addwf	0+(??_div+2)+0,w
	movwf	(_y)
	movf	(_x1+1),w
	skipnc
	incf	(_x1+1),w
	addwf	1+(??_div+2)+0,w
	movwf	1+(_y)
	line	38
;shy_6.c: 38: t = y/10; f = y-t*10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_y+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_y),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_div+0)+0
	movf	(??_div+0)+0,w
	movwf	(_t)
	movlw	(0Ah)
	movwf	(??_div+0)+0
	movf	(??_div+0)+0,w
	movwf	(?___bmul)
	movf	(_t),w
	fcall	___bmul
	xorlw	0ffh
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_y),w
	movwf	(??_div+1)+0
	movf	(??_div+1)+0,w
	movwf	(_f)
	line	39
	
l724:	
	return
	opt stack 0
GLOBAL	__end_of_div
	__end_of_div:
;; =============== function _div ends ============

	signat	_div,88
	global	_ENABLE1
psect	text407,local,class=CODE,delta=2
global __ptext407
__ptext407:

;; *************** function _ENABLE1 *****************
;; Defined at:
;;		line 28 in file "E:\MPLAB_IDE\shy_6\shy_6.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text407
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	28
	global	__size_of_ENABLE1
	__size_of_ENABLE1	equ	__end_of_ENABLE1-_ENABLE1
	
_ENABLE1:	
	opt	stack 5
; Regs used in _ENABLE1: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l3160:	
;shy_6.c: 29: RA5=1;RA4=0;RA3=0;DELAY();RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	
l3162:	
	fcall	_DELAY
	
l3164:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	30
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE1
	__end_of_ENABLE1:
;; =============== function _ENABLE1 ends ============

	signat	_ENABLE1,88
	global	_ENABLE
psect	text408,local,class=CODE,delta=2
global __ptext408
__ptext408:

;; *************** function _ENABLE *****************
;; Defined at:
;;		line 24 in file "E:\MPLAB_IDE\shy_6\shy_6.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text408
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	24
	global	__size_of_ENABLE
	__size_of_ENABLE	equ	__end_of_ENABLE-_ENABLE
	
_ENABLE:	
	opt	stack 5
; Regs used in _ENABLE: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l3154:	
;shy_6.c: 25: RA5=0;RA4=0;RA3=0;DELAY();RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	
l3156:	
	fcall	_DELAY
	
l3158:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	26
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE
	__end_of_ENABLE:
;; =============== function _ENABLE ends ============

	signat	_ENABLE,88
	global	___aldiv
psect	text409,local,class=CODE,delta=2
global __ptext409
__ptext409:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   12[BANK0 ] long 
;;  dividend        4   16[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   22[BANK0 ] long 
;;  sign            1   21[BANK0 ] unsigned char 
;;  counter         1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      14       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text409
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l3112:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u2581
	goto	u2580
u2581:
	goto	l3118
u2580:
	line	11
	
l3114:	
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
	
l3116:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l3118
	line	13
	
l1613:	
	line	14
	
l3118:	
	btfss	(___aldiv@dividend+3),7
	goto	u2591
	goto	u2590
u2591:
	goto	l3124
u2590:
	line	15
	
l3120:	
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
	
l3122:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l3124
	line	17
	
l1614:	
	line	18
	
l3124:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l3126:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2601
	goto	u2600
u2601:
	goto	l3146
u2600:
	line	20
	
l3128:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l3132
	
l1617:	
	line	22
	
l3130:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2615:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2615
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l3132
	line	24
	
l1616:	
	line	21
	
l3132:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l3130
u2620:
	goto	l3134
	
l1618:	
	goto	l3134
	line	25
	
l1619:	
	line	26
	
l3134:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2635:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2635
	line	27
	
l3136:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2645
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2645
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2645
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2645:
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l3142
u2640:
	line	28
	
l3138:	
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
	
l3140:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l3142
	line	30
	
l1620:	
	line	31
	
l3142:	
	movlw	01h
u2655:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2655

	line	32
	
l3144:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l3134
u2660:
	goto	l3146
	
l1621:	
	goto	l3146
	line	33
	
l1615:	
	line	34
	
l3146:	
	movf	(___aldiv@sign),w
	skipz
	goto	u2670
	goto	l3150
u2670:
	line	35
	
l3148:	
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
	goto	l3150
	
l1622:	
	line	36
	
l3150:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l1623
	
l3152:	
	line	37
	
l1623:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___lldiv
psect	text410,local,class=CODE,delta=2
global __ptext410
__ptext410:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    8[BANK0 ] unsigned long 
;;  counter         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      13       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;; This function uses a non-reentrant model
;;
psect	text410
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l3088:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2511
	goto	u2510
u2511:
	goto	l3108
u2510:
	line	11
	
l3090:	
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	line	12
	goto	l3094
	
l1592:	
	line	13
	
l3092:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u2525:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u2525
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l3094
	line	15
	
l1591:	
	line	12
	
l3094:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l3092
u2530:
	goto	l3096
	
l1593:	
	goto	l3096
	line	16
	
l1594:	
	line	17
	
l3096:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u2545:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u2545
	line	18
	
l3098:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2555
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2555
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2555
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2555:
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l3104
u2550:
	line	19
	
l3100:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l3102:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l3104
	line	21
	
l1595:	
	line	22
	
l3104:	
	movlw	01h
u2565:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u2565

	line	23
	
l3106:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l3096
u2570:
	goto	l3108
	
l1596:	
	goto	l3108
	line	24
	
l1590:	
	line	25
	
l3108:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l1597
	
l3110:	
	line	26
	
l1597:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___awdiv
psect	text411,local,class=CODE,delta=2
global __ptext411
__ptext411:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       8       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;; This function uses a non-reentrant model
;;
psect	text411
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3314:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2761
	goto	u2760
u2761:
	goto	l3318
u2760:
	line	11
	
l3316:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3318
	line	13
	
l1558:	
	line	14
	
l3318:	
	btfss	(___awdiv@dividend+1),7
	goto	u2771
	goto	u2770
u2771:
	goto	l3324
u2770:
	line	15
	
l3320:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3322:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3324
	line	17
	
l1559:	
	line	18
	
l3324:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3326:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2781
	goto	u2780
u2781:
	goto	l3346
u2780:
	line	20
	
l3328:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3334
	
l1562:	
	line	22
	
l3330:	
	movlw	01h
	
u2795:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2795
	line	23
	
l3332:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3334
	line	24
	
l1561:	
	line	21
	
l3334:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l3330
u2800:
	goto	l3336
	
l1563:	
	goto	l3336
	line	25
	
l1564:	
	line	26
	
l3336:	
	movlw	01h
	
u2815:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2815
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2825
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2825:
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l3342
u2820:
	line	28
	
l3338:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3340:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3342
	line	30
	
l1565:	
	line	31
	
l3342:	
	movlw	01h
	
u2835:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2835
	line	32
	
l3344:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l3336
u2840:
	goto	l3346
	
l1566:	
	goto	l3346
	line	33
	
l1560:	
	line	34
	
l3346:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2850
	goto	l3350
u2850:
	line	35
	
l3348:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3350
	
l1567:	
	line	36
	
l3350:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1568
	
l3352:	
	line	37
	
l1568:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lmul
psect	text412,local,class=CODE,delta=2
global __ptext412
__ptext412:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[BANK0 ] unsigned long 
;;  multiplicand    4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      12       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;;		_main
;; This function uses a non-reentrant model
;;
psect	text412
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 5
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l3034:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	l3036
	line	6
	
l1493:	
	line	7
	
l3036:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l3040
u2360:
	line	8
	
l3038:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2371
	addwf	(___lmul@product+1),f
u2371:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2372
	addwf	(___lmul@product+2),f
u2372:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2373
	addwf	(___lmul@product+3),f
u2373:

	goto	l3040
	
l1494:	
	line	9
	
l3040:	
	movlw	01h
	movwf	(??___lmul+0)+0
u2385:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u2385
	line	10
	
l3042:	
	movlw	01h
u2395:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2395

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l3036
u2400:
	goto	l3044
	
l1495:	
	line	12
	
l3044:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	l1496
	
l3046:	
	line	13
	
l1496:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___wmul
psect	text413,local,class=CODE,delta=2
global __ptext413
__ptext413:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    5[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;; This function uses a non-reentrant model
;;
psect	text413
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3302:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3304
	line	6
	
l1418:	
	line	7
	
l3304:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___wmul@multiplier),(0)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l1419
u2720:
	line	8
	
l3306:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1419:	
	line	9
	movlw	01h
	
u2735:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2735
	line	10
	
l3308:	
	movlw	01h
	
u2745:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2745
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l3304
u2750:
	goto	l3310
	
l1420:	
	line	12
	
l3310:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1421
	
l3312:	
	line	13
	
l1421:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text414,local,class=CODE,delta=2
global __ptext414
__ptext414:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    1[BANK0 ] unsigned char 
;;  product         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_div
;; This function uses a non-reentrant model
;;
psect	text414
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l3288:	
	clrf	(___bmul@product)
	line	6
	
l1412:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l3292
u2700:
	line	8
	
l3290:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l3292
	
l1413:	
	line	9
	
l3292:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l3294:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l3296:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l1412
u2710:
	goto	l3298
	
l1414:	
	line	12
	
l3298:	
	movf	(___bmul@product),w
	goto	l1415
	
l3300:	
	line	13
	
l1415:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_DELAY
psect	text415,local,class=CODE,delta=2
global __ptext415
__ptext415:

;; *************** function _DELAY *****************
;; Defined at:
;;		line 19 in file "E:\MPLAB_IDE\shy_6\shy_6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ENABLE
;;		_ENABLE1
;;		_main
;; This function uses a non-reentrant model
;;
psect	text415
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	19
	global	__size_of_DELAY
	__size_of_DELAY	equ	__end_of_DELAY-_DELAY
	
_DELAY:	
	opt	stack 5
; Regs used in _DELAY: [wreg+status,2+status,0]
	line	21
	
l2986:	
;shy_6.c: 20: unsigned int i;
;shy_6.c: 21: for(i = 999; i > 0; i--);
	movlw	low(03E7h)
	movwf	(DELAY@i)
	movlw	high(03E7h)
	movwf	((DELAY@i))+1
	
l2988:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l2992
u2270:
	goto	l715
	
l2990:	
	goto	l715
	
l713:	
	
l2992:	
	movlw	low(01h)
	subwf	(DELAY@i),f
	movlw	high(01h)
	skipc
	decf	(DELAY@i+1),f
	subwf	(DELAY@i+1),f
	
l2994:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l2992
u2280:
	goto	l715
	
l714:	
	line	22
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY
	__end_of_DELAY:
;; =============== function _DELAY ends ============

	signat	_DELAY,88
	global	_tmr2_serve
psect	text416,local,class=CODE,delta=2
global __ptext416
__ptext416:

;; *************** function _tmr2_serve *****************
;; Defined at:
;;		line 41 in file "E:\MPLAB_IDE\shy_6\shy_6.c"
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
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text416
	file	"E:\MPLAB_IDE\shy_6\shy_6.c"
	line	41
	global	__size_of_tmr2_serve
	__size_of_tmr2_serve	equ	__end_of_tmr2_serve-_tmr2_serve
	
_tmr2_serve:	
	opt	stack 5
; Regs used in _tmr2_serve: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_tmr2_serve+1)
	movf	fsr0,w
	movwf	(??_tmr2_serve+2)
	movf	pclath,w
	movwf	(??_tmr2_serve+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_tmr2_serve+4)
	ljmp	_tmr2_serve
psect	text416
	line	42
	
i1l2996:	
;shy_6.c: 42: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	45
	
i1l2998:	
;shy_6.c: 45: ADCON0 = 0B01000101;
	movlw	(045h)
	movwf	(31)	;volatile
	line	46
;shy_6.c: 46: ADCON1 = 0B10001110;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	goto	i1l3000
	line	48
;shy_6.c: 48: wait1:if(ADIF == 0) goto wait1;
	
i1l727:	
	
i1l3000:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(102/8),(102)&7
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l3004
u229_20:
	goto	i1l3000
	
i1l3002:	
	goto	i1l3000
	
i1l728:	
	line	49
	
i1l3004:	
;shy_6.c: 49: ad_data.data[1] = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_tmr2_serve+0)+0
	movf	(??_tmr2_serve+0)+0,w
	movwf	0+(_ad_data)+01h
	line	50
;shy_6.c: 50: ad_data.data[0] = ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_tmr2_serve+0)+0
	movf	(??_tmr2_serve+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ad_data)
	line	51
	
i1l3006:	
;shy_6.c: 51: ADIF = 0;
	bcf	(102/8),(102)&7
	line	65
	
i1l729:	
	movf	(??_tmr2_serve+4),w
	movwf	btemp+1
	movf	(??_tmr2_serve+3),w
	movwf	pclath
	movf	(??_tmr2_serve+2),w
	movwf	fsr0
	swapf	(??_tmr2_serve+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_tmr2_serve
	__end_of_tmr2_serve:
;; =============== function _tmr2_serve ends ============

	signat	_tmr2_serve,88
psect	text417,local,class=CODE,delta=2
global __ptext417
__ptext417:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
