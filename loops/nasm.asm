section .text

global sum_of_squares
sum_of_squares:
    xor eax, eax
    cmp rdi, rsi
    jg .loop_end
.loop_start:
    mov rdx, rdi
    imul rdx, rdi
    add rax, rdx
    add rdi, 1
    cmp rdi, rsi
    jle .loop_start
.loop_end:
    ret
