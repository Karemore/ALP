; program to swap two strings
; strings initialised in memory locations
; then swapped using XOR operations

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
	LDR R2,=str2;

; SWAP values using XOR operation. so that we do not need any extra memory space
SWAP_LOOP LDRB R3,[R1]; load value to swap
	LDRB R4,[R2];
	
	EOR R3,R3,R4; swap using XOR
	EOR R4,R3,R4;
	EOR R3,R3,R4;
	
	STRB R3,[R1],#1; store swapped values
	STRB R4,[R2],#1;
	SUBS R0,R0,#1;
	BNE SWAP_LOOP;

STOP B STOP;

length EQU 0x40;
	AREA RES, DATA, READWRITE
str1 SPACE 0x40; defines bytes of zeroed store
str2 SPACE 0x40; defines bytes of zeroed store
	END
