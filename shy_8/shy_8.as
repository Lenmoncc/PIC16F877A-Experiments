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
	FNCALL	_main,_DELAY
	FNCALL	_main,_ENABLE
	FNCALL	_main,___lmul
	FNCALL	_main,___aldiv
	FNCALL	_main,___wmul
	FNCALL	_main,___awdiv
	FNCALL	_main,___bmul
	FNCALL	_main,_ENABLE1
	FNCALL	_ENABLE1,_DELAY
	FNCALL	_ENABLE,_DELAY
	FNROOT	_main
	FNCALL	intlevel1,_ccp1_int
	global	intlevel1
	FNROOT	intlevel1
	global	_table
	global	_table1
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\MPLAB_IDE\shy_8\shy_8.c"
	line	2

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
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	4

;initializer for _table1
	retlw	06Dh
	retlw	079h
	retlw	020h
	retlw	06Eh
	retlw	061h
	retlw	06Dh
	retlw	065h
	retlw	020h
	retlw	069h
	retlw	073h
	retlw	020h
	retlw	070h
	retlw	069h
	retlw	063h
	retlw	031h
	retlw	036h
	retlw	066h
	retlw	038h
	retlw	037h
	retlw	037h
	retlw	020h
	global	_buf
	global	_lcd
	global	_x4
	global	_adc
	global	_x
	global	_x1
	global	_x2
	global	_X
	global	_a
	global	_adh
	global	_adl
	global	_b
	global	_c
	global	_e
	global	_f
	global	_y
	global	_Y
	global	_d
	global	_x3
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR2H
_CCPR2H	set	28
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_T1CON
_T1CON	set	16
	global	_TXREG
_TXREG	set	25
	global	_ADIF
_ADIF	set	102
	global	_CARRY
_CARRY	set	24
	global	_CCP2IF
_CCP2IF	set	104
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
	global	_TMR1ON
_TMR1ON	set	128
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_CCP2IE
_CCP2IE	set	1128
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
	file	"shy_8.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_y:
       ds      2

_Y:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_buf:
       ds      4

_lcd:
       ds      4

_x4:
       ds      4

_adc:
       ds      2

_x:
       ds      2

_x1:
       ds      2

_x2:
       ds      2

_X:
       ds      1

_a:
       ds      1

_adh:
       ds      1

_adl:
       ds      1

_b:
       ds      1

_c:
       ds      1

_e:
       ds      1

_f:
       ds      1

_d:
       ds      1

_x3:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\MPLAB_IDE\shy_8\shy_8.c"
	line	2
_table:
       ds      16

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"E:\MPLAB_IDE\shy_8\shy_8.c"
	line	4
_table1:
       ds      21

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
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Eh)
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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+21)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
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
	global	?_ccp1_int
?_ccp1_int:	; 0 bytes @ 0x0
	global	??_ccp1_int
??_ccp1_int:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
	global	??_DELAY
??_DELAY:	; 0 bytes @ 0x5
	global	??_ENABLE
??_ENABLE:	; 0 bytes @ 0x5
	global	??_ENABLE1
??_ENABLE1:	; 0 bytes @ 0x5
	global	??___wmul
??___wmul:	; 0 bytes @ 0x5
	global	??___lmul
??___lmul:	; 0 bytes @ 0x5
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x5
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x5
	global	?___bmul
?___bmul:	; 1 bytes @ 0x5
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x5
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___bmul
??___bmul:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	DELAY@i
DELAY@i:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x1
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x9
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xA
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0xE
	ds	12
;;Data sizes: Strings 0, constant 0, data 37, bss 33, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       9
;; BANK0           80     26      72
;; BANK1           80      0      21
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
;;   _main->___lmul
;;   _main->___aldiv
;;   _main->___awdiv
;;   _main->___bmul
;;
;; Critical Paths under _ccp1_int in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___aldiv
;;   _ENABLE1->_DELAY
;;   _ENABLE->_DELAY
;;
;; Critical Paths under _ccp1_int in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ccp1_int in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ccp1_int in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ccp1_int in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 12, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                12    12      0    1313
;;                                             14 BANK0     12    12      0
;;                              _DELAY
;;                             _ENABLE
;;                             ___lmul
;;                            ___aldiv
;;                             ___wmul
;;                            ___awdiv
;;                             ___bmul
;;                            _ENABLE1
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE1                                              0     0      0      68
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) _ENABLE                                               0     0      0      68
;;                              _DELAY
;; ---------------------------------------------------------------------------------
;; (1) ___aldiv                                             15     7      8     300
;;                                              5 COMMON     1     1      0
;;                                              0 BANK0     14     6      8
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     445
;;                                              5 COMMON     1     1      0
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (1) ___lmul                                              13     5      8      92
;;                                              5 COMMON     1     1      0
;;                                              0 BANK0     12     4      8
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4     136
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (1) ___bmul                                               4     3      1     136
;;                                              5 COMMON     1     0      1
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _DELAY                                                2     2      0      68
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ccp1_int                                             5     5      0       0
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
;;   ___wmul
;;   ___awdiv
;;   ___bmul
;;   _ENABLE1
;;     _DELAY
;;
;; _ccp1_int (ROOT)
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
;;BANK1               50      0      15       7       26.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      68      12        0.0%
;;ABS                  0      0      66       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     1A      48       5       90.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       9       1       64.3%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "E:\MPLAB_IDE\shy_8\shy_8.c"
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
;;      Temps:          0      12       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DELAY
;;		_ENABLE
;;		___lmul
;;		___aldiv
;;		___wmul
;;		___awdiv
;;		___bmul
;;		_ENABLE1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\shy_8\shy_8.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	22
	
l3419:	
;shy_8.c: 22: TRISA = 0X01; TRISC = 0XFF; TRISD = 0; PORTD = 0;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	movlw	(0FFh)
	movwf	(135)^080h	;volatile
	
l3421:	
	clrf	(136)^080h	;volatile
	
l3423:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	23
;shy_8.c: 23: SPBRG = 12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	24
;shy_8.c: 24: TXSTA = 0B00100100;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	25
;shy_8.c: 25: RCSTA = 0B10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	26
	
l3425:	
;shy_8.c: 26: for(X = 0;X < 21;X++)
	clrf	(_X)
	movlw	(015h)
	subwf	(_X),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l3429
u2830:
	goto	l3437
	
l3427:	
	goto	l3437
	line	27
	
l743:	
	
l3429:	
;shy_8.c: 27: {TXREG = table1[X]; DELAY();}
	movf	(_X),w
	addlw	_table1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(25)	;volatile
	
l3431:	
	fcall	_DELAY
	line	26
	
l3433:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_X),f
	
l3435:	
	movlw	(015h)
	subwf	(_X),w
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l3429
u2840:
	goto	l3437
	
l744:	
	line	28
	
l3437:	
;shy_8.c: 28: ADCON1 = 0B10001110;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	30
;shy_8.c: 30: PORTD = 1; ENABLE();
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3439:	
	fcall	_ENABLE
	line	31
	
l3441:	
;shy_8.c: 31: PORTD = 0x38; ENABLE();
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	fcall	_ENABLE
	line	32
	
l3443:	
;shy_8.c: 32: PORTD = 0x0c; ENABLE();
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3445:	
	fcall	_ENABLE
	line	33
;shy_8.c: 33: PORTD = 0x06; ENABLE();
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l3447:	
	fcall	_ENABLE
	line	34
	
l3449:	
;shy_8.c: 34: PEIE = 1; GIE = 1; CCP2IE = 1;
	bsf	(94/8),(94)&7
	
l3451:	
	bsf	(95/8),(95)&7
	
l3453:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1128/8)^080h,(1128)&7
	line	35
	
l3455:	
;shy_8.c: 35: CCPR2L = 0XFF; CCPR2H = 0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	
l3457:	
	movlw	(0FFh)
	movwf	(28)	;volatile
	line	36
	
l3459:	
;shy_8.c: 36: T1CON = 0X30;
	movlw	(030h)
	movwf	(16)	;volatile
	line	37
	
l3461:	
;shy_8.c: 37: CCP2CON = 0X0B;
	movlw	(0Bh)
	movwf	(29)	;volatile
	line	38
	
l3463:	
;shy_8.c: 38: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	39
	
l3465:	
;shy_8.c: 39: ADCON0 = 0X41;
	movlw	(041h)
	movwf	(31)	;volatile
	goto	l3467
	line	40
;shy_8.c: 40: loop:
	
l745:	
	line	41
	
l3467:	
;shy_8.c: 41: x = (int)adh<<8;
	movf	(_adh),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	movwf	(_x)
	movf	1+(??_main+0)+0,w
	movwf	(_x+1)
	line	42
	
l3469:	
;shy_8.c: 42: adc = x+(int)adl;
	movf	(_adl),w
	addwf	(_x),w
	movwf	(_adc)
	movf	(_x+1),w
	skipnc
	incf	(_x+1),w
	movwf	((_adc))+1
	line	43
	
l3471:	
;shy_8.c: 43: lcd = (adc*50000);
	movf	(_adc),w
	movwf	(?___lmul)
	movf	(_adc+1),w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lmul)),w
	movwf	(_lcd+3)
	movf	(2+(?___lmul)),w
	movwf	(_lcd+2)
	movf	(1+(?___lmul)),w
	movwf	(_lcd+1)
	movf	(0+(?___lmul)),w
	movwf	(_lcd)

	line	44
	
l3473:	
;shy_8.c: 44: buf = lcd/0x3ff;
	movlw	0
	movwf	(?___aldiv+3)
	movlw	0
	movwf	(?___aldiv+2)
	movlw	03h
	movwf	(?___aldiv+1)
	movlw	0FFh
	movwf	(?___aldiv)

	movf	(_lcd+3),w
	movwf	3+(?___aldiv)+04h
	movf	(_lcd+2),w
	movwf	2+(?___aldiv)+04h
	movf	(_lcd+1),w
	movwf	1+(?___aldiv)+04h
	movf	(_lcd),w
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

	line	45
	
l3475:	
;shy_8.c: 45: a = buf/100000; x4 = buf -a*100000;
	movlw	0
	movwf	(?___aldiv+3)
	movlw	01h
	movwf	(?___aldiv+2)
	movlw	086h
	movwf	(?___aldiv+1)
	movlw	0A0h
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___aldiv)))),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_a)
	
l3477:	
	movf	(_buf),w
	movwf	(??_main+0)+0
	movf	(_buf+1),w
	movwf	((??_main+0)+0+1)
	movf	(_buf+2),w
	movwf	((??_main+0)+0+2)
	movf	(_buf+3),w
	movwf	((??_main+0)+0+3)
	movf	(_a),w
	movwf	(??_main+4)+0
	clrf	((??_main+4)+0+1)
	clrf	((??_main+4)+0+2)
	clrf	((??_main+4)+0+3)
	movf	3+(??_main+4)+0,w
	movwf	(?___lmul+3)
	movf	2+(??_main+4)+0,w
	movwf	(?___lmul+2)
	movf	1+(??_main+4)+0,w
	movwf	(?___lmul+1)
	movf	0+(??_main+4)+0,w
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
	movwf	(??_main+8)+0
	comf	(1+(?___lmul)),w
	movwf	((??_main+8)+0+1)
	comf	(2+(?___lmul)),w
	movwf	((??_main+8)+0+2)
	comf	(3+(?___lmul)),w
	movwf	((??_main+8)+0+3)
	incf	(??_main+8)+0,f
	skipnz
	incf	((??_main+8)+0+1),f
	skipnz
	incf	((??_main+8)+0+2),f
	skipnz
	incf	((??_main+8)+0+3),f
	movf	0+(??_main+8)+0,w
	addwf	(??_main+0)+0,f
	movf	1+(??_main+8)+0,w
	skipnc
	incfsz	1+(??_main+8)+0,w
	goto	u2850
	goto	u2851
u2850:
	addwf	(??_main+0)+1,f
u2851:
	movf	2+(??_main+8)+0,w
	skipnc
	incfsz	2+(??_main+8)+0,w
	goto	u2852
	goto	u2853
u2852:
	addwf	(??_main+0)+2,f
u2853:
	movf	3+(??_main+8)+0,w
	skipnc
	incf	3+(??_main+8)+0,w
	addwf	(??_main+0)+3,f
	movf	3+(??_main+0)+0,w
	movwf	(_x4+3)
	movf	2+(??_main+0)+0,w
	movwf	(_x4+2)
	movf	1+(??_main+0)+0,w
	movwf	(_x4+1)
	movf	0+(??_main+0)+0,w
	movwf	(_x4)

	line	46
	
l3479:	
;shy_8.c: 46: b = x4/10000; x1 = x4 -b*10000;
	movlw	0
	movwf	(?___aldiv+3)
	movlw	0
	movwf	(?___aldiv+2)
	movlw	027h
	movwf	(?___aldiv+1)
	movlw	010h
	movwf	(?___aldiv)

	movf	(_x4+3),w
	movwf	3+(?___aldiv)+04h
	movf	(_x4+2),w
	movwf	2+(?___aldiv)+04h
	movf	(_x4+1),w
	movwf	1+(?___aldiv)+04h
	movf	(_x4),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___aldiv)))),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_b)
	
l3481:	
	movf	(_b),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(02710h)
	movwf	0+(?___wmul)+02h
	movlw	high(02710h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(0+(?___wmul)),w
	movwf	(??_main+2)+0
	comf	(1+(?___wmul)),w
	movwf	((??_main+2)+0+1)
	incf	(??_main+2)+0,f
	skipnz
	incf	((??_main+2)+0+1),f
	movf	(_x4),w
	addwf	0+(??_main+2)+0,w
	movwf	(_x1)
	movf	(_x4+1),w
	skipnc
	incf	(_x4+1),w
	addwf	1+(??_main+2)+0,w
	movwf	1+(_x1)
	line	47
	
l3483:	
;shy_8.c: 47: c = x1/1000; x2 = x1 -c*1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_x1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_x1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_c)
	
l3485:	
	movf	(_c),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(0+(?___wmul)),w
	movwf	(??_main+2)+0
	comf	(1+(?___wmul)),w
	movwf	((??_main+2)+0+1)
	incf	(??_main+2)+0,f
	skipnz
	incf	((??_main+2)+0+1),f
	movf	(_x1),w
	addwf	0+(??_main+2)+0,w
	movwf	(_x2)
	movf	(_x1+1),w
	skipnc
	incf	(_x1+1),w
	addwf	1+(??_main+2)+0,w
	movwf	1+(_x2)
	line	48
	
l3487:	
;shy_8.c: 48: d = x2/100; x3 = x2 -d*100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_x2+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_x2),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_d)
	
l3489:	
	movlw	(064h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?___bmul)
	movf	(_d),w
	fcall	___bmul
	xorlw	0ffh
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_x2),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_x3)
	line	49
	
l3491:	
;shy_8.c: 49: e = x3/10; f = x3 -e*10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_x3),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_main+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(_e)
	
l3493:	
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?___bmul)
	movf	(_e),w
	fcall	___bmul
	xorlw	0ffh
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_x3),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_f)
	line	51
	
l3495:	
;shy_8.c: 51: PORTD = 0x80; ENABLE();
	movlw	(080h)
	movwf	(8)	;volatile
	
l3497:	
	fcall	_ENABLE
	line	52
	
l3499:	
;shy_8.c: 52: PORTD = table[b]; ENABLE1();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3501:	
	fcall	_ENABLE1
	line	53
	
l3503:	
;shy_8.c: 53: TXREG = table[b];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	54
	
l3505:	
;shy_8.c: 54: PORTD = '.'; ENABLE1();
	movlw	(02Eh)
	movwf	(8)	;volatile
	
l3507:	
	fcall	_ENABLE1
	line	55
	
l3509:	
;shy_8.c: 55: TXREG = '.';
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	56
	
l3511:	
;shy_8.c: 56: PORTD = table[c]; ENABLE1();
	movf	(_c),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	
l3513:	
	fcall	_ENABLE1
	line	57
	
l3515:	
;shy_8.c: 57: TXREG = table[c];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	58
	
l3517:	
;shy_8.c: 58: PORTD = table[d]; ENABLE1();
	movf	(_d),w
	addlw	_table&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	
l3519:	
	fcall	_ENABLE1
	line	59
	
l3521:	
;shy_8.c: 59: TXREG = table[d];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	60
	
l3523:	
;shy_8.c: 60: PORTD = table[e]; ENABLE1();
	movf	(_e),w
	addlw	_table&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	
l3525:	
	fcall	_ENABLE1
	line	61
	
l3527:	
;shy_8.c: 61: TXREG = table[e];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	62
	
l3529:	
;shy_8.c: 62: PORTD = table[f]; ENABLE1();
	movf	(_f),w
	addlw	_table&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	
l3531:	
	fcall	_ENABLE1
	line	63
	
l3533:	
;shy_8.c: 63: TXREG = table[f]; DELAY();
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	_table&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	
l3535:	
	fcall	_DELAY
	line	64
	
l3537:	
;shy_8.c: 64: TXREG = 'V'; DELAY();
	movlw	(056h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l3539:	
	fcall	_DELAY
	line	65
	
l3541:	
;shy_8.c: 65: TXREG =' '; DELAY();
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l3543:	
	fcall	_DELAY
	line	66
	
l3545:	
;shy_8.c: 66: TXREG =' '; DELAY();
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l3547:	
	fcall	_DELAY
	line	67
	
l3549:	
;shy_8.c: 67: TXREG =' ';
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	68
;shy_8.c: 68: goto loop;
	goto	l3467
	line	69
	
l746:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ENABLE1
psect	text349,local,class=CODE,delta=2
global __ptext349
__ptext349:

;; *************** function _ENABLE1 *****************
;; Defined at:
;;		line 12 in file "E:\MPLAB_IDE\shy_8\shy_8.c"
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
psect	text349
	file	"E:\MPLAB_IDE\shy_8\shy_8.c"
	line	12
	global	__size_of_ENABLE1
	__size_of_ENABLE1	equ	__end_of_ENABLE1-_ENABLE1
	
_ENABLE1:	
	opt	stack 5
; Regs used in _ENABLE1: [wreg+status,2+status,0+pclath+cstack]
	
l3413:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	
l3415:	
	fcall	_DELAY
	
l3417:	
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
psect	text350,local,class=CODE,delta=2
global __ptext350
__ptext350:

;; *************** function _ENABLE *****************
;; Defined at:
;;		line 10 in file "E:\MPLAB_IDE\shy_8\shy_8.c"
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
psect	text350
	file	"E:\MPLAB_IDE\shy_8\shy_8.c"
	line	10
	global	__size_of_ENABLE
	__size_of_ENABLE	equ	__end_of_ENABLE-_ENABLE
	
_ENABLE:	
	opt	stack 5
; Regs used in _ENABLE: [wreg+status,2+status,0+pclath+cstack]
	
l3407:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	
l3409:	
	fcall	_DELAY
	
l3411:	
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
	global	___aldiv
psect	text351,local,class=CODE,delta=2
global __ptext351
__ptext351:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] long 
;;  dividend        4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   10[BANK0 ] long 
;;  sign            1    9[BANK0 ] unsigned char 
;;  counter         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
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
psect	text351
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l3121:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u2521
	goto	u2520
u2521:
	goto	l3127
u2520:
	line	11
	
l3123:	
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
	
l3125:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l3127
	line	13
	
l1624:	
	line	14
	
l3127:	
	btfss	(___aldiv@dividend+3),7
	goto	u2531
	goto	u2530
u2531:
	goto	l3133
u2530:
	line	15
	
l3129:	
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
	
l3131:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l3133
	line	17
	
l1625:	
	line	18
	
l3133:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l3135:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2541
	goto	u2540
u2541:
	goto	l3155
u2540:
	line	20
	
l3137:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l3141
	
l1628:	
	line	22
	
l3139:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2555:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2555
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l3141
	line	24
	
l1627:	
	line	21
	
l3141:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3139
u2560:
	goto	l3143
	
l1629:	
	goto	l3143
	line	25
	
l1630:	
	line	26
	
l3143:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2575:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2575
	line	27
	
l3145:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2585
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2585
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2585
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2585:
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l3151
u2580:
	line	28
	
l3147:	
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
	
l3149:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l3151
	line	30
	
l1631:	
	line	31
	
l3151:	
	movlw	01h
u2595:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2595

	line	32
	
l3153:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l3143
u2600:
	goto	l3155
	
l1632:	
	goto	l3155
	line	33
	
l1626:	
	line	34
	
l3155:	
	movf	(___aldiv@sign),w
	skipz
	goto	u2610
	goto	l3159
u2610:
	line	35
	
l3157:	
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
	goto	l3159
	
l1633:	
	line	36
	
l3159:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l1634
	
l3161:	
	line	37
	
l1634:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___awdiv
psect	text352,local,class=CODE,delta=2
global __ptext352
__ptext352:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text352
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3367:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2731
	goto	u2730
u2731:
	goto	l3371
u2730:
	line	11
	
l3369:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3371
	line	13
	
l1569:	
	line	14
	
l3371:	
	btfss	(___awdiv@dividend+1),7
	goto	u2741
	goto	u2740
u2741:
	goto	l3377
u2740:
	line	15
	
l3373:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3375:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3377
	line	17
	
l1570:	
	line	18
	
l3377:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3379:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2751
	goto	u2750
u2751:
	goto	l3399
u2750:
	line	20
	
l3381:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3387
	
l1573:	
	line	22
	
l3383:	
	movlw	01h
	
u2765:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2765
	line	23
	
l3385:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3387
	line	24
	
l1572:	
	line	21
	
l3387:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l3383
u2770:
	goto	l3389
	
l1574:	
	goto	l3389
	line	25
	
l1575:	
	line	26
	
l3389:	
	movlw	01h
	
u2785:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2785
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2795
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2795:
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l3395
u2790:
	line	28
	
l3391:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3393:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3395
	line	30
	
l1576:	
	line	31
	
l3395:	
	movlw	01h
	
u2805:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2805
	line	32
	
l3397:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l3389
u2810:
	goto	l3399
	
l1577:	
	goto	l3399
	line	33
	
l1571:	
	line	34
	
l3399:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2820
	goto	l3403
u2820:
	line	35
	
l3401:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3403
	
l1578:	
	line	36
	
l3403:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1579
	
l3405:	
	line	37
	
l1579:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lmul
psect	text353,local,class=CODE,delta=2
global __ptext353
__ptext353:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text353
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 6
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l3067:	
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

	goto	l3069
	line	6
	
l1504:	
	line	7
	
l3069:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l3073
u2370:
	line	8
	
l3071:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2381
	addwf	(___lmul@product+1),f
u2381:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2382
	addwf	(___lmul@product+2),f
u2382:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2383
	addwf	(___lmul@product+3),f
u2383:

	goto	l3073
	
l1505:	
	line	9
	
l3073:	
	movlw	01h
	movwf	(??___lmul+0)+0
u2395:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u2395
	line	10
	
l3075:	
	movlw	01h
u2405:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2405

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l3069
u2410:
	goto	l3077
	
l1506:	
	line	12
	
l3077:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	l1507
	
l3079:	
	line	13
	
l1507:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___wmul
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text354
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3355:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3357
	line	6
	
l1429:	
	line	7
	
l3357:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1430
u2690:
	line	8
	
l3359:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1430:	
	line	9
	movlw	01h
	
u2705:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2705
	line	10
	
l3361:	
	movlw	01h
	
u2715:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2715
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l3357
u2720:
	goto	l3363
	
l1431:	
	line	12
	
l3363:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1432
	
l3365:	
	line	13
	
l1432:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[BANK0 ] unsigned char 
;;  product         1    1[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text355
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l3341:	
	clrf	(___bmul@product)
	line	6
	
l1423:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l3345
u2670:
	line	8
	
l3343:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l3345
	
l1424:	
	line	9
	
l3345:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l3347:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l3349:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l1423
u2680:
	goto	l3351
	
l1425:	
	line	12
	
l3351:	
	movf	(___bmul@product),w
	goto	l1426
	
l3353:	
	line	13
	
l1426:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_DELAY
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _DELAY *****************
;; Defined at:
;;		line 8 in file "E:\MPLAB_IDE\shy_8\shy_8.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text356
	file	"E:\MPLAB_IDE\shy_8\shy_8.c"
	line	8
	global	__size_of_DELAY
	__size_of_DELAY	equ	__end_of_DELAY-_DELAY
	
_DELAY:	
	opt	stack 5
; Regs used in _DELAY: [wreg+status,2+status,0]
	
l3331:	
	movlw	low(07CFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DELAY@i)
	movlw	high(07CFh)
	movwf	((DELAY@i))+1
	
l3333:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l3337
u2650:
	goto	l729
	
l3335:	
	goto	l729
	
l727:	
	
l3337:	
	movlw	low(01h)
	subwf	(DELAY@i),f
	movlw	high(01h)
	skipc
	decf	(DELAY@i+1),f
	subwf	(DELAY@i+1),f
	
l3339:	
	movf	((DELAY@i+1)),w
	iorwf	((DELAY@i)),w
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l3337
u2660:
	goto	l729
	
l728:	
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY
	__end_of_DELAY:
;; =============== function _DELAY ends ============

	signat	_DELAY,88
	global	_ccp1_int
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _ccp1_int *****************
;; Defined at:
;;		line 14 in file "E:\MPLAB_IDE\shy_8\shy_8.c"
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
psect	text357
	file	"E:\MPLAB_IDE\shy_8\shy_8.c"
	line	14
	global	__size_of_ccp1_int
	__size_of_ccp1_int	equ	__end_of_ccp1_int-_ccp1_int
	
_ccp1_int:	
	opt	stack 5
; Regs used in _ccp1_int: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ccp1_int+1)
	movf	fsr0,w
	movwf	(??_ccp1_int+2)
	movf	pclath,w
	movwf	(??_ccp1_int+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ccp1_int+4)
	ljmp	_ccp1_int
psect	text357
	line	15
	
i1l3033:	
;shy_8.c: 15: CCP2IF = 0;
	bcf	(104/8),(104)&7
	line	16
;shy_8.c: 16: wait:if(ADIF == 0)goto wait;
	
i1l738:	
	btfsc	(102/8),(102)&7
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l3037
u230_20:
	goto	i1l738
	
i1l3035:	
	goto	i1l738
	
i1l739:	
	line	17
	
i1l3037:	
;shy_8.c: 17: adh = ADRESH; adl = ADRESL;
	movf	(30),w	;volatile
	movwf	(??_ccp1_int+0)+0
	movf	(??_ccp1_int+0)+0,w
	movwf	(_adh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_ccp1_int+0)+0
	movf	(??_ccp1_int+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_adl)
	line	18
	
i1l3039:	
;shy_8.c: 18: ADIF = 0;
	bcf	(102/8),(102)&7
	line	19
	
i1l740:	
	movf	(??_ccp1_int+4),w
	movwf	btemp+1
	movf	(??_ccp1_int+3),w
	movwf	pclath
	movf	(??_ccp1_int+2),w
	movwf	fsr0
	swapf	(??_ccp1_int+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ccp1_int
	__end_of_ccp1_int:
;; =============== function _ccp1_int ends ============

	signat	_ccp1_int,88
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
