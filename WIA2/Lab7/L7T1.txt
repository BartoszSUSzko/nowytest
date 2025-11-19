org 100h

;a/b+c -----> a b / c + 

push word[a]
push word[b]
pop AX
pop BX
div Bx
push AX

push word[c]

pop AX
pop BX
add AX, BX
push AX


mov [y], AX
mov ax, 4C00h
int 21h

a db 3
b dw 5
c dw 10
y dw 0
