; Hello World for Linux x86-64 using NASM syntax
; This program uses the write syscall to output text and
; the exit syscall to terminate properly.

        section .data
message db      "Hello, World!", 10    ; Our message followed by newline (10)
msglen  equ     $ - message           ; Calculate message length

        section .text
        global _start                 ; Make entry point visible to linker

_start:
        ; Write the message to stdout
        mov     rax, 1              ; syscall number for write
        mov     rdi, 1              ; file descriptor 1 is stdout
        mov     rsi, message        ; pointer to message
        mov     rdx, msglen         ; message length
        syscall                     ; invoke write syscall

        ; Exit program with status 0
        mov     rax, 60             ; syscall number for exit
        xor     rdi, rdi            ; status 0
        syscall                     ; invoke exit syscall
