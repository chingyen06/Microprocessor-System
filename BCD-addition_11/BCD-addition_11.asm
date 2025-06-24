ORG 30H
	ADDEND: DB 1  ;被加數
	AUGEND: DB 1  ;加數
	RESULT: DB 1,1  ;結果

ORG 0000H
	MOV 30H, #70H  ;設定 ADDEND 值
	MOV 31H, #87H  ;設定 AUGEND 值

	BCDADD: MOV A, ADDEND  ;A 放 ADDEND 的值
	ADD A, AUGEND  ;A <- A + AUGEND 的值
	DA A  ;Decimal Adjust 調整為 BCD 數字 
	MOV RESULT, A  ;RESULT 低位放 A 的值
	MOV A, #00  ;A 歸零
	ADDC A, #00H  ;A <- A + 0 + Carry (把 Carry 特別拉出來)
	MOV R0, #RESULT  ;R0 放 RESULT 的低位地址
	INC R0  ;R0 <- R0 + 1，R0 此時為RESULT 的高位地址
	MOV @R0, A  ;RESULT 高位放 A 的值
	
	RET
END
