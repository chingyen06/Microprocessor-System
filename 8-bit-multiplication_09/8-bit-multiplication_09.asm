ORG 30H
	MULTER: DB 1  ;被乘數
	MULTAND: DB 1  ;乘數
	RESULT: DB 1,1  ;結果

ORG 0000H
	MOV MULTER, #50H  ;設定 MULTER 值
	MOV MULTAND, #11H  ;設定 MULTAND 值

	MUL8: MOV A, MULTER  ;A 放 MULTER 的值
	MOV B, MULTAND  ;B 放 MULTAND 的值
	MUL AB  ;A, B相乘
	MOV R0, #RESULT  ;R0 放 RESULT 低位的地址
	INC R0  ;R0 <- R0 + 1 (RESUULT 高位的地址)
	MOV @R0, B  ;A, B相乘的高位 B 放在 RESUULT 高位
	MOV RESULT, A  ;A, B相乘的低位 A 放在 RESUULT 低位
	
	RET
END