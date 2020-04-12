; Declaring a struct
struc point
    pt_x: resq 1
    pt_y: resq 1
endstruc

; Allocating space for a struct
section .bss
pt resb point_size

section .text

; Initializing a struct
global init_point
init_point:
    mov qword [rel pt+pt_x], rdi
    mov qword [rel pt+pt_y], rsi
    ret

global get_x
get_x:
    mov rax, qword [rel pt+pt_x]
    ret

global get_y
get_y:
    mov rax, qword [rel pt+pt_y]
    ret

; Returning a small struct that fits in a single register
global make_pointi32
make_pointi32:
    shl rsi, 32
    mov eax, edi
    or rax, rsi
    ret

; Returning a small struct that fits in two registers
global make_pointi64
make_pointi64:
    mov rax, rdi
    mov rdx, rsi
    ret

; Taking struct parameters by value
global add_pointi64
add_pointi64:
    lea rax, [rdi+rdx]
    lea rdx, [rsi+rcx]
    ret
