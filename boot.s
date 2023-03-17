#####################################################
# Entry point
#####################################################
.org 0x0
boot_vector:
    j _start

#####################################################
# Start
#####################################################
.globl _start

_start: 
    # Set stack pointer to top of memory
    lui sp, %hi(_stack_top)
    add sp, sp, %lo(_stack_top)
    
    # Initialize any necessary peripherals, such as a UART
    
    # Load program from non-volatile memory into RAM
    
    # Jump to program start address
    j _program_start 

    # Infinite loop to prevent bootloader from exiting


    j .

# Define stack location
.section .bss
.global _stack_top
_stack_top:
    .skip 4096

.section .text
.global _program_start
_program_start:
    lui x2, 0x80004
    addi  a0, x0, 1      
    la    a1, bootboy 
    addi  a2, x0, 28   
    addi  a7, x0, 64     
    ecall

.data
bootboy:      
    .ascii "Still tryna boot over here.\n"
