.intel_syntax noprefix

.section .rodata
msg:
    .asciz "hello, world!"

.text

# Returning a character array
.global hello
hello:
    lea rax, msg[rip]
    ret

# Iterating over an array
.global array_sum
array_sum:
    xor eax, eax
    test rsi, rsi
    je .loop_end
    xor ecx, ecx
.loop_start:
    add rax, QWORD PTR [rdi+rcx*8]
    add rcx, 1
    cmp rcx, rsi
    jne .loop_start
.loop_end:
    ret
