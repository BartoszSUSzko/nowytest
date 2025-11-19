org 100h

;2a+2b-2c -----> 2a 2b + 2c - 

push word[a]
push word[b]
pop AX
pop BX
add AX,AX
add AX,BX
add AX,BX
push AX

push word[c]

pop AX
pop BX
sub AX, BX
push AX


mov [y], AX
mov ax, 4C00h
int 21h

a db 3
b dw 5
c dw 10
y dw 0
