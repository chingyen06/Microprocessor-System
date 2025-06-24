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
	MOV 37H, #0FFH  ;����

	MLKMOV: MOV R0, #SRCA  ;R0 �� SRCA ���a�}
	MOV R1, #DSTA  ;R1 �� DSTA ���a�}
	
	MLOOP: MOV A, @R0  ;A �� R0 �@���a�}���O����(SRCA)����
	CJNE A, #0FFH, SAVE  ;�p�GA != FF (8��1)�N���� SAVE
	
	AJMP DONE  ;���� DONE(����)�A�o��O A == FF
	
	SAVE: MOV @R1, A  ;R1 �@���a�}���O����(DSTA)�� A ����
	INC R0  ;R0 <- R0 + 1
	INC R1  ;R1 <- R1 + 1
	AJMP MLOOP  ;���^ MLOOP
	
	DONE: RET
END
