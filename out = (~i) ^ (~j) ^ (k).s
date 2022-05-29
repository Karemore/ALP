	;out = (~i) ^ (~j) ^ (k) ; 
	AREA RESET, CODE, READONLY
	ENTRY
	
	MOV R0,#i;
	MOV R1,#j;
	MOV R2,#k;
	LDR R3,=out;
	
	MVN R0,R0;
	MVN R1,R1;
	EOR R0,R0,R1;
	EOR R0,R0,R2;
	STR R0,[R3];
	
STOP B STOP;
i EQU -0x1E; -30
j EQU -0x32; -50
k EQU 0x64; 100
		
	AREA RES, DATA, READWRITE
out dcd 0;
	END
