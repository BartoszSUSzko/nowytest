org 100h

mov AH, 21h
mov AL, 22h
cmp AL, AH

JL mniejsze
JG koniec

mniejsze:
mov AH, 02h
mov DL, '<'
int 21h
jmp koniec

koniec:
mov AH, 00h
int 21h