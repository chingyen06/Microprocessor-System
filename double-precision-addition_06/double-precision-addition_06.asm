ORG 30H
	ADDEND: DB 1,1  ;被加數
	AUGEND: DB 1,1  ;加數
	RESULT: DB 1,1  ;結果

ORG 0000H
	MOV 30H, #0B8H  ;設定 ADDEND 低位值
	MOV 31H, #10H  ;設定 ADDEND 高位值
	MOV 32H, #87H  ;設定 AUGEND 低位值
	MOV 33H, #53H  ;設定 AUGEND 高位值

	ADD16: MOV R0, #ADDEND  ;R0 放 ADDEND 地址
	MOV R1, #SUBEND  ;R1 放 AUGEND 地址
	MOV R2, #RESULT  ;R2 放 RESULT 地址
	MOV A, @R0  ;A 放 ADDEND 低位的值
	SUBB A, @R1  ;A <- A - AUGEND 低位的值 - Carry
	MOV RESULT, A  ;RESULT 低位放 A 的值
	INC R0  ;設定 R0 到 ADDEND 高位
	INC R1  ;設定 R1 到 AUGEND 高位
	MOV A, @R0  ;A 放 ADDEND 高位的值
	SUBB A, @R1  ;A <- A - AUGEND 高位的值 - Carry
	MOV R0, #RESULT  ;設定 R0 到 RESULT 低位
	INC R0  ;設定 R0 到 RESULT 高位
	MOV @R0, A  ;RESULT 高位放 A 的值
	
	RET
END
