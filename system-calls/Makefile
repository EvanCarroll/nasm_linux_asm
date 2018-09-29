.PHONY: all clean mkout make64 make32

all: mkout make64 make32

mkout:
	-mkdir -p out

make64:
	$(MAKE) -f ./Makefile_64

make32:
	$(MAKE) -f ./Makefile_32

clean:
	$(RM) *.o out/*
