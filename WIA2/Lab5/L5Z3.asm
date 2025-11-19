org 100h

mov AX,[a]
add AX,[a]
add AX,[b]
sub AX,[c]
add AX,[b]
sub AX,[c]

mov [y], AX


mov AH, 0h
int 21h

a dw 5
b dw 7
c dw 2
y dw 0