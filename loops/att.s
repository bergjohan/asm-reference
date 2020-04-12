.text

.global sum_of_squares
sum_of_squares:
    xor %eax, %eax
    cmp %rsi, %rdi
    jg .loop_end
.loop_start:
    mov %rdi, %rdx
    imul %rdi, %rdx
    add %rdx, %rax
    add $1, %rdi
    cmp %rsi, %rdi
    jle .loop_start
.loop_end:
    ret
