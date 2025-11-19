org 100h              


mov AH, 02h
mov DH, 0       
mov DL, 0       
int 10h         


mov AH, 02h
mov DL, 41h     
int 21h         


mov AX, 4C00h
int 21h