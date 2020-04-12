.text

# Function returning a value
.global ret42
ret42:
    mov $42, %eax
    ret

# Function taking one argument
.global square
square:
    mov %rdi, %rax
    imul %rdi, %rax
    ret

# Function taking two arguments
.global mul2
mul2:
    mov %rdi, %rax
    imul %rsi, %rax
    ret

# Function taking three arguments
.global mul3
mul3:
    mov %rdi, %rax
    imul %rsi, %rax
    imul %rdx, %rax
    ret

# Function taking four arguments
.global mul4
mul4:
    mov %rdi, %rax
    imul %rsi, %rax
    imul %rdx, %rax
    imul %rcx, %rax
    ret

# Function taking five arguments
.global mul5
mul5:
    mov %rdi, %rax
    imul %rsi, %rax
    imul %rdx, %rax
    imul %rcx, %rax
    imul %r8, %rax
    ret

# Function taking six arguments
.global mul6
mul6:
    mov %rdi, %rax
    imul %rsi, %rax
    imul %rdx, %rax
    imul %rcx, %rax
    imul %r8, %rax
    imul %r9, %rax
    ret

# Function taking seven arguments
.global mul7
mul7:
    mov %rdi, %rax
    imul %rsi, %rax
    imul %rdx, %rax
    imul %rcx, %rax
    imul %r8, %rax
    imul %r9, %rax
    imul 8(%rsp), %rax
    ret

# Calling a function
.global cube
cube:
    push %rbx  # Save caller's rbx
    mov %rdi, %rbx
    call square
    imul %rbx, %rax
    pop %rbx   # Restore caller's rbx
    ret

# Calling a function in a shared library
.extern strtol
.global myatoi
myatoi:
    sub $8, %rsp     # Align stack on a 16-byte boundary
    xor %esi, %esi   # Second argument
    mov $10, %edx    # Third argument
    call strtol@PLT  # Make PLT-relative call to strtol
    add $8, %rsp     # Restore stack pointer
    ret
