ORG 30H
	OPR1: DB 1  ;�O�dOPR1
	OPR2: DB 1  ;�O�dOPR1

ORG 0000H
MOV OPR1, #16H  ;�]�wOPR1��(��K�ˬd)
MOV OPR2, #83H  ;�]�wOPR2��(��K�ˬd)

SWAPBYTE: MOV A, OPR1  ;A �� OPR1 ����
		XCH A, OPR2  ;�洫 A �P OPR2 ����
		MOV OPR1, A  ;OPR1 �� A ����
	RET
END
