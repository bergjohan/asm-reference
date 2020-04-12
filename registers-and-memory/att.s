.text

# Using 8-bit registers
.global swapi8
swapi8:
    movzbl (%rdi), %eax
    movzbl (%rsi), %ecx
    mov %cl, (%rdi)
    mov %al, (%rsi)
    ret

# Using 16-bit registers
.global swapi16
swapi16:
    movzwl (%rdi), %eax
    movzwl (%rsi), %edx
    mov %dx, (%rdi)
    mov %ax, (%rsi)
    ret

# Using 32-bit registers
.global swapi32
swapi32:
    mov (%rdi), %eax
    mov (%rsi), %r8d
    mov %r8d, (%rdi)
    mov %eax, (%rsi)
    ret

# Using a callee-saved register
.global swapi64
swapi64:
    push %rbx  # Save caller's rbx
    mov (%rdi), %rax
    mov (%rsi), %rbx
    mov %rbx, (%rdi)
    mov %rax, (%rsi)
    pop %rbx   # Restore caller's rbx
    ret

# Using the stack and the red zone
.global swap
swap:
    mov (%rdi), %rax
    mov %rax, -8(%rsp)
    mov (%rsi), %rax
    mov %rax, (%rdi)
    mov -8(%rsp), %rax
    mov %rax, (%rsi)
    ret
