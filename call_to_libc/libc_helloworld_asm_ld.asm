BITS 64

GLOBAL _start
EXTERN exit, puts

SECTION .data
	helloWorld: db "Hello World!", 12, 0

SECTION .text

_start:

	mov rdi, helloWorld
	call puts

	mov rdi, 42
	call exit
