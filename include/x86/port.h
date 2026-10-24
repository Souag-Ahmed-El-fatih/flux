#ifndef PORT_H
#define PORT_H

#include <BaLib/stdint.h>

extern uint8_t inByte(uint16_t port);
extern void outByte(uint16_t port, uint8_t value);
extern uint16_t inWord(uint16_t port);
extern void outWord(uint16_t port, uint16_t value);

#endif
