SRCA EQU 30H  ;來源陣列
DSTA EQU 38H  ;目的陣列
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

	BLKMOV: MOV R2, #LENTH  ;R2 放 LENTH 的地址(08H)，當值用
	MOV R0, #SRCA  ;R0 放 SCRA 的地址
	MOV R1, #DSTA  ;R1 放 DSTA 的地址

	MLOOP: MOV A, @R0  ;A 放以 R0 為地址的記憶體的值
	MOV @R1, A  ;以 R1 為地址的記憶體放 A 的值
	INC R0  ;R0 <- R0 + 1  移動到下個地址
	INC R1  ;R1 <- R1 + 1  移動到下個地址
	DEC R2  ;LOOP 剩餘次數 - 1
	CJNE R2, #0, MLOOP  ;R2 的值不為 0 時跳回 MLOOP
	
	RET
END
