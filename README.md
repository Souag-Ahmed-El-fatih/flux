# Flux OS

Flux OS is an experimental 32-bit x86 operating-system kernel loaded by GRUB through the Multiboot v1 protocol.

نظام Flux OS نواة تجريبية لمعمارية x86 ‏32-bit، وتُحمّل عبر GRUB باستخدام Multiboot.

## Current Status

The current build provides:

- A Multiboot entry point and a statically linked kernel ELF.
- Basic VGA text output and a small `printf` implementation.
- Initial GDT setup and PIC interrupt masking.
- A GRUB bootable ISO image.

The RGB framebuffer path currently halts without drawing. IDT and interrupt-handler source files exist, but they are not included in the current build configuration. Keyboard input, timer interrupts, memory management, a filesystem, and user mode are not yet available in the built kernel.

## Requirements

Install the following tools and make them available on `PATH`:

- Lua
- NASM
- `i686-elf-gcc` and `i686-elf-ld`
- `grub-mkrescue`
- `qemu-system-i386`

The build script writes object files under `output/` and expects those output directories to exist.

## Build and Run

Run from the repository root:

```sh
lua build.lua
```

The script assembles and compiles the configured sources, links `output/elf/kernel32.elf`, copies the kernel into the ISO tree, creates `flux-os.iso`, and then launches QEMU with 16 MiB of memory. Building and launching are currently combined in this script.

The generated ISO is `flux-os.iso` in the repository root. To launch it separately:

```sh
qemu-system-i386 -m 16M -cdrom flux-os.iso
```

## Project Layout

- `boot/` - Multiboot entry assembly.
- `include/` - Kernel and library headers.
- `kernel/` - Kernel, console, library, and architecture source files.
- `iso/` - GRUB configuration and ISO input tree.
- `output/` - Object files and linked kernel ELF generated during a build.
- `tools/` - Helper scripts for interrupt-handler work.
- Static website assets - project landing page and styles.

## License

The project declares GNU GPL version 3.0 in its source documentation.