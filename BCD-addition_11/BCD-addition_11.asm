ORG 30H
	ADDEND: DB 1  ;�Q�[��
	AUGEND: DB 1  ;�[��
	RESULT: DB 1,1  ;���G

ORG 0000H
	MOV 30H, #70H  ;�]�w ADDEND ��
	MOV 31H, #87H  ;�]�w AUGEND ��

	BCDADD: MOV A, ADDEND  ;A �� ADDEND ����
	ADD A, AUGEND  ;A <- A + AUGEND ����
	DA A  ;Decimal Adjust �վ㬰 BCD �Ʀr 
	MOV RESULT, A  ;RESULT �C��� A ����
	MOV A, #00  ;A �k�s
	ADDC A, #00H  ;A <- A + 0 + Carry (�� Carry �S�O�ԥX��)
	MOV R0, #RESULT  ;R0 �� RESULT ���C��a�}
	INC R0  ;R0 <- R0 + 1�AR0 ���ɬ�RESULT ������a�}
	MOV @R0, A  ;RESULT ����� A ����
	
	RET
END
