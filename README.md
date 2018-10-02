NASM x86 and Linux
====

Learning Assembly is a monstrous task. These are some scripts that I created to
illuminate some concepts.

* System Calls
* Libc Integration (calling libc, from assembly)
	* Passing NASM-generated .o to gcc
	* Linking NASM-generated .o with LD directly
* NASM-directives specific to ELF

Simplicity First
====

For simplicity these tests are only concerned with

* Linux
* ELF Executables and Objects
* x86_64 (except for the use of `sysenter`)
* NASM
* Intel-syntax
* Where C is concerned, the GNU C Compiler `gcc`
* Where a linker is concerned, the GNU Linker `ld`
* Where a build system can simplify things, GNU Make `make`

Contributing
====

Got something you'd like to contribute? Follow these steps,

	* Make a short, sweet, and poignant example.
	* Inlcude a Makefile to build it that will run with GNU Make.
	* Follow the above guidelines in "Simplicity First"
	* Send a Pull Request on github
