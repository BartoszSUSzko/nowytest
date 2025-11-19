org 100h

mov ax, [a]
mul ax

mov bx, [b]
add ax, bx
add ax, bx
add ax, [c]

mov [y], ax

mov ax, 4C00h
int 21h

a dw 5
b dw 7
c dw 2
y dw 0
