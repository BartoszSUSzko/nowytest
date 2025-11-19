org 100h


mov cx, 10 
petla_1:
mov AH, 02h
mov DL, 'a'
int 21h
mov dl, 0Ah
int 21h
loop petla_1

mov ax, 4C00h
int 21h

h db 'h'

