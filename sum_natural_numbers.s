;sum of N natural numbers
;result saved in R2

  AREA RESET, CODE, READONLY
	ENTRY
	ADR R0,N;
	LDR R1,[R0];
	MOV	R0,#00;
	
LOOP	
	ADD R0,R0,#01;
	ADD R2,R2,R0;
	SUBS R1, R1,#1;
	BNE LOOP;
	
stop B stop;

N DCD 10; sum of 10 natural numbers
	END
