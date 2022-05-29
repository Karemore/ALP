;seperate MSB and LSB 
;R3 -> LSB
;R4 -> MSB

  AREA RESET, CODE, READONLY
	ENTRY
	ADR R0,a;
	LDR R1,[R0];
	MOV R2,#0xF;
	AND R3,R1,R2;
	LSR R1,#4;
	AND R4,R1,R2;
	
STOP B STOP;
a DCD 0x47; <-- number to sepetaye LSB/MSB
	END
