MEMORY
{
    rom : ORIGIN = 0x20010000, LENGTH = 0x4000
    ram : ORIGIN = 0x80000000, LENGTH = 0x4000
}

SECTIONS
{
    .text : { *(.text*) } > rom
    .rodata : { *(.rodata*) } > rom
    .bss : { *(.bss*) } > ram
}
