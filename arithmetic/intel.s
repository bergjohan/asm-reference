.intel_syntax noprefix
.text

.global add
add:
    mov rax, rdi
    add rax, rsi
    ret

.global subtract
subtract:
    mov rax, rdi
    sub rax, rsi
    ret

.global multiply
multiply:
    mov rax, rdi
    imul rax, rsi
    ret

.global divide
divide:
    mov rax, rdi
    cqo  # Sign extend rax into rdx
    idiv rsi
    ret

.global modulus
modulus:
    mov rax, rdi
    cqo           # Sign extend rax into rdx
    idiv rsi
    mov rax, rdx  # Return remainder
    ret

.global negate
negate:
    mov rax, rdi
    neg rax
    ret
