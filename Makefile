default:
	@rm -rf boot
	@riscv64-linux-gnu-as boot.s -o boot.o
	@riscv64-linux-gnu-gcc -o boot boot.o -nostdlib -static
	@rm -rf boot.o

clang:
	@rm -rf boot
	@clang -target riscv64 -o boot.o -c boot.s 	
	@ld.lld boot.o -o boot
	@rm -rf boot.o
	
hello: hello.o default.lds
	riscv64-unknown-elf-ld -T default.lds -o hello hello.o

hello.o:
	riscv64-unknown-elf-as -o default.lds -o hello.o hello.s
