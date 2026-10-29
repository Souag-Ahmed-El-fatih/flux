

for ((i=0; i<256; i++))
do 
	echo "	add_gate((uint32_t)idt_gate$i, 0x08, 0x8E, $i);"
done