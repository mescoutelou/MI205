TOOLCHAIN=riscv64-unknown-elf
CFLAGS = -march=rv32i -mabi=ilp32
CFLAGS += -O1 -nostdlib -nostartfiles -fstrict-volatile-bitfields
CFLAGS += -Woverflow 

BOOT_SECTIONS = --only-section .boot* --only-section .text* --only-section .rodata* 
BOOT_OFFSET = 0x04000000

exec: build
	./cpu0_linux_x86-64 --boot hex/main.boot8.hex --vcd vcd/main.vcd

build: mkdir
	${TOOLCHAIN}-gcc ${CFLAGS} -c src/asm/start.S -o obj/start.o
	${TOOLCHAIN}-gcc ${CFLAGS} -c src/asm/main.S -o obj/main.o
	${TOOLCHAIN}-gcc ${CFLAGS} -T script.ld obj/start.o obj/main.o -o elf/main.elf
	${TOOLCHAIN}-objdump -D elf/main.elf > lst/main.lst -M numeric
	${TOOLCHAIN}-objcopy ${BOOT_SECTIONS} elf/main.elf elf/main.boot8.elf
	python3 ../elf2hex.py --input elf/main.boot8.elf --output hex/main.boot8.hex --offset ${BOOT_OFFSET} --wide 16 --word 1

mkdir:
	mkdir -p elf/
	mkdir -p obj/
	mkdir -p lst/
	mkdir -p hex/
	mkdir -p vcd/

clean:
	rm -rf elf/
	rm -rf obj/
	rm -rf lst/
	rm -rf hex/
	rm -rf vcd/

