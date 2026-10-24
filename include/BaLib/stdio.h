

#include <BaLib/stdint.h>

#ifndef STDIO_H
#define STDIO_H
void (*putchar) (char);
void (*color) (uint32_t);
void (*clear) (void);
void print(char *string);
int printf(char *format, ...);
#endif
