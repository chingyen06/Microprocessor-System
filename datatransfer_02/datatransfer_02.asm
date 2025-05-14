;ex4.2-2.a51
ORG 30H
	OPR1: DB 1  ;保留OPR1
	OPR2: DB 1  ;保留OPR1

ORG 0000H
MOV OPR1, #55H  ;設定OPR1值(方便檢查)
MOV OPR2, #77H  ;設定OPR2值(方便檢查)

SWAPBYTE: MOV R0, OPR1  ;R0 放 OPR1 的值
	MOV R1, OPR2  ;R1 放 OPR2 的值
	MOV OPR2, R0  ;OPR2 放 R0(原 OPR1) 的值
	MOV OPR1, R1  ;OPR1 放 R1(原 OPR2) 的值

	RET
END