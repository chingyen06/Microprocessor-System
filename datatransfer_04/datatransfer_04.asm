ORG 30H
	OPR1: DB 1  ;保留OPR1
	OPR2: DB 1  ;保留OPR1

ORG 0000H
MOV OPR1, #16H  ;設定OPR1值(方便檢查)
MOV OPR2, #83H  ;設定OPR2值(方便檢查)

SWAPBYTE: MOV A, OPR1  ;A 放 OPR1 的值
		XCH A, OPR2  ;交換 A 與 OPR2 的值
		MOV OPR1, A  ;OPR1 放 A 的值
	RET
END
