org 100h

mov AL,[a]

add AL, [a]
mul word [a]

mov BL, AX
mov AX,[b]

div word [c]
div 2

mul BL

mov [y], AX


mov AH, 0h
int 21h

a dw 5
b dw 7
c dw 2
y dw 0