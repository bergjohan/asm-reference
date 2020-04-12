section .text

global shift_left
shift_left:
    mov rax, rdi
    shl rax, 1
    ret

global shift_right
shift_right:
    mov rax, rdi
    shr rax, 1
    ret
