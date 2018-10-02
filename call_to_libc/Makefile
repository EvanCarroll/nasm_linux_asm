AS=nasm
ASFLAGS=-f elf64
#ASFLAGS=-f elf32
#LDFLAGS=-m elf_i386
LDFLAGS=-m elf_x86_64
#LDFLAGS_ASM=-dynamic-linker /lib/ld-linux.so.2 -lc
LDFLAGS_ASM=-lc -dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
#LDFLAGS_ASM=-dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc
CFLAGS+=-Wall -no-pie

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
	$(LD) $(LDFLAGS) $(LDFLAGS_ASM) -o "out/$@" "out/$@.o"

%_gcc: libc_helloworld_asm_gcc.o
	$(CC) $(CFLAGS) -o "out/$@" "out/$@.o"
