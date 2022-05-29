	;out = (a << 4) | (b & 15); 
	AREA RESET, CODE, READONLY
	ENTRY
	
	MOV R0,#a;
	MOV R1,#b;
	LDR R3,=out;

	LSL R0,R0,#0x4;
	AND R1,R1,#0xF;
	ORR R4, R0,R1;
	STR R4,[R3];
	
STOP B STOP;
a EQU 0xF1000000;
b EQU 0xA1;
c EQU 0x22;
		
	AREA RES, DATA, READWRITE
out dcd 0;
	END
