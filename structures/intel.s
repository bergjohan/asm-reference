.intel_syntax noprefix

# Declaring a struct
.struct 0
pt_x:
    .struct pt_x + 8
pt_y:
    .struct pt_y + 8
point_size:

# Allocating space for a struct
.bss
pt:
    .space point_size

.text

# Initializing a struct
.global init_point
init_point:
    mov QWORD PTR pt[rip+pt_x], rdi
    mov QWORD PTR pt[rip+pt_y], rsi
    ret

.global get_x
get_x:
    mov rax, QWORD PTR pt[rip+pt_x]
    ret

.global get_y
get_y:
    mov rax, QWORD PTR pt[rip+pt_y]
    ret

# Returning a small struct that fits in a single register
.global make_pointi32
make_pointi32:
    shl rsi, 32
    mov eax, edi
    or rax, rsi
    ret

# Returning a small struct that fits in two registers
.global make_pointi64
make_pointi64:
    mov rax, rdi
    mov rdx, rsi
    ret

# Taking struct parameters by value
.global add_pointi64
add_pointi64:
    lea rax, [rdi+rdx]
    lea rdx, [rsi+rcx]
    ret
