org 100h

; a / (b + c) -------> a b c + /

push word [b]
push word [c]
pop BX
pop AX
add AX,BX
push AX          

push word [a]
pop BX
pop AX
div BX          
push AX

pop AX
mov [y], AX

mov ax, 4C00h
int 21h

a dw 20
b dw 5
c dw 10
y dw 0
