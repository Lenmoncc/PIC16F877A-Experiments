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
# 2 "E:\MPLAB_IDE\shy_3\shy_3.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\MPLAB_IDE\shy_3\shy_3.c"
	dw 0xFF29 ;#
	FNROOT	_main
	FNCALL	_int_rb,_sound_delay
	FNCALL	_sound_delay,_delay1
	FNCALL	_sound_delay,_delay3
	FNCALL	_sound_delay,_delay2
	FNCALL	_sound_delay,_delay4
	FNCALL	intlevel1,_int_rb
	global	intlevel1
	FNROOT	intlevel1
	global	_x
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_x:
       ds      1

	global	_y
_y:
       ds      1

	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RE0
_RE0	set	72
	global	_ADCON1
_ADCON1	set	159
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_INTEDG
_INTEDG	set	1038
	global	_TRISE0
_TRISE0	set	1096
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
	file	"shy_3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay1
?_delay1:	; 0 bytes @ 0x0
	global	??_delay1
??_delay1:	; 0 bytes @ 0x0
	global	?_delay2
?_delay2:	; 0 bytes @ 0x0
	global	??_delay2
??_delay2:	; 0 bytes @ 0x0
	global	?_delay3
?_delay3:	; 0 bytes @ 0x0
	global	??_delay3
??_delay3:	; 0 bytes @ 0x0
	global	?_delay4
?_delay4:	; 0 bytes @ 0x0
	global	??_delay4
??_delay4:	; 0 bytes @ 0x0
	global	?_sound_delay
?_sound_delay:	; 0 bytes @ 0x0
	global	?_int_rb
?_int_rb:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	1
	global	delay1@i1
delay1@i1:	; 1 bytes @ 0x1
	global	delay2@i1
delay2@i1:	; 1 bytes @ 0x1
	global	delay3@i1
delay3@i1:	; 1 bytes @ 0x1
	global	delay4@i1
delay4@i1:	; 1 bytes @ 0x1
	ds	1
	global	delay1@i2
delay1@i2:	; 1 bytes @ 0x2
	global	delay2@i2
delay2@i2:	; 1 bytes @ 0x2
	global	delay3@i2
delay3@i2:	; 1 bytes @ 0x2
	global	delay4@i2
delay4@i2:	; 1 bytes @ 0x2
	ds	1
	global	??_sound_delay
??_sound_delay:	; 0 bytes @ 0x3
	global	sound_delay@i
sound_delay@i:	; 2 bytes @ 0x3
	ds	2
	global	??_int_rb
??_int_rb:	; 0 bytes @ 0x5
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      12
;; BANK0           80      1       1
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
;; Critical Paths under _int_rb in COMMON
;;
;;   _int_rb->_sound_delay
;;   _sound_delay->_delay1
;;   _sound_delay->_delay3
;;   _sound_delay->_delay2
;;   _sound_delay->_delay4
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _int_rb in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _int_rb in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _int_rb in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _int_rb in BANK2
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
;; (1) _int_rb                                               5     5      0     360
;;                                              5 COMMON     5     5      0
;;                        _sound_delay
;; ---------------------------------------------------------------------------------
;; (2) _sound_delay                                          2     2      0     360
;;                                              3 COMMON     2     2      0
;;                             _delay1
;;                             _delay3
;;                             _delay2
;;                             _delay4
;; ---------------------------------------------------------------------------------
;; (3) _delay4                                               3     3      0      60
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _delay3                                               3     3      0      60
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _delay2                                               3     3      0      60
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _delay1                                               3     3      0      60
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _int_rb (ROOT)
;;   _sound_delay
;;     _delay1
;;     _delay3
;;     _delay2
;;     _delay4
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0       D       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      1       1       5        1.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      13      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 91 in file "E:\MPLAB_IDE\shy_3\shy_3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\shy_3\shy_3.c"
	line	91
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0]
	line	92
	
l2844:	
;shy_3.c: 92: TRISD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	93
;shy_3.c: 93: PORTD = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	94
	
l2846:	
;shy_3.c: 94: TRISB = 0XFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	95
	
l2848:	
;shy_3.c: 95: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	96
	
l2850:	
;shy_3.c: 96: INTEDG = 1;
	bsf	(1038/8)^080h,(1038)&7
	line	98
	
l2852:	
;shy_3.c: 98: ADCON1 = 7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	99
	
l2854:	
;shy_3.c: 99: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	100
	
l2856:	
;shy_3.c: 100: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	102
	
l2858:	
;shy_3.c: 102: x = 1;
	clrf	(_x)
	bsf	status,0
	rlf	(_x),f
	line	104
	
l2860:	
;shy_3.c: 104: GIE = 1;
	bsf	(95/8),(95)&7
	line	105
	
l2862:	
;shy_3.c: 105: INTE = 1;
	bsf	(92/8),(92)&7
	line	106
	
l2864:	
;shy_3.c: 106: RBIE = 1;
	bsf	(91/8),(91)&7
	line	107
	
l2866:	
;shy_3.c: 107: INTF = 0;
	bcf	(89/8),(89)&7
	line	108
	
l2868:	
;shy_3.c: 108: y = PORTB;
	movf	(6),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_y)
	line	109
	
l2870:	
;shy_3.c: 109: RBIF = 0;
	bcf	(88/8),(88)&7
	goto	l739
	line	111
;shy_3.c: 111: while (1) {
	
l738:	
	line	113
	
l739:	
	line	111
	goto	l739
	
l740:	
	line	114
	
l741:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_int_rb
psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:

;; *************** function _int_rb *****************
;; Defined at:
;;		line 59 in file "E:\MPLAB_IDE\shy_3\shy_3.c"
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
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sound_delay
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text165
	file	"E:\MPLAB_IDE\shy_3\shy_3.c"
	line	59
	global	__size_of_int_rb
	__size_of_int_rb	equ	__end_of_int_rb-_int_rb
	
_int_rb:	
	opt	stack 5
; Regs used in _int_rb: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_int_rb+1)
	movf	fsr0,w
	movwf	(??_int_rb+2)
	movf	pclath,w
	movwf	(??_int_rb+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_int_rb+4)
	ljmp	_int_rb
psect	text165
	line	60
	
i1l1924:	
;shy_3.c: 60: if (INTF == 1) {
	btfss	(89/8),(89)&7
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l1934
u25_20:
	line	61
	
i1l1926:	
;shy_3.c: 61: x = 0;
	clrf	(_x)
	line	62
	
i1l1928:	
;shy_3.c: 62: PORTD = ~0X80;
	movlw	(07Fh)
	movwf	(8)	;volatile
	line	63
	
i1l1930:	
;shy_3.c: 63: sound_delay();
	fcall	_sound_delay
	line	64
	
i1l1932:	
;shy_3.c: 64: INTF = 0;
	bcf	(89/8),(89)&7
	line	65
;shy_3.c: 65: }
	goto	i1l735
	line	66
	
i1l728:	
	line	67
	
i1l1934:	
;shy_3.c: 66: else{
;shy_3.c: 67: if (x == 0) {
	movf	(_x),f
	skipz
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l1954
u26_20:
	line	68
	
i1l1936:	
;shy_3.c: 68: x = 1;
	clrf	(_x)
	bsf	status,0
	rlf	(_x),f
	line	69
	
i1l1938:	
;shy_3.c: 69: y = y ^ PORTB;
	movf	(_y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(6),w	;volatile
	movwf	(??_int_rb+0)+0
	movf	(??_int_rb+0)+0,w
	movwf	(_y)
	line	70
;shy_3.c: 70: if (y == 0x80) {
	movf	(_y),w
	xorlw	080h
	skipz
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l731
u27_20:
	line	71
	
i1l1940:	
;shy_3.c: 71: PORTD = ~0X08;
	movlw	(0F7h)
	movwf	(8)	;volatile
	line	72
	
i1l731:	
	line	73
;shy_3.c: 72: }
;shy_3.c: 73: if (y == 0x40) {
	movf	(_y),w
	xorlw	040h
	skipz
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l732
u28_20:
	line	74
	
i1l1942:	
;shy_3.c: 74: PORTD = ~0X04;
	movlw	(0FBh)
	movwf	(8)	;volatile
	line	75
	
i1l732:	
	line	76
;shy_3.c: 75: }
;shy_3.c: 76: if (y == 0x20) {
	movf	(_y),w
	xorlw	020h
	skipz
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l733
u29_20:
	line	77
	
i1l1944:	
;shy_3.c: 77: PORTD = ~0X02;
	movlw	(0FDh)
	movwf	(8)	;volatile
	line	78
	
i1l733:	
	line	79
;shy_3.c: 78: }
;shy_3.c: 79: if (y == 0x10) {
	movf	(_y),w
	xorlw	010h
	skipz
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l1948
u30_20:
	line	80
	
i1l1946:	
;shy_3.c: 80: PORTD = ~0X01;
	movlw	(0FEh)
	movwf	(8)	;volatile
	goto	i1l1948
	line	81
	
i1l734:	
	line	82
	
i1l1948:	
;shy_3.c: 81: }
;shy_3.c: 82: sound_delay();sound_delay();sound_delay();
	fcall	_sound_delay
	
i1l1950:	
	fcall	_sound_delay
	
i1l1952:	
	fcall	_sound_delay
	goto	i1l1954
	line	83
	
i1l730:	
	line	85
	
i1l1954:	
;shy_3.c: 83: }
;shy_3.c: 85: y = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_int_rb+0)+0
	movf	(??_int_rb+0)+0,w
	movwf	(_y)
	line	86
	
i1l1956:	
;shy_3.c: 86: RBIF = 0;
	bcf	(88/8),(88)&7
	goto	i1l735
	line	87
	
i1l729:	
	line	88
	
i1l735:	
	movf	(??_int_rb+4),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_int_rb+3),w
	movwf	pclath
	movf	(??_int_rb+2),w
	movwf	fsr0
	swapf	(??_int_rb+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_int_rb
	__end_of_int_rb:
;; =============== function _int_rb ends ============

	signat	_int_rb,88
	global	_sound_delay
psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:

;; *************** function _sound_delay *****************
;; Defined at:
;;		line 38 in file "E:\MPLAB_IDE\shy_3\shy_3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    3[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay1
;;		_delay3
;;		_delay2
;;		_delay4
;; This function is called by:
;;		_int_rb
;; This function uses a non-reentrant model
;;
psect	text166
	file	"E:\MPLAB_IDE\shy_3\shy_3.c"
	line	38
	global	__size_of_sound_delay
	__size_of_sound_delay	equ	__end_of_sound_delay-_sound_delay
	
_sound_delay:	
	opt	stack 5
; Regs used in _sound_delay: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
i1l1868:	
;shy_3.c: 39: unsigned int i;
;shy_3.c: 40: for (i = 300; i > 0; i--) {
	movlw	low(012Ch)
	movwf	(sound_delay@i)
	movlw	high(012Ch)
	movwf	((sound_delay@i))+1
	
i1l1870:	
	movf	((sound_delay@i+1)),w
	iorwf	((sound_delay@i)),w
	skipz
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l1874
u17_20:
	goto	i1l1882
	
i1l1872:	
	goto	i1l1882
	
i1l717:	
	line	41
	
i1l1874:	
;shy_3.c: 41: RE0 = !RE0;
	movlw	1<<((72)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((72)/8),f
	line	42
	
i1l1876:	
;shy_3.c: 42: delay1();
	fcall	_delay1
	line	40
	
i1l1878:	
	movlw	low(01h)
	subwf	(sound_delay@i),f
	movlw	high(01h)
	skipc
	decf	(sound_delay@i+1),f
	subwf	(sound_delay@i+1),f
	
i1l1880:	
	movf	((sound_delay@i+1)),w
	iorwf	((sound_delay@i)),w
	skipz
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l1874
u18_20:
	goto	i1l1882
	
i1l718:	
	line	44
	
i1l1882:	
;shy_3.c: 43: }
;shy_3.c: 44: for (i = 300; i > 0; i--) {
	movlw	low(012Ch)
	movwf	(sound_delay@i)
	movlw	high(012Ch)
	movwf	((sound_delay@i))+1
	
i1l1884:	
	movf	((sound_delay@i+1)),w
	iorwf	((sound_delay@i)),w
	skipz
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l1888
u19_20:
	goto	i1l1896
	
i1l1886:	
	goto	i1l1896
	
i1l719:	
	line	45
	
i1l1888:	
;shy_3.c: 45: RE0 = !RE0;
	movlw	1<<((72)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((72)/8),f
	line	46
	
i1l1890:	
;shy_3.c: 46: delay3();
	fcall	_delay3
	line	44
	
i1l1892:	
	movlw	low(01h)
	subwf	(sound_delay@i),f
	movlw	high(01h)
	skipc
	decf	(sound_delay@i+1),f
	subwf	(sound_delay@i+1),f
	
i1l1894:	
	movf	((sound_delay@i+1)),w
	iorwf	((sound_delay@i)),w
	skipz
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l1888
u20_20:
	goto	i1l1896
	
i1l720:	
	line	48
	
i1l1896:	
;shy_3.c: 47: }
;shy_3.c: 48: for (i = 100; i > 0; i--) {
	movlw	low(064h)
	movwf	(sound_delay@i)
	movlw	high(064h)
	movwf	((sound_delay@i))+1
	
i1l1898:	
	movf	((sound_delay@i+1)),w
	iorwf	((sound_delay@i)),w
	skipz
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l1902
u21_20:
	goto	i1l1910
	
i1l1900:	
	goto	i1l1910
	
i1l721:	
	line	49
	
i1l1902:	
;shy_3.c: 49: RE0 = !RE0;
	movlw	1<<((72)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((72)/8),f
	line	50
	
i1l1904:	
;shy_3.c: 50: delay2();
	fcall	_delay2
	line	48
	
i1l1906:	
	movlw	low(01h)
	subwf	(sound_delay@i),f
	movlw	high(01h)
	skipc
	decf	(sound_delay@i+1),f
	subwf	(sound_delay@i+1),f
	
i1l1908:	
	movf	((sound_delay@i+1)),w
	iorwf	((sound_delay@i)),w
	skipz
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l1902
u22_20:
	goto	i1l1910
	
i1l722:	
	line	52
	
i1l1910:	
;shy_3.c: 51: }
;shy_3.c: 52: for (i = 100; i > 0; i--) {
	movlw	low(064h)
	movwf	(sound_delay@i)
	movlw	high(064h)
	movwf	((sound_delay@i))+1
	
i1l1912:	
	movf	((sound_delay@i+1)),w
	iorwf	((sound_delay@i)),w
	skipz
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l1916
u23_20:
	goto	i1l725
	
i1l1914:	
	goto	i1l725
	
i1l723:	
	line	53
	
i1l1916:	
;shy_3.c: 53: RE0 = !RE0;
	movlw	1<<((72)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((72)/8),f
	line	54
	
i1l1918:	
;shy_3.c: 54: delay4();
	fcall	_delay4
	line	52
	
i1l1920:	
	movlw	low(01h)
	subwf	(sound_delay@i),f
	movlw	high(01h)
	skipc
	decf	(sound_delay@i+1),f
	subwf	(sound_delay@i+1),f
	
i1l1922:	
	movf	((sound_delay@i+1)),w
	iorwf	((sound_delay@i)),w
	skipz
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l1916
u24_20:
	goto	i1l725
	
i1l724:	
	line	56
	
i1l725:	
	return
	opt stack 0
GLOBAL	__end_of_sound_delay
	__end_of_sound_delay:
;; =============== function _sound_delay ends ============

	signat	_sound_delay,88
	global	_delay4
psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:

;; *************** function _delay4 *****************
;; Defined at:
;;		line 30 in file "E:\MPLAB_IDE\shy_3\shy_3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i2              1    2[COMMON] unsigned char 
;;  i1              1    1[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sound_delay
;; This function uses a non-reentrant model
;;
psect	text167
	file	"E:\MPLAB_IDE\shy_3\shy_3.c"
	line	30
	global	__size_of_delay4
	__size_of_delay4	equ	__end_of_delay4-_delay4
	
_delay4:	
	opt	stack 5
; Regs used in _delay4: [wreg+status,2+status,0]
	line	32
	
i1l1848:	
;shy_3.c: 31: char i1, i2;
;shy_3.c: 32: for (i1 = 11; i1 > 0; i1--) {
	movlw	(0Bh)
	movwf	(??_delay4+0)+0
	movf	(??_delay4+0)+0,w
	movwf	(delay4@i1)
	
i1l1850:	
	movf	(delay4@i1),f
	skipz
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l1854
u13_20:
	goto	i1l714
	
i1l1852:	
	goto	i1l714
	
i1l710:	
	line	33
	
i1l1854:	
;shy_3.c: 33: for (i2 = 0x19; i2 > 0; i2--);
	movlw	(019h)
	movwf	(??_delay4+0)+0
	movf	(??_delay4+0)+0,w
	movwf	(delay4@i2)
	
i1l1856:	
	movf	(delay4@i2),f
	skipz
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l1860
u14_20:
	goto	i1l1864
	
i1l1858:	
	goto	i1l1864
	
i1l712:	
	
i1l1860:	
	movlw	low(01h)
	subwf	(delay4@i2),f
	
i1l1862:	
	movf	(delay4@i2),f
	skipz
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l1860
u15_20:
	goto	i1l1864
	
i1l713:	
	line	32
	
i1l1864:	
	movlw	low(01h)
	subwf	(delay4@i1),f
	
i1l1866:	
	movf	(delay4@i1),f
	skipz
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l1854
u16_20:
	goto	i1l714
	
i1l711:	
	line	35
	
i1l714:	
	return
	opt stack 0
GLOBAL	__end_of_delay4
	__end_of_delay4:
;; =============== function _delay4 ends ============

	signat	_delay4,88
	global	_delay3
psect	text168,local,class=CODE,delta=2
global __ptext168
__ptext168:

;; *************** function _delay3 *****************
;; Defined at:
;;		line 22 in file "E:\MPLAB_IDE\shy_3\shy_3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i2              1    2[COMMON] unsigned char 
;;  i1              1    1[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sound_delay
;; This function uses a non-reentrant model
;;
psect	text168
	file	"E:\MPLAB_IDE\shy_3\shy_3.c"
	line	22
	global	__size_of_delay3
	__size_of_delay3	equ	__end_of_delay3-_delay3
	
_delay3:	
	opt	stack 5
; Regs used in _delay3: [wreg+status,2+status,0]
	line	24
	
i1l1828:	
;shy_3.c: 23: char i1, i2;
;shy_3.c: 24: for (i1 = 7; i1 > 0; i1--) {
	movlw	(07h)
	movwf	(??_delay3+0)+0
	movf	(??_delay3+0)+0,w
	movwf	(delay3@i1)
	
i1l1830:	
	movf	(delay3@i1),f
	skipz
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l1834
u9_20:
	goto	i1l707
	
i1l1832:	
	goto	i1l707
	
i1l703:	
	line	25
	
i1l1834:	
;shy_3.c: 25: for (i2 = 0x19; i2 > 0; i2--);
	movlw	(019h)
	movwf	(??_delay3+0)+0
	movf	(??_delay3+0)+0,w
	movwf	(delay3@i2)
	
i1l1836:	
	movf	(delay3@i2),f
	skipz
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l1840
u10_20:
	goto	i1l1844
	
i1l1838:	
	goto	i1l1844
	
i1l705:	
	
i1l1840:	
	movlw	low(01h)
	subwf	(delay3@i2),f
	
i1l1842:	
	movf	(delay3@i2),f
	skipz
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l1840
u11_20:
	goto	i1l1844
	
i1l706:	
	line	24
	
i1l1844:	
	movlw	low(01h)
	subwf	(delay3@i1),f
	
i1l1846:	
	movf	(delay3@i1),f
	skipz
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l1834
u12_20:
	goto	i1l707
	
i1l704:	
	line	27
	
i1l707:	
	return
	opt stack 0
GLOBAL	__end_of_delay3
	__end_of_delay3:
;; =============== function _delay3 ends ============

	signat	_delay3,88
	global	_delay2
psect	text169,local,class=CODE,delta=2
global __ptext169
__ptext169:

;; *************** function _delay2 *****************
;; Defined at:
;;		line 14 in file "E:\MPLAB_IDE\shy_3\shy_3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i2              1    2[COMMON] unsigned char 
;;  i1              1    1[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sound_delay
;; This function uses a non-reentrant model
;;
psect	text169
	file	"E:\MPLAB_IDE\shy_3\shy_3.c"
	line	14
	global	__size_of_delay2
	__size_of_delay2	equ	__end_of_delay2-_delay2
	
_delay2:	
	opt	stack 5
; Regs used in _delay2: [wreg+status,2+status,0]
	line	16
	
i1l1808:	
;shy_3.c: 15: char i1, i2;
;shy_3.c: 16: for (i1 = 15; i1 > 0; i1--) {
	movlw	(0Fh)
	movwf	(??_delay2+0)+0
	movf	(??_delay2+0)+0,w
	movwf	(delay2@i1)
	
i1l1810:	
	movf	(delay2@i1),f
	skipz
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1814
u5_20:
	goto	i1l700
	
i1l1812:	
	goto	i1l700
	
i1l696:	
	line	17
	
i1l1814:	
;shy_3.c: 17: for (i2 = 0x19; i2 > 0; i2--);
	movlw	(019h)
	movwf	(??_delay2+0)+0
	movf	(??_delay2+0)+0,w
	movwf	(delay2@i2)
	
i1l1816:	
	movf	(delay2@i2),f
	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l1820
u6_20:
	goto	i1l1824
	
i1l1818:	
	goto	i1l1824
	
i1l698:	
	
i1l1820:	
	movlw	low(01h)
	subwf	(delay2@i2),f
	
i1l1822:	
	movf	(delay2@i2),f
	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l1820
u7_20:
	goto	i1l1824
	
i1l699:	
	line	16
	
i1l1824:	
	movlw	low(01h)
	subwf	(delay2@i1),f
	
i1l1826:	
	movf	(delay2@i1),f
	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l1814
u8_20:
	goto	i1l700
	
i1l697:	
	line	19
	
i1l700:	
	return
	opt stack 0
GLOBAL	__end_of_delay2
	__end_of_delay2:
;; =============== function _delay2 ends ============

	signat	_delay2,88
	global	_delay1
psect	text170,local,class=CODE,delta=2
global __ptext170
__ptext170:

;; *************** function _delay1 *****************
;; Defined at:
;;		line 6 in file "E:\MPLAB_IDE\shy_3\shy_3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i2              1    2[COMMON] unsigned char 
;;  i1              1    1[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sound_delay
;; This function uses a non-reentrant model
;;
psect	text170
	file	"E:\MPLAB_IDE\shy_3\shy_3.c"
	line	6
	global	__size_of_delay1
	__size_of_delay1	equ	__end_of_delay1-_delay1
	
_delay1:	
	opt	stack 5
; Regs used in _delay1: [wreg+status,2+status,0]
	line	8
	
i1l1788:	
;shy_3.c: 7: char i1, i2;
;shy_3.c: 8: for (i1 = 3; i1 > 0; i1--) {
	movlw	(03h)
	movwf	(??_delay1+0)+0
	movf	(??_delay1+0)+0,w
	movwf	(delay1@i1)
	
i1l1790:	
	movf	(delay1@i1),f
	skipz
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1794
u1_20:
	goto	i1l693
	
i1l1792:	
	goto	i1l693
	
i1l689:	
	line	9
	
i1l1794:	
;shy_3.c: 9: for (i2 = 0x19; i2 > 0; i2--);
	movlw	(019h)
	movwf	(??_delay1+0)+0
	movf	(??_delay1+0)+0,w
	movwf	(delay1@i2)
	
i1l1796:	
	movf	(delay1@i2),f
	skipz
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1800
u2_20:
	goto	i1l1804
	
i1l1798:	
	goto	i1l1804
	
i1l691:	
	
i1l1800:	
	movlw	low(01h)
	subwf	(delay1@i2),f
	
i1l1802:	
	movf	(delay1@i2),f
	skipz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1800
u3_20:
	goto	i1l1804
	
i1l692:	
	line	8
	
i1l1804:	
	movlw	low(01h)
	subwf	(delay1@i1),f
	
i1l1806:	
	movf	(delay1@i1),f
	skipz
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1794
u4_20:
	goto	i1l693
	
i1l690:	
	line	11
	
i1l693:	
	return
	opt stack 0
GLOBAL	__end_of_delay1
	__end_of_delay1:
;; =============== function _delay1 ends ============

	signat	_delay1,88
psect	text171,local,class=CODE,delta=2
global __ptext171
__ptext171:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
