#include<pic.h>
main()
{
#asm 
        CLRF   _STATUS,F
		BSF _STATUS ,6
		BCF _STATUS ,5
		BTFSC  130H,7
		GOTO   LOOP1
		GOTO	LOOP2
LOOP1:	BSF _STATUS ,6
		BCF _STATUS ,5
		COMF	130H,F
		INCF	130H,F
		BSF	130H,7
LOOP2:	BSF _STATUS ,6
		BCF _STATUS ,5
		BTFSC  131H,7
		GOTO   LOOP4
		GOTO	LOOP3 
LOOP4:	BSF _STATUS ,6
		BCF _STATUS ,5
		COMF	131H,F
		INCF	131H,F
		BSF	131H,7
LOOP3:	BSF _STATUS ,6
		BCF _STATUS ,5
		MOVF	130H,W
		ADDWF 131H,F
		BTFSC	131H,7
		GOTO	LOOP5
		GOTO	LOOP6
LOOP5:	BSF _STATUS ,6
		BCF _STATUS ,5
		COMF	131H,F
		INCF	131H,F
		BSF	131H,7
LOOP6:	BSF _STATUS ,6
		BCF _STATUS ,5
		MOVF	131H,W
		MOVWF 132H
#endasm 
loop:goto	loop;

}