
/**********************
	PEROJECT : OS
	FILE     : vga.c
	DEVLOPER : SOUAG AHMED EL FATIH
 	DATE     : 6/XX/2026
	TIME     : 9:13 AM
	VERSION  : 1.0
	COPY RIGHT (C) GPL 3.0
**********************/





#include <BaLib/stdint.h>
#include <con/vga.h>
#include <stdarg.h>
#include <BaLib/string.h>

typedef struct at_packed { // i used my macro in include/std/stdint.h
	uint8_t value;
	uint8_t theme;
}vga_t;

/*
	CHAR | COLOR | CHAR | COLOR .......
	and size char or color is 1 byte
	the text mode buffer started in address 0xb8000
	hight is 25
	width is 80
	                 0x00
	                   ||
	  background color-||- text color
*/
static vga_t* const vga_buffer = (vga_t*)0xB8000;


static struct {
	int x;
	int y;
	uint8_t theme;
}coord;

// -------------------
// set cursot in 0,0 and clear screen
// input  : VOID
// OUTPUT : true 
void TextModeInit(void) {
	coord.x = 0;
	coord.y = 0;
	coord.theme = VGA_COLOR(TEXT_BG_BLACK, TEXT_LIGHTGRAY);
	// clear screen 80*25
	for (int count = 0; count < width * height; count++) {
		int index = count;
   		vga_buffer[index].value = ' ';
    	vga_buffer[index].theme = coord.theme;
    }
	return;
}

int scrool_start = 1; // LINE SCROOL START
int scrool_end = 25; // LINE SCROOL END

// ====================
// date : 19 6 2026
// time : 18:31
// input : none 
// output : none
// this function for scrooling 
void scrool() {
	/*
		the scrool is :
		MOV LINE 1 TO LINE 0
		MOV LINE 2 TO LINE 1
		.......
		MOV LINE 25 TO LINE 24
		CLEAR LINE 25
	*/

	/*
		HTIS LOOP FOR :
	MOV LINEE
	*/
	for (int ly = scrool_start; ly < scrool_end ; ly++) {
		int lineA = ly * width;
		int lineB = (ly - 1) * width; 
		// and this loop for 
		// mov x forthis line to berfor this line
		for (int lx = 0; lx < width; lx++) {
			vga_buffer[lineB + lx].value = vga_buffer[lineA + lx].value;
			vga_buffer[lineB + lx].theme = vga_buffer[lineA + lx].theme;
		}
	}
	// set y and x
	coord.y = scrool_end - 1;
	coord.x = 0;
	// clear end line for scrool 
	// i forget used tclear()
	for (int i = 0; i < width; i++) {
		int index = coord.y * width + i;
   		vga_buffer[index].value = ' ';
    	vga_buffer[index].theme = coord.theme;
	}
}


// inputs : int cs | int ce
// output : none
// set y start and y end for scrooling
void setScrool(int cs, int ce) {
	// scrool start < scrool end
	if (cs < height && ce < height && cs >= 0 && ce >= 0) {
		if (cs < ce) {
			scrool_start = cs;
			scrool_end = ce;
		}
	}
}

// ====================
// print char in screen
// \n == new line
// \t == tabe
// \b == remove one char
// input  : char value
// output : void
void tputchar(char value) {
	if (value == '\n') {
		if (coord.y >= 24) {
			scrool();
			return;
		}else {
			// a new line 
			coord.y++;
			coord.x = 0;
			return;
		}
		return;
	}
	else if (value == '\t') {
		int index = coord.y * width + coord.x;
		for (int i = 0; i < 4 ; i++) {
			vga_buffer[index + i].value = ' ';
			vga_buffer[index + i].theme = coord.theme;
		}
		coord.x += 3;
		return;
	}
	else if (value == '\b') {
		int index = coord.y * width + coord.x - 1;
		vga_buffer[index].value = ' ';
		vga_buffer[index].theme = coord.theme;				
		coord.x--;
	}
	else {
		if (coord.y >= 24 && coord.x >= 80) {
			scrool();
			int index = (coord.y * width) + coord.x;
			vga_buffer[index].value = value;
			vga_buffer[index].theme = coord.theme; 
			coord.x++;

		}
		else {
			int index = (coord.y * width) + coord.x;
			vga_buffer[index].value = value;
			vga_buffer[index].theme = coord.theme; 
			coord.x++;
		}	
	}
	return;
	
}

void tprint(char *text) {
	for (int count = 0; text[count] != 0; count++) {
		tputchar(text[count]);
	}
}

// ========
// input ; unsigned char theme 
// print 
void ttheme(uint32_t theme) {
	coord.theme = (uint8_t)theme;
}
/*
void tprintf(char *text, ...) {
	va_list args;

	va_start(args, text);

	for (int count = 0; text[count] != '\0';count++) {
		if (text[count] == '%') {
			count++;
			if (text[count] == '\0') {
				tputchar('%');
				break;
			}
			// ------ print char ------
			if (text[count] == 'c') { 
				int chr_ = va_arg(args, int);
				char chr = (char)chr_;
				tputchar(chr);
			}
			// ------ print string ------
			else if (text[count] == 's') { 
				char *string = va_arg(args, char*);
				tprint(string);
			}
			// ------ set a new theme ------
			else if (text[count] == 't') { 
				char theme = (char)va_arg(args, int);
				coord.theme = theme;
			}
			//------- print number type uint32_t
			else if (text[count] == 'd') {
				uint32_t number = va_arg(args, uint32_t);
				char string[64] = {0};
				intstr(number, string);
				tprint(string);
			}
		}
		else {
			tputchar(text[count]);
		}
	}
	va_end(args);
}
*/
// ======
// this function for clear line X to line X
void tclear() {
	int count = 0;
	coord.x = 0;
	// count the line 
	while (coord.y < width) {
		// count x
		while (coord.x < width) {
			int index = coord.y * width + coord.x;
			vga_buffer[index].value = ' ';
			vga_buffer[index].theme = coord.theme;
			coord.x++;
		}
		coord.y++;
		coord.x = 0;
	}

	coord.y = 0;
	coord.x = 0;
}

/*
	module vga
	this struct for init text mode
	and you can used like this :
		vga.module();
		int v = vga.version;
		tprint(vg.name);
*/