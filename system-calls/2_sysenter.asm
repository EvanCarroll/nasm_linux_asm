BITS 32 ; NOTE: sysenter only available in 32bit mode

GLOBAL _start

SECTION .data

	helloWorld: db 'Hello world!',10

SECTION .text

_start:

	push d0             ; with sysenter, we need return loc
	push ecx
	push edx
	push ebp
	mov ebp, esp

	mov eax, 4          ; system call number (sys_write)
	mov ebx, 1          ; file descriptor (stdout)
	mov ecx, helloWorld ; message to write
	mov edx, 13         ; message length
	sysenter            ; call kernel
d0:

	push d1
	push ecx
	push edx
	push ebp
	mov ebp, esp

	mov  eax, 1  ; exit with error code 0
	mov  ebx, 0  ; 'exit' system call
	sysenter
d1:
