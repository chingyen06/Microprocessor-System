ORG 30H
	ADDEND: DB 1  ;�[��
	AUGEND: DB 1  ;�Q�[��
	RESULT: DB 1  ;���G

ORG 0000H
	MOV ADDEND, #10H  ;�]�w ADDEND ��
	MOV AUGEND, #53H  ;�]�w AUGEND ��

	ADD8: MOV A, ADDEND  ;A �� ADDEND ����
	ADD A, AUGEND  ;A <- A + AUGEND ����
	MOV RESULT, A  ;RESULT �� A ����
	
	RET
END