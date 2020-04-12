.text

.global i8_to_i64
i8_to_i64:
    movsx %dil, %rax
    ret

.global u8_to_u64
u8_to_u64:
    movzx %dil, %eax
    ret
