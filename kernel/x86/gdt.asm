BITS 32

global GdtInit

GdtInit:
	lgdt [gdt]
	jmp 0x08:.reload
.reload:
	mov ax, 0x10
	mov ds, ax
	mov es, ax
	mov fs, ax
	mov gs, ax
	mov ss, ax
	mov eax, 1
	ret


align 4
GDT_start:
	dq 0
	.kernel_code:
		dw 0xFFFF
		dw 0x0000
		db 0
		db 10011010b
		db 11001111b
		db 0
	.kernel_data:
		dw 0xFFFF
		dw 0x0000
		db 0
		db 10010010b
		db 11001111b
		db 0
;	.user_code:
;		dw 0xFFFF
;		dw 0x0000
;		db 0
;		db 11111010b
;		db 11001111b
;		db 0
;	.user_data:
;		dw 0xFFFF
;		dw 0x0000
;		db 0
;		db 11110010b
;		db 11001111b
;		db 0
GDT_end:

gdt:
	dw GDT_end - GDT_start -1
	dd GDT_start