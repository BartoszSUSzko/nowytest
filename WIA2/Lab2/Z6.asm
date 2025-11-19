org 100h              


mov AH, 02h
mov DH, 12       
mov DL, 40       
int 10h         


mov AH, 02h
mov DL, 'C'     
int 21h         


mov AX, 4C00h
int 21h