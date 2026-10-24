
BITS 32

global inByte
global outByte
global inWord
global outWord

; return address [esp+4] value [esp+8] port

inByte:
	mov eax, 0
	mov edx, [esp+4]
	in al, dx
	ret
	
outByte:
	mov edx, [esp+4]
	mov eax, [esp+8]
	out dx, al
	ret

inWord:
	mov eax, 0
	mov edx, [esp+4]
	in ax, dx
	ret

outWord:
	mov edx, [esp+4]
	mov eax, [esp+8]
	out dx, ax
	ret