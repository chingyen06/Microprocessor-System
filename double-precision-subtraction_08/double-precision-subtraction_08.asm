ORG 30H
	MINUEND: DB 1,1  ;被減數
	SUBEND: DB 1,1  ;減數
	RESULT: DB 1,1  ;結果

ORG 0000H
	MOV 30H, #13H  ;設定 MINUEND 低位值
	MOV 31H, #0B8H  ;設定 MINUEND 高位值
	MOV 32H, #83H  ;設定 SUBEND 低位值
	MOV 33H, #53H  ;設定 SUBEND 高位值

	SUB16: CLR C  ;清除進位旗標
	MOV R0, #MINUEND  ;R0 放 MINUEND 地址
	MOV R1, #SUBEND  ;R1 放 SUBEND 地址
	MOV R2, #RESULT  ;R2 放 RESULT 地址
	MOV A, @R0  ;A 放 MINUEND 低位的值
	SUBB A, @R1  ;A <- A - SUBEND 低位的值 - Carry
	MOV RESULT, A  ;RESULT 低位放 A 的值
	INC R0  ;設定 R0 到 MINUEND 高位
	INC R1  ;設定 R1 到 SUBEND 高位
	MOV A, @R0  ;A 放 ADDEND 高位的值
	SUBB A, @R1  ;A <- A - SUBEND 高位的值 - Carry
	MOV R0, #RESULT  ;設定 R0 到 RESULT 低位
	INC R0  ;設定 R0 到 RESULT 高位
	MOV @R0, A  ;RESULT 高位放 A 的值
	
	RET
END
