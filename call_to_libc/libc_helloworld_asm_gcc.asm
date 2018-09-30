BITS 32

GLOBAL main
EXTERN exit, puts

SECTION .data
	str: db "Hello World!", 12, 0

SECTION .text

main:

	push str
	call puts

	push 42
	call exit
