SRCA EQU 30H  ;來源陣列
DSTA EQU 38H  ;目的陣列

ORG 0000H
	MOV 30H, #87H
	MOV 31H, #51H
	MOV 32H, #91H
	MOV 33H, #34H
	MOV 34H, #76H
	MOV 35H, #93H
	MOV 36H, #48H
	MOV 37H, #0FFH  ;當中止

	MLKMOV: MOV R0, #SRCA  ;R0 放 SRCA 的地址
	MOV R1, #DSTA  ;R1 放 DSTA 的地址
	
	MLOOP: MOV A, @R0  ;A 放 R0 作為地址的記憶體(SRCA)的值
	CJNE A, #0FFH, SAVE  ;如果A != FF (8個1)就跳到 SAVE
	
	AJMP DONE  ;跳到 DONE(結束)，這邊是 A == FF
	
	SAVE: MOV @R1, A  ;R1 作為地址的記憶體(DSTA)放 A 的值
	INC R0  ;R0 <- R0 + 1
	INC R1  ;R1 <- R1 + 1
	AJMP MLOOP  ;跳回 MLOOP
	
	DONE: RET
END
