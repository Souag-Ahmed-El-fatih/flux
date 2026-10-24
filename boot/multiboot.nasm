; **********************
; PEROJECT : OS
; FILE     : multiboot.nasm
; DEVLOPER : SOUAG AHMED EL FATIH
; DATE     : 6/16/2026
; TIME     : 9:13 AM
; VERSION  : 1.0
; COPY RIGHT (C) GPL 3.0
; *********************

BITS 32


GLOBAL BOOT

extern kmain
section .multiboot
align 4
    dd 0x1BADB002
    dd 0x00000000
    dd -(0x1BADB002 + 0x00000000)
    ; 0x00000007
    ;dd 0 ; headr address
    ;dd 0 ; load address
    ;dd 0 ; LOAD end addres
    ;dd 0 ; section bss end adress
    ;dd 0 ; entry address
    ;dd 0 ; mode graphics
    ;dd 640
    ;dd 480
    ;dd 32


section .text
BOOT:
	MOV ESP, STACK.START
	PUSH EAX 
	PUSH EBX
	MOV BYTE [0xB8000], 'H'
	MOV BYTE [0xB8001], 0x0f
	CALL kmain
	JMP $
	
section .bss
	STACK:
		.END:
			RESB 4096
		.START:
