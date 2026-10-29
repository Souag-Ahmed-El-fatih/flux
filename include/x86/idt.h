/*
 *  IDT source file - idt.h
 *  ---------------------------
 *          Flux OS 1.0
 *  |-------------------------|
 *  | Souag Ahmed El fatih    |
 *  | copy right (C) GPL 3.0  |
 *  |*************************|
 *  | time : 06:02 PM         |
 *  | date : 28/oc/2026       |
 *  |-------------------------|
 * 
 *      
 */


#ifndef IDT_H
#define IDT_H 
#include <BaLib/stdint.h>
void IdtInit();
void add_gate(uint32_t address, uint16_t selector, uint8_t type_att, uint8_t num);
#endif