COUNT EQU 04H  ;���Ʀ���
ADDEND EQU 30H  ;�Q�[��
AUGEND EQU 34H  ;�[�� / ���G

ORG 0000H
	MOV 30H, #70H  ;�]�w ADDEND ��
	MOV 31H, #53H  ;�]�w ADDEND ��
	MOV 32H, #67H  ;�]�w ADDEND ��
	MOV 33H, #92H  ;�]�w ADDEND ��
	MOV 34H, #38H  ;�]�w AUGEND ��
	MOV 35H, #49H  ;�]�w AUGEND ��
	MOV 36H, #16H  ;�]�w AUGEND ��
	MOV 37H, #91H  ;�]�w AUGEND ��

	MBCDADD: MOV R2, #COUNT  ;R2 ��j�馸��
	MOV R0, #ADDEND  ;R0 �� ADDEND ���a�}
	MOV R1, #AUGEND  ;R1 �� AUGEND ���a�}
	CLR C  ;�M���i��X��
	MOV B, PSW  ;�O�d�i��

	BEGIN: MOV PSW, B  ;��_�i��X��
	MOV A, @R0  ;A <- A + R0 ���ȧ@���a�}���O����(ADDEND) ����
	ADDC A, @R1  ;A <- A + R1 ���ȧ@���a�}���O����(AUGEND) ����
	DA A  ;Decimal Adjust �վ㬰 BCD �Ʀr 
	MOV @R1, A  ;R1 ���ȧ@���a�}���O����� A ����
	INC R0  ;R0 <- R0 + 1
	INC R1  ;R1 <- R1 + 1
	DEC R2  ;R2 <- R2 - 1
	MOV B, PSW  ;�O�d�i��X��
	CJNE R2, #0, BEGIN  ;�p�G R2 ���� 0 �N���^BEGIN
	MOV PSW, B  ;��_�i��X��
	CLR A  ;�M��A
	ADDC A, @R1  ;�[�W�̰��i��
	MOV @R1, A  ;�s�J

	RET
END
