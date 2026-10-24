
#ifndef BALIB_H
#define BALIB_H

void BaLibSetPutchar(void (*addr) (char));
void BaLibSetColor(void (*addr) (unsigned int));
void BaLibSetClear(void (*addr) (void));
#endif