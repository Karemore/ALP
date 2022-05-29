; division of two numbers without UDIV instruction

  AREA RESET, CODE, READONLY
	ENTRY
	MOV R0, #Q;
	MOV R1, #R;
JUMP
	CMP R0,R1;
	ADDPL R2,R2,#1;
	SUBPL R0,R0,R1; 
	BEQ STOP;
	BPL JUMP;
	;remainder is in R0
	;Quotient is in R2
	;stop here
STOP B STOP;

Q EQU 11; <-- 11/5
R EQU 5;
	END
