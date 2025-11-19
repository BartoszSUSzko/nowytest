org 100h 

mov CX, 1
petla:
	mov AH, 09h
	mov AL,'a'
	mov BL, 10000100b
	int 10h
loop petla

mov Ah, 0h
int 21h