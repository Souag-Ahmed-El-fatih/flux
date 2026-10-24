/**********************
    PROJECT  : OS
    FILE     : vga.h 
    DEVELOPER: SOUAG AHMED EL FATIH
    DATE     : 6/16/2026
    VERSION  : 1.0
**********************/

void TextModeInit(void);
void tputchar(char value);
void tprint(char *text);
void ttheme(uint32_t theme);
//void tprintf(char *text, ...);
void tclear();
void setScrool(int cs, int ce);
#define VGA_COLOR(bg, fg) (bg | fg)

#define width 80
#define height 25

/*
 text color vga mode
 */
#define TEXT_BLACK          0x00
#define TEXT_BLUE           0x01
#define TEXT_GREEN          0x02
#define TEXT_CYAN           0x03
#define TEXT_RED            0x04
#define TEXT_MAGENTA        0x05
#define TEXT_BROWN          0x06
#define TEXT_LIGHTGRAY      0x07
#define TEXT_DARKGRAY       0x08
#define TEXT_LIGHTBLUE      0x09
#define TEXT_LIGHTGREEN     0x0A
#define TEXT_LIGHTCYAN      0x0B
#define TEXT_LIGHTRED       0x0C
#define TEXT_LIGHTMAGENTA   0x0D
#define TEXT_YELLOW         0x0E
#define TEXT_WHITE          0x0F
/*
background color vga modde
*/
#define TEXT_BG_BLACK       0x00
#define TEXT_BG_BLUE        0x10
#define TEXT_BG_GREEN       0x20
#define TEXT_BG_CYAN        0x30
#define TEXT_BG_RED         0x40
#define TEXT_BG_MAGENTA     0x50
#define TEXT_BG_BROWN       0x60
#define TEXT_BG_LIGHTGRAY   0x70
#define TEXT_BG_DARKGRAY    0x80
#define TEXT_BG_LIGHTBLUE   0x90
#define TEXT_BG_LIGHTGREEN  0xA0
#define TEXT_BG_LIGHTCYAN   0xB0
#define TEXT_BG_LIGHTRED    0xC0
#define TEXT_BG_LIGHTMAGENTA 0xD0
#define TEXT_BG_YELLOW      0xE0
#define TEXT_BG_WHITE       0xF0


#define TEXT_INFO (TEXT_BG_BLACK | TEXT_YELLOW)
#define TEXT_AUTO (TEXT_BG_BLACK | TEXT_LIGHTGRAY)
#define TEXT_OK (TEXT_BG_BLACK | TEXT_LIGHTGREEN)