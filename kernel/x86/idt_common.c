

/*
 *  IDT source file - idt_common.c
 *  ---------------------------
 *          Flux OS 1.0
 *  |-------------------------|
 *  | Souag Ahmed El fatih    |
 *  | copy right (C) GPL 3.0  |
 *  |*************************|
 *  | time : 05:43 PM         |
 *  | date : 28/oc/2026       |
 *  |-------------------------|
 * 
 *      
 */



#include <BaLib/stdint.h>
#include <BaLib/stdio.h>
#include <x86/idt_gate.h>


/*
	this is general function for interrupt gate
*/
void idt_common(struct idt_gate_arg arg) {
	printf("iterrupte \n");
}