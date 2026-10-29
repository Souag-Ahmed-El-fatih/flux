



option = {
    build_kernel  = true,
    build_boot    = true,
    build_library = true,
    linker_kernel = true,
    flags = "-m32 -ffreestanding -c -mgeneral-regs-only -I include",
}


files = {
    asm = {
        source = {
            "boot/multiboot.nasm",
            "kernel/x86/gdt.asm",
            "kernel/x86/port.asm",
            "kernel/x86/idt_gate.asm",
        },
        output = {
            "output/boot/boot.o",
            "output/kernel/x86/gdt.o",
            "output/kernel/x86/port.o",
            "output/kernel/x86/idt_gate.o",
        }
    },
    -- C file
    c = {
        -- source code file
        source = {
            "kernel/kernel.c",
            "kernel/kernel_con.c",
            "kernel/kernel_gfx.c",
            "kernel/con/vga.c",
            "kernel/BaLib/stdio.c",
            "kernel/BaLib/string.c",
            "kernel/x86/PIC.c",
            "kernel/x86/idt_common.c",
            "kernel/x86/idt.c",
        },
        -- object output file
        output = {
            "output/kernel/kernel.o",
            "output/kernel/kernel_gfx.o",
            "output/kernel/kernel_con.o",
            "output/kernel/con/vga.o",
            "output/kernel/BaLib/stdio.o",
            "output/kernel/BaLib/string.o",
            "output/kernel/x86/PiC.o",
            "output/kernel/x86/idt_common.o",
            "output/kernel/x86/idt.o",
        }
    },

    ld = "kernel/linker.ld",

    elf = "output/elf/kernel32.elf"
}

local i = 1

function system(command)
    state = os.execute(command)
    if state == true or state == 0 then
        print("BUILD OK [" .. i .. "]")
    else
        print("-----------------")
        print("BUILD ERROR [**] ")
        print(command)
        os.exit(1)
        os.exit(1)
    end
    i = i + 1
end

function build_asm()
    local count_asm_src = #files.asm.source
    local count_asm_out = #files.asm.output
    if count_asm_out == count_asm_src then
        for i=1,count_asm_src do
            local command = string.format(
                "nasm -f elf %s -o %s",
                files.asm.source[i],
                files.asm.output[i]
            )
            system(command)
        end
    else
        print("error")
    end
end

function build_kernel()
    local count_c_src = #files.c.source
    local count_c_out = #files.c.output
    if count_c_out == count_c_src then
        for i=1,count_c_src do
            local command = string.format(
                "i686-elf-gcc %s %s -o %s",
                option.flags,
                files.c.source[i],
                files.c.output[i]
            )
            system(command)
        end
    else
        print("error")
    end
end

function linker()
    local files_obj = string.format(" %s %s ",
        table.concat(files.asm.output, " "),
        table.concat(files.c.output, " ")
    )
    command = string.format(
        "i686-elf-ld -m elf_i386 -T %s %s -o %s",
        files.ld,
        files_obj,
        files.elf
    )
    system(command)
end

function build()
    if option.build_boot == true then
        build_asm()
    else

    end
    if option.build_kernel == true then
        build_kernel()
    else

    end
    if option.linker_kernel == true then
        linker()
    else

    end
end

build()
system("cp output/elf/kernel32.elf iso/")
system("grub-mkrescue -o flux-os.iso iso")
system("qemu-system-i386 -m 16M -cdrom flux-os.iso")
