org 100h


mov cx, 12 
petla_1:
mov AH, 02h
mov DL, 'h'
int 21h
mov dl, 0Ah
int 21h
loop petla_1

mov ax, 4C00h
int 21h



