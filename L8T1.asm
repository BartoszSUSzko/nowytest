org 100h

mov AH, 00h		;|	
mov AL, 12h		;| - tryb graficzny
int 10h			;|

mov AX, 0001h	;|
int 33h			;| - wlaczenie kursora

main_loop:
	mov AH, 01h		;|
	int 16h			;| - sprawdzenie klawiatury
	cmp AH, 10h		;|	
	je koniec		;|- wyjscie jesli 'q'
	
	cmp ah, 33h
	je dec_brush
	
	cmp ah, 34h
	je inc_brush
	
	cmp AH, 2Eh
	je ch_color
	
	
	mov AX, 0003h	;|
	int 33h			;|- odczyt poz. kursora
	cmp BX, 1
	je draw_pixel
jmp main_loop

koniec:
	mov AH, 00h
	mov AL, 02h
	int 10h
	mov AH, 00h		;|
	int 21h			;| - wylaczenie programu
	
draw_pixel:
	mov AH, 0Ch		;|
	mov BH, 0		;|
	mov AL, [color]		;|- wydruk piksela
	dec CX
	dec DX
	
	
	mov BL, [brush_size]
	mov [brush_counter], BL
	
	outer_loop:
		mov BL, [brush_size] 
		inner_loop:
			dec CX			;|
			int 10h
			dec BL
			cmp BL, 0
		jg inner_loop
		add CX, [brush_size]
		dec DX
		dec byte [brush_counter]
		cmp byte [brush_counter], 0
	jg outer_loop
	
jmp main_loop

inc_brush:
	mov AH,0
	int 16h
	inc byte [brush_size]  ;Zwiekszenie rozm. pedzla
jmp main_loop
dec_brush:
	mov AH,0
	int 16h
	dec byte [brush_size]  ;Zmniejszenie rozm. pedzla
jmp main_loop

ch_color:
	mov AH,0
	int 16h
	inc byte [color]
jmp main_loop

brush_size dw 5
brush_counter db 0
color db 0