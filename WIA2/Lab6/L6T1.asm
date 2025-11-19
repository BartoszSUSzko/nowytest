org 100h

push 1
push 0xBEEF
push 0xDEAD
push 0xF


pop AX
pop BX
pop word [a]


mov ax, 4C00h
int 21h

a db 5
b db 12
c db 2
y db 0