ORG 30H
	ADDEND: DB 1,1  ;�Q�[��
	AUGEND: DB 1,1  ;�[��
	RESULT: DB 1,1  ;���G

ORG 0000H
	MOV 30H, #0B8H  ;�]�w ADDEND �C���
	MOV 31H, #10H  ;�]�w ADDEND �����
	MOV 32H, #87H  ;�]�w AUGEND �C���
	MOV 33H, #53H  ;�]�w AUGEND �����

	ADD16: MOV R0, #ADDEND  ;R0 �� ADDEND �a�}
	MOV R1, #SUBEND  ;R1 �� AUGEND �a�}
	MOV R2, #RESULT  ;R2 �� RESULT �a�}
	MOV A, @R0  ;A �� ADDEND �C�쪺��
	SUBB A, @R1  ;A <- A - AUGEND �C�쪺�� - Carry
	MOV RESULT, A  ;RESULT �C��� A ����
	INC R0  ;�]�w R0 �� ADDEND ����
	INC R1  ;�]�w R1 �� AUGEND ����
	MOV A, @R0  ;A �� ADDEND ���쪺��
	SUBB A, @R1  ;A <- A - AUGEND ���쪺�� - Carry
	MOV R0, #RESULT  ;�]�w R0 �� RESULT �C��
	INC R0  ;�]�w R0 �� RESULT ����
	MOV @R0, A  ;RESULT ����� A ����
	
	RET
END
