AS=nasm
ASFLAGS=-f elf32
LDFLAGS=-m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc

.PHONY: clean all

all: libc_helloworld

clean:
	$(RM) -v *.o ./test

%.o : %.asm
	$(AS) $(ASFLAGS) -o "$@" $<

% : %.o
	$(LD) $(LDFLAGS) -o "$@" $<



