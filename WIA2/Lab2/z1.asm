org 100h

mov AH, 09h
mov DX, tekst
int 21h

mov AX, 4C00h
int 21h

tekst db "PJATK$"