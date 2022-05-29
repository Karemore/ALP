; compare two numbers and check greater number
; result in R1
  AREA RESET, CODE, READONLY
	ENTRY
	LDR R1, VALUE1;
	LDR R2, VALUE2;
	CMP R2,R1;
	BMI DONE;
	MOV R1,R2;
DONE 
	STR R1, RESULT;
stop B stop;
	;SWI #11;
VALUE1 DCD 5;
VALUE2 DCD 8;
RESULT DCD 0;
	END
