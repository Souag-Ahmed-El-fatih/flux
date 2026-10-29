
echo "

BITS 32
extern idt_common

" > kernel/x86/idt_gate.asm

for ((i=0; i<256; i++))
do 
    echo "global idt_gate$i" >> kernel/x86/idt_gate.asm
    echo "idt_gate$i:" >> kernel/x86/idt_gate.asm
    echo "	cli" >> kernel/x86/idt_gate.asm


    if [ $i -ge 32 ] || ([ $i -ne 8 ] && [ $i -lt 10 -o $i -gt 14 ] && [ $i -ne 17 ] && [ $i -ne 21 ]); then
        echo "push 0" >> kernel/x86/idt_gate.asm
    fi
    
    echo "	push edx" >> kernel/x86/idt_gate.asm
    echo "	push ecx" >> kernel/x86/idt_gate.asm
    echo "	push ebx" >> kernel/x86/idt_gate.asm
    echo "	push eax" >> kernel/x86/idt_gate.asm
    echo "	push $i" >> kernel/x86/idt_gate.asm
    echo "	call idt_common" >> kernel/x86/idt_gate.asm
    echo "	add esp, 4" >> kernel/x86/idt_gate.asm
    echo "	pop eax" >> kernel/x86/idt_gate.asm
    echo "	pop ebx" >> kernel/x86/idt_gate.asm
    echo "	pop ecx" >> kernel/x86/idt_gate.asm
    echo "	pop edx" >> kernel/x86/idt_gate.asm
    echo "	add esp, 4" >> kernel/x86/idt_gate.asm
    echo "sti" >> kernel/x86/idt_gate.asm
    echo "	iretd" >> kernel/x86/idt_gate.asm
done