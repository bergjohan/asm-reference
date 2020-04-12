section .rodata
msg: db "hello, world!", 0

section .text

; Returning a character array
global hello
hello:
    lea rax, [rel msg]
    ret

; Iterating over an array
global array_sum
array_sum:
    xor eax, eax
    test rsi, rsi
    je .loop_end
    xor ecx, ecx
.loop_start:
    add rax, qword [rdi+rcx*8]
    add rcx, 1
    cmp rcx, rsi
    jne .loop_start
.loop_end:
    ret
