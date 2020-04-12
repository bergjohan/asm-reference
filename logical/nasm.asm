section .text

global logical_and
logical_and:
    test rdi, rdi
    je .false
    test rsi, rsi
    je .false
    mov eax, 1
    ret
.false:
    xor eax, eax
    ret

global logical_or
logical_or:
    test rdi, rdi
    jne .true
    test rsi, rsi
    jne .true
    xor eax, eax
    ret
.true:
    mov eax, 1
    ret

global logical_not
logical_not:
    xor eax, eax
    test rdi, rdi
    sete al
    ret
