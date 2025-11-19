org 100h

mov ah, 0Ah
mov dx, buffer
int 21h

mov al, [buffer+2]
cmp al,'_'

jl mniejsze 
jg wieksze 
je rowne

mov AH, 00h
int 21h

mniejsze:
mov AH, 02h
mov DL, '>'
int 21h
mov AH, 00h
int 21h

wieksze:
mov AH,02h
mov DL,'<'
int 21h
mov AH, 00h
int 21h

rowne:
mov AH, 02h
mov DL, '='
int 21h
mov AH, 00h
int 21h

buffer db 2