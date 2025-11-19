org 100h

mov al, [a]
add al, al
mov bl, al

mov al, [c]
add al, al
mov ah, [b]
div al

mul bl
mov [y], al

mov ax, 4C00h
int 21h

a db 5
b db 12
c db 2
y db 0
