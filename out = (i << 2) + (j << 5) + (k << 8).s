	;out = (I << 2) + (j << 5) + (k << 8)
	AREA RESET, CODE, READONLY
	ENTRY
	
	MOV R0,#i;
	MOV R1,#j;
	MOV R2,#k;
	LDR R3,=out;
	
	MOV R4,#0x4; multiplier in absence of arithmatic left shift
	MUL R5,R0,R4;
	MOV R0,R5;
	
	MOV R4,#0x20; multiplier in absence of arithmatic left shift
	MUL R5,R1,R4;
	MOV R1,R5;
	
	MOV R4,#0x100; multiplier in absence of arithmatic left shift
	MUL R5,R2,R4;
	MOV R2,R5;
	
	ADDS R0,R0,R1;
	ADDS R0,R0,R2;
	STR R0,[R3];
	
STOP B STOP;
i EQU -0x1E; -30
j EQU -0x32; -50
k EQU 0x64; 100
		
	AREA RES, DATA, READWRITE
out dcd 0;
	END
