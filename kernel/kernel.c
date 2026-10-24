/*
 *  kernel source file - kernel.c
 *  ---------------------------
 *          Flux OS 1.0
 *  |-------------------------|
 *  | Souag Ahmed El fatih    |
 *  | copy right (C) GPL 3.0  |
 *  |*************************|
 *  | time : 06:50 PM         |
 *  | date : 28/05/2026       |
 *  |-------------------------|
 * 
 *      Basic Library (BaLib)
 */

#include <multiboot.h>
#include <kernel_con.h>
#include <kernel_gfx.h>

void kmain(unsigned int ebx, unsigned int eax) {
	
	multiboot_info_t *mbi = (multiboot_info_t*)ebx;

	/*
		if  mode == text mode then call function kernel_con
		and
		else if mode == graphics then call function kernel_gfx 
	*/

	if (mbi->framebuffer_type == MULTIBOOT_FRAMEBUFFER_TYPE_EGA_TEXT)
		kernel_con(ebx);
	else if (mbi->framebuffer_type == MULTIBOOT_FRAMEBUFFER_TYPE_RGB)
		kernel_gfx(ebx);
}
