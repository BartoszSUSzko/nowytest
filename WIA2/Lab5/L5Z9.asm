org 100h

mov ax, [a]
mov dx, 0
div word [c]

add ax, [b]

mov bx, [a]
mul bx

mov [y], ax

mov ax, 4C00h
int 21h

a dw 5
b dw 7
c dw 2
y dw 0
