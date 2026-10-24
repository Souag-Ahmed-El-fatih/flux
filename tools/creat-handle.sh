echo "

BITS 32

global IDT_handle

extern isr_handle
extern irq_handle
extern syscall_handle
extern none_handle

IDT_handle:
	cli
	call none_handle
	iretd

	" > kernel/x86/handle.asm

for ((i=0; i<32; i++))
do 
	echo "global IDT_handle$i" >> kernel/x86/handle.asm
	echo "IDT_handle$i:" >> kernel/x86/handle.asm
	echo "cli" >> kernel/x86/handle.asm
	if [ $i -ne 8 ] && [ $i -lt 10 -o $i -gt 14 ] && [ $i -ne 17 ] && [ $i -ne 21 ]; then
		echo "push 0" >> kernel/x86/handle.asm
	fi
	echo "push edx">> kernel/x86/handle.asm
	echo "push ecx">> kernel/x86/handle.asm
	echo "push ebx">> kernel/x86/handle.asm
	echo "push eax">> kernel/x86/handle.asm
	echo "push $i" >> kernel/x86/handle.asm
	echo "call isr_handle"  >> kernel/x86/handle.asm
	echo "add esp, 4" >> kernel/x86/handle.asm
	echo "pop eax" >> kernel/x86/handle.asm
	echo "pop ebx" >> kernel/x86/handle.asm
	echo "pop ecx" >> kernel/x86/handle.asm
	echo "pop edx" >> kernel/x86/handle.asm
	echo "add esp, 4" >> kernel/x86/handle.asm
	echo "iretd" >> kernel/x86/handle.asm
done

for ((i=32; i < 47;i++))
do
	echo "global IDT_handle$i" >> kernel/x86/handle.asm
	echo "IDT_handle$i:" >> kernel/x86/handle.asm
	echo "cli" >> kernel/x86/handle.asm
	echo "call irq_handle"  >> kernel/x86/handle.asm
	echo "iretd" >> kernel/x86/handle.asm
done

for (( i = 47; i < 72; i++ ))
do
	echo "global IDT_handle$i" >> kernel/x86/handle.asm
	echo "IDT_handle$i:" >> kernel/x86/handle.asm
	echo "cli" >> kernel/x86/handle.asm
	echo "call none_handle"  >> kernel/x86/handle.asm
	echo "iretd" >> kernel/x86/handle.asm
done	


for ((i=72; i <85;i++))
do
	echo "global IDT_handle$i" >> kernel/x86/handle.asm
	echo "IDT_handle$i:" >> kernel/x86/handle.asm
	echo "cli" >> kernel/x86/handle.asm
	echo "push 0" >> kernel/x86/handle.asm
	echo "push edx">> kernel/x86/handle.asm
	echo "push ecx">> kernel/x86/handle.asm
	echo "push ebx">> kernel/x86/handle.asm
	echo "push eax">> kernel/x86/handle.asm
	echo "push $i" >> kernel/x86/handle.asm
	echo "call syscall_handle"  >> kernel/x86/handle.asm
	echo "add esp, 4" >> kernel/x86/handle.asm
	echo "pop eax" >> kernel/x86/handle.asm
	echo "pop ebx" >> kernel/x86/handle.asm
	echo "pop ecx" >> kernel/x86/handle.asm
	echo "pop edx" >> kernel/x86/handle.asm
	echo "add esp, 4" >> kernel/x86/handle.asm
	echo "iretd" >> kernel/x86/handle.asm
done