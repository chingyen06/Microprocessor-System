ORG 30H
	MULTER: DB 1  ;�Q����
	MULTAND: DB 1  ;����
	RESULT: DB 1,1  ;���G

ORG 0000H
	MOV MULTER, #50H  ;�]�w MULTER ��
	MOV MULTAND, #11H  ;�]�w MULTAND ��

	MUL8: MOV A, MULTER  ;A �� MULTER ����
	MOV B, MULTAND  ;B �� MULTAND ����
	MUL AB  ;A, B�ۭ�
	MOV R0, #RESULT  ;R0 �� RESULT �C�쪺�a�}
	INC R0  ;R0 <- R0 + 1 (RESUULT ���쪺�a�})
	MOV @R0, B  ;A, B�ۭ������� B ��b RESUULT ����
	MOV RESULT, A  ;A, B�ۭ����C�� A ��b RESUULT �C��
	
	RET
END