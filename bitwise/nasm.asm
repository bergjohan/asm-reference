section .text

global bit_and
bit_and:
    mov rax, rdi
    and rax, rsi
    ret

global bit_or
bit_or:
    mov rax, rdi
    or rax, rsi
    ret

global bit_xor
bit_xor:
    mov rax, rdi
    xor rax, rsi
    ret

global bit_not
bit_not:
    mov rax, rdi
    not rax
    ret
