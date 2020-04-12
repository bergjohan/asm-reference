section .text

global increment
increment:
    mov rax, rdi
    inc rax
    ret

global decrement
decrement:
    mov rax, rdi
    dec rax
    ret
