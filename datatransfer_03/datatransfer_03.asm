ORG 30H
	OPR1: DB 1  ;�O�dOPR1
	OPR2: DB 1  ;�O�dOPR1

ORG 0000H
MOV OPR1, #33H  ;�]�wOPR1��(��K�ˬd)
MOV OPR2, #88H  ;�]�wOPR2��(��K�ˬd)

SWAPBYTE: MOV R0, #OPR1  ;R0 �� OPR1 ���a�}
	MOV R1, #OPR2  ;R1 �� OPR2 ���a�}
	MOV A, @R0  ;A �� R0 ���a�}���O����(�� OPR1) ����
	MOV B, @R1  ;B �� R1 ���a�}���O����(�� OPR2) ����
	MOV @R1, A  ;R0 ���a�}���O����� A ����
	MOV @R0, B  ;R1 ���a�}���O����� B ����

	RET
END
