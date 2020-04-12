section .text

global equal
equal:
    xor eax, eax
    cmp rdi, rsi
    sete al
    ret

global not_equal
not_equal:
    xor eax, eax
    cmp rdi, rsi
    setne al
    ret

global less
less:
    xor eax, eax
    cmp rdi, rsi
    setl al
    ret

global less_equal
less_equal:
    xor eax, eax
    cmp rdi, rsi
    setle al
    ret

global greater
greater:
    xor eax, eax
    cmp rdi, rsi
    setg al
    ret

global greater_equal
greater_equal:
    xor eax, eax
    cmp rdi, rsi
    setge al
    ret
