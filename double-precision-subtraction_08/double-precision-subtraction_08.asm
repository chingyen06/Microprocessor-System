ORG 30H
	MINUEND: DB 1,1  ;�Q���
	SUBEND: DB 1,1  ;���
	RESULT: DB 1,1  ;���G

ORG 0000H
	MOV 30H, #13H  ;�]�w MINUEND �C���
	MOV 31H, #0B8H  ;�]�w MINUEND �����
	MOV 32H, #83H  ;�]�w SUBEND �C���
	MOV 33H, #53H  ;�]�w SUBEND �����

	SUB16: CLR C  ;�M���i��X��
	MOV R0, #MINUEND  ;R0 �� MINUEND �a�}
	MOV R1, #SUBEND  ;R1 �� SUBEND �a�}
	MOV R2, #RESULT  ;R2 �� RESULT �a�}
	MOV A, @R0  ;A �� MINUEND �C�쪺��
	SUBB A, @R1  ;A <- A - SUBEND �C�쪺�� - Carry
	MOV RESULT, A  ;RESULT �C��� A ����
	INC R0  ;�]�w R0 �� MINUEND ����
	INC R1  ;�]�w R1 �� SUBEND ����
	MOV A, @R0  ;A �� ADDEND ���쪺��
	SUBB A, @R1  ;A <- A - SUBEND ���쪺�� - Carry
	MOV R0, #RESULT  ;�]�w R0 �� RESULT �C��
	INC R0  ;�]�w R0 �� RESULT ����
	MOV @R0, A  ;RESULT ����� A ����
	
	RET
END
