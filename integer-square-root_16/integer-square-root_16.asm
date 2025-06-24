ORG 30H
	TESTNUM: DB 1  ;���ռƦr
	SQRT: DB 1  ;����ڭ�

ORG 0000H
	MOV TESTNUM, #25  ;�Q�i�� 25

	SQRT_FD: MOV A, TESTNUM  ;������ռƦr
	MOV R0, #01H  ;�}�l��
	MOV R1, #00H  ;�p���k�s

	AGAIN: CLR C  ;�M���i��X��
	SUBB A, R0  ;���ռƦr - R0(�P�_���O�_�� ���ռƦr ������)
	JC DONE  ;�Y A < R0 (Carry == 1)�A���� DONE
	INC R1  ;R1 <- R1 + 1 �x�s�p�ƭ�
	INC R0  ;R0 �[�⦸���U�ө_�ƭ�
	INC R0
	JMP AGAIN  ;���^ AGAIN
	
	DONE: MOV SQRT, R1  ;SQRT �� R1 ����

	RET	
END
