TOOLCHAIN=riscv32-unknown-elf
HOST=linux_x86-64
CPU_NUM=3
ISA_EXT=m
OPT_LVL=1
CFLAGS = -march=rv32i${ISA_EXT}_zicsr -mabi=ilp32
CFLAGS += -O${OPT_LVL} -nostartfiles -fstrict-volatile-bitfields
CFLAGS += -Woverflow 

BOOT_SECTIONS = --only-section .boot* --only-section .text* --only-section .rodata* 
BOOT_OFFSET = 0x04000000

exec: build
	./cpu${CPU_NUM}_${HOST} --boot hex/main.boot8.hex --vcd vcd/cpu${CPU_NUM}-main.vcd --trigger 1000

build: mkdir
	${TOOLCHAIN}-gcc ${CFLAGS} -c src/asm/start.S -o obj/start.o
	${TOOLCHAIN}-gcc ${CFLAGS} -c src/asm/main.S -o obj/main.o
	${TOOLCHAIN}-gcc ${CFLAGS} -c src/c/func.c -o obj/func.o
	${TOOLCHAIN}-gcc ${CFLAGS} -T script.ld obj/start.o obj/main.o obj/func.o -o elf/main.elf
	${TOOLCHAIN}-objdump -D elf/main.elf > lst/main.lst
	${TOOLCHAIN}-objcopy ${BOOT_SECTIONS} elf/main.elf elf/main.boot8.elf
	python3 ../elf2hex.py --input elf/main.boot8.elf --output hex/main.boot8.hex --offset ${BOOT_OFFSET} --wide 16 --word 1

view:
	gtkwave vcd/cpu${CPU_NUM}-main.vcd cpu${CPU_NUM}.gtkw &

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
