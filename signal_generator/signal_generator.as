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
# 2 "E:\MPLAB_IDE\signal_generator\signal_generator.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\MPLAB_IDE\signal_generator\signal_generator.c"
	dw 0xFF29 ;#
	FNCALL	_main,_Init_LCD
	FNCALL	_main,_ENABLE
	FNCALL	_main,_DELAY
	FNCALL	_main,_SendByte
	FNCALL	_main,_Init_tmr2
	FNCALL	_main,_SweepKeyboard
	FNCALL	_main,_Display_LCD
	FNCALL	_Display_LCD,_SendByte
	FNCALL	_Display_LCD,_ENABLE1
	FNCALL	_SendByte,_ENABLE
	FNCALL	_SendByte,_ENABLE1
	FNCALL	_Init_LCD,_DELAY
	FNCALL	_ENABLE1,_DELAY
	FNCALL	_ENABLE,_DELAY
	FNROOT	_main
	FNCALL	intlevel1,_tmr2
	global	intlevel1
	FNROOT	intlevel1
	global	_TABLE
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	18

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
	global	_dat
	global	_y
	global	_a
	global	_adh
	global	_adl
	global	_b
	global	_count
	global	_preres
	global	_result
	global	_string1
	global	_string2
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_CARRY
_CARRY	set	24
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
	global	_RE0
_RE0	set	72
	global	_TMR2IF
_TMR2IF	set	97
	global	_ADCON1
_ADCON1	set	159
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TMR2IE
_TMR2IE	set	1121
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
	
STR_17:	
	retlw	83	;'S'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	71	;'G'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_18:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	75	;'K'
	retlw	48	;'0'
	retlw	45	;'-'
	retlw	75	;'K'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_13:	
	retlw	75	;'K'
	retlw	67	;'C'
	retlw	58	;':'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_14:	
	retlw	75	;'K'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_15:	
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	52	;'4'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_16:	
	retlw	75	;'K'
	retlw	70	;'F'
	retlw	58	;':'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_1:	
	retlw	75	;'K'
	retlw	48	;'0'
	retlw	58	;':'
	retlw	48	;'0'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_7:	
	retlw	75	;'K'
	retlw	54	;'6'
	retlw	58	;':'
	retlw	48	;'0'
	retlw	46	;'.'
	retlw	53	;'5'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_3:	
	retlw	75	;'K'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_11:	
	retlw	75	;'K'
	retlw	65	;'A'
	retlw	58	;':'
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_4:	
	retlw	75	;'K'
	retlw	51	;'3'
	retlw	58	;':'
	retlw	52	;'4'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_5:	
	retlw	75	;'K'
	retlw	52	;'4'
	retlw	58	;':'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_12:	
	retlw	75	;'K'
	retlw	66	;'B'
	retlw	58	;':'
	retlw	56	;'8'
	retlw	48	;'0'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_6:	
	retlw	75	;'K'
	retlw	53	;'5'
	retlw	58	;':'
	retlw	49	;'1'
	retlw	107	;'k'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	75	;'K'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	49	;'1'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_8:	
	retlw	75	;'K'
	retlw	55	;'7'
	retlw	58	;':'
	retlw	50	;'2'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_9:	
	retlw	75	;'K'
	retlw	56	;'8'
	retlw	58	;':'
	retlw	52	;'4'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_10:	
	retlw	75	;'K'
	retlw	57	;'9'
	retlw	58	;':'
	retlw	53	;'5'
	retlw	72	;'H'
	retlw	122	;'z'
	retlw	32	;' '
	retlw	13
	retlw	10
	retlw	0
psect	strings
	file	"signal_generator.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      1

_preres:
       ds      1

_result:
       ds      1

_string1:
       ds      1

_string2:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_dat:
       ds      2

_y:
       ds      2

_a:
       ds      1

_adh:
       ds      1

_adl:
       ds      1

_b:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
_TABLE:
       ds      16

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
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
	global	?_SendByte
?_SendByte:	; 0 bytes @ 0x0
	global	?_Display_LCD
?_Display_LCD:	; 0 bytes @ 0x0
	global	?_SweepKeyboard
?_SweepKeyboard:	; 0 bytes @ 0x0
	global	?_Init_tmr2
?_Init_tmr2:	; 0 bytes @ 0x0
	global	?_tmr2
?_tmr2:	; 0 bytes @ 0x0
	global	??_tmr2
??_tmr2:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_DELAY
??_DELAY:	; 0 bytes @ 0x0
	global	??_SweepKeyboard
??_SweepKeyboard:	; 0 bytes @ 0x0
	global	??_Init_tmr2
??_Init_tmr2:	; 0 bytes @ 0x0
	global	DELAY@i
DELAY@i:	; 2 bytes @ 0x0
	ds	2
	global	??_ENABLE
??_ENABLE:	; 0 bytes @ 0x2
	global	??_ENABLE1
??_ENABLE1:	; 0 bytes @ 0x2
	global	??_Init_LCD
??_Init_LCD:	; 0 bytes @ 0x2
	global	??_SendByte
??_SendByte:	; 0 bytes @ 0x2
	ds	1
	global	SendByte@str
SendByte@str:	; 1 bytes @ 0x3
	ds	1
	global	??_Display_LCD
??_Display_LCD:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 213, constant 0, data 16, bss 13, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80      4      28
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; SendByte@str	PTR unsigned char  size(1) Largest target is 20
;;		 -> STR_18(CODE[15]), STR_17(CODE[20]), STR_16(CODE[12]), STR_15(CODE[12]), 
;;		 -> STR_14(CODE[12]), STR_13(CODE[12]), STR_12(CODE[11]), STR_11(CODE[11]), 
;;		 -> STR_10(CODE[10]), STR_9(CODE[10]), STR_8(CODE[10]), STR_7(CODE[12]), 
;;		 -> STR_6(CODE[11]), STR_5(CODE[11]), STR_4(CODE[11]), STR_3(CODE[11]), 
;;		 -> STR_2(CODE[10]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _tmr2 in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_SendByte
;;   _Display_LCD->_SendByte
;;   _Init_LCD->_DELAY
;;   _ENABLE1->_DELAY
;;   _ENABLE->_DELAY
;;
;; Critical Paths under _tmr2 in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _tmr2 in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _tmr2 in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _tmr2 in BANK2
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
;; (0) _main                                                 0     0      0     674
;;                           _Init_LCD
;;                             _ENABLE
;;                              _DELAY
;;                           _SendByte
;;                          _Init_tmr2
;;                      _SweepKeyboard
;;                        _Display_LCD
;; ---------------------------------------------------------------------------------
;; (1) _Display_LCD                                          0     0      0     269
;;                           _SendByte
;;                            _ENABLE1
;; ---------------------------------------------------------------------------------
;; (2) _SendByte                                             2     2      0     201
;;                                              2 BANK0      2     2      0
;;                             _ENABLE
;;                            _ENABLE1
;; ---------------------------------------------------------------------------------
;; (1) _Init_LCD                                             0     0      0      68
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (2) _ENABLE1                                              0     0      0      68
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (3) _ENABLE                                               0     0      0      68
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _Init_tmr2                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _SweepKeyboard                                        1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _DELAY                                                2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _tmr2                                                 5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Init_LCD
;;     _DELAY
;;   _ENABLE
;;     _DELAY
;;   _DELAY
;;   _SendByte
;;     _ENABLE
;;       _DELAY
;;     _ENABLE1
;;       _DELAY
;;   _Init_tmr2
;;   _SweepKeyboard
;;   _Display_LCD
;;     _SendByte
;;       _ENABLE
;;         _DELAY
;;       _ENABLE1
;;         _DELAY
;;     _ENABLE1
;;       _DELAY
;;
;; _tmr2 (ROOT)
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
;;DATA                 0      0      2A      12        0.0%
;;ABS                  0      0      26       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      4      1C       5       35.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 172 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Init_LCD
;;		_ENABLE
;;		_DELAY
;;		_SendByte
;;		_Init_tmr2
;;		_SweepKeyboard
;;		_Display_LCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	172
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	174
	
l3362:	
;signal_generator.c: 174: Init_LCD();
	fcall	_Init_LCD
	line	176
	
l3364:	
;signal_generator.c: 176: PORTD=0x01;ENABLE();
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3366:	
	fcall	_ENABLE
	line	177
	
l3368:	
;signal_generator.c: 177: DELAY();
	fcall	_DELAY
	line	179
	
l3370:	
;signal_generator.c: 179: SendByte("Signal Generator \r\n");
	movlw	((STR_17-__stringbase))&0ffh
	fcall	_SendByte
	line	180
	
l3372:	
;signal_generator.c: 180: DELAY();
	fcall	_DELAY
	line	181
	
l3374:	
;signal_generator.c: 181: SendByte("Press K0-KF \r\n");
	movlw	((STR_18-__stringbase))&0ffh
	fcall	_SendByte
	line	182
	
l3376:	
;signal_generator.c: 182: DELAY();
	fcall	_DELAY
	line	185
	
l3378:	
;signal_generator.c: 185: TRISB=0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	186
	
l3380:	
;signal_generator.c: 186: nRBPU=0;
	bcf	(1039/8)^080h,(1039)&7
	line	187
	
l3382:	
;signal_generator.c: 187: result=0x00;
	clrf	(_result)
	line	188
	
l3384:	
;signal_generator.c: 188: preres=0x00;
	clrf	(_preres)
	line	191
	
l3386:	
;signal_generator.c: 191: dat = 50000;
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(0C350h)
	movwf	((_dat))+1
	line	194
	
l3388:	
;signal_generator.c: 194: TRISE0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1096/8)^080h,(1096)&7
	line	195
	
l3390:	
;signal_generator.c: 195: ADCON1 = 7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	196
	
l3392:	
;signal_generator.c: 196: TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7
	line	198
;signal_generator.c: 198: Init_tmr2();
	fcall	_Init_tmr2
	line	200
;signal_generator.c: 200: while(1) {
	
l772:	
	line	201
;signal_generator.c: 201: SweepKeyboard();
	fcall	_SweepKeyboard
	line	202
	
l3394:	
;signal_generator.c: 202: Display_LCD();
	fcall	_Display_LCD
	goto	l772
	line	203
	
l773:	
	line	200
	goto	l772
	
l774:	
	line	204
	
l775:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Display_LCD
psect	text393,local,class=CODE,delta=2
global __ptext393
__ptext393:

;; *************** function _Display_LCD *****************
;; Defined at:
;;		line 77 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SendByte
;;		_ENABLE1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text393
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	77
	global	__size_of_Display_LCD
	__size_of_Display_LCD	equ	__end_of_Display_LCD-_Display_LCD
	
_Display_LCD:	
	opt	stack 3
; Regs used in _Display_LCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	78
	
l3276:	
;signal_generator.c: 78: switch(result) {
	goto	l3358
	line	79
;signal_generator.c: 79: case 0xEE: dat = (5000/0.1);y=0; SendByte("K0:0.1Hz \r\n");break;
	
l730:	
	
l3278:	
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(0C350h)
	movwf	((_dat))+1
	
l3280:	
	clrf	(_y)
	clrf	(_y+1)
	
l3282:	
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	80
;signal_generator.c: 80: case 0xED: dat = (5000/1);y=0; SendByte("K1:1Hz \r\n");break;
	
l732:	
	
l3284:	
	movlw	low(01388h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(01388h)
	movwf	((_dat))+1
	
l3286:	
	clrf	(_y)
	clrf	(_y+1)
	
l3288:	
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	81
;signal_generator.c: 81: case 0xEB: dat = (5000/10);y=0; SendByte("K2:10Hz \r\n");break;
	
l733:	
	
l3290:	
	movlw	low(01F4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(01F4h)
	movwf	((_dat))+1
	
l3292:	
	clrf	(_y)
	clrf	(_y+1)
	
l3294:	
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	82
;signal_generator.c: 82: case 0xE7: dat = (500000/40); y=1; SendByte("K3:40Hz \r\n");break;
	
l734:	
	
l3296:	
	movlw	low(030D4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(030D4h)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3298:	
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	83
;signal_generator.c: 83: case 0xDE: dat = (500000/50); y=1; SendByte("K4:50Hz \r\n");break;
	
l735:	
	
l3300:	
	movlw	low(02710h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(02710h)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3302:	
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	84
;signal_generator.c: 84: case 0xDD: dat = (500000/1000);y=1;SendByte("K5:1kHz \r\n");break;
	
l736:	
	
l3304:	
	movlw	low(01F4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(01F4h)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3306:	
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	85
;signal_generator.c: 85: case 0xDB: dat = (5000/0.5);y=0;SendByte("K6:0.5Hz \r\n");break;
	
l737:	
	
l3308:	
	movlw	low(02710h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(02710h)
	movwf	((_dat))+1
	
l3310:	
	clrf	(_y)
	clrf	(_y+1)
	
l3312:	
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	86
;signal_generator.c: 86: case 0xD7: dat = (5000/2);y=0;SendByte("K7:2Hz \r\n");break;
	
l738:	
	
l3314:	
	movlw	low(09C4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(09C4h)
	movwf	((_dat))+1
	
l3316:	
	clrf	(_y)
	clrf	(_y+1)
	
l3318:	
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	87
;signal_generator.c: 87: case 0xBE: dat = (5000/4);y=0;SendByte("K8:4Hz \r\n");break;
	
l739:	
	
l3320:	
	movlw	low(04E2h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(04E2h)
	movwf	((_dat))+1
	
l3322:	
	clrf	(_y)
	clrf	(_y+1)
	
l3324:	
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	88
;signal_generator.c: 88: case 0xBD: dat = (5000/5);y=0;SendByte("K9:5Hz \r\n");break;
	
l740:	
	
l3326:	
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(03E8h)
	movwf	((_dat))+1
	
l3328:	
	clrf	(_y)
	clrf	(_y+1)
	
l3330:	
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	89
;signal_generator.c: 89: case 0xBB: dat = (500000/20);y=1;SendByte("KA:20Hz \r\n");break;
	
l741:	
	
l3332:	
	movlw	low(061A8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(061A8h)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3334:	
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	90
;signal_generator.c: 90: case 0xB7: dat = (500000/80);y=1;SendByte("KB:80Hz \r\n");break;
	
l742:	
	
l3336:	
	movlw	low(0186Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(0186Ah)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3338:	
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	91
;signal_generator.c: 91: case 0x7E: dat = (500000/100);y=1;SendByte("KC:100Hz \r\n");break;
	
l743:	
	
l3340:	
	movlw	low(01388h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(01388h)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3342:	
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	92
;signal_generator.c: 92: case 0x7D: dat = (500000/200);y=1;SendByte("KD:200Hz \r\n");break;
	
l744:	
	
l3344:	
	movlw	low(09C4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(09C4h)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3346:	
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	93
;signal_generator.c: 93: case 0x7B: dat = (500000/400);y=1;SendByte("KE:400Hz \r\n");break;
	
l745:	
	
l3348:	
	movlw	low(04E2h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(04E2h)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3350:	
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	94
;signal_generator.c: 94: case 0x77: dat = (500000/500);y=1;SendByte("KF:500Hz \r\n");break;
	
l746:	
	
l3352:	
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dat)
	movlw	high(03E8h)
	movwf	((_dat))+1
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	
l3354:	
	movlw	((STR_16-__stringbase))&0ffh
	fcall	_SendByte
	goto	l3360
	line	95
	
l3356:	
;signal_generator.c: 95: }
	goto	l3360
	line	78
	
l729:	
	
l3358:	
	movf	(_result),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 119 to 238
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	119^0	; case 119
	skipnz
	goto	l3352
	xorlw	123^119	; case 123
	skipnz
	goto	l3348
	xorlw	125^123	; case 125
	skipnz
	goto	l3344
	xorlw	126^125	; case 126
	skipnz
	goto	l3340
	xorlw	183^126	; case 183
	skipnz
	goto	l3336
	xorlw	187^183	; case 187
	skipnz
	goto	l3332
	xorlw	189^187	; case 189
	skipnz
	goto	l3326
	xorlw	190^189	; case 190
	skipnz
	goto	l3320
	xorlw	215^190	; case 215
	skipnz
	goto	l3314
	xorlw	219^215	; case 219
	skipnz
	goto	l3308
	xorlw	221^219	; case 221
	skipnz
	goto	l3304
	xorlw	222^221	; case 222
	skipnz
	goto	l3300
	xorlw	231^222	; case 231
	skipnz
	goto	l3296
	xorlw	235^231	; case 235
	skipnz
	goto	l3290
	xorlw	237^235	; case 237
	skipnz
	goto	l3284
	xorlw	238^237	; case 238
	skipnz
	goto	l3278
	goto	l3360
	opt asmopt_on

	line	95
	
l731:	
	line	96
	
l3360:	
;signal_generator.c: 96: ENABLE1();
	fcall	_ENABLE1
	line	97
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of_Display_LCD
	__end_of_Display_LCD:
;; =============== function _Display_LCD ends ============

	signat	_Display_LCD,88
	global	_SendByte
psect	text394,local,class=CODE,delta=2
global __ptext394
__ptext394:

;; *************** function _SendByte *****************
;; Defined at:
;;		line 64 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> STR_18(15), STR_17(20), STR_16(12), STR_15(12), 
;;		 -> STR_14(12), STR_13(12), STR_12(11), STR_11(11), 
;;		 -> STR_10(10), STR_9(10), STR_8(10), STR_7(12), 
;;		 -> STR_6(11), STR_5(11), STR_4(11), STR_3(11), 
;;		 -> STR_2(10), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  str             1    3[BANK0 ] PTR unsigned char 
;;		 -> STR_18(15), STR_17(20), STR_16(12), STR_15(12), 
;;		 -> STR_14(12), STR_13(12), STR_12(11), STR_11(11), 
;;		 -> STR_10(10), STR_9(10), STR_8(10), STR_7(12), 
;;		 -> STR_6(11), STR_5(11), STR_4(11), STR_3(11), 
;;		 -> STR_2(10), STR_1(12), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ENABLE
;;		_ENABLE1
;; This function is called by:
;;		_Display_LCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text394
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	64
	global	__size_of_SendByte
	__size_of_SendByte	equ	__end_of_SendByte-_SendByte
	
_SendByte:	
	opt	stack 3
; Regs used in _SendByte: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SendByte@str stored from wreg
	line	66
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SendByte@str)
	
l3256:	
;signal_generator.c: 66: PORTD=0x38;ENABLE();
	movlw	(038h)
	movwf	(8)	;volatile
	
l3258:	
	fcall	_ENABLE
	line	67
	
l3260:	
;signal_generator.c: 67: PORTD=0x0C;ENABLE();
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	fcall	_ENABLE
	line	68
	
l3262:	
;signal_generator.c: 68: PORTD=0x06;ENABLE();
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3264:	
	fcall	_ENABLE
	line	69
;signal_generator.c: 69: PORTD=0x80;ENABLE();
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3266:	
	fcall	_ENABLE
	line	70
;signal_generator.c: 70: while(*str != '\0') {
	goto	l3274
	
l724:	
	line	71
	
l3268:	
;signal_generator.c: 71: PORTD = *str++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendByte@str),w
	movwf	fsr0
	fcall	stringdir
	movwf	(8)	;volatile
	
l3270:	
	movlw	(01h)
	movwf	(??_SendByte+0)+0
	movf	(??_SendByte+0)+0,w
	addwf	(SendByte@str),f
	line	72
	
l3272:	
;signal_generator.c: 72: ENABLE1();
	fcall	_ENABLE1
	goto	l3274
	line	73
	
l723:	
	line	70
	
l3274:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendByte@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l3268
u2490:
	goto	l726
	
l725:	
	line	74
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_SendByte
	__end_of_SendByte:
;; =============== function _SendByte ends ============

	signat	_SendByte,4216
	global	_Init_LCD
psect	text395,local,class=CODE,delta=2
global __ptext395
__ptext395:

;; *************** function _Init_LCD *****************
;; Defined at:
;;		line 52 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
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
psect	text395
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	52
	global	__size_of_Init_LCD
	__size_of_Init_LCD	equ	__end_of_Init_LCD-_Init_LCD
	
_Init_LCD:	
	opt	stack 5
; Regs used in _Init_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	53
	
l3242:	
;signal_generator.c: 53: TRISD=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	54
	
l3244:	
;signal_generator.c: 54: ADCON1=7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	55
	
l3246:	
;signal_generator.c: 55: TRISA=0;
	clrf	(133)^080h	;volatile
	line	56
	
l3248:	
;signal_generator.c: 56: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	57
	
l3250:	
;signal_generator.c: 57: PORTD=0;
	clrf	(8)	;volatile
	line	58
	
l3252:	
;signal_generator.c: 58: RA3=1;
	bsf	(43/8),(43)&7
	line	60
	
l3254:	
;signal_generator.c: 60: DELAY();
	fcall	_DELAY
	line	61
	
l720:	
	return
	opt stack 0
GLOBAL	__end_of_Init_LCD
	__end_of_Init_LCD:
;; =============== function _Init_LCD ends ============

	signat	_Init_LCD,88
	global	_ENABLE1
psect	text396,local,class=CODE,delta=2
global __ptext396
__ptext396:

;; *************** function _ENABLE1 *****************
;; Defined at:
;;		line 43 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
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
;;		_SendByte
;;		_Display_LCD
;; This function uses a non-reentrant model
;;
psect	text396
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	43
	global	__size_of_ENABLE1
	__size_of_ENABLE1	equ	__end_of_ENABLE1-_ENABLE1
	
_ENABLE1:	
	opt	stack 4
; Regs used in _ENABLE1: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l3236:	
;signal_generator.c: 44: RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	line	45
;signal_generator.c: 45: RA4=0;
	bcf	(44/8),(44)&7
	line	46
;signal_generator.c: 46: RA3=0;
	bcf	(43/8),(43)&7
	line	47
	
l3238:	
;signal_generator.c: 47: DELAY();
	fcall	_DELAY
	line	48
	
l3240:	
;signal_generator.c: 48: RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	49
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE1
	__end_of_ENABLE1:
;; =============== function _ENABLE1 ends ============

	signat	_ENABLE1,88
	global	_ENABLE
psect	text397,local,class=CODE,delta=2
global __ptext397
__ptext397:

;; *************** function _ENABLE *****************
;; Defined at:
;;		line 34 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
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
;;		_SendByte
;;		_main
;; This function uses a non-reentrant model
;;
psect	text397
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	34
	global	__size_of_ENABLE
	__size_of_ENABLE	equ	__end_of_ENABLE-_ENABLE
	
_ENABLE:	
	opt	stack 3
; Regs used in _ENABLE: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l3230:	
;signal_generator.c: 35: RA5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	line	36
;signal_generator.c: 36: RA4=0;
	bcf	(44/8),(44)&7
	line	37
;signal_generator.c: 37: RA3=0;
	bcf	(43/8),(43)&7
	line	38
	
l3232:	
;signal_generator.c: 38: DELAY();
	fcall	_DELAY
	line	39
	
l3234:	
;signal_generator.c: 39: RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	40
	
l714:	
	return
	opt stack 0
GLOBAL	__end_of_ENABLE
	__end_of_ENABLE:
;; =============== function _ENABLE ends ============

	signat	_ENABLE,88
	global	_Init_tmr2
psect	text398,local,class=CODE,delta=2
global __ptext398
__ptext398:

;; *************** function _Init_tmr2 *****************
;; Defined at:
;;		line 143 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text398
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	143
	global	__size_of_Init_tmr2
	__size_of_Init_tmr2	equ	__end_of_Init_tmr2-_Init_tmr2
	
_Init_tmr2:	
	opt	stack 6
; Regs used in _Init_tmr2: [wreg+status,2]
	line	145
	
l3224:	
;signal_generator.c: 145: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	146
;signal_generator.c: 146: TRISE0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1096/8)^080h,(1096)&7
	line	147
;signal_generator.c: 147: GIE=1;
	bsf	(95/8),(95)&7
	line	148
;signal_generator.c: 148: PEIE=1;
	bsf	(94/8),(94)&7
	line	149
;signal_generator.c: 149: TMR2IE=1;
	bsf	(1121/8)^080h,(1121)&7
	line	150
;signal_generator.c: 150: TMR2IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7
	line	151
	
l3226:	
;signal_generator.c: 151: T2CON = 0B01111111;
	movlw	(07Fh)
	movwf	(18)	;volatile
	line	152
	
l3228:	
;signal_generator.c: 152: PR2 = dat/256;
	movf	(_dat+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	153
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_Init_tmr2
	__end_of_Init_tmr2:
;; =============== function _Init_tmr2 ends ============

	signat	_Init_tmr2,88
	global	_SweepKeyboard
psect	text399,local,class=CODE,delta=2
global __ptext399
__ptext399:

;; *************** function _SweepKeyboard *****************
;; Defined at:
;;		line 100 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text399
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	100
	global	__size_of_SweepKeyboard
	__size_of_SweepKeyboard	equ	__end_of_SweepKeyboard-_SweepKeyboard
	
_SweepKeyboard:	
	opt	stack 6
; Regs used in _SweepKeyboard: [wreg+status,2]
	line	101
	
l3178:	
;signal_generator.c: 101: PORTB = 0X7f;
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	102
	
l3180:	
# 102 "E:\MPLAB_IDE\signal_generator\signal_generator.c"
nop ;#
psect	text399
	line	103
;signal_generator.c: 103: result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	104
	
l3182:	
;signal_generator.c: 104: result = result & 0x0f;
	movf	(_result),w
	andlw	0Fh
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	105
	
l3184:	
;signal_generator.c: 105: if (result != 0x0f) {
	movf	(_result),w
	xorlw	0Fh
	skipnz
	goto	u2441
	goto	u2440
u2441:
	goto	l3188
u2440:
	line	106
	
l3186:	
;signal_generator.c: 106: result = result | 0x70;
	movf	(_result),w
	iorlw	070h
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	107
;signal_generator.c: 107: } else {
	goto	l751
	
l750:	
	line	108
	
l3188:	
;signal_generator.c: 108: PORTB = 0Xbf;
	movlw	(0BFh)
	movwf	(6)	;volatile
	line	109
	
l3190:	
# 109 "E:\MPLAB_IDE\signal_generator\signal_generator.c"
nop ;#
psect	text399
	line	110
;signal_generator.c: 110: result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	111
	
l3192:	
;signal_generator.c: 111: result = result & 0x0f;
	movf	(_result),w
	andlw	0Fh
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	112
	
l3194:	
;signal_generator.c: 112: if (result != 0xf) {
	movf	(_result),w
	xorlw	0Fh
	skipnz
	goto	u2451
	goto	u2450
u2451:
	goto	l3198
u2450:
	line	113
	
l3196:	
;signal_generator.c: 113: result = result | 0xb0;
	movf	(_result),w
	iorlw	0B0h
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	114
;signal_generator.c: 114: } else {
	goto	l751
	
l752:	
	line	115
	
l3198:	
;signal_generator.c: 115: PORTB = 0Xdf;
	movlw	(0DFh)
	movwf	(6)	;volatile
	line	116
	
l3200:	
# 116 "E:\MPLAB_IDE\signal_generator\signal_generator.c"
nop ;#
psect	text399
	line	117
;signal_generator.c: 117: result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	118
	
l3202:	
;signal_generator.c: 118: result = result & 0x0f;
	movf	(_result),w
	andlw	0Fh
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	119
	
l3204:	
;signal_generator.c: 119: if (result != 0x0f) {
	movf	(_result),w
	xorlw	0Fh
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l3208
u2460:
	line	120
	
l3206:	
;signal_generator.c: 120: result = result | 0xd0;
	movf	(_result),w
	iorlw	0D0h
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	121
;signal_generator.c: 121: } else {
	goto	l751
	
l754:	
	line	122
	
l3208:	
;signal_generator.c: 122: PORTB = 0Xef;
	movlw	(0EFh)
	movwf	(6)	;volatile
	line	123
	
l3210:	
# 123 "E:\MPLAB_IDE\signal_generator\signal_generator.c"
nop ;#
psect	text399
	line	124
;signal_generator.c: 124: result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	125
	
l3212:	
;signal_generator.c: 125: result = result & 0x0f;
	movf	(_result),w
	andlw	0Fh
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	126
	
l3214:	
;signal_generator.c: 126: if (result != 0x0f) {
	movf	(_result),w
	xorlw	0Fh
	skipnz
	goto	u2471
	goto	u2470
u2471:
	goto	l3218
u2470:
	line	127
	
l3216:	
;signal_generator.c: 127: result = result | 0xe0;
	movf	(_result),w
	iorlw	0E0h
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	line	128
;signal_generator.c: 128: } else {
	goto	l751
	
l756:	
	line	129
	
l3218:	
;signal_generator.c: 129: result = 0xff;
	movlw	(0FFh)
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	goto	l751
	line	130
	
l757:	
	goto	l751
	line	131
	
l755:	
	goto	l751
	line	132
	
l753:	
	line	133
	
l751:	
	line	134
;signal_generator.c: 130: }
;signal_generator.c: 131: }
;signal_generator.c: 132: }
;signal_generator.c: 133: }
;signal_generator.c: 134: if(result==0xff)
	movf	(_result),w
	xorlw	0FFh
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l3222
u2480:
	line	135
	
l3220:	
;signal_generator.c: 135: result=preres;
	movf	(_preres),w
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_result)
	goto	l760
	line	136
	
l758:	
	line	137
	
l3222:	
;signal_generator.c: 136: else
;signal_generator.c: 137: preres=result;
	movf	(_result),w
	movwf	(??_SweepKeyboard+0)+0
	movf	(??_SweepKeyboard+0)+0,w
	movwf	(_preres)
	goto	l760
	
l759:	
	line	138
	
l760:	
	return
	opt stack 0
GLOBAL	__end_of_SweepKeyboard
	__end_of_SweepKeyboard:
;; =============== function _SweepKeyboard ends ============

	signat	_SweepKeyboard,88
	global	_DELAY
psect	text400,local,class=CODE,delta=2
global __ptext400
__ptext400:

;; *************** function _DELAY *****************
;; Defined at:
;;		line 28 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ENABLE
;;		_ENABLE1
;;		_Init_LCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text400
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	28
	global	__size_of_DELAY
	__size_of_DELAY	equ	__end_of_DELAY-_DELAY
	
_DELAY:	
	opt	stack 4
; Regs used in _DELAY: [wreg+status,2+status,0]
	line	30
	
l3168:	
;signal_generator.c: 29: unsigned int i;
;signal_generator.c: 30: for(i=999;i>0;i--);
	movlw	low(03E7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DELAY@i)
	movlw	high(03E7h)
	movwf	((DELAY@i))+1
	
l3170:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l3174
u2420:
	goto	l711
	
l3172:	
	goto	l711
	
l709:	
	
l3174:	
	movlw	low(01h)
	subwf	(DELAY@i),f
	movlw	high(01h)
	skipc
	decf	(DELAY@i+1),f
	subwf	(DELAY@i+1),f
	
l3176:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l3174
u2430:
	goto	l711
	
l710:	
	line	31
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY
	__end_of_DELAY:
;; =============== function _DELAY ends ============

	signat	_DELAY,88
	global	_tmr2
psect	text401,local,class=CODE,delta=2
global __ptext401
__ptext401:

;; *************** function _tmr2 *****************
;; Defined at:
;;		line 155 in file "E:\MPLAB_IDE\signal_generator\signal_generator.c"
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
psect	text401
	file	"E:\MPLAB_IDE\signal_generator\signal_generator.c"
	line	155
	global	__size_of_tmr2
	__size_of_tmr2	equ	__end_of_tmr2-_tmr2
	
_tmr2:	
	opt	stack 3
; Regs used in _tmr2: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_tmr2+1)
	movf	fsr0,w
	movwf	(??_tmr2+2)
	movf	pclath,w
	movwf	(??_tmr2+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_tmr2+4)
	ljmp	_tmr2
psect	text401
	line	156
	
i1l2986:	
;signal_generator.c: 156: TMR2IF =0;
	bcf	(97/8),(97)&7
	line	157
	
i1l2988:	
;signal_generator.c: 157: PR2 = dat/256;
	movf	(_dat+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	158
	
i1l2990:	
;signal_generator.c: 158: if(y==0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_y+1)),w
	iorwf	((_y)),w
	skipz
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l3000
u239_20:
	line	159
	
i1l2992:	
;signal_generator.c: 159: count++;
	movlw	(01h)
	movwf	(??_tmr2+0)+0
	movf	(??_tmr2+0)+0,w
	addwf	(_count),f
	line	160
	
i1l2994:	
;signal_generator.c: 160: if(count == 100) {
	movf	(_count),w
	xorlw	064h
	skipz
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l769
u240_20:
	line	162
	
i1l2996:	
;signal_generator.c: 162: RE0 = !RE0;
	movlw	1<<((72)&7)
	xorwf	((72)/8),f
	line	163
	
i1l2998:	
;signal_generator.c: 163: count =0;
	clrf	(_count)
	goto	i1l769
	line	164
	
i1l767:	
	line	165
;signal_generator.c: 164: }
;signal_generator.c: 165: } else {
	goto	i1l769
	
i1l766:	
	line	167
	
i1l3000:	
;signal_generator.c: 167: RE0 = !RE0;
	movlw	1<<((72)&7)
	xorwf	((72)/8),f
	goto	i1l769
	line	168
	
i1l768:	
	line	169
	
i1l769:	
	movf	(??_tmr2+4),w
	movwf	btemp+1
	movf	(??_tmr2+3),w
	movwf	pclath
	movf	(??_tmr2+2),w
	movwf	fsr0
	swapf	(??_tmr2+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_tmr2
	__end_of_tmr2:
;; =============== function _tmr2 ends ============

	signat	_tmr2,88
psect	text402,local,class=CODE,delta=2
global __ptext402
__ptext402:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
