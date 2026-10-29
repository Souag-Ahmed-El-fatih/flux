
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
#include <x86/idt.h>

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

    color((uint32_t)TEXT_BG_LIGHTBLUE);
    clear();
    printf("%%flux OS%% (32-BIT)\n", TEXT_YELLOW | TEXT_BG_LIGHTBLUE, TEXT_AUTO | TEXT_BG_LIGHTBLUE);
    printf("creat by : %%souag ahmed el fatih%%\n", TEXT_YELLOW | TEXT_BG_LIGHTBLUE, TEXT_AUTO | TEXT_BG_LIGHTBLUE);
    printf("-------------------------------\n");
    printf("initializing system :\n");
    printf("------------\n");
    GdtInit();

    printf("[ %%OK%% ] GDT initializing\n", TEXT_OK | TEXT_BG_LIGHTBLUE , TEXT_AUTO | TEXT_BG_LIGHTBLUE);

    Pic_Remap(32, 40);
    Pic_Enable();
    printf("[ %%OK%% ] PIC Remap and Enable initializing \n", TEXT_OK | TEXT_BG_LIGHTBLUE , TEXT_AUTO | TEXT_BG_LIGHTBLUE);
    IdtInit();
    printf("[ %%OK%% ] Idt initializing \n", TEXT_OK | TEXT_BG_LIGHTBLUE , TEXT_AUTO | TEXT_BG_LIGHTBLUE);
    __asm__ volatile ("int $100");
    __asm__ volatile ("int $100");
    __asm__ volatile ("int $100");
    while (1) {
        asm volatile ("hlt");
    }


}

