AS=nasm
ASFLAGS=-f elf32
LDFLAGS_ASM=-m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc
CFLAGS+=-Wall -no-pie
CFLAGS_32=-m32

.PHONY: clean all

BINS=libc_helloworld_asm_ld libc_helloworld_asm_gcc libc_helloworld_c

all: mkout $(BINS) clean

mkout:
	-mkdir -p out

distclean:
	$(RM) -r -v out/

clean:
	$(RM) -r -v out/*.o

%.o: %.asm
	$(AS) $(ASFLAGS) -o "out/$@" "$<"

%_c: libc_helloworld_c.c
	$(CC) $(CFLAGS) -o "out/$@" "$<"

libc_helloworld_asm_ld: libc_helloworld_asm_ld.o
	$(LD) $(LDFLAGS_ASM) -o "out/$@" "out/$@.o"

libc_helloworld_asm_gcc: libc_helloworld_asm_gcc.o
	$(CC) $(CFLAGS) $(CFLAGS_32) -o "out/$@" "out/$@.o"
