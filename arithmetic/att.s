.text

.global add
add:
    mov %rdi, %rax
    add %rsi, %rax
    ret

.global subtract
subtract:
    mov %rdi, %rax
    sub %rsi, %rax
    ret

.global multiply
multiply:
    mov %rdi, %rax
    imul %rsi, %rax
    ret

.global divide
divide:
    mov %rdi, %rax
    cqo  # Sign extend rax into rdx
    idiv %rsi
    ret

.global modulus
modulus:
    mov %rdi, %rax
    cqo             # Sign extend rax into rdx
    idiv %rsi
    mov %rdx, %rax  # Return remainder
    ret

.global negate
negate:
    mov %rdi, %rax
    neg %rax
    ret
