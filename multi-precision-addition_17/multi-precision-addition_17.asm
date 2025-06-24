ADDEND EQU 30H  ;被加數存放位置
AUGEND EQU 34H  ;加數存放位置
RESULT EQU 38H  ;結果存放位置
COUNT EQU 70H  ;加法次數存放位置

ORG 0000H
	MOV 30H, #64H  ;設定 ADDEND 第一位值
	MOV 31H, #65H  ;設定 ADDEND 第二位值
	MOV 32H, #61H  ;設定 ADDEND 第三位值
	MOV 33H, #62H  ;設定 ADDEND 第四位值
	MOV 34H, #64H  ;設定 AUGEND 第一位值
	MOV 35H, #67H  ;設定 AUGEND 第二位值
	MOV 36H, #66H  ;設定 AUGEND 第三位值
	MOV 37H, #65H  ;設定 AUGEND 第四位值
	MOV COUNT, #04H  ;設定加法次數 = 4

	CLR C  ;清除進位旗標
	MOV R0, #ADDEND  ;R0 放 ADDEND 第一位地址
	MOV R1, #AUGEND  ;R1 放 AUGEND 第一位地址
	ADD4: MOV A, @R0  ;A 放 ADDEND 的值
	ADDC A, @R1  ;A <- A + AUGEND 的值 + Carry
	MOV B, R1  ;B 放 AUGEND 地址
	INC B  ;B <- B + 4 為 RESULT 地址
	INC B
	INC B
	INC B
	MOV 60H, R1  ;60H 暫存 R1 的值 (AUGEND 地址)
	MOV R1, B  ;R1 暫存 B 的值 (RESULT 地址)
	MOV @R1, A  ;RESULT 放 A 的值
	MOV R1, 60H  ;R1 放 60H 的值 (AUGEND 地址)
	INC R0  ;設定 R0 為 ADDEND 下一位地址
	INC R1  ;設定 R1 為 AUGEND 下一位地址
	DJNZ COUNT, ADD4
	MOV 3CH, C  ;最後的進位
	
	RET
END

