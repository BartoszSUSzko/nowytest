org 100h              


mov AH, 01h          
int 21h              


mov AH, 02h
mov DL, ' '
int 21h


mov DL, AL            
mov AH, 02h
int 21h


mov AX, 4C00h
int 21h