org 100h

mov AL,[b]
mov BL,[c]


div BL
mul word [a]


mov [y], AX


mov AH, 0h
int 21h

a dw 5
b dw 7
c dw 2
y dw 0