SRCA EQU 30H  ;�ӷ��}�C
DSTA EQU 38H  ;�ت��}�C
LENTH EQU 08H

ORG 0000H
	MOV 30H, #87H
	MOV 31H, #51H
	MOV 32H, #91H
	MOV 33H, #34H
	MOV 34H, #76H
	MOV 35H, #93H
	MOV 36H, #48H
	MOV 37H, #62H

	BLKMOV: MOV R2, #LENTH  ;R2 �� LENTH ���a�}(08H)�A��ȥ�
	MOV R0, #SRCA  ;R0 �� SCRA ���a�}
	MOV R1, #DSTA  ;R1 �� DSTA ���a�}

	MLOOP: MOV A, @R0  ;A ��H R0 ���a�}���O���骺��
	MOV @R1, A  ;�H R1 ���a�}���O����� A ����
	INC R0  ;R0 <- R0 + 1  ���ʨ�U�Ӧa�}
	INC R1  ;R1 <- R1 + 1  ���ʨ�U�Ӧa�}
	DEC R2  ;LOOP �Ѿl���� - 1
	CJNE R2, #0, MLOOP  ;R2 ���Ȥ��� 0 �ɸ��^ MLOOP
	
	RET
END
