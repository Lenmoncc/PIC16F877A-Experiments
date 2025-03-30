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
	FNROOT	_main
	global	_STATUS
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_STATUS	set	3
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
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
	file	"shy_1.as"
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
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
;; BANK0           80      0       0
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "E:\MPLAB_IDE\shy_1\shy_1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  684[COMMON] int 
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\MPLAB_IDE\shy_1\shy_1.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: []
	line	5
	
l1733:	
# 5 "E:\MPLAB_IDE\shy_1\shy_1.c"
        CLRF _STATUS,F ;#
	line	6
# 6 "E:\MPLAB_IDE\shy_1\shy_1.c"
  BTFSC 30H,7 ;#
	line	7
# 7 "E:\MPLAB_IDE\shy_1\shy_1.c"
  GOTO LOOP1 ;#
	line	8
# 8 "E:\MPLAB_IDE\shy_1\shy_1.c"
  GOTO LOOP2 ;#
	line	9
# 9 "E:\MPLAB_IDE\shy_1\shy_1.c"
LOOP1: COMF 30H,F ;#
	line	10
# 10 "E:\MPLAB_IDE\shy_1\shy_1.c"
  INCF 30H,F ;#
	line	11
# 11 "E:\MPLAB_IDE\shy_1\shy_1.c"
  BSF 30H,7 ;#
	line	12
# 12 "E:\MPLAB_IDE\shy_1\shy_1.c"
LOOP2: BTFSC 31H,7 ;#
	line	13
# 13 "E:\MPLAB_IDE\shy_1\shy_1.c"
  GOTO LOOP4 ;#
	line	14
# 14 "E:\MPLAB_IDE\shy_1\shy_1.c"
  GOTO LOOP3 ;#
	line	15
# 15 "E:\MPLAB_IDE\shy_1\shy_1.c"
LOOP4: COMF 31H,F ;#
	line	16
# 16 "E:\MPLAB_IDE\shy_1\shy_1.c"
  INCF 31H,F ;#
	line	17
# 17 "E:\MPLAB_IDE\shy_1\shy_1.c"
  BSF 31H,7 ;#
	line	18
# 18 "E:\MPLAB_IDE\shy_1\shy_1.c"
LOOP3: MOVF 30H,W ;#
	line	19
# 19 "E:\MPLAB_IDE\shy_1\shy_1.c"
  ADDWF 31H,F ;#
	line	20
# 20 "E:\MPLAB_IDE\shy_1\shy_1.c"
  BTFSC 31H,7 ;#
	line	21
# 21 "E:\MPLAB_IDE\shy_1\shy_1.c"
  GOTO LOOP5 ;#
	line	22
# 22 "E:\MPLAB_IDE\shy_1\shy_1.c"
  GOTO LOOP6 ;#
	line	23
# 23 "E:\MPLAB_IDE\shy_1\shy_1.c"
LOOP5: COMF 31H,F ;#
	line	24
# 24 "E:\MPLAB_IDE\shy_1\shy_1.c"
  INCF 31H,F ;#
	line	25
# 25 "E:\MPLAB_IDE\shy_1\shy_1.c"
  BSF 31H,7 ;#
	line	26
# 26 "E:\MPLAB_IDE\shy_1\shy_1.c"
LOOP6: MOVF 31H,W ;#
	line	27
# 27 "E:\MPLAB_IDE\shy_1\shy_1.c"
  MOVWF 32H ;#
psect	maintext
	line	30
;shy_1.c: 30: loop:goto loop;
	
l685:	
	goto	l685
	line	32
	
l686:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
