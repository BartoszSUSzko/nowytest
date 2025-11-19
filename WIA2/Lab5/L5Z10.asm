org 100h

mov ax, [a]
mov dx, 0
mov cx, 2
div cx
mov bx, ax

mov ax, [b]
mov dx, 0
mov cx, 3
div cx
add bx, ax

mov ax, [c]
mov dx, 0
mov cx, 4
div cx
add bx, ax

mov [y], bx

mov ax, 4C00h
int 21h

a dw 5
b dw 7
c dw 2
y dw 0
