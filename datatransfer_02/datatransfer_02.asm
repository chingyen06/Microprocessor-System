;ex4.2-2.a51
ORG 30H
	OPR1: DB 1  ;�O�dOPR1
	OPR2: DB 1  ;�O�dOPR1

ORG 0000H
MOV OPR1, #55H  ;�]�wOPR1��(��K�ˬd)
MOV OPR2, #77H  ;�]�wOPR2��(��K�ˬd)

SWAPBYTE: MOV R0, OPR1  ;R0 �� OPR1 ����
	MOV R1, OPR2  ;R1 �� OPR2 ����
	MOV OPR2, R0  ;OPR2 �� R0(�� OPR1) ����
	MOV OPR1, R1  ;OPR1 �� R1(�� OPR2) ����

	RET
END