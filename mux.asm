ORG 000H
SETB P1.1
JNB P1.1, OFF
SETB P2.0
SETB P2.1
SETB P2.2

JB P2.0, CON1
JB P2.1, CON2
JB P2.2, CON4

CON0: MOV A,#3

CON1:   JB P2.1, CON3
	JB P2.2, CON5
	MOV A,#3

CON2: JB P2.2, CON6
	MOV A,#3

CON3: JB P2.2, CON7
	MOV A,#3
CON4: MOV A,#3
CON5: MOV A,#3
CON6: MOV A,#3
CON7: MOV A,#3




OFF: NOP
END