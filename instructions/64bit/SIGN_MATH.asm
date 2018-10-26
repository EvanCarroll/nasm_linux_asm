BITS 64
[WARNING all]

GLOBAL _start

SECTION .rodata

	lhs: db 'Minuend:    '
	rhs: db 'Subtrahend: '
	res: db 'Difference: '
	var_label_length equ $-res

	cfl: db 'Carry Flag:     ',10,0
	flag_label_length equ $-cfl
	cfp equ 0

	zfl: db 'Zero Flag:      ',10,0
	zfp equ 6

	sfl: db 'Sign Flag:      ',10,0
	sfp equ 7

	ofl: db 'Overflow Flag:  ',10,0
	ofp equ 11
	onchar:  db '1'
	offchar: db '0'

SECTION .bss
		buffer_flag:   resb flag_label_length
		buffer_bitrep: resb var_label_length + 65 + 1

SECTION .text

_start:
	mov r14, 60
	mov r15, 60
	call display_cmp
	call exit

; r14 = Minuend
; r15 = Subtrahend
display_cmp:

	mov rsi, lhs
	mov rdx, r14
	call print_binary_rep_with_label
	
	mov rsi, rhs
	mov rdx, r15
	call print_binary_rep_with_label

	mov rdx, r14
	sub rdx, r15
	pushf
	pop r8
	mov rsi, res
	call print_binary_rep_with_label
	
	; get flags into r8

	call print_rflags

	ret

; Arguments:
;   rdi = pointer to buffer
;   rsi = pointer to label
;   rcx = label_size
;   rdx = int
print_binary_rep_with_label:

	mov rcx, var_label_length
	mov rdi, buffer_bitrep
	rep movsb

	mov rcx, 64
	.start:
		shl rdx, 1
		jc .is_one
			mov [rdi], byte '0'
			inc rdi
			jmp .next;
		.is_one:
			mov [rdi], byte '1'
			inc rdi
		.next:
			LOOP .start
	
	mov [rdi], byte `\n`

	mov rsi, buffer_bitrep
	mov rdx, 65 + var_label_length
	call print
	ret

; copy key to buffer
; dest, src, count
%macro write_label_to_buffer 3
	mov rdi, %1
	mov rsi, %2
	mov rcx, %3
	rep movsb
%endmacro

; Arguments
;  r8: rflags
;  rcx: bit
; Returns
;  al: 1/0 char
get_bit:
	mov rax, offchar
	bt r8, rcx
	jnc .done	
		mov rax, onchar
	.done:
	mov al, byte [rax]
	ret

; Arguments	
;   rdi = pointer to write loc in buffer
;   r8  = eflags
print_rflags:
	%macro printbit 2
		write_label_to_buffer buffer_flag, %2, flag_label_length

		lea rdi, [buffer_flag + flag_label_length - 3]
		mov rcx, %1
		call get_bit
		mov [rdi], al
		
		mov rsi, buffer_flag
		mov rdx, flag_label_length
		call print
	%endmacro
	
	printbit cfp, cfl
	printbit zfp, zfl
	printbit sfp, sfl
	printbit ofp, ofl
	ret

; Arguments
;   rsi = str pointer
;   rdx = length
print:
	mov rax, 1           ; 'write' system call = 4
	mov rdi, 1           ; file descriptor 1 = stdout
	syscall
	ret

exit:
	mov  rax, 60          ; 'exit' system call
	mov  rsi, 0           ; exit with error code 0
	syscall
	ret
