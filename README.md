NASM x86 and Linux
====

Learning Assembly is a monstrous task. These are some scripts that I created to
illuminate some concepts.

* System Calls
* Libc Integration (calling libc, from assembly)
	* Passing NASM-generated .o to gcc
	* Linking NASM-generated .o with LD directly

Simplicity First
====

For simplicity these tests are only concerned with

* Linux
* x86_64 (except for the use of `sysenter`)
* NASM
* Intel-syntax
* Where C is compiled, `gcc`
