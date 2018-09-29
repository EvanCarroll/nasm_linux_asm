BITS 32

SECTION .text

GLOBAL _start

_start:
  mov ax, 10
  add al, 9
	aaa
	mov ebx, eax;

	push done
	push ecx
	push edx
	push ebp
	mov ebp, esp

	mov  eax, 1  ; exit with error code 0
	mov  ebx, 0  ; 'exit' system call
	sysenter
	done:

