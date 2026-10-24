

/*
 *	stdio source file - stdio.c
 *  ---------------------------
 *         Flux OS 1.0
 *  |-------------------------|
 *  |Souag Ahmed El fatih     |
 *  |copy right (C) GPL 3.0   |
 *  |*************************|
 *  |time : 06:50 PM          |
 *  |date : 28/05/2026        |
 *  |-------------------------|
 * 
 *         Basic Library
 *
 *
 *
*/

#include <BaLib/stdint.h>
#include <BaLib/stdio.h>
#include <BaLib/stdarg.h>
#include <stdarg.h>

// putchar function
/*
	you can write your putchar and linker your putchar to this fucntion
	ex:

	----- C source --------------------
	|	BaLibSetPutchar(&my_putchar); |
	-----------------------------------
*/
void (*putchar) (char);

void (*color) (uint32_t);

void (*clear) (void);
/*
	this function for link BaLib putchar to your putchar
*/
void BaLibSetPutchar(void (*addr) (char)) {
	putchar = addr;
	return;
}

void BaLibSetColor(void (*addr) (uint32_t)) {
	color = addr;
	return;
}

void BaLibSetClear(void (*addr)) {
	clear = addr;
	return;
}
/*
	print a string
*/
void print(char *string) {
	for (int c = 0; string[c] != '\0';c++) {
		putchar(string[c]);
	}
}
/*
	printf function
	printf(format, ...)
	%s : string
	%c : char
	%d : int number
	%bc : set background color
	%% : text colors
*/
int printf(char *format, ...) {
	va_list arg;

	va_start(arg, format);

	int counter = 0;
	while (format[counter] != '\0') {
		if (format[counter] == '%') {
			counter++;
			if (format[counter] == 'c') {
				char chr = (char)va_arg(arg, uintptr_t);
				putchar(chr);
			}
			else if (format[counter] == 's') {
				char *string = va_arg(arg, char*);
				print(string);
			}
			else if (format[counter] == '%') {
				uint32_t arg_color = va_arg(arg, uint32_t);
				color(arg_color);
			}
			else {
				putchar('%');
				putchar(format[counter]);
			}
		}
		else
			putchar(format[counter]);
		counter++;
	}
	va_end(arg);
}

