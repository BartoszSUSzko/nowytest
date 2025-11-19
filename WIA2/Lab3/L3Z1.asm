org 100h

mov ah,0Ah
mov dx,buffer
int 21h

mov ah, 02h
mov dl, 0Dh
int 21h
mov dl, 0Ah
int 21h

;mov AH, 09h
;mov DX, tekst2
;int 21h

mov al,[buffer+4] 
mov dl,al
mov ah,02h
int 21h

mov ah,4Ch
int 21h

buffer db 20
;tekst2 db 0Ah,0Dh,"$"