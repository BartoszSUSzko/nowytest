org 100h

mov ah, 0Ah          
mov dx, buffer       
int 21h

mov al, [buffer + 2] 
cmp al, '_'          

jl mniejsze
je rowne
jg wieksze

wieksze:
mov ah, 02h
mov dl, '>'
int 21h
jmp koniec

mniejsze:
mov ah, 02h
mov dl, '<'
int 21h
jmp koniec

rowne:
mov ah, 02h
mov dl, '='
int 21h

koniec:
mov ah, 4Ch
int 21h

buffer db 2
       