COUNT EQU 04H  ;重複次數
ADDEND EQU 30H  ;被加數
AUGEND EQU 34H  ;加數 / 結果

ORG 0000H
	MOV 30H, #70H  ;設定 ADDEND 值
	MOV 31H, #53H  ;設定 ADDEND 值
	MOV 32H, #67H  ;設定 ADDEND 值
	MOV 33H, #92H  ;設定 ADDEND 值
	MOV 34H, #38H  ;設定 AUGEND 值
	MOV 35H, #49H  ;設定 AUGEND 值
	MOV 36H, #16H  ;設定 AUGEND 值
	MOV 37H, #91H  ;設定 AUGEND 值

	MBCDADD: MOV R2, #COUNT  ;R2 放迴圈次數
	MOV R0, #ADDEND  ;R0 放 ADDEND 的地址
	MOV R1, #AUGEND  ;R1 放 AUGEND 的地址
	CLR C  ;清除進位旗標
	MOV B, PSW  ;保留進位

	BEGIN: MOV PSW, B  ;恢復進位旗標
	MOV A, @R0  ;A <- A + R0 的值作為地址的記憶體(ADDEND) 的值
	ADDC A, @R1  ;A <- A + R1 的值作為地址的記憶體(AUGEND) 的值
	DA A  ;Decimal Adjust 調整為 BCD 數字 
	MOV @R1, A  ;R1 的值作為地址的記憶體放 A 的值
	INC R0  ;R0 <- R0 + 1
	INC R1  ;R1 <- R1 + 1
	DEC R2  ;R2 <- R2 - 1
	MOV B, PSW  ;保留進位旗標
	CJNE R2, #0, BEGIN  ;如果 R2 不為 0 就跳回BEGIN
	MOV PSW, B  ;恢復進位旗標
	CLR A  ;清除A
	ADDC A, @R1  ;加上最高進位
	MOV @R1, A  ;存入

	RET
END
