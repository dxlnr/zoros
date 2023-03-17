# ZOROS

### Main Parts

The **kernel** is the heart of the operating system. 
It is the first program loaded when the computer starts up, it manages computer resources,
and it handles requests from system programs and applications.

**System programs** run on top of the kernel. These are the necessary programs to connect the kernel to user applications and peripheral devices. 
Device drivers, file systems, networking programs, and system utilities like disk defragmeters are all examples of system programs.

### Getting Started 

```bash
make clang
# Start the QEMU emulator
qemu-system-riscv64 -machine -kernel boot
```

### Additionals
- [RISC-V Dependent Features](https://sourceware.org/binutils/docs/as/RISC_002dV_002dDependent.html)
