BITS 64

GLOBAL _start

SECTION .data

	helloWorld: db 'Hello world!',10

SECTION .text

_start:

	mov  rax, 4          ; system call number (sys_write)
	mov  rbx, 1          ; file descriptor (stdout)
	mov  rcx, helloWorld ; message to write
	mov  rdx, 13         ; message length
	int  0x80            ; call kernel
	
	mov  rax, 1          ; system call number (sys_exit)
	mov  rbx, 0          ; exit with error code 0
	int  0x80            ; call kernel
