org 100h

mov bx , buffer
mov cx, 6 
petla_1:
	mov ah, 01h    
	int 21h	
	mov [bx] , al
	inc bx
	
loop petla_1

mov byte [bx], '$' ; zakończenie łańcucha dla AH=09h

mov ah, 02h        ; nowa linia
mov dl, 0Ah
int 21h
mov dl, 0Dh
int 21h

mov ah, 09h
mov dx, buffer
int 21h

mov ax, 4C00h
int 21h

buffer db 20





