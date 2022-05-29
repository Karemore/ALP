;fibonacci series of 'num' integers
;result saved in memory locations refered by 'array'

AREA RESET, CODE, READONLY
	ENTRY

	MOV R0,#num; reinitialise index
	LDR R1,=array; load array address 
	MOV R2,#0;
	MOV R3,#1;
	STRB R2,[R1],#4;
	STRB R3,[R1],#4;

FIB_LOOP 	
	ADD R4,R2,R3;
	
	MOV R2,R3;
	MOV R3,R4;

	STRB R4,[R1],#4;
	SUBS R0,R0,#1;
	BNE FIB_LOOP;

STOP B STOP;

num EQU 0x40; ;size of int  * number of fib = 4 *10 = 40
	AREA RES, DATA, READWRITE
array SPACE 0x40; defines bytes of zeroed store
	END
