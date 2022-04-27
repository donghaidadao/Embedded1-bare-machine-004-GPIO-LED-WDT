.text

.global DELAY
DELAY:
	LDR R2,=0x250
	
DLOOP2:
	LDR R3,=0x200
DLOOP1:
	SUB R3,R3,#1
	CMP R3,#0
	BNE DLOOP1
	
	SUB R2,R2,#1
	CMP R2,#0
	BNE DLOOP2
	
	BX LR

.end
