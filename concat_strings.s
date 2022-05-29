	AREA RESET, CODE, READONLY
	ENTRY
	
	MOV R0,#length;
	LDR R1,=str1;
	LDR R2,=str2;
	
	MOV R3,#0xAA; initialise string one with this value
	MOV R4,#0xCC; initialise string 2 with this value
INIT_LOOP STRB R3,[R1],#1; loop to fill space
	STRB R4,[R2],#1;
	SUBS R0,R0,#1;
	BNE INIT_LOOP;
	
	MOV R0,#length; reinitialise index
	LDR R1,=str1; load string address 
	LDR R2,=out;

; Copy string 1 in out
CPY_STR1 LDRB R3,[R1],#1; load value to store in out	
	STRB R3,[R2],#1; 
	SUBS R0,R0,#1;
	BNE CPY_STR1;

	MOV R0,#length; reinitialise index
	LDR R1,=str2; load string address 

; Copy string 2 in out
CPY_STR2 LDRB R3,[R1],#1; load value to store in out	
	STRB R3,[R2],#1; 
	SUBS R0,R0,#1;
	BNE CPY_STR2;
	;concatenated string in out
STOP B STOP;

length EQU 0x40;
	AREA RES, DATA, READWRITE
str1 SPACE 0x40; defines bytes of zeroed store
str2 SPACE 0x40; defines bytes of zeroed store
out SPACE 0x80; defines bytes of zeroed store
	END
