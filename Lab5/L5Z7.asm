org 100h

mov AL,[a]
mov BL,[b]

mul word [a]

add AX, BL
add AX, BL
add AX, [c]

mov [y], AX


mov AH, 0h
int 21h

a dw 5
b dw 7
c dw 2
y dw 0