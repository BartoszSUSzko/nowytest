org 100h          

mov AH, 09h       
mov DX, imie      
int 21h           

mov AX, 4C00h     
int 21h

imie db 'Bartosz Suszko$', 0