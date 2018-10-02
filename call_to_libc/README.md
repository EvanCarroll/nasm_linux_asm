64bit vs 32bit
====

Not in the 32bit libc calls, cdecl is used as a calling convention. In cdecl
calling convention arguments are passed on the stack. In 64bit Sys V ABI
arguments are passed in registers.

See [*X86 calling conventions*](https://en.wikipedia.org/wiki/X86_calling_conventions#System_V_AMD64_ABI) for more info.
