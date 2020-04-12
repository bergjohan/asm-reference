section .text

; Using 8-bit registers
global swapi8
swapi8:
    movzx eax, byte [rdi]
    movzx ecx, byte [rsi]
    mov byte [rdi], cl
    mov byte [rsi], al
    ret

; Using 16-bit registers
global swapi16
swapi16:
    movzx eax, word [rdi]
    movzx edx, word [rsi]
    mov word [rdi], dx
    mov word [rsi], ax
    ret

; Using 32-bit registers
global swapi32
swapi32:
    mov eax, dword [rdi]
    mov r8d, dword [rsi]
    mov dword [rdi], r8d
    mov dword [rsi], eax
    ret

; Using a callee-saved register
global swapi64
swapi64:
    push rbx  ; Save caller's rbx
    mov rax, qword [rdi]
    mov rbx, qword [rsi]
    mov qword [rdi], rbx
    mov qword [rsi], rax
    pop rbx   ; Restore caller's rbx
    ret

; Using the stack and the red zone
global swap
swap:
    mov rax, qword [rdi]
    mov qword [rsp-8], rax
    mov rax, qword [rsi]
    mov qword [rdi], rax
    mov rax, qword [rsp-8]
    mov qword [rsi], rax
    ret
