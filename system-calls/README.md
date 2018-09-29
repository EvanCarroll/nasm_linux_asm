NASM and Linux x86 System Calls
====

Researching system calls I soon found out there were three ways to make them.

* `int 0x80`
* `sysenter` (32-bit mode only)
* `syscall`

In this directory I demonstrate the form all of these take
