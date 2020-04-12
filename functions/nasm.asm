section .text

; Function returning a value
global ret42
ret42:
    mov eax, 42
    ret

; Function taking one argument
global square
square:
    mov rax, rdi
    imul rax, rdi
    ret

; Function taking two arguments
global mul2
mul2:
    mov rax, rdi
    imul rax, rsi
    ret

; Function taking three arguments
global mul3
mul3:
    mov rax, rdi
    imul rax, rsi
    imul rax, rdx
    ret

; Function taking four arguments
global mul4
mul4:
    mov rax, rdi
    imul rax, rsi
    imul rax, rdx
    imul rax, rcx
    ret

; Function taking five arguments
global mul5
mul5:
    mov rax, rdi
    imul rax, rsi
    imul rax, rdx
    imul rax, rcx
    imul rax, r8
    ret

; Function taking six arguments
global mul6
mul6:
    mov rax, rdi
    imul rax, rsi
    imul rax, rdx
    imul rax, rcx
    imul rax, r8
    imul rax, r9
    ret

; Function taking seven arguments
global mul7
mul7:
    mov rax, rdi
    imul rax, rsi
    imul rax, rdx
    imul rax, rcx
    imul rax, r8
    imul rax, r9
    imul rax, qword [rsp+8]
    ret

; Calling a function
global cube
cube:
    push rbx  ; Save caller's rbx
    mov rbx, rdi
    call square
    imul rax, rbx
    pop rbx   ; Restore caller's rbx
    ret

; Calling a function in a shared library
extern strtol
global myatoi
myatoi:
    sub rsp, 8             ; Align stack on a 16-byte boundary
    mov esi, 0             ; Second argument
    mov edx, 10            ; Third argument
    call strtol wrt ..plt  ; Make PLT-relative call to strtol
    add rsp, 8             ; Restore stack pointer
    ret
