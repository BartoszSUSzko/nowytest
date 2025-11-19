org 100h

mov ah, 0Ah
mov dx, buffer
int 21h

mov ah, 02h
mov dl, 0Dh
int 21h
mov dl, 0Ah
int 21h

mov bl, [buffer+1]
mov al, '$'
mov [buffer+2+bx], al

mov ah, 09h
mov dx, buffer+2
int 21h

mov ah, 4Ch
int 21h

buffer db 20
       