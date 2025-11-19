org 100h

mov AX, 5

inc AX
dec AX

inc byte [dane]

add AX, 3
sub AX, [dane]
sub word [dane], 5 ; musi byc word albo byte jak chcesz liczbe w tablicy to word a jak byte to byte


mov AH, 00h
int 21h

dane dw 0xF, 0xff, 10 ; bezpieczniej z dw 

