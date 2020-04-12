.section .rodata
msg:
    .asciz "hello, world!"

.text

# Returning a character array
.global hello
hello:
    lea msg(%rip), %rax
    ret

# Iterating over an array
.global array_sum
array_sum:
    xor %eax, %eax
    test %rsi, %rsi
    je .loop_end
    xor %ecx, %ecx
.loop_start:
    add (%rdi,%rcx,8), %rax
    add $1, %rcx
    cmp %rsi, %rcx
    jne .loop_start
.loop_end:
    ret
