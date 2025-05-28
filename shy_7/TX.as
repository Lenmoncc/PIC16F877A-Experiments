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
# 2 "E:\MPLAB_IDE\shy_7\TX.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\MPLAB_IDE\shy_7\TX.c"
	dw 0xFF29 ;#
	FNROOT	_main
	FNCALL	_usart_seve,_DELAY1
	FNCALL	intlevel1,_usart_seve
	global	intlevel1
	FNROOT	intlevel1
	global	_table1
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\MPLAB_IDE\shy_7\TX.c"
	line	4

;initializer for _table1
	retlw	041h
	retlw	049h
	retlw	051h
	retlw	059h
	retlw	061h
	retlw	069h
	retlw	071h
	retlw	079h
	global	_a
	global	_adh
	global	_adl
	global	_x
	global	_y
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_y:
       ds      1

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
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
	global	_TXREG
_TXREG	set	25
	global	_ADIF
_ADIF	set	102
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_PEIE
_PEIE	set	94
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_TMR2IF
_TMR2IF	set	97
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
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
	global	_TXSTA
_TXSTA	set	152
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRMT
_TRMT	set	1217
	global	_TX9
_TX9	set	1222
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
	file	"TX.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      1

_adh:
       ds      1

_adl:
       ds      1

_x:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\MPLAB_IDE\shy_7\TX.c"
_table1:
       ds      8

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
	movlw low(__pdataBANK0+8)
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
	global	?_DELAY1
?_DELAY1:	; 0 bytes @ 0x0
	global	??_DELAY1
??_DELAY1:	; 0 bytes @ 0x0
	global	?_usart_seve
?_usart_seve:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	DELAY1@i
DELAY1@i:	; 2 bytes @ 0x0
	ds	2
	global	??_usart_seve
??_usart_seve:	; 0 bytes @ 0x2
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	1
;;Data sizes: Strings 0, constant 0, data 8, bss 4, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7      12
;; BANK0           80      1       9
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _usart_seve in COMMON
;;
;;   _usart_seve->_DELAY1
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _usart_seve in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
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
;; (0) _main                                                 1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _usart_seve                                           5     5      0      46
;;                                              2 COMMON     5     5      0
;;                             _DELAY1
;; ---------------------------------------------------------------------------------
;; (2) _DELAY1                                               2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _usart_seve (ROOT)
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
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      19      12        0.0%
;;ABS                  0      0      15       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      1       9       5       11.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      7       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 52 in file "E:\MPLAB_IDE\shy_7\TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  727[COMMON] int 
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\shy_7\TX.c"
	line	52
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2]
	line	53
	
l2900:	
;TX.c: 53: TRISB=0XF0;nRBPU=0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l2902:	
	bcf	(1039/8)^080h,(1039)&7
	line	54
	
l2904:	
;TX.c: 54: GIE=RBIE=1;y=PORTB;RBIF=0;PORTB=0;
	bsf	(91/8),(91)&7
	btfsc	(91/8),(91)&7
	goto	u2761
	goto	u2760
	
u2761:
	bsf	(95/8),(95)&7
	goto	u2774
u2760:
	bcf	(95/8),(95)&7
u2774:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_y)
	
l2906:	
	bcf	(88/8),(88)&7
	
l2908:	
	clrf	(6)	;volatile
	line	55
	
l2910:	
;TX.c: 55: TRISC = 0xc0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	56
;TX.c: 56: TRISD = 0;PORTD = 0;
	clrf	(136)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	57
	
l2912:	
;TX.c: 57: a=0;
	clrf	(_a)
	line	59
	
l2914:	
;TX.c: 59: TRISA = 0xff;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	60
	
l2916:	
;TX.c: 60: ADCON0 = 0B01000001;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	61
	
l2918:	
;TX.c: 61: ADCON1 = 0B10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	62
	
l2920:	
;TX.c: 62: T2CON = 0B01111111;PR2 = 255;
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	
l2922:	
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	63
	
l2924:	
;TX.c: 63: PEIE = 1;TMR2IE = 1;TMR2IF = 0;
	bsf	(94/8),(94)&7
	
l2926:	
	bsf	(1121/8)^080h,(1121)&7
	
l2928:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7
	line	64
	
l2930:	
;TX.c: 64: ADIF = 0;
	bcf	(102/8),(102)&7
	line	65
	
l2932:	
;TX.c: 65: SPBRG = 38;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	66
;TX.c: 66: TXSTA = 0;
	clrf	(152)^080h	;volatile
	line	67
	
l2934:	
;TX.c: 67: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	68
;TX.c: 68: RCSTA = 0;SPEN = 1;CREN = 1;TXEN = 1;TX9 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	
l2936:	
	bsf	(199/8),(199)&7
	
l2938:	
	bsf	(196/8),(196)&7
	
l2940:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l2942:	
	bsf	(1222/8)^080h,(1222)&7
	line	69
	
l2944:	
;TX.c: 69: GIE = 1;PEIE = 1;RCIE = 1;TXIE=0;
	bsf	(95/8),(95)&7
	
l2946:	
	bsf	(94/8),(94)&7
	
l2948:	
	bsf	(1125/8)^080h,(1125)&7
	
l2950:	
	bcf	(1124/8)^080h,(1124)&7
	line	70
;TX.c: 70: loop:
	
l728:	
	line	72
;TX.c: 72: goto loop;
	goto	l728
	line	73
	
l729:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_usart_seve
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:

;; *************** function _usart_seve *****************
;; Defined at:
;;		line 12 in file "E:\MPLAB_IDE\shy_7\TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DELAY1
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text114
	file	"E:\MPLAB_IDE\shy_7\TX.c"
	line	12
	global	__size_of_usart_seve
	__size_of_usart_seve	equ	__end_of_usart_seve-_usart_seve
	
_usart_seve:	
	opt	stack 6
; Regs used in _usart_seve: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_usart_seve+1)
	movf	fsr0,w
	movwf	(??_usart_seve+2)
	movf	pclath,w
	movwf	(??_usart_seve+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_usart_seve+4)
	ljmp	_usart_seve
psect	text114
	line	13
	
i1l2808:	
;TX.c: 13: if(TMR2IF==1 && a<8)
	btfss	(97/8),(97)&7
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l707
u253_20:
	
i1l2810:	
	movlw	(08h)
	subwf	(_a),w
	skipnc
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l707
u254_20:
	line	15
	
i1l2812:	
;TX.c: 14: {
;TX.c: 15: TMR2IF=0;GO_nDONE=1;
	bcf	(97/8),(97)&7
	bsf	(250/8),(250)&7
	line	16
;TX.c: 16: wait:if(ADIF==0) goto wait;
	
i1l708:	
	btfsc	(102/8),(102)&7
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l2816
u255_20:
	goto	i1l708
	
i1l2814:	
	goto	i1l708
	
i1l709:	
	line	17
	
i1l2816:	
;TX.c: 17: adh=ADRESH;adl=ADRESL;ADIF=0;
	movf	(30),w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_adh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_adl)
	
i1l2818:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7
	goto	i1l2820
	line	18
;TX.c: 18: loop2:if(TRMT==0)goto loop2;
	
i1l710:	
	
i1l2820:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1217/8)^080h,(1217)&7
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l2824
u256_20:
	goto	i1l2820
	
i1l2822:	
	goto	i1l2820
	
i1l711:	
	line	19
	
i1l2824:	
;TX.c: 19: TXREG=a<<4|adh;TX9D=1;
	movf	(_a),w
	movwf	(??_usart_seve+0)+0
	movlw	(04h)-1
u257_25:
	clrc
	rlf	(??_usart_seve+0)+0,f
	addlw	-1
	skipz
	goto	u257_25
	clrc
	rlf	(??_usart_seve+0)+0,w
	iorwf	(_adh),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
i1l2826:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1216/8)^080h,(1216)&7
	goto	i1l2828
	line	20
;TX.c: 20: loop1:if(TRMT==0)goto loop1;
	
i1l712:	
	
i1l2828:	
	btfsc	(1217/8)^080h,(1217)&7
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l2832
u258_20:
	goto	i1l2828
	
i1l2830:	
	goto	i1l2828
	
i1l713:	
	line	21
	
i1l2832:	
;TX.c: 21: TXREG=adl;TX9D=0;
	movf	(_adl),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
i1l2834:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1216/8)^080h,(1216)&7
	line	23
	
i1l2836:	
;TX.c: 23: ADCON0=table1[a];
	movf	(_a),w
	addlw	_table1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	24
	
i1l2838:	
;TX.c: 24: PORTD=a;
	movf	(_a),w
	movwf	(8)	;volatile
	line	25
;TX.c: 25: }
	goto	i1l725
	line	26
	
i1l707:	
;TX.c: 26: else if(RCIF==1)
	btfss	(101/8),(101)&7
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l2844
u259_20:
	line	27
	
i1l2840:	
;TX.c: 27: {a=RCREG;RCIF=0;}
	movf	(26),w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l2842:	
	bcf	(101/8),(101)&7
	goto	i1l725
	line	28
	
i1l715:	
	line	30
	
i1l2844:	
;TX.c: 28: else
;TX.c: 29: {
;TX.c: 30: y = y ^ PORTB;
	movf	(_y),w
	xorwf	(6),w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_y)
	line	31
	
i1l2846:	
;TX.c: 31: TRISB = 0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	32
	
i1l2848:	
;TX.c: 32: PORTB = (~y) & 0xf0;
	comf	(_y),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	33
	
i1l2850:	
;TX.c: 33: DELAY1();
	fcall	_DELAY1
	line	34
	
i1l2852:	
;TX.c: 34: x = PORTB & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w
	andlw	0Fh
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_x)
	line	35
	
i1l2854:	
;TX.c: 35: if(y==0x10 && x==0x0e)a=0;
	movf	(_y),w
	xorlw	010h
	skipz
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l2860
u260_20:
	
i1l2856:	
	movf	(_x),w
	xorlw	0Eh
	skipz
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l2860
u261_20:
	
i1l2858:	
	clrf	(_a)
	goto	i1l2860
	
i1l717:	
	line	36
	
i1l2860:	
;TX.c: 36: if(y==0x10 && x==0x0d)a=4;
	movf	(_y),w
	xorlw	010h
	skipz
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l718
u262_20:
	
i1l2862:	
	movf	(_x),w
	xorlw	0Dh
	skipz
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l718
u263_20:
	
i1l2864:	
	movlw	(04h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l718:	
	line	37
;TX.c: 37: if(y==0x20 && x==0x0e)a=1;
	movf	(_y),w
	xorlw	020h
	skipz
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l2870
u264_20:
	
i1l2866:	
	movf	(_x),w
	xorlw	0Eh
	skipz
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l2870
u265_20:
	
i1l2868:	
	clrf	(_a)
	bsf	status,0
	rlf	(_a),f
	goto	i1l2870
	
i1l719:	
	line	38
	
i1l2870:	
;TX.c: 38: if(y==0x20 && x==0x0d)a=5;
	movf	(_y),w
	xorlw	020h
	skipz
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l720
u266_20:
	
i1l2872:	
	movf	(_x),w
	xorlw	0Dh
	skipz
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l720
u267_20:
	
i1l2874:	
	movlw	(05h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l720:	
	line	39
;TX.c: 39: if(y==0x40 && x==0x0e)a=2;
	movf	(_y),w
	xorlw	040h
	skipz
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l721
u268_20:
	
i1l2876:	
	movf	(_x),w
	xorlw	0Eh
	skipz
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l721
u269_20:
	
i1l2878:	
	movlw	(02h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l721:	
	line	40
;TX.c: 40: if(y==0x40 && x==0x0d)a=6;
	movf	(_y),w
	xorlw	040h
	skipz
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l722
u270_20:
	
i1l2880:	
	movf	(_x),w
	xorlw	0Dh
	skipz
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l722
u271_20:
	
i1l2882:	
	movlw	(06h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l722:	
	line	41
;TX.c: 41: if(y==0x80 && x==0x0e)a=3;
	movf	(_y),w
	xorlw	080h
	skipz
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l723
u272_20:
	
i1l2884:	
	movf	(_x),w
	xorlw	0Eh
	skipz
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l723
u273_20:
	
i1l2886:	
	movlw	(03h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	
i1l723:	
	line	42
;TX.c: 42: if(y==0x80 && x==0x0d)a=7;
	movf	(_y),w
	xorlw	080h
	skipz
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l2892
u274_20:
	
i1l2888:	
	movf	(_x),w
	xorlw	0Dh
	skipz
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l2892
u275_20:
	
i1l2890:	
	movlw	(07h)
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_a)
	goto	i1l2892
	
i1l724:	
	line	43
	
i1l2892:	
;TX.c: 43: TX9D=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1216/8)^080h,(1216)&7
	line	44
;TX.c: 44: TXREG=a;
	movf	(_a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	45
;TX.c: 45: TRISB=0XF0;PORTB=0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
i1l2894:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	46
	
i1l2896:	
;TX.c: 46: y=PORTB;RBIF=0;
	movf	(6),w	;volatile
	movwf	(??_usart_seve+0)+0
	movf	(??_usart_seve+0)+0,w
	movwf	(_y)
	
i1l2898:	
	bcf	(88/8),(88)&7
	goto	i1l725
	line	47
	
i1l716:	
	goto	i1l725
	
i1l714:	
	line	49
	
i1l725:	
	movf	(??_usart_seve+4),w
	movwf	btemp+1
	movf	(??_usart_seve+3),w
	movwf	pclath
	movf	(??_usart_seve+2),w
	movwf	fsr0
	swapf	(??_usart_seve+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_usart_seve
	__end_of_usart_seve:
;; =============== function _usart_seve ends ============

	signat	_usart_seve,88
	global	_DELAY1
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:

;; *************** function _DELAY1 *****************
;; Defined at:
;;		line 10 in file "E:\MPLAB_IDE\shy_7\TX.c"
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
psect	text115
	file	"E:\MPLAB_IDE\shy_7\TX.c"
	line	10
	global	__size_of_DELAY1
	__size_of_DELAY1	equ	__end_of_DELAY1-_DELAY1
	
_DELAY1:	
	opt	stack 6
; Regs used in _DELAY1: [wreg+status,2+status,0]
	
i1l2798:	
	movlw	low(063h)
	movwf	(DELAY1@i)
	movlw	high(063h)
	movwf	((DELAY1@i))+1
	
i1l2800:	
	movf	((DELAY1@i+1)),w
	iorwf	((DELAY1@i)),w
	skipz
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l2804
u251_20:
	goto	i1l704
	
i1l2802:	
	goto	i1l704
	
i1l702:	
	
i1l2804:	
	movlw	low(01h)
	subwf	(DELAY1@i),f
	movlw	high(01h)
	skipc
	decf	(DELAY1@i+1),f
	subwf	(DELAY1@i+1),f
	
i1l2806:	
	movf	((DELAY1@i+1)),w
	iorwf	((DELAY1@i)),w
	skipz
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l2804
u252_20:
	goto	i1l704
	
i1l703:	
	
i1l704:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY1
	__end_of_DELAY1:
;; =============== function _DELAY1 ends ============

	signat	_DELAY1,88
psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
