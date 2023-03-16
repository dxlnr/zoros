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
    lui x2, 0x80004

    addi  a0, x0, 1      
    la    a1, bootboy 
    addi  a2, x0, 28   
    addi  a7, x0, 64     
    ecall

    j .

.data
bootboy:      
    .ascii "Still tryna boot over here.\n"
