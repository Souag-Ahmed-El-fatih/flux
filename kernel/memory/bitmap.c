
/*
 *  bitmap source file - bitmap.h
 *  ---------------------------
 *          Flux OS 1.0
 *  |-------------------------|
 *  | Souag Ahmed El fatih    |
 *  | copy right (C) GPL 3.0  |
 *  |*************************|
 *  | time : 07:21 PM         |
 *  | date : 19/ju/2026       |
 *  |-------------------------|
 * 
 *      memory manager
 */

#include <BaLib/stdint.h>
#include <multiboot.h>

static uint8_t *BITMAP = NULL;

/*
	Function BitMapInit()
		* this used multiboot 
*/
int BitMapInit(uint32_t mbi_pointer) {
	multiboot_info_t *mbi = (multiboot_info_t*)mbi_pointer;

	if (mbi->flags & MULTIBOOT_INFO_MEM_MAP) {

		multiboot_memory_map_t* memory_map = (multiboot_memory_map_t*)mbi->mmap_addr;
		multiboot_memory_map_t* memory_map_len = (multiboot_memory_map_t*)mbi->mmap_length;

		while ((uintptr_t)memory_map < ((uintptr_t)memory_map + memory_map_len)) {


		}
	}

	

	return 0;
}