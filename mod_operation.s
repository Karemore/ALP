; perform modulo operation
; result in R1

  AREA RESET, CODE, READONLY
	ENTRY
	MOV R1, #Q;
	MOV R2, #R;
JUMP	
	SUB R1,R1,R2; 
	CMP R1,R2;
	BEQ REMAINDER_ZERO;
	BPL JUMP;
	;remainder is in R1
	;stop here
	B STOP;
	
REMAINDER_ZERO MOV R1,#0;
	;remainder is in R1
	;stop here
	B STOP;

STOP B STOP;
Q EQU 11;
R EQU 5;
	END
	
