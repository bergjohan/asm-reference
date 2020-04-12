.intel_syntax noprefix
.text

# Using 8-bit registers
.global swapi8
swapi8:
    movzx eax, BYTE PTR [rdi]
    movzx ecx, BYTE PTR [rsi]
    mov BYTE PTR [rdi], cl
    mov BYTE PTR [rsi], al
    ret

# Using 16-bit registers
.global swapi16
swapi16:
    movzx eax, WORD PTR [rdi]
    movzx edx, WORD PTR [rsi]
    mov WORD PTR [rdi], dx
    mov WORD PTR [rsi], ax
    ret

# Using 32-bit registers
.global swapi32
swapi32:
    mov eax, DWORD PTR [rdi]
    mov r8d, DWORD PTR [rsi]
    mov DWORD PTR [rdi], r8d
    mov DWORD PTR [rsi], eax
    ret

# Using a callee-saved register
.global swapi64
swapi64:
    push rbx  # Save caller's rbx
    mov rax, QWORD PTR [rdi]
    mov rbx, QWORD PTR [rsi]
    mov QWORD PTR [rdi], rbx
    mov QWORD PTR [rsi], rax
    pop rbx   # Restore caller's rbx
    ret

# Using the stack and the red zone
.global swap
swap:
    mov rax, QWORD PTR [rdi]
    mov QWORD PTR [rsp-8], rax
    mov rax, QWORD PTR [rsi]
    mov QWORD PTR [rdi], rax
    mov rax, QWORD PTR [rsp-8]
    mov QWORD PTR [rsi], rax
    ret
