	;out=(a+b)-c
	AREA RESET, CODE, READONLY
	ENTRY
	
	MOV R0,#a;
	MOV R1,#b;
	MOV R2,#c;
	LDR R4,=out;
	
	ADDS R3, R0,R1;
	SUBS R3,R3,R2;
	STR R3,[R4];
	
STOP B STOP;
a EQU 0xF1000000;
b EQU 0xA1;
c EQU 0x22;
		
	AREA RES, DATA, READWRITE
out dcd 0;
	END
