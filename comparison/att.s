.text

.global equal
equal:
    xor %eax, %eax
    cmp %rsi, %rdi
    sete %al
    ret

.global not_equal
not_equal:
    xor %eax, %eax
    cmp %rsi, %rdi
    setne %al
    ret

.global less
less:
    xor %eax, %eax
    cmp %rsi, %rdi
    setl %al
    ret

.global less_equal
less_equal:
    xor %eax, %eax
    cmp %rsi, %rdi
    setle %al
    ret

.global greater
greater:
    xor %eax, %eax
    cmp %rsi, %rdi
    setg %al
    ret

.global greater_equal
greater_equal:
    xor %eax, %eax
    cmp %rsi, %rdi
    setge %al
    ret
