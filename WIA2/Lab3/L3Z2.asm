org 100h

mov ah,09h
mov dx,string
int 21h


mov al,[string+3]
mov bl,'$'
mov [string+3],bl

mov ah,09h
mov dx,string
int 21h


mov ah,4Ch
int 21h

string  db 'abcdefgh $'
