; check if number is odd or even
; R2 = 1 if number is even
; R2 = 0 if number is odd
	AREA RESET, CODE, READONLY
	ENTRY
	ADR R0,dst;
	LDR R1,[R0];
	TST R1,#1;
	BNE odd;
	MOV R2,#1; ;is Even
	B stop;

odd	MOV R2, #0; ;isOdd	
stop	B stop;

dst DCD 4; <-- number to test
	END
