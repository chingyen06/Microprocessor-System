SRCA EQU 30H  ;�ӷ��}�C
DSTA EQU 38H  ;�ت��}�C

ORG 0000H
	MOV 30H, #87H
	MOV 31H, #51H
	MOV 32H, #91H
	MOV 33H, #34H
	MOV 34H, #76H
	MOV 35H, #93H
	MOV 36H, #48H
	MOV 37H, #62H

	MOV R0, #SRCA
	MOV R1, #DSTA
	BLKMOV: MOV A, @R0
	MOV @R1, A
	INC R0
	INC R1
	MOV A, @R0
	MOV @R1, A
	INC R0
	INC R1
	MOV A, @R0
	MOV @R1, A
	INC R0
	INC R1
	MOV A, @R0
	MOV @R1, A
	INC R0
	INC R1
	MOV A, @R0
	MOV @R1, A
	INC R0
	INC R1
	MOV A, @R0
	MOV @R1, A
	INC R0
	INC R1
	MOV A, @R0
	MOV @R1, A
	INC R0
	INC R1
	MOV A, @R0
	MOV @R1, A
	
	RET
END
