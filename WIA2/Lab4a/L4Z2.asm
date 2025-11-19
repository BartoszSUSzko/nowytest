org 100h

mov ah, 0Ah          
mov dx, buffer       
int 21h

mov al, [buffer + 2] 


cmp al, 'A'          
jl zle

cmp al, 'Z'
jle wielka

cmp al, 'a'
jl zle

cmp al, 'z'
jle mala

mala:
mov ah,09h
mov dx,malalitera
int 21h
mov ah, 4Ch
int 21h

wielka:
mov ah,09h
mov dx,wielkalitera
int 21h
mov ah, 4Ch
int 21h

zle:
mov ah,09h
mov dx,zlecos
int 21h
mov ah, 4Ch
int 21h


buffer db 2
wielkalitera db 'wielka litera$'
malalitera db 'mala litera$'
zlecos db 'error$'