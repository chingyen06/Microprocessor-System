ORG 30H
	MINUEND: DB 1  ;�Q���
	SUBEND: DB 1  ;���
	RESULT: DB 1  ;���G

ORG 0000H
	MOV MINUEND, #83H  ;�]�w MINUEND ��
	MOV SUBEND, #43H  ;�]�w SUBEND ��

	ADD8: MOV A, MINUEND  ;A �� MINUEND ����
	SUBB A, SUBEND  ;A <- A - SUBEND ����
	MOV RESULT, A  ;RESULT �� A ����
	
	RET
END
