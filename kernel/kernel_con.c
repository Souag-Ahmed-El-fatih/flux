
/*
 *  kernel console source file - kernel_con.c
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
 *        kernel console (text mode)
 */

#include <BaLib/stdint.h>
#include <multiboot.h>
#include <macro.h>
#include <con/vga.h>
#include <BaLib/string.h>
#include <x86/gdt.h>
#include <BaLib/stdio.h>
#include <BaLib/BaLib.h>
#include <x86/port.h>
#include <x86/PIC.h>

void kernel_con(uint32_t ebx) {

	// multiboot info struct 
	multiboot_info_t* mbi = (multiboot_info_t*)ebx;

	// text mode init (color == white bg = black corsur = 0,0 clear the screen)
	TextModeInit();
	/*
		Basic library init
	*/
	BaLibSetPutchar(&tputchar);
	BaLibSetColor(&ttheme);
	BaLibSetClear(&tclear);
	printf("Welcome to flux OS (32-BIT)\n");
	printf("creat by : souag ahmed el fatih\n");
	printf("-------------------------------\n");
	printf("init system :\n");
	printf("------------\n");
	GdtInit();

	printf("[ %%OK%% ] GDT init\n", TEXT_OK, TEXT_AUTO);

	Pic_Disable();

	printf("[ %%OK%% ] PIC disable \n", TEXT_OK, TEXT_AUTO);

	while (1) 
		asm volatile ("hlt");
}

