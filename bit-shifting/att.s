.text

.global shift_left
shift_left:
    mov %rdi, %rax
    shl $1, %rax
    ret

.global shift_right
shift_right:
    mov %rdi, %rax
    shr $1, %rax
    ret
