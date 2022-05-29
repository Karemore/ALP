	AREA RESET, CODE, READONLY
	ENTRY
	MOV R0, #Q; ;value to check
	MOV R1, #1; ;Add operand
	MOV R2, #0; ;number of one's
	MOV R3, #16; ;number of bits to check, also index for loop
loop	
	ANDS R4, R0,R1; ;check if one in R0
	ADDNE R2,R2,#1; ;increment count of 1 if available
	LSL R1,#1; ;left shift to check another bit
	SUBS R3,R3,#1; ;subtract loop index
	BEQ exit; ;stop if index = 0 in loop
	BPL loop; ;continue loop
	
exit	MOV R0,#16;
	SUB R1,R0,R2; ;count of zeros
	MOV R0,R2; ;count of ones
	
stop	B stop;

Q EQU 7; <-- number to check
	END
