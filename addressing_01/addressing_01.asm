ORG 40H
OPR1 EQU 00H  ;設定OPR1
OPR2 EQU 00H  ;設定OPR2

ORG 0000H  ;程式開始
TEST0: MOV R0, #25H  ;立即定址
MOV A, R0  ;暫存器定址
MOV A, OPR1  ;直接定址
MOV A, @R0  ;間接定址
TEST1: MOV @R0, #12H
SJMP TEST0  ;相對跳躍指令
AJMP TEST1  ;絕對跳躍指令
LJMP TEST0  ;長程跳躍指令
MOVC A, @A+PC  ;索引定址
MOVC A, @A+DPTR  ;索引定址
END

