org 100h

; 2a * b + 2c -------> a a + b * c c + +


push word [a]
push word [a]
pop BX
pop AX
add AX,BX
push AX


push word [b]
pop BX
pop AX
mul BX
push AX


push word [c]
push word [c]
pop BX
pop AX
add AX,BX
push AX


pop BX
pop AX
add AX,BX
push AX


pop AX
mov [y], AX

mov ax, 4C00h
int 21h

a dw 3
b dw 5
c dw 10
y dw 0
