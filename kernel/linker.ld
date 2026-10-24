ENTRY(BOOT)

SECTIONS
{
	. = 1M;
	.multiboot ALIGN(4096) : { *(.multiboot) }
    .text : { *(.text*) }
    .rodata : { *(.rodata*) }
    .data : { *(.data*) }
    .bss : { *(.bss*) }
}