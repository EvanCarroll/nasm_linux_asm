BITS 64

GLOBAL main
EXTERN exit, puts

SECTION .data
	helloWorld: db "Hello World!", 12, 0

SECTION .text

main:

	mov rdi, helloWorld
	call puts

	mov rdi, 42
	call exit
