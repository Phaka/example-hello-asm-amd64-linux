# Linux x86-64 Assembly Hello World Example

This repository contains a minimal "Hello, World!" implementation in x86-64 assembly language, specifically targeting Linux systems. The program demonstrates direct system call usage for both output and program termination, showing how assembly programs interact with the operating system at a fundamental level.

## Purpose

The primary goals of this repository are:

1. Demonstrate the minimal code required to write and run an assembly program on Linux
2. Serve as a basic test for assembly development tools
3. Provide a starting point for learning how programs interact with the Linux kernel through syscalls

## Building and Running

You'll need NASM (Netwide Assembler) and the system linker (ld) installed on your Linux system. These commands will build and run the program:

```bash
# Assemble the source code into an object file
nasm -f elf64 hello.asm -o hello.o

# Link the object file into an executable
ld hello.o -o hello

# Run the program
./hello
```

## Understanding the Code

The program is organized into two main sections:

The data section contains our "Hello, World!" message and its length:
```nasm
section .data
message db      "Hello, World!", 10    ; Message with newline
msglen  equ     $ - message           ; Length calculation
```

The text section contains the program code that:
1. Sets up the write syscall (syscall number 1) to output our message
2. Sets up the exit syscall (syscall number 60) to terminate the program

The program uses Linux syscalls directly, demonstrating the low-level interaction between programs and the operating system kernel. This direct syscall approach shows assembly programming in its purest form, without relying on the C standard library or other higher-level interfaces.

## Contributing

While this repository aims to maintain minimalism, bug fixes and improvements to documentation are welcome. Please ensure any changes maintain the simplicity of the example.
