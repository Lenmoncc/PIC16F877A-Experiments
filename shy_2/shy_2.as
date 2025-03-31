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
# 3 "E:\MPLAB_IDE\shy_2\shy_2.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "E:\MPLAB_IDE\shy_2\shy_2.c"
	dw 0xFF29 ;#
	FNCALL	_main,_DELAY
	FNCALL	_main,_ENABLE
	FNCALL	_main,_ENABLE1
	FNCALL	_ENABLE1,_DELAY
	FNCALL	_ENABLE,_DELAY
	FNROOT	_main
	global	_TABLE
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\MPLAB_IDE\shy_2\shy_2.c"
	line	12

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
	global	_a
	global	_adh
	global	_adl
	global	_b
	global	_preres
	global	_result
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA1
_RA1	set	41
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
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
	file	"shy_2.as"
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

_b:
       ds      1

_preres:
       ds      1

_result:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\MPLAB_IDE\shy_2\shy_2.c"
_TABLE:
       ds      16

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
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
	global	??_DELAY
??_DELAY:	; 0 bytes @ 0x0
	global	?_ENABLE
?_ENABLE:	; 0 bytes @ 0x0
	global	?_ENABLE1
?_ENABLE1:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
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
;;Data sizes: Strings 0, constant 0, data 16, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       9
;; BANK0           80      0      16
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DELAY
;;   _ENABLE1->_DELAY
;;   _ENABLE->_DELAY
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
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
;; (0) _main                                                 1     1      0      90
;;                                              2 COMMON     1     1      0
;;                              _DELAY
;;                             _ENABLE
;;                            _ENABLE1
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE1                                              0     0      0      30
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE                                               0     0      0      30
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (2) _DELAY                                                2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DELAY
;;   _ENABLE
;;     _DELAY
;;   _ENABLE1
;;     _DELAY
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
;;DATA                 0      0      1B      12        0.0%
;;ABS                  0      0      19       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0      10       5       20.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      3       9       1       64.3%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "E:\MPLAB_IDE\shy_2\shy_2.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DELAY
;;		_ENABLE
;;		_ENABLE1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\shy_2\shy_2.c"
	line	41
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	42
	
l2667:	
;shy_2.c: 42: TRISB = 0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	43
	
l2669:	
;shy_2.c: 43: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	44
	
l2671:	
;shy_2.c: 44: result = 0x00;
	clrf	(_result)
	line	45
	
l2673:	
;shy_2.c: 45: preres = 0x00;
	clrf	(_preres)
	line	46
	
l2675:	
;shy_2.c: 46: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	47
	
l2677:	
;shy_2.c: 47: RE2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	48
	
l2679:	
;shy_2.c: 48: ADCON1 = 7;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	49
;shy_2.c: 49: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	50
	
l2681:	
;shy_2.c: 50: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	51
;shy_2.c: 51: PORTD = 0;
	clrf	(8)	;volatile
	line	52
	
l2683:	
;shy_2.c: 52: RA3 = 1;
	bsf	(43/8),(43)&7
	line	54
	
l2685:	
;shy_2.c: 54: DELAY();
	fcall	_DELAY
	line	56
	
l2687:	
;shy_2.c: 56: PORTD = 1;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	57
	
l2689:	
;shy_2.c: 57: ENABLE();
	fcall	_ENABLE
	line	58
	
l2691:	
;shy_2.c: 58: PORTD = 0x38;
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	59
	
l2693:	
;shy_2.c: 59: ENABLE();
	fcall	_ENABLE
	line	60
	
l2695:	
;shy_2.c: 60: PORTD = 0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l2697:	
;shy_2.c: 61: ENABLE();
	fcall	_ENABLE
	line	62
	
l2699:	
;shy_2.c: 62: PORTD = 0x06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	63
	
l2701:	
;shy_2.c: 63: ENABLE();
	fcall	_ENABLE
	goto	l2703
	line	65
;shy_2.c: 65: loop:
	
l710:	
	line	66
	
l2703:	
;shy_2.c: 66: PORTD = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	67
	
l2705:	
;shy_2.c: 67: ENABLE();
	fcall	_ENABLE
	line	70
	
l2707:	
;shy_2.c: 70: PORTB = 0X7f;
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	71
	
l2709:	
# 71 "E:\MPLAB_IDE\shy_2\shy_2.c"
nop ;#
psect	maintext
	line	72
	
l2711:	
;shy_2.c: 72: result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	73
;shy_2.c: 73: result = result & 0x0f;
	movf	(_result),w
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	75
	
l2713:	
;shy_2.c: 75: if (result != 0x0f) {
	movf	(_result),w
	xorlw	0Fh
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l2717
u2240:
	line	76
	
l2715:	
;shy_2.c: 76: result = result | 0x70;
	movf	(_result),w
	iorlw	070h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	77
;shy_2.c: 77: } else {
	goto	l712
	
l711:	
	line	78
	
l2717:	
;shy_2.c: 78: PORTB = 0Xbf;
	movlw	(0BFh)
	movwf	(6)	;volatile
	line	79
	
l2719:	
# 79 "E:\MPLAB_IDE\shy_2\shy_2.c"
nop ;#
psect	maintext
	line	80
;shy_2.c: 80: result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	81
	
l2721:	
;shy_2.c: 81: result = result & 0x0f;
	movf	(_result),w
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	83
	
l2723:	
;shy_2.c: 83: if (result != 0xf) {
	movf	(_result),w
	xorlw	0Fh
	skipnz
	goto	u2251
	goto	u2250
u2251:
	goto	l2727
u2250:
	line	84
	
l2725:	
;shy_2.c: 84: result = result | 0xb0;
	movf	(_result),w
	iorlw	0B0h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	85
;shy_2.c: 85: } else {
	goto	l712
	
l713:	
	line	86
	
l2727:	
;shy_2.c: 86: PORTB = 0Xdf;
	movlw	(0DFh)
	movwf	(6)	;volatile
	line	87
	
l2729:	
# 87 "E:\MPLAB_IDE\shy_2\shy_2.c"
nop ;#
psect	maintext
	line	88
;shy_2.c: 88: result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	89
	
l2731:	
;shy_2.c: 89: result = result & 0x0f;
	movf	(_result),w
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	91
	
l2733:	
;shy_2.c: 91: if (result != 0x0f) {
	movf	(_result),w
	xorlw	0Fh
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l2737
u2260:
	line	92
	
l2735:	
;shy_2.c: 92: result = result | 0xd0;
	movf	(_result),w
	iorlw	0D0h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	93
;shy_2.c: 93: } else {
	goto	l712
	
l715:	
	line	94
	
l2737:	
;shy_2.c: 94: PORTB = 0Xef;
	movlw	(0EFh)
	movwf	(6)	;volatile
	line	95
	
l2739:	
# 95 "E:\MPLAB_IDE\shy_2\shy_2.c"
nop ;#
psect	maintext
	line	96
;shy_2.c: 96: result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	97
	
l2741:	
;shy_2.c: 97: result = result & 0x0f;
	movf	(_result),w
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	99
	
l2743:	
;shy_2.c: 99: if (result != 0x0f) {
	movf	(_result),w
	xorlw	0Fh
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l2747
u2270:
	line	100
	
l2745:	
;shy_2.c: 100: result = result | 0xe0;
	movf	(_result),w
	iorlw	0E0h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	101
;shy_2.c: 101: } else {
	goto	l712
	
l717:	
	line	102
	
l2747:	
;shy_2.c: 102: result = 0xff;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	goto	l712
	line	103
	
l718:	
	goto	l712
	line	104
	
l716:	
	goto	l712
	line	105
	
l714:	
	line	106
	
l712:	
	line	108
;shy_2.c: 103: }
;shy_2.c: 104: }
;shy_2.c: 105: }
;shy_2.c: 106: }
;shy_2.c: 108: if (result == 0xff) {
	movf	(_result),w
	xorlw	0FFh
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l2751
u2280:
	line	109
	
l2749:	
;shy_2.c: 109: result = preres;
	movf	(_preres),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_result)
	line	110
;shy_2.c: 110: } else {
	goto	l2787
	
l719:	
	line	111
	
l2751:	
;shy_2.c: 111: preres = result;
	movf	(_result),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_preres)
	goto	l2787
	line	112
	
l720:	
	line	115
;shy_2.c: 112: }
;shy_2.c: 115: switch (result) {
	goto	l2787
	line	116
;shy_2.c: 116: case 0xe7: PORTD = TABLE[3]; break;
	
l722:	
	
l2753:	
	movf	0+(_TABLE)+03h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	117
;shy_2.c: 117: case 0xeb: PORTD = TABLE[2]; break;
	
l724:	
	
l2755:	
	movf	0+(_TABLE)+02h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	118
;shy_2.c: 118: case 0xed: PORTD = TABLE[1]; break;
	
l725:	
	
l2757:	
	movf	0+(_TABLE)+01h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	119
;shy_2.c: 119: case 0xee: PORTD = TABLE[0]; break;
	
l726:	
	
l2759:	
	movf	(_TABLE),w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	120
;shy_2.c: 120: case 0xd7: PORTD = TABLE[7]; break;
	
l727:	
	
l2761:	
	movf	0+(_TABLE)+07h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	121
;shy_2.c: 121: case 0xdb: PORTD = TABLE[6]; break;
	
l728:	
	
l2763:	
	movf	0+(_TABLE)+06h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	122
;shy_2.c: 122: case 0xdd: PORTD = TABLE[5]; break;
	
l729:	
	
l2765:	
	movf	0+(_TABLE)+05h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	123
;shy_2.c: 123: case 0xde: PORTD = TABLE[4]; break;
	
l730:	
	
l2767:	
	movf	0+(_TABLE)+04h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	124
;shy_2.c: 124: case 0xb7: PORTD = TABLE[11]; break;
	
l731:	
	
l2769:	
	movf	0+(_TABLE)+0Bh,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	125
;shy_2.c: 125: case 0xbb: PORTD = TABLE[10]; break;
	
l732:	
	
l2771:	
	movf	0+(_TABLE)+0Ah,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	126
;shy_2.c: 126: case 0xbd: PORTD = TABLE[9]; break;
	
l733:	
	
l2773:	
	movf	0+(_TABLE)+09h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	127
;shy_2.c: 127: case 0xbe: PORTD = TABLE[8]; break;
	
l734:	
	
l2775:	
	movf	0+(_TABLE)+08h,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	128
;shy_2.c: 128: case 0x77: PORTD = TABLE[15]; break;
	
l735:	
	
l2777:	
	movf	0+(_TABLE)+0Fh,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	129
;shy_2.c: 129: case 0x7b: PORTD = TABLE[14]; break;
	
l736:	
	
l2779:	
	movf	0+(_TABLE)+0Eh,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	130
;shy_2.c: 130: case 0x7d: PORTD = TABLE[13]; break;
	
l737:	
	
l2781:	
	movf	0+(_TABLE)+0Dh,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	131
;shy_2.c: 131: case 0x7e: PORTD = TABLE[12]; break;
	
l738:	
	
l2783:	
	movf	0+(_TABLE)+0Ch,w	;volatile
	movwf	(8)	;volatile
	goto	l2789
	line	132
;shy_2.c: 132: case 0x00: PORTD = 'X';
	
l739:	
	
l2785:	
	movlw	(058h)
	movwf	(8)	;volatile
	line	135
;shy_2.c: 135: }
	goto	l2789
	line	115
	
l721:	
	
l2787:	
	movf	(_result),w
	; Switch size 1, requested type "space"
; Number of cases is 17, Range of values is 0 to 238
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           52    27 (average)
; jumptable            260     6 (fixed)
; rangetable           243     6 (fixed)
; spacedrange          484     9 (fixed)
; locatedrange         239     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2785
	xorlw	119^0	; case 119
	skipnz
	goto	l2777
	xorlw	123^119	; case 123
	skipnz
	goto	l2779
	xorlw	125^123	; case 125
	skipnz
	goto	l2781
	xorlw	126^125	; case 126
	skipnz
	goto	l2783
	xorlw	183^126	; case 183
	skipnz
	goto	l2769
	xorlw	187^183	; case 187
	skipnz
	goto	l2771
	xorlw	189^187	; case 189
	skipnz
	goto	l2773
	xorlw	190^189	; case 190
	skipnz
	goto	l2775
	xorlw	215^190	; case 215
	skipnz
	goto	l2761
	xorlw	219^215	; case 219
	skipnz
	goto	l2763
	xorlw	221^219	; case 221
	skipnz
	goto	l2765
	xorlw	222^221	; case 222
	skipnz
	goto	l2767
	xorlw	231^222	; case 231
	skipnz
	goto	l2753
	xorlw	235^231	; case 235
	skipnz
	goto	l2755
	xorlw	237^235	; case 237
	skipnz
	goto	l2757
	xorlw	238^237	; case 238
	skipnz
	goto	l2759
	goto	l2789
	opt asmopt_on

	line	135
	
l723:	
	line	137
	
l2789:	
;shy_2.c: 137: ENABLE1();
	fcall	_ENABLE1
	line	138
;shy_2.c: 138: goto loop;
	goto	l2703
	line	139
	
l740:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ENABLE1
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

;; *************** function _ENABLE1 *****************
;; Defined at:
;;		line 33 in file "E:\MPLAB_IDE\shy_2\shy_2.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text95
	file	"E:\MPLAB_IDE\shy_2\shy_2.c"
	line	33
	global	__size_of_ENABLE1
	__size_of_ENABLE1	equ	__end_of_ENABLE1-_ENABLE1
	
_ENABLE1:	
	opt	stack 6
; Regs used in _ENABLE1: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l2661:	
;shy_2.c: 34: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	line	35
;shy_2.c: 35: RA4 = 0;
	bcf	(44/8),(44)&7
	line	36
;shy_2.c: 36: RA3 = 0;
	bcf	(43/8),(43)&7
	line	37
	
l2663:	
;shy_2.c: 37: DELAY();
	fcall	_DELAY
	line	38
	
l2665:	
;shy_2.c: 38: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	39
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE1
	__end_of_ENABLE1:
;; =============== function _ENABLE1 ends ============

	signat	_ENABLE1,88
	global	_ENABLE
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:

;; *************** function _ENABLE *****************
;; Defined at:
;;		line 25 in file "E:\MPLAB_IDE\shy_2\shy_2.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text96
	file	"E:\MPLAB_IDE\shy_2\shy_2.c"
	line	25
	global	__size_of_ENABLE
	__size_of_ENABLE	equ	__end_of_ENABLE-_ENABLE
	
_ENABLE:	
	opt	stack 6
; Regs used in _ENABLE: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l2655:	
;shy_2.c: 26: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	line	27
;shy_2.c: 27: RA4 = 0;
	bcf	(44/8),(44)&7
	line	28
;shy_2.c: 28: RA3 = 0;
	bcf	(43/8),(43)&7
	line	29
	
l2657:	
;shy_2.c: 29: DELAY();
	fcall	_DELAY
	line	30
	
l2659:	
;shy_2.c: 30: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	31
	
l704:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE
	__end_of_ENABLE:
;; =============== function _ENABLE ends ============

	signat	_ENABLE,88
	global	_DELAY
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _DELAY *****************
;; Defined at:
;;		line 20 in file "E:\MPLAB_IDE\shy_2\shy_2.c"
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
;;		_ENABLE
;;		_ENABLE1
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"E:\MPLAB_IDE\shy_2\shy_2.c"
	line	20
	global	__size_of_DELAY
	__size_of_DELAY	equ	__end_of_DELAY-_DELAY
	
_DELAY:	
	opt	stack 6
; Regs used in _DELAY: [wreg+status,2+status,0]
	line	22
	
l1787:	
;shy_2.c: 21: unsigned int i;
;shy_2.c: 22: for (i = 999; i > 0; i--);
	movlw	low(03E7h)
	movwf	(DELAY@i)
	movlw	high(03E7h)
	movwf	((DELAY@i))+1
	
l1789:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l1793
u10:
	goto	l701
	
l1791:	
	goto	l701
	
l699:	
	
l1793:	
	movlw	low(01h)
	subwf	(DELAY@i),f
	movlw	high(01h)
	skipc
	decf	(DELAY@i+1),f
	subwf	(DELAY@i+1),f
	
l1795:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1793
u20:
	goto	l701
	
l700:	
	line	23
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY
	__end_of_DELAY:
;; =============== function _DELAY ends ============

	signat	_DELAY,88
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
