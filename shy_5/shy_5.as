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
# 2 "E:\MPLAB_IDE\shy_5\shy_5.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\MPLAB_IDE\shy_5\shy_5.c"
	dw 0xFF29 ;#
	FNCALL	_main,_Init_LCD
	FNCALL	_main,_lcd
	FNCALL	_main,_ENABLE
	FNCALL	_main,_ENABLE1
	FNCALL	_lcd,_DELAY
	FNCALL	_lcd,_ENABLE
	FNCALL	_Init_LCD,_DELAY
	FNCALL	_ENABLE1,_DELAY
	FNCALL	_ENABLE,_DELAY
	FNROOT	_main
	FNCALL	intlevel1,_ccp1
	global	intlevel1
	FNROOT	intlevel1
	global	_table
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
	line	9

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
	global	_Z
	global	_x
	global	_y
	global	_z
	global	_a
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1H
_CCPR1H	set	22
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTD
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_CARRY
_CARRY	set	24
	global	_CCP1IF
_CCP1IF	set	98
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RA1
_RA1	set	41
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISD
_TRISD	set	136
	global	_CCP1IE
_CCP1IE	set	1122
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TRISC2
_TRISC2	set	1082
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
	file	"shy_5.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_a:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Z:
       ds      1

_x:
       ds      1

_y:
       ds      1

_z:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
_table:
       ds      16

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DELAY
?_DELAY:	; 0 bytes @ 0x0
	global	?_ENABLE
?_ENABLE:	; 0 bytes @ 0x0
	global	?_ENABLE1
?_ENABLE1:	; 0 bytes @ 0x0
	global	?_Init_LCD
?_Init_LCD:	; 0 bytes @ 0x0
	global	?_lcd
?_lcd:	; 0 bytes @ 0x0
	global	?_ccp1
?_ccp1:	; 0 bytes @ 0x0
	global	??_ccp1
??_ccp1:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
	global	??_DELAY
??_DELAY:	; 0 bytes @ 0x5
	global	DELAY@i
DELAY@i:	; 2 bytes @ 0x5
	ds	2
	global	??_ENABLE
??_ENABLE:	; 0 bytes @ 0x7
	global	??_ENABLE1
??_ENABLE1:	; 0 bytes @ 0x7
	global	??_Init_LCD
??_Init_LCD:	; 0 bytes @ 0x7
	global	??_lcd
??_lcd:	; 0 bytes @ 0x7
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	1
;;Data sizes: Strings 0, constant 0, data 16, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      13
;; BANK0           80      0      16
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _lcd->_DELAY
;;   _Init_LCD->_DELAY
;;   _ENABLE1->_DELAY
;;   _ENABLE->_DELAY
;;
;; Critical Paths under _ccp1 in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _ccp1 in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ccp1 in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ccp1 in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ccp1 in BANK2
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
;; (0) _main                                                 1     1      0     150
;;                                              7 COMMON     1     1      0
;;                           _Init_LCD
;;                                _lcd
;;                             _ENABLE
;;                            _ENABLE1
;; ---------------------------------------------------------------------------------
;; (1) _lcd                                                  0     0      0      60
;;                              _DELAY
;;                             _ENABLE
;; ---------------------------------------------------------------------------------
;; (1) _Init_LCD                                             0     0      0      30
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE1                                              0     0      0      30
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE                                               0     0      0      30
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (2) _DELAY                                                2     2      0      30
;;                                              5 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ccp1                                                 5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Init_LCD
;;     _DELAY
;;   _lcd
;;     _DELAY
;;     _ENABLE
;;       _DELAY
;;   _ENABLE
;;     _DELAY
;;   _ENABLE1
;;     _DELAY
;;
;; _ccp1 (ROOT)
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
;;DATA                 0      0      20      12        0.0%
;;ABS                  0      0      1D       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0      10       5       20.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       D       1       92.9%
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 75 in file "E:\MPLAB_IDE\shy_5\shy_5.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_LCD
;;		_lcd
;;		_ENABLE
;;		_ENABLE1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
	line	75
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	76
	
l2712:	
;shy_5.c: 76: Init_LCD();
	fcall	_Init_LCD
	line	77
;shy_5.c: 77: lcd();
	fcall	_lcd
	line	78
	
l2714:	
;shy_5.c: 78: TRISC2=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1082/8)^080h,(1082)&7
	line	79
	
l2716:	
;shy_5.c: 79: a=0;
	bcf	(_a/8),(_a)&7
	line	80
	
l2718:	
;shy_5.c: 80: GIE=1; PEIE=1; CCP1IE=1; CCP1IF=0;
	bsf	(95/8),(95)&7
	
l2720:	
	bsf	(94/8),(94)&7
	
l2722:	
	bsf	(1122/8)^080h,(1122)&7
	
l2724:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(98/8),(98)&7
	line	81
	
l2726:	
;shy_5.c: 81: TMR1IE=1; TMR1IF=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l2728:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	82
	
l2730:	
;shy_5.c: 82: T1CON=0B00000000;
	clrf	(16)	;volatile
	line	83
	
l2732:	
;shy_5.c: 83: CCP1CON=5;
	movlw	(05h)
	movwf	(23)	;volatile
	goto	l2734
	line	84
;shy_5.c: 84: while(1)
	
l722:	
	line	86
	
l2734:	
;shy_5.c: 85: {
;shy_5.c: 86: PORTD=0x80; ENABLE();
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2736:	
	fcall	_ENABLE
	line	87
	
l2738:	
;shy_5.c: 87: PORTD=table[Z>>4]; ENABLE1();
	movf	(_Z),w
	movwf	(??_main+0)+0
	movlw	04h
u2275:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u2275
	movf	0+(??_main+0)+0,w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2740:	
	fcall	_ENABLE1
	line	88
	
l2742:	
;shy_5.c: 88: PORTD=table[Z&0x0f]; ENABLE1();
	movf	(_Z),w
	andlw	0Fh
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2744:	
	fcall	_ENABLE1
	line	89
	
l2746:	
;shy_5.c: 89: PORTD=table[x>>4]; ENABLE1();
	movf	(_x),w
	movwf	(??_main+0)+0
	movlw	04h
u2285:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u2285
	movf	0+(??_main+0)+0,w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2748:	
	fcall	_ENABLE1
	line	90
	
l2750:	
;shy_5.c: 90: PORTD=table[x&0x0f]; ENABLE1();
	movf	(_x),w
	andlw	0Fh
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2752:	
	fcall	_ENABLE1
	line	91
	
l2754:	
;shy_5.c: 91: PORTD=table[y>>4]; ENABLE1();
	movf	(_y),w
	movwf	(??_main+0)+0
	movlw	04h
u2295:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u2295
	movf	0+(??_main+0)+0,w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2756:	
	fcall	_ENABLE1
	line	92
	
l2758:	
;shy_5.c: 92: PORTD=table[y&0x0f]; ENABLE1();
	movf	(_y),w
	andlw	0Fh
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2760:	
	fcall	_ENABLE1
	line	93
	
l2762:	
;shy_5.c: 93: PORTD='H'; ENABLE1();
	movlw	(048h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2764:	
	fcall	_ENABLE1
	goto	l2734
	line	94
	
l723:	
	line	84
	goto	l2734
	
l724:	
	line	95
	
l725:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:

;; *************** function _lcd *****************
;; Defined at:
;;		line 47 in file "E:\MPLAB_IDE\shy_5\shy_5.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DELAY
;;		_ENABLE
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text125
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
	line	47
	global	__size_of_lcd
	__size_of_lcd	equ	__end_of_lcd-_lcd
	
_lcd:	
	opt	stack 4
; Regs used in _lcd: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l2692:	
;shy_5.c: 48: TRISD=0; TRISA=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	clrf	(133)^080h	;volatile
	line	49
;shy_5.c: 49: PORTD=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	50
	
l2694:	
;shy_5.c: 50: DELAY();
	fcall	_DELAY
	line	51
	
l2696:	
;shy_5.c: 51: PORTD=1; ENABLE();
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2698:	
	fcall	_ENABLE
	line	52
	
l2700:	
;shy_5.c: 52: PORTD=0x38; ENABLE();
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2702:	
	fcall	_ENABLE
	line	53
	
l2704:	
;shy_5.c: 53: PORTD=0x0c; ENABLE();
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2706:	
	fcall	_ENABLE
	line	54
	
l2708:	
;shy_5.c: 54: PORTD=0x06; ENABLE();
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l2710:	
	fcall	_ENABLE
	line	55
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_lcd
	__end_of_lcd:
;; =============== function _lcd ends ============

	signat	_lcd,88
	global	_Init_LCD
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:

;; *************** function _Init_LCD *****************
;; Defined at:
;;		line 36 in file "E:\MPLAB_IDE\shy_5\shy_5.c"
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
psect	text126
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
	line	36
	global	__size_of_Init_LCD
	__size_of_Init_LCD	equ	__end_of_Init_LCD-_Init_LCD
	
_Init_LCD:	
	opt	stack 5
; Regs used in _Init_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l2678:	
;shy_5.c: 37: TRISD=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	38
	
l2680:	
;shy_5.c: 38: ADCON1=7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	39
	
l2682:	
;shy_5.c: 39: TRISA=0;
	clrf	(133)^080h	;volatile
	line	40
	
l2684:	
;shy_5.c: 40: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	41
	
l2686:	
;shy_5.c: 41: PORTD=0;
	clrf	(8)	;volatile
	line	42
	
l2688:	
;shy_5.c: 42: RA3=1;
	bsf	(43/8),(43)&7
	line	44
	
l2690:	
;shy_5.c: 44: DELAY();
	fcall	_DELAY
	line	45
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_Init_LCD
	__end_of_Init_LCD:
;; =============== function _Init_LCD ends ============

	signat	_Init_LCD,88
	global	_ENABLE1
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:

;; *************** function _ENABLE1 *****************
;; Defined at:
;;		line 27 in file "E:\MPLAB_IDE\shy_5\shy_5.c"
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
psect	text127
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
	line	27
	global	__size_of_ENABLE1
	__size_of_ENABLE1	equ	__end_of_ENABLE1-_ENABLE1
	
_ENABLE1:	
	opt	stack 5
; Regs used in _ENABLE1: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l2672:	
;shy_5.c: 28: RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	line	29
;shy_5.c: 29: RA4=0;
	bcf	(44/8),(44)&7
	line	30
;shy_5.c: 30: RA3=0;
	bcf	(43/8),(43)&7
	line	31
	
l2674:	
;shy_5.c: 31: DELAY();
	fcall	_DELAY
	line	32
	
l2676:	
;shy_5.c: 32: RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	33
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE1
	__end_of_ENABLE1:
;; =============== function _ENABLE1 ends ============

	signat	_ENABLE1,88
	global	_ENABLE
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _ENABLE *****************
;; Defined at:
;;		line 18 in file "E:\MPLAB_IDE\shy_5\shy_5.c"
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
;;		_lcd
;;		_main
;; This function uses a non-reentrant model
;;
psect	text128
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
	line	18
	global	__size_of_ENABLE
	__size_of_ENABLE	equ	__end_of_ENABLE-_ENABLE
	
_ENABLE:	
	opt	stack 5
; Regs used in _ENABLE: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2666:	
;shy_5.c: 19: RA5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	line	20
;shy_5.c: 20: RA4=0;
	bcf	(44/8),(44)&7
	line	21
;shy_5.c: 21: RA3=0;
	bcf	(43/8),(43)&7
	line	22
	
l2668:	
;shy_5.c: 22: DELAY();
	fcall	_DELAY
	line	23
	
l2670:	
;shy_5.c: 23: RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	24
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE
	__end_of_ENABLE:
;; =============== function _ENABLE ends ============

	signat	_ENABLE,88
	global	_DELAY
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _DELAY *****************
;; Defined at:
;;		line 13 in file "E:\MPLAB_IDE\shy_5\shy_5.c"
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
;;		_Init_LCD
;;		_lcd
;; This function uses a non-reentrant model
;;
psect	text129
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
	line	13
	global	__size_of_DELAY
	__size_of_DELAY	equ	__end_of_DELAY-_DELAY
	
_DELAY:	
	opt	stack 5
; Regs used in _DELAY: [wreg+status,2+status,0]
	line	15
	
l1772:	
;shy_5.c: 14: unsigned int i;
;shy_5.c: 15: for(i=999;i>0;i--);
	movlw	low(03E7h)
	movwf	(DELAY@i)
	movlw	high(03E7h)
	movwf	((DELAY@i))+1
	
l1774:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l1778
u10:
	goto	l699
	
l1776:	
	goto	l699
	
l697:	
	
l1778:	
	movlw	low(01h)
	subwf	(DELAY@i),f
	movlw	high(01h)
	skipc
	decf	(DELAY@i+1),f
	subwf	(DELAY@i+1),f
	
l1780:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1778
u20:
	goto	l699
	
l698:	
	line	16
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY
	__end_of_DELAY:
;; =============== function _DELAY ends ============

	signat	_DELAY,88
	global	_ccp1
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _ccp1 *****************
;; Defined at:
;;		line 57 in file "E:\MPLAB_IDE\shy_5\shy_5.c"
;; Parameters:    Size  Location     Type
;;		None
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
psect	text130
	file	"E:\MPLAB_IDE\shy_5\shy_5.c"
	line	57
	global	__size_of_ccp1
	__size_of_ccp1	equ	__end_of_ccp1-_ccp1
	
_ccp1:	
	opt	stack 4
; Regs used in _ccp1: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ccp1+1)
	movf	fsr0,w
	movwf	(??_ccp1+2)
	movf	pclath,w
	movwf	(??_ccp1+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ccp1+4)
	ljmp	_ccp1
psect	text130
	line	58
	
i1l1782:	
;shy_5.c: 58: if(CCP1IF == 1)
	btfss	(98/8),(98)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l714
u3_20:
	line	60
	
i1l1784:	
;shy_5.c: 59: {
;shy_5.c: 60: a =!a;
	movlw	1<<((_a)&7)
	xorwf	((_a)/8),f
	line	61
	
i1l1786:	
;shy_5.c: 61: if(a == 1){TMR1H=0; TMR1L=0; TMR1ON=1; z=0; CCP1IF=0;}
	btfss	(_a/8),(_a)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1796
u4_20:
	
i1l1788:	
	clrf	(15)	;volatile
	clrf	(14)	;volatile
	
i1l1790:	
	bsf	(128/8),(128)&7
	
i1l1792:	
	clrf	(_z)
	
i1l1794:	
	bcf	(98/8),(98)&7
	goto	i1l1806
	line	62
	
i1l715:	
	line	64
	
i1l1796:	
;shy_5.c: 62: else
;shy_5.c: 63: {
;shy_5.c: 64: y=CCPR1L+31; x=CCPR1H+CARRY; Z=z; TMR1ON=0; CCP1IF=0;
	movf	(21),w	;volatile
	addlw	01Fh
	movwf	(??_ccp1+0)+0
	movf	(??_ccp1+0)+0,w
	movwf	(_y)
	movlw	0
	btfsc	(24/8),(24)&7
	movlw	1
	addwf	(22),w	;volatile
	movwf	(??_ccp1+0)+0
	movf	(??_ccp1+0)+0,w
	movwf	(_x)
	
i1l1798:	
	movf	(_z),w
	movwf	(??_ccp1+0)+0
	movf	(??_ccp1+0)+0,w
	movwf	(_Z)
	
i1l1800:	
	bcf	(128/8),(128)&7
	
i1l1802:	
	bcf	(98/8),(98)&7
	goto	i1l1806
	line	65
	
i1l716:	
	line	66
;shy_5.c: 65: }
;shy_5.c: 66: }
	goto	i1l1806
	line	67
	
i1l714:	
	line	68
;shy_5.c: 67: else
;shy_5.c: 68: if(TMR1IF == 1)
	btfss	(96/8),(96)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1806
u5_20:
	line	69
	
i1l1804:	
;shy_5.c: 69: z++;
	movlw	(01h)
	movwf	(??_ccp1+0)+0
	movf	(??_ccp1+0)+0,w
	addwf	(_z),f
	goto	i1l1806
	
i1l718:	
	goto	i1l1806
	line	71
	
i1l717:	
	
i1l1806:	
;shy_5.c: 71: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	73
	
i1l719:	
	movf	(??_ccp1+4),w
	movwf	btemp+1
	movf	(??_ccp1+3),w
	movwf	pclath
	movf	(??_ccp1+2),w
	movwf	fsr0
	swapf	(??_ccp1+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ccp1
	__end_of_ccp1:
;; =============== function _ccp1 ends ============

	signat	_ccp1,88
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
