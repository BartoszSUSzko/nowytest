org 100h


powtorz:

mov ah, 01h        
int 21h


cmp al, 'Q'
jne powtorz   

mov ah, 4Ch
int 21h


       