.text

.global increment
increment:
    mov %rdi, %rax
    inc %rax
    ret

.global decrement
decrement:
    mov %rdi, %rax
    dec %rax
    ret
