AS=nasm
ASFLAGS=-f elf64

.PHONY: clean all
BINS=visibility

all: mkout $(BINS)

mkout:
	-mkdir -p out

clean:
	$(RM) -vf ./out

%.o : %.asm
	$(AS) $(ASFLAGS) -o "$@" "$<"

% : %.o
	$(LD) -o "out/$@" "$<"
