; count number of negative numbers in an array
; result in R3 register
  AREA RESET, CODE, READONLY
	ENTRY
	ADR R0,LENGTH;
	LDR R1,[R0];
	ADR	R0,DATA;
		
LOOP
	LDR R2, [R0], #4;
	CMP R2,#0;
	ADDMI R3,R3,#1;
	SUBS R1, R1,#1;
	BNE LOOP;
		
stop B stop;

DATA 	DCD 1,-2,3,-4,5;
LENGTH 	DCD 5;
	END
