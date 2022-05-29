	;out = (i >> 2) + (j >> 5); 
	AREA RESET, CODE, READONLY
	ENTRY
	
	MOV R0,#i;
	MOV R1,#j;
	MOV R2,#k;
	LDR R3,=out;
	
	ASR R0,R0,#0x2;
	ASR R1,R1,#0x5;
	ANDS R0,R0,R1;
	STR R0,[R3];
	
STOP B STOP;
i EQU -0x1E; -30
j EQU -0x32; -50
k EQU 0x64; 100
		
	AREA RES, DATA, READWRITE
out dcd 0;
	END
