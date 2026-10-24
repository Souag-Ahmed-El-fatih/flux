
/*
 *  PIC source file - pic.h
 *  ---------------------------
 *          Flux OS 1.0
 *  |-------------------------|
 *  | Souag Ahmed El fatih    |
 *  | copy right (C) GPL 3.0  |
 *  |*************************|
 *  | time : 07:26 PM         |
 *  | date : 19/ju/2026       |
 *  |-------------------------|
 * 
 *      
 */

#include <BaLib/stdint.h>
#include <x86/port.h>



#define PIC1 0x20
#define PIC2 0xA0
#define PIC1_COMMAND 0x20
#define PIC2_COMMAND 0xA0
#define PIC1_DATA 0x21
#define PIC2_DATA 0xA1
#define PIC_EOI 0x20

#define ICW1_ICW4 0x01
#define ICW1_SINGLE 0x02
#define ICW1_INTERVAL 0x04
#define ICW1_LEVEL 0x08
#define ICW1_INIT 0x10

#define ICW4_8086	0x01
#define ICW4_AUTO	0x02
#define ICW4_BUF_SLAVE	0x08
#define ICW4_BUF_MASTER	0x0C
#define ICW4_SFNM	0x10


// if you call this function, all pic interrupt mask (PIT PS2 ....)
void Pic_Disable() {
    outByte(PIC1_DATA, 0xff);
    outByte(PIC2_DATA, 0xff);
}

void Pic_Rremap(uint8_t ineter_start, uint8_t ineter_end) {
    outByte(PIC1_COMMAND, ICW1_INIT | ICW1_ICW4);
	outByte(PIC2_COMMAND, ICW1_INIT | ICW1_ICW4);
	outByte(PIC1_DATA, ineter_start);
	outByte(PIC2_DATA, ineter_end);
	outByte(PIC1_DATA, 4);
	outByte(PIC2_DATA, 2);
	outByte(PIC1_DATA, ICW4_8086);
	outByte(PIC2_DATA, ICW4_8086);
}

void Pic_Enable() {
    outByte(PIC1_DATA, 0x00);
    outByte(PIC2_DATA, 0x00);
}