ORG 40H
OPR1 EQU 00H  ;�]�wOPR1
OPR2 EQU 00H  ;�]�wOPR2

ORG 0000H  ;�{���}�l
TEST0: MOV R0, #25H  ;�ߧY�w�}
MOV A, R0  ;�Ȧs���w�}
MOV A, OPR1  ;�����w�}
MOV A, @R0  ;�����w�}
TEST1: MOV @R0, #12H
SJMP TEST0  ;�۹���D���O
AJMP TEST1  ;������D���O
LJMP TEST0  ;���{���D���O
MOVC A, @A+PC  ;���ީw�}
MOVC A, @A+DPTR  ;���ީw�}
END

