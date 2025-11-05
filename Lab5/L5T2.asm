org 100h

mov AX, 5
mov BL, 2

mul BX ; nadpisze DX

mov AH, 00h
int 21h

