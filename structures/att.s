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
    mov %rdi, pt+pt_x(%rip)
    mov %rsi, pt+pt_y(%rip)
    ret

.global get_x
get_x:
    mov pt+pt_x(%rip), %rax
    ret

.global get_y
get_y:
    mov pt+pt_y(%rip), %rax
    ret

# Returning a small struct that fits in a single register
.global make_pointi32
make_pointi32:
    shl $32, %rsi
    mov %edi, %eax
    or %rsi, %rax
    ret

# Returning a small struct that fits in two registers
.global make_pointi64
make_pointi64:
    mov %rdi, %rax
    mov %rsi, %rdx
    ret

# Taking struct parameters by value
.global add_pointi64
add_pointi64:
    lea (%rdi,%rdx), %rax
    lea (%rsi,%rcx), %rdx
    ret
