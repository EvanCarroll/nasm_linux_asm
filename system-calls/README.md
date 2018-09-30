NASM and Linux x86 System Calls
====

Researching system calls I soon found out there were three ways to make them.

* **"i386" Linux kernel ABI** `int 0x80`
* `sysenter` (32-bit mode only)
* **"common" x86_64 Linux Kernel ABI** `syscall`, based on the [System V Application Binary Interface](http://refspecs.linuxfoundation.org/elf/x86_64-abi-0.99.pdf).

You can find the information here

* [i386 ABI System Call Table](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/x86/entry/syscalls/syscall_32.tbl), and [i386 entry point](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/x86/entry/entry_32.S) (which has argument specification)
* [64-bit ABI System Call Table](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/x86/entry/syscalls/syscall_64.tbl), and [64-bit entry point](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/x86/entry/entry_64.S) (which has argument specification)


In this directory I demonstrate the form all of these take.

See [this answer for Stephen Kitt](https://unix.stackexchange.com/a/446860/3285) for some background.
