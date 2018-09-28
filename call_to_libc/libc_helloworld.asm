BITS 32

GLOBAL _start
EXTERN exit, puts

SECTION .data
	str: db "Hello World!", 12, 0

SECTION .text

_start:

	push str
	call puts

	push 42
	call exit
