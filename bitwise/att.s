.text

.global bit_and
bit_and:
    mov %rdi, %rax
    and %rsi, %rax
    ret

.global bit_or
bit_or:
    mov %rdi, %rax
    or %rsi, %rax
    ret

.global bit_xor
bit_xor:
    mov %rdi, %rax
    xor %rsi, %rax
    ret

.global bit_not
bit_not:
    mov %rdi, %rax
    not %rax
    ret
