org 100h

mov AL, 2
cmp AL, 5

je koniec ; kiedy sa rowne
jl mniejsze 
jg wieksze 
;jne koniec jezeli nie sa rowne
;jle koniec jezeli mniejsze rowne
;jge koniec jezeli mniejsze rowne


wieksze:
mov AH, 02h
mov DL, '>'
int 21h

mniejsze:
mov AH,02h
mov DL,'<'
int 21h

koniec:
mov AH, 00h
int 21h

