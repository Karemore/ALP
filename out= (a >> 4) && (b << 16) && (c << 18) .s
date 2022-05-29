	;out= (a >> 4) && (b << 16) && (c << 18) 
	AREA RESET, CODE, READONLY
	ENTRY
	
	MOV R0,#a;
	MOV R1,#b;
	MOV R2,#c;
	LDR R3,=out;
	
	LSR R0,R0,#0x4;
	LSL R1,R1,#0x10;
	LSL R2,R2,#0x12;
	ANDS R0,R0,R1;
	ANDS R0,R0,R2;
	STR R0,[R3];
	
STOP B STOP;
a EQU 0xF1000000;
b EQU 0xA1;
c EQU 0x22;
		
	AREA RES, DATA, READWRITE
out dcd 0;
	END
