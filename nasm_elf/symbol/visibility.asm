[WARNING all]
BITS 64;

GLOBAL _start

; https://www.nasm.us/doc/nasmdoc7.html
GLOBAL gfd:function default, gfi:function internal, gfh:function hidden, gfp:function protected
GLOBAL gdd:data     default, gdi:data     internal, gdh:data     hidden, gdp:data     protected

SECTION .rodata:

	gdd: dw "dd"
	gdi: dw "di"
	gdh: dw "dh"
	gdp: dw "dp"

SECTION .text:

	gfd:
		ret
	gfi:
		ret
	gfh:
		ret
	gfp:
		ret
	
_start:

	nop
	
