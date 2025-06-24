ORG 30H
	TESTNUM: DB 1  ;代刚计
	SQRT: DB 1  ;キよ

ORG 0000H
	MOV TESTNUM, #25  ;秈 25

	SQRT_FD: MOV A, TESTNUM  ;莉代刚计
	MOV R0, #01H  ;秨﹍
	MOV R1, #00H  ;璸计耴箂

	AGAIN: CLR C  ;睲埃秈篨夹
	SUBB A, R0  ;代刚计 - R0(耞琌 代刚计 キよ)
	JC DONE  ;璝 A < R0 (Carry == 1)铬 DONE
	INC R1  ;R1 <- R1 + 1 纗璸计
	INC R0  ;R0 ㄢΩ计
	INC R0
	JMP AGAIN  ;铬 AGAIN
	
	DONE: MOV SQRT, R1  ;SQRT  R1 

	RET	
END
