

BITS 32
extern idt_common


global idt_gate0
idt_gate0:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 0
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate1
idt_gate1:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 1
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate2
idt_gate2:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 2
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate3
idt_gate3:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 3
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate4
idt_gate4:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 4
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate5
idt_gate5:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 5
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate6
idt_gate6:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 6
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate7
idt_gate7:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 7
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate8
idt_gate8:
	cli
	push edx
	push ecx
	push ebx
	push eax
	push 8
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate9
idt_gate9:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 9
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate10
idt_gate10:
	cli
	push edx
	push ecx
	push ebx
	push eax
	push 10
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate11
idt_gate11:
	cli
	push edx
	push ecx
	push ebx
	push eax
	push 11
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate12
idt_gate12:
	cli
	push edx
	push ecx
	push ebx
	push eax
	push 12
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate13
idt_gate13:
	cli
	push edx
	push ecx
	push ebx
	push eax
	push 13
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate14
idt_gate14:
	cli
	push edx
	push ecx
	push ebx
	push eax
	push 14
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate15
idt_gate15:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 15
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate16
idt_gate16:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 16
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate17
idt_gate17:
	cli
	push edx
	push ecx
	push ebx
	push eax
	push 17
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate18
idt_gate18:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 18
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate19
idt_gate19:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 19
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate20
idt_gate20:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 20
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate21
idt_gate21:
	cli
	push edx
	push ecx
	push ebx
	push eax
	push 21
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate22
idt_gate22:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 22
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate23
idt_gate23:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 23
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate24
idt_gate24:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 24
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate25
idt_gate25:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 25
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate26
idt_gate26:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 26
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate27
idt_gate27:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 27
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate28
idt_gate28:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 28
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate29
idt_gate29:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 29
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate30
idt_gate30:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 30
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate31
idt_gate31:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 31
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate32
idt_gate32:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 32
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate33
idt_gate33:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 33
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate34
idt_gate34:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 34
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate35
idt_gate35:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 35
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate36
idt_gate36:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 36
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate37
idt_gate37:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 37
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate38
idt_gate38:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 38
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate39
idt_gate39:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 39
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate40
idt_gate40:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 40
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate41
idt_gate41:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 41
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate42
idt_gate42:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 42
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate43
idt_gate43:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 43
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate44
idt_gate44:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 44
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate45
idt_gate45:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 45
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate46
idt_gate46:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 46
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate47
idt_gate47:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 47
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate48
idt_gate48:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 48
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate49
idt_gate49:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 49
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate50
idt_gate50:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 50
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate51
idt_gate51:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 51
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate52
idt_gate52:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 52
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate53
idt_gate53:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 53
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate54
idt_gate54:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 54
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate55
idt_gate55:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 55
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate56
idt_gate56:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 56
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate57
idt_gate57:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 57
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate58
idt_gate58:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 58
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate59
idt_gate59:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 59
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate60
idt_gate60:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 60
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate61
idt_gate61:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 61
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate62
idt_gate62:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 62
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate63
idt_gate63:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 63
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate64
idt_gate64:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 64
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate65
idt_gate65:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 65
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate66
idt_gate66:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 66
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate67
idt_gate67:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 67
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate68
idt_gate68:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 68
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate69
idt_gate69:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 69
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate70
idt_gate70:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 70
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate71
idt_gate71:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 71
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate72
idt_gate72:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 72
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate73
idt_gate73:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 73
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate74
idt_gate74:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 74
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate75
idt_gate75:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 75
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate76
idt_gate76:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 76
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate77
idt_gate77:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 77
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate78
idt_gate78:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 78
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate79
idt_gate79:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 79
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate80
idt_gate80:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 80
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate81
idt_gate81:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 81
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate82
idt_gate82:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 82
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate83
idt_gate83:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 83
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate84
idt_gate84:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 84
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate85
idt_gate85:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 85
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate86
idt_gate86:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 86
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate87
idt_gate87:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 87
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate88
idt_gate88:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 88
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate89
idt_gate89:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 89
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate90
idt_gate90:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 90
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate91
idt_gate91:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 91
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate92
idt_gate92:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 92
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate93
idt_gate93:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 93
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate94
idt_gate94:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 94
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate95
idt_gate95:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 95
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate96
idt_gate96:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 96
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate97
idt_gate97:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 97
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate98
idt_gate98:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 98
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate99
idt_gate99:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 99
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate100
idt_gate100:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 100
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate101
idt_gate101:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 101
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate102
idt_gate102:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 102
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate103
idt_gate103:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 103
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate104
idt_gate104:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 104
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate105
idt_gate105:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 105
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate106
idt_gate106:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 106
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate107
idt_gate107:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 107
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate108
idt_gate108:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 108
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate109
idt_gate109:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 109
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate110
idt_gate110:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 110
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate111
idt_gate111:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 111
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate112
idt_gate112:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 112
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate113
idt_gate113:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 113
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate114
idt_gate114:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 114
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate115
idt_gate115:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 115
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate116
idt_gate116:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 116
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate117
idt_gate117:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 117
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate118
idt_gate118:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 118
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate119
idt_gate119:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 119
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate120
idt_gate120:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 120
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate121
idt_gate121:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 121
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate122
idt_gate122:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 122
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate123
idt_gate123:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 123
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate124
idt_gate124:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 124
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate125
idt_gate125:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 125
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate126
idt_gate126:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 126
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate127
idt_gate127:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 127
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate128
idt_gate128:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 128
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate129
idt_gate129:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 129
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate130
idt_gate130:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 130
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate131
idt_gate131:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 131
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate132
idt_gate132:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 132
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate133
idt_gate133:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 133
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate134
idt_gate134:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 134
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate135
idt_gate135:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 135
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate136
idt_gate136:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 136
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate137
idt_gate137:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 137
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate138
idt_gate138:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 138
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate139
idt_gate139:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 139
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate140
idt_gate140:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 140
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate141
idt_gate141:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 141
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate142
idt_gate142:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 142
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate143
idt_gate143:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 143
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate144
idt_gate144:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 144
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate145
idt_gate145:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 145
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate146
idt_gate146:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 146
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate147
idt_gate147:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 147
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate148
idt_gate148:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 148
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate149
idt_gate149:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 149
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate150
idt_gate150:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 150
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate151
idt_gate151:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 151
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate152
idt_gate152:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 152
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate153
idt_gate153:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 153
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate154
idt_gate154:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 154
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate155
idt_gate155:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 155
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate156
idt_gate156:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 156
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate157
idt_gate157:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 157
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate158
idt_gate158:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 158
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate159
idt_gate159:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 159
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate160
idt_gate160:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 160
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate161
idt_gate161:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 161
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate162
idt_gate162:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 162
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate163
idt_gate163:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 163
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate164
idt_gate164:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 164
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate165
idt_gate165:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 165
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate166
idt_gate166:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 166
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate167
idt_gate167:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 167
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate168
idt_gate168:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 168
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate169
idt_gate169:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 169
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate170
idt_gate170:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 170
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate171
idt_gate171:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 171
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate172
idt_gate172:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 172
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate173
idt_gate173:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 173
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate174
idt_gate174:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 174
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate175
idt_gate175:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 175
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate176
idt_gate176:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 176
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate177
idt_gate177:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 177
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate178
idt_gate178:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 178
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate179
idt_gate179:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 179
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate180
idt_gate180:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 180
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate181
idt_gate181:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 181
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate182
idt_gate182:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 182
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate183
idt_gate183:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 183
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate184
idt_gate184:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 184
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate185
idt_gate185:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 185
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate186
idt_gate186:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 186
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate187
idt_gate187:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 187
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate188
idt_gate188:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 188
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate189
idt_gate189:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 189
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate190
idt_gate190:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 190
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate191
idt_gate191:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 191
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate192
idt_gate192:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 192
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate193
idt_gate193:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 193
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate194
idt_gate194:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 194
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate195
idt_gate195:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 195
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate196
idt_gate196:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 196
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate197
idt_gate197:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 197
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate198
idt_gate198:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 198
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate199
idt_gate199:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 199
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate200
idt_gate200:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 200
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate201
idt_gate201:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 201
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate202
idt_gate202:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 202
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate203
idt_gate203:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 203
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate204
idt_gate204:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 204
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate205
idt_gate205:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 205
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate206
idt_gate206:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 206
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate207
idt_gate207:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 207
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate208
idt_gate208:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 208
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate209
idt_gate209:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 209
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate210
idt_gate210:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 210
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate211
idt_gate211:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 211
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate212
idt_gate212:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 212
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate213
idt_gate213:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 213
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate214
idt_gate214:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 214
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate215
idt_gate215:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 215
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate216
idt_gate216:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 216
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate217
idt_gate217:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 217
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate218
idt_gate218:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 218
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate219
idt_gate219:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 219
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate220
idt_gate220:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 220
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate221
idt_gate221:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 221
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate222
idt_gate222:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 222
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate223
idt_gate223:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 223
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate224
idt_gate224:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 224
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate225
idt_gate225:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 225
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate226
idt_gate226:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 226
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate227
idt_gate227:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 227
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate228
idt_gate228:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 228
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate229
idt_gate229:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 229
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate230
idt_gate230:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 230
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate231
idt_gate231:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 231
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate232
idt_gate232:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 232
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate233
idt_gate233:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 233
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate234
idt_gate234:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 234
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate235
idt_gate235:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 235
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate236
idt_gate236:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 236
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate237
idt_gate237:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 237
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate238
idt_gate238:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 238
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate239
idt_gate239:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 239
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate240
idt_gate240:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 240
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate241
idt_gate241:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 241
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate242
idt_gate242:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 242
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate243
idt_gate243:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 243
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate244
idt_gate244:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 244
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate245
idt_gate245:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 245
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate246
idt_gate246:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 246
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate247
idt_gate247:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 247
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate248
idt_gate248:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 248
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate249
idt_gate249:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 249
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate250
idt_gate250:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 250
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate251
idt_gate251:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 251
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate252
idt_gate252:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 252
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate253
idt_gate253:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 253
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate254
idt_gate254:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 254
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
global idt_gate255
idt_gate255:
	cli
push 0
	push edx
	push ecx
	push ebx
	push eax
	push 255
	call idt_common
	add esp, 4
	pop eax
	pop ebx
	pop ecx
	pop edx
	add esp, 4
sti
	iretd
