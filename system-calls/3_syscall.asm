[WARNING all]
BITS 64

GLOBAL _start

SECTION .rodata

	helloWorld: db 'Hello world!',10

SECTION .text

_start:

print_helloWorld:
	mov  rax, 1           ; 'write' system call = 4
	mov  rdi, 1           ; file descriptor 1 = STDOUT
	mov  rsi, helloWorld  ; string to write
	mov  rdx, 13          ; length of string to write
	syscall

exit:
	mov  rax, 60          ; 'exit' system call
	mov  rdi, 0           ; exit with error code 0
	syscall
