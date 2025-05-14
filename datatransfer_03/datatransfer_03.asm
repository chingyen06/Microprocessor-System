ORG 30H
	OPR1: DB 1  ;保留OPR1
	OPR2: DB 1  ;保留OPR1

ORG 0000H
MOV OPR1, #33H  ;設定OPR1值(方便檢查)
MOV OPR2, #88H  ;設定OPR2值(方便檢查)

SWAPBYTE: MOV R0, #OPR1  ;R0 放 OPR1 的地址
	MOV R1, #OPR2  ;R1 放 OPR2 的地址
	MOV A, @R0  ;A 放 R0 為地址的記憶體(原 OPR1) 的值
	MOV B, @R1  ;B 放 R1 為地址的記憶體(原 OPR2) 的值
	MOV @R1, A  ;R0 為地址的記憶體放 A 的值
	MOV @R0, B  ;R1 為地址的記憶體放 B 的值

	RET
END
