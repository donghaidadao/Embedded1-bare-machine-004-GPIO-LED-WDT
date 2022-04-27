

.text
.global _start
_start:

#define GPGCON 0x56000060
#define GPGDAT 0x56000064

	LDR R0,=GPGCON
	MOV R1,#00000005
	STR R1,[R0]
	
	LDR R0,=GPGDAT 
	MOV R1,#0X0000
	STR R1,[R0]
	
.extern DELAY	
MAIN_LOOP:
	MOV R1,#0X0003
	STR R1,[R0]	
	BL DELAY
	
	MOV R1,#0X0000
	STR R1,[R0]	
	BL DELAY
	
	B MAIN_LOOP
	

.end

