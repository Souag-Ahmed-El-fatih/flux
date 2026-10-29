

#ifndef PIC_H
#define PIC_H 

void Pic_Disable(void);
void Pic_Remap(uint8_t ineter_start, uint8_t ineter_end);
void Pic_Enable();
#endif