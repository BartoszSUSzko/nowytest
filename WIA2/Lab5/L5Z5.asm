org 100h

mov ax, [a]       
mov BL, [b]       
add BL, [c]       


div BL            

mov [y], ax      


mov dl, [y]
add dl, 30h       
mov ah, 02h
int 21h


mov ax, 4C00h
int 21h

a dw 5
b dw 7
c dw 2
y dw 0
