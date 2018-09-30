NASM and Linux x86 System Calls
====

Researching system calls I soon found out there were three ways to make them.

* **i386 Linux kernel ABI** `int 0x80`
* `sysenter` (32-bit mode only)
* **x86_64 Linux Kernel ABI** `syscall`

In this directory I demonstrate the form all of these take
