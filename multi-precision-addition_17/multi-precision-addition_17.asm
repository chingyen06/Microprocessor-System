ADDEND EQU 30H  ;�Q�[�Ʀs���m
AUGEND EQU 34H  ;�[�Ʀs���m
RESULT EQU 38H  ;���G�s���m
COUNT EQU 70H  ;�[�k���Ʀs���m

ORG 0000H
	MOV 30H, #64H  ;�]�w ADDEND �Ĥ@���
	MOV 31H, #65H  ;�]�w ADDEND �ĤG���
	MOV 32H, #61H  ;�]�w ADDEND �ĤT���
	MOV 33H, #62H  ;�]�w ADDEND �ĥ|���
	MOV 34H, #64H  ;�]�w AUGEND �Ĥ@���
	MOV 35H, #67H  ;�]�w AUGEND �ĤG���
	MOV 36H, #66H  ;�]�w AUGEND �ĤT���
	MOV 37H, #65H  ;�]�w AUGEND �ĥ|���
	MOV COUNT, #04H  ;�]�w�[�k���� = 4

	CLR C  ;�M���i��X��
	MOV R0, #ADDEND  ;R0 �� ADDEND �Ĥ@��a�}
	MOV R1, #AUGEND  ;R1 �� AUGEND �Ĥ@��a�}
	ADD4: MOV A, @R0  ;A �� ADDEND ����
	ADDC A, @R1  ;A <- A + AUGEND ���� + Carry
	MOV B, R1  ;B �� AUGEND �a�}
	INC B  ;B <- B + 4 �� RESULT �a�}
	INC B
	INC B
	INC B
	MOV 60H, R1  ;60H �Ȧs R1 ���� (AUGEND �a�})
	MOV R1, B  ;R1 �Ȧs B ���� (RESULT �a�})
	MOV @R1, A  ;RESULT �� A ����
	MOV R1, 60H  ;R1 �� 60H ���� (AUGEND �a�})
	INC R0  ;�]�w R0 �� ADDEND �U�@��a�}
	INC R1  ;�]�w R1 �� AUGEND �U�@��a�}
	DJNZ COUNT, ADD4
	MOV 3CH, C  ;�̫᪺�i��
	
	RET
END

