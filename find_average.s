; find average of numbers given in array
	AREA RESET, CODE, READONLY
	ENTRY
	ADR R0,size;
	LDR R1,[R0];
	ADR	R0,array;
	
LOOP LDR R2, [R0], #4;
	ADD R3,R3,R2;
	SUBS R1, R1,#1;
	BNE LOOP;
	
	ADR R0,size;
	LDR R1,[R0];
	;UDIV R3,R3,R1;
	MOV R0,#0;

div ADD R0,R0,#1;
	SUBS R3,R3,R1;
	BEQ stop;
	BPL div;
	
stop B stop;

array DCD 5,3;
size DCD 2;
	END
