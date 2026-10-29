
/*
 *  IDT source file - idt.c
 *  ---------------------------
 *          Flux OS 1.0
 *  |-------------------------|
 *  | Souag Ahmed El fatih    |
 *  | copy right (C) GPL 3.0  |
 *  |*************************|
 *  | time : 05:24 PM         |
 *  | date : 28/oc/2026       |
 *  |-------------------------|
 * 
 *      
 */

#include <BaLib/stdint.h>
#include <x86/idt.h>
#include <x86/idt_gate.h>


// one gate entry
struct Interrupt {
   uint16_t offset_1;        // low address
   uint16_t selector;        // gdt code segment
   uint8_t  zero;            // set 0
   uint8_t  type_attributes; 
   uint16_t offset_2;        // hight address 
}__attribute__((packed)); 

// interrupt table (256 entry)
struct Interrupt interrupt[256];

// this for interrupt table information
struct idt_info {
   uint16_t size;
   uint32_t address;
}__attribute__((packed));

struct idt_info idtp;


/*
   by this function you can add function or address in interrupt table
*/
void add_gate(uint32_t address, uint16_t selector, uint8_t type_att, uint8_t num) {
   interrupt[num].offset_1 = address & 0xFFFF;
   interrupt[num].offset_2 = (address >> 16) & 0xFFFF;
   interrupt[num].selector = selector;
   interrupt[num].zero = 0;
   interrupt[num].type_attributes = type_att;
}

// this function for initializing IDT TABL
void IdtInit() {

   // -------------------------------------------
   add_gate((uint32_t)idt_gate0, 0x08, 0x8E, 0);
   add_gate((uint32_t)idt_gate1, 0x08, 0x8E, 1);
   add_gate((uint32_t)idt_gate2, 0x08, 0x8E, 2);
   add_gate((uint32_t)idt_gate3, 0x08, 0x8E, 3);
   add_gate((uint32_t)idt_gate4, 0x08, 0x8E, 4);
   add_gate((uint32_t)idt_gate5, 0x08, 0x8E, 5);
   add_gate((uint32_t)idt_gate6, 0x08, 0x8E, 6);
   add_gate((uint32_t)idt_gate7, 0x08, 0x8E, 7);
   add_gate((uint32_t)idt_gate8, 0x08, 0x8E, 8);
   add_gate((uint32_t)idt_gate9, 0x08, 0x8E, 9);
   add_gate((uint32_t)idt_gate10, 0x08, 0x8E, 10);
   add_gate((uint32_t)idt_gate11, 0x08, 0x8E, 11);
   add_gate((uint32_t)idt_gate12, 0x08, 0x8E, 12);
   add_gate((uint32_t)idt_gate13, 0x08, 0x8E, 13);
   add_gate((uint32_t)idt_gate14, 0x08, 0x8E, 14);
   add_gate((uint32_t)idt_gate15, 0x08, 0x8E, 15);
   add_gate((uint32_t)idt_gate16, 0x08, 0x8E, 16);
   add_gate((uint32_t)idt_gate17, 0x08, 0x8E, 17);
   add_gate((uint32_t)idt_gate18, 0x08, 0x8E, 18);
   add_gate((uint32_t)idt_gate19, 0x08, 0x8E, 19);
   add_gate((uint32_t)idt_gate20, 0x08, 0x8E, 20);
   add_gate((uint32_t)idt_gate21, 0x08, 0x8E, 21);
   add_gate((uint32_t)idt_gate22, 0x08, 0x8E, 22);
   add_gate((uint32_t)idt_gate23, 0x08, 0x8E, 23);
   add_gate((uint32_t)idt_gate24, 0x08, 0x8E, 24);
   add_gate((uint32_t)idt_gate25, 0x08, 0x8E, 25);
   add_gate((uint32_t)idt_gate26, 0x08, 0x8E, 26);
   add_gate((uint32_t)idt_gate27, 0x08, 0x8E, 27);
   add_gate((uint32_t)idt_gate28, 0x08, 0x8E, 28);
   add_gate((uint32_t)idt_gate29, 0x08, 0x8E, 29);
   add_gate((uint32_t)idt_gate30, 0x08, 0x8E, 30);
   add_gate((uint32_t)idt_gate31, 0x08, 0x8E, 31);
   add_gate((uint32_t)idt_gate32, 0x08, 0x8E, 32);
   add_gate((uint32_t)idt_gate33, 0x08, 0x8E, 33);
   add_gate((uint32_t)idt_gate34, 0x08, 0x8E, 34);
   add_gate((uint32_t)idt_gate35, 0x08, 0x8E, 35);
   add_gate((uint32_t)idt_gate36, 0x08, 0x8E, 36);
   add_gate((uint32_t)idt_gate37, 0x08, 0x8E, 37);
   add_gate((uint32_t)idt_gate38, 0x08, 0x8E, 38);
   add_gate((uint32_t)idt_gate39, 0x08, 0x8E, 39);
   add_gate((uint32_t)idt_gate40, 0x08, 0x8E, 40);
   add_gate((uint32_t)idt_gate41, 0x08, 0x8E, 41);
   add_gate((uint32_t)idt_gate42, 0x08, 0x8E, 42);
   add_gate((uint32_t)idt_gate43, 0x08, 0x8E, 43);
   add_gate((uint32_t)idt_gate44, 0x08, 0x8E, 44);
   add_gate((uint32_t)idt_gate45, 0x08, 0x8E, 45);
   add_gate((uint32_t)idt_gate46, 0x08, 0x8E, 46);
   add_gate((uint32_t)idt_gate47, 0x08, 0x8E, 47);
   add_gate((uint32_t)idt_gate48, 0x08, 0x8E, 48);
   add_gate((uint32_t)idt_gate49, 0x08, 0x8E, 49);
   add_gate((uint32_t)idt_gate50, 0x08, 0x8E, 50);
   add_gate((uint32_t)idt_gate51, 0x08, 0x8E, 51);
   add_gate((uint32_t)idt_gate52, 0x08, 0x8E, 52);
   add_gate((uint32_t)idt_gate53, 0x08, 0x8E, 53);
   add_gate((uint32_t)idt_gate54, 0x08, 0x8E, 54);
   add_gate((uint32_t)idt_gate55, 0x08, 0x8E, 55);
   add_gate((uint32_t)idt_gate56, 0x08, 0x8E, 56);
   add_gate((uint32_t)idt_gate57, 0x08, 0x8E, 57);
   add_gate((uint32_t)idt_gate58, 0x08, 0x8E, 58);
   add_gate((uint32_t)idt_gate59, 0x08, 0x8E, 59);
   add_gate((uint32_t)idt_gate60, 0x08, 0x8E, 60);
   add_gate((uint32_t)idt_gate61, 0x08, 0x8E, 61);
   add_gate((uint32_t)idt_gate62, 0x08, 0x8E, 62);
   add_gate((uint32_t)idt_gate63, 0x08, 0x8E, 63);
   add_gate((uint32_t)idt_gate64, 0x08, 0x8E, 64);
   add_gate((uint32_t)idt_gate65, 0x08, 0x8E, 65);
   add_gate((uint32_t)idt_gate66, 0x08, 0x8E, 66);
   add_gate((uint32_t)idt_gate67, 0x08, 0x8E, 67);
   add_gate((uint32_t)idt_gate68, 0x08, 0x8E, 68);
   add_gate((uint32_t)idt_gate69, 0x08, 0x8E, 69);
   add_gate((uint32_t)idt_gate70, 0x08, 0x8E, 70);
   add_gate((uint32_t)idt_gate71, 0x08, 0x8E, 71);
   add_gate((uint32_t)idt_gate72, 0x08, 0x8E, 72);
   add_gate((uint32_t)idt_gate73, 0x08, 0x8E, 73);
   add_gate((uint32_t)idt_gate74, 0x08, 0x8E, 74);
   add_gate((uint32_t)idt_gate75, 0x08, 0x8E, 75);
   add_gate((uint32_t)idt_gate76, 0x08, 0x8E, 76);
   add_gate((uint32_t)idt_gate77, 0x08, 0x8E, 77);
   add_gate((uint32_t)idt_gate78, 0x08, 0x8E, 78);
   add_gate((uint32_t)idt_gate79, 0x08, 0x8E, 79);
   add_gate((uint32_t)idt_gate80, 0x08, 0x8E, 80);
   add_gate((uint32_t)idt_gate81, 0x08, 0x8E, 81);
   add_gate((uint32_t)idt_gate82, 0x08, 0x8E, 82);
   add_gate((uint32_t)idt_gate83, 0x08, 0x8E, 83);
   add_gate((uint32_t)idt_gate84, 0x08, 0x8E, 84);
   add_gate((uint32_t)idt_gate85, 0x08, 0x8E, 85);
   add_gate((uint32_t)idt_gate86, 0x08, 0x8E, 86);
   add_gate((uint32_t)idt_gate87, 0x08, 0x8E, 87);
   add_gate((uint32_t)idt_gate88, 0x08, 0x8E, 88);
   add_gate((uint32_t)idt_gate89, 0x08, 0x8E, 89);
   add_gate((uint32_t)idt_gate90, 0x08, 0x8E, 90);
   add_gate((uint32_t)idt_gate91, 0x08, 0x8E, 91);
   add_gate((uint32_t)idt_gate92, 0x08, 0x8E, 92);
   add_gate((uint32_t)idt_gate93, 0x08, 0x8E, 93);
   add_gate((uint32_t)idt_gate94, 0x08, 0x8E, 94);
   add_gate((uint32_t)idt_gate95, 0x08, 0x8E, 95);
   add_gate((uint32_t)idt_gate96, 0x08, 0x8E, 96);
   add_gate((uint32_t)idt_gate97, 0x08, 0x8E, 97);
   add_gate((uint32_t)idt_gate98, 0x08, 0x8E, 98);
   add_gate((uint32_t)idt_gate99, 0x08, 0x8E, 99);
   add_gate((uint32_t)idt_gate100, 0x08, 0x8E, 100);
   add_gate((uint32_t)idt_gate101, 0x08, 0x8E, 101);
   add_gate((uint32_t)idt_gate102, 0x08, 0x8E, 102);
   add_gate((uint32_t)idt_gate103, 0x08, 0x8E, 103);
   add_gate((uint32_t)idt_gate104, 0x08, 0x8E, 104);
   add_gate((uint32_t)idt_gate105, 0x08, 0x8E, 105);
   add_gate((uint32_t)idt_gate106, 0x08, 0x8E, 106);
   add_gate((uint32_t)idt_gate107, 0x08, 0x8E, 107);
   add_gate((uint32_t)idt_gate108, 0x08, 0x8E, 108);
   add_gate((uint32_t)idt_gate109, 0x08, 0x8E, 109);
   add_gate((uint32_t)idt_gate110, 0x08, 0x8E, 110);
   add_gate((uint32_t)idt_gate111, 0x08, 0x8E, 111);
   add_gate((uint32_t)idt_gate112, 0x08, 0x8E, 112);
   add_gate((uint32_t)idt_gate113, 0x08, 0x8E, 113);
   add_gate((uint32_t)idt_gate114, 0x08, 0x8E, 114);
   add_gate((uint32_t)idt_gate115, 0x08, 0x8E, 115);
   add_gate((uint32_t)idt_gate116, 0x08, 0x8E, 116);
   add_gate((uint32_t)idt_gate117, 0x08, 0x8E, 117);
   add_gate((uint32_t)idt_gate118, 0x08, 0x8E, 118);
   add_gate((uint32_t)idt_gate119, 0x08, 0x8E, 119);
   add_gate((uint32_t)idt_gate120, 0x08, 0x8E, 120);
   add_gate((uint32_t)idt_gate121, 0x08, 0x8E, 121);
   add_gate((uint32_t)idt_gate122, 0x08, 0x8E, 122);
   add_gate((uint32_t)idt_gate123, 0x08, 0x8E, 123);
   add_gate((uint32_t)idt_gate124, 0x08, 0x8E, 124);
   add_gate((uint32_t)idt_gate125, 0x08, 0x8E, 125);
   add_gate((uint32_t)idt_gate126, 0x08, 0x8E, 126);
   add_gate((uint32_t)idt_gate127, 0x08, 0x8E, 127);
   add_gate((uint32_t)idt_gate128, 0x08, 0x8E, 128);
   add_gate((uint32_t)idt_gate129, 0x08, 0x8E, 129);
   add_gate((uint32_t)idt_gate130, 0x08, 0x8E, 130);
   add_gate((uint32_t)idt_gate131, 0x08, 0x8E, 131);
   add_gate((uint32_t)idt_gate132, 0x08, 0x8E, 132);
   add_gate((uint32_t)idt_gate133, 0x08, 0x8E, 133);
   add_gate((uint32_t)idt_gate134, 0x08, 0x8E, 134);
   add_gate((uint32_t)idt_gate135, 0x08, 0x8E, 135);
   add_gate((uint32_t)idt_gate136, 0x08, 0x8E, 136);
   add_gate((uint32_t)idt_gate137, 0x08, 0x8E, 137);
   add_gate((uint32_t)idt_gate138, 0x08, 0x8E, 138);
   add_gate((uint32_t)idt_gate139, 0x08, 0x8E, 139);
   add_gate((uint32_t)idt_gate140, 0x08, 0x8E, 140);
   add_gate((uint32_t)idt_gate141, 0x08, 0x8E, 141);
   add_gate((uint32_t)idt_gate142, 0x08, 0x8E, 142);
   add_gate((uint32_t)idt_gate143, 0x08, 0x8E, 143);
   add_gate((uint32_t)idt_gate144, 0x08, 0x8E, 144);
   add_gate((uint32_t)idt_gate145, 0x08, 0x8E, 145);
   add_gate((uint32_t)idt_gate146, 0x08, 0x8E, 146);
   add_gate((uint32_t)idt_gate147, 0x08, 0x8E, 147);
   add_gate((uint32_t)idt_gate148, 0x08, 0x8E, 148);
   add_gate((uint32_t)idt_gate149, 0x08, 0x8E, 149);
   add_gate((uint32_t)idt_gate150, 0x08, 0x8E, 150);
   add_gate((uint32_t)idt_gate151, 0x08, 0x8E, 151);
   add_gate((uint32_t)idt_gate152, 0x08, 0x8E, 152);
   add_gate((uint32_t)idt_gate153, 0x08, 0x8E, 153);
   add_gate((uint32_t)idt_gate154, 0x08, 0x8E, 154);
   add_gate((uint32_t)idt_gate155, 0x08, 0x8E, 155);
   add_gate((uint32_t)idt_gate156, 0x08, 0x8E, 156);
   add_gate((uint32_t)idt_gate157, 0x08, 0x8E, 157);
   add_gate((uint32_t)idt_gate158, 0x08, 0x8E, 158);
   add_gate((uint32_t)idt_gate159, 0x08, 0x8E, 159);
   add_gate((uint32_t)idt_gate160, 0x08, 0x8E, 160);
   add_gate((uint32_t)idt_gate161, 0x08, 0x8E, 161);
   add_gate((uint32_t)idt_gate162, 0x08, 0x8E, 162);
   add_gate((uint32_t)idt_gate163, 0x08, 0x8E, 163);
   add_gate((uint32_t)idt_gate164, 0x08, 0x8E, 164);
   add_gate((uint32_t)idt_gate165, 0x08, 0x8E, 165);
   add_gate((uint32_t)idt_gate166, 0x08, 0x8E, 166);
   add_gate((uint32_t)idt_gate167, 0x08, 0x8E, 167);
   add_gate((uint32_t)idt_gate168, 0x08, 0x8E, 168);
   add_gate((uint32_t)idt_gate169, 0x08, 0x8E, 169);
   add_gate((uint32_t)idt_gate170, 0x08, 0x8E, 170);
   add_gate((uint32_t)idt_gate171, 0x08, 0x8E, 171);
   add_gate((uint32_t)idt_gate172, 0x08, 0x8E, 172);
   add_gate((uint32_t)idt_gate173, 0x08, 0x8E, 173);
   add_gate((uint32_t)idt_gate174, 0x08, 0x8E, 174);
   add_gate((uint32_t)idt_gate175, 0x08, 0x8E, 175);
   add_gate((uint32_t)idt_gate176, 0x08, 0x8E, 176);
   add_gate((uint32_t)idt_gate177, 0x08, 0x8E, 177);
   add_gate((uint32_t)idt_gate178, 0x08, 0x8E, 178);
   add_gate((uint32_t)idt_gate179, 0x08, 0x8E, 179);
   add_gate((uint32_t)idt_gate180, 0x08, 0x8E, 180);
   add_gate((uint32_t)idt_gate181, 0x08, 0x8E, 181);
   add_gate((uint32_t)idt_gate182, 0x08, 0x8E, 182);
   add_gate((uint32_t)idt_gate183, 0x08, 0x8E, 183);
   add_gate((uint32_t)idt_gate184, 0x08, 0x8E, 184);
   add_gate((uint32_t)idt_gate185, 0x08, 0x8E, 185);
   add_gate((uint32_t)idt_gate186, 0x08, 0x8E, 186);
   add_gate((uint32_t)idt_gate187, 0x08, 0x8E, 187);
   add_gate((uint32_t)idt_gate188, 0x08, 0x8E, 188);
   add_gate((uint32_t)idt_gate189, 0x08, 0x8E, 189);
   add_gate((uint32_t)idt_gate190, 0x08, 0x8E, 190);
   add_gate((uint32_t)idt_gate191, 0x08, 0x8E, 191);
   add_gate((uint32_t)idt_gate192, 0x08, 0x8E, 192);
   add_gate((uint32_t)idt_gate193, 0x08, 0x8E, 193);
   add_gate((uint32_t)idt_gate194, 0x08, 0x8E, 194);
   add_gate((uint32_t)idt_gate195, 0x08, 0x8E, 195);
   add_gate((uint32_t)idt_gate196, 0x08, 0x8E, 196);
   add_gate((uint32_t)idt_gate197, 0x08, 0x8E, 197);
   add_gate((uint32_t)idt_gate198, 0x08, 0x8E, 198);
   add_gate((uint32_t)idt_gate199, 0x08, 0x8E, 199);
   add_gate((uint32_t)idt_gate200, 0x08, 0x8E, 200);
   add_gate((uint32_t)idt_gate201, 0x08, 0x8E, 201);
   add_gate((uint32_t)idt_gate202, 0x08, 0x8E, 202);
   add_gate((uint32_t)idt_gate203, 0x08, 0x8E, 203);
   add_gate((uint32_t)idt_gate204, 0x08, 0x8E, 204);
   add_gate((uint32_t)idt_gate205, 0x08, 0x8E, 205);
   add_gate((uint32_t)idt_gate206, 0x08, 0x8E, 206);
   add_gate((uint32_t)idt_gate207, 0x08, 0x8E, 207);
   add_gate((uint32_t)idt_gate208, 0x08, 0x8E, 208);
   add_gate((uint32_t)idt_gate209, 0x08, 0x8E, 209);
   add_gate((uint32_t)idt_gate210, 0x08, 0x8E, 210);
   add_gate((uint32_t)idt_gate211, 0x08, 0x8E, 211);
   add_gate((uint32_t)idt_gate212, 0x08, 0x8E, 212);
   add_gate((uint32_t)idt_gate213, 0x08, 0x8E, 213);
   add_gate((uint32_t)idt_gate214, 0x08, 0x8E, 214);
   add_gate((uint32_t)idt_gate215, 0x08, 0x8E, 215);
   add_gate((uint32_t)idt_gate216, 0x08, 0x8E, 216);
   add_gate((uint32_t)idt_gate217, 0x08, 0x8E, 217);
   add_gate((uint32_t)idt_gate218, 0x08, 0x8E, 218);
   add_gate((uint32_t)idt_gate219, 0x08, 0x8E, 219);
   add_gate((uint32_t)idt_gate220, 0x08, 0x8E, 220);
   add_gate((uint32_t)idt_gate221, 0x08, 0x8E, 221);
   add_gate((uint32_t)idt_gate222, 0x08, 0x8E, 222);
   add_gate((uint32_t)idt_gate223, 0x08, 0x8E, 223);
   add_gate((uint32_t)idt_gate224, 0x08, 0x8E, 224);
   add_gate((uint32_t)idt_gate225, 0x08, 0x8E, 225);
   add_gate((uint32_t)idt_gate226, 0x08, 0x8E, 226);
   add_gate((uint32_t)idt_gate227, 0x08, 0x8E, 227);
   add_gate((uint32_t)idt_gate228, 0x08, 0x8E, 228);
   add_gate((uint32_t)idt_gate229, 0x08, 0x8E, 229);
   add_gate((uint32_t)idt_gate230, 0x08, 0x8E, 230);
   add_gate((uint32_t)idt_gate231, 0x08, 0x8E, 231);
   add_gate((uint32_t)idt_gate232, 0x08, 0x8E, 232);
   add_gate((uint32_t)idt_gate233, 0x08, 0x8E, 233);
   add_gate((uint32_t)idt_gate234, 0x08, 0x8E, 234);
   add_gate((uint32_t)idt_gate235, 0x08, 0x8E, 235);
   add_gate((uint32_t)idt_gate236, 0x08, 0x8E, 236);
   add_gate((uint32_t)idt_gate237, 0x08, 0x8E, 237);
   add_gate((uint32_t)idt_gate238, 0x08, 0x8E, 238);
   add_gate((uint32_t)idt_gate239, 0x08, 0x8E, 239);
   add_gate((uint32_t)idt_gate240, 0x08, 0x8E, 240);
   add_gate((uint32_t)idt_gate241, 0x08, 0x8E, 241);
   add_gate((uint32_t)idt_gate242, 0x08, 0x8E, 242);
   add_gate((uint32_t)idt_gate243, 0x08, 0x8E, 243);
   add_gate((uint32_t)idt_gate244, 0x08, 0x8E, 244);
   add_gate((uint32_t)idt_gate245, 0x08, 0x8E, 245);
   add_gate((uint32_t)idt_gate246, 0x08, 0x8E, 246);
   add_gate((uint32_t)idt_gate247, 0x08, 0x8E, 247);
   add_gate((uint32_t)idt_gate248, 0x08, 0x8E, 248);
   add_gate((uint32_t)idt_gate249, 0x08, 0x8E, 249);
   add_gate((uint32_t)idt_gate250, 0x08, 0x8E, 250);
   add_gate((uint32_t)idt_gate251, 0x08, 0x8E, 251);
   add_gate((uint32_t)idt_gate252, 0x08, 0x8E, 252);
   add_gate((uint32_t)idt_gate253, 0x08, 0x8E, 253);
   add_gate((uint32_t)idt_gate254, 0x08, 0x8E, 254);
   add_gate((uint32_t)idt_gate255, 0x08, 0x8E, 255);

   // size for interupt table
   idtp.size = (sizeof(interrupt) - 1);
   
   // address for first entry
   idtp.address = (uint32_t)&interrupt[0];
   
   // %0 : input
   // r : the compiler set a free register
   // load idt table
   __asm__ volatile("lidt (%0)" : : "r"(&idtp));
   // we  open interrupt 
   __asm__ volatile("sti");
}
