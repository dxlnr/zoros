default:
	@rm -rf boot
	@riscv64-linux-gnu-as boot.s -o boot.o
	@riscv64-linux-gnu-gcc -o boot boot.o -nostdlib -static
	@rm -rf boot.o

clang:
	@rm -rf boot
	@clang -target riscv64 -c boot.s
	@ld.lld boot.o boot
