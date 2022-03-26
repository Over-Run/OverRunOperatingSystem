org 07c00h
; Put code segment info register ax and cs
mov ax,cs
; Align x86 schema register locations
mov ds,ax
mov es,ax
call Disp
; Infinite loop,stop here
jmp $
Disp:
	mov ax,BootMsg
	mov bp,ax
	mov cx,16
	mov ax,01301h
	; Hexadecimal
	mov bx,000ch
	mov dl,0
	; Interrupt 10
	int 10h
BootMsg: db "Hello, Os System"
times 510 - ($-$$) db 0
dw 0xaa55
