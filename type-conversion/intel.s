.intel_syntax noprefix
.text

.global i8_to_i64
i8_to_i64:
    movsx rax, dil
    ret

.global u8_to_u64
u8_to_u64:
    movzx eax, dil
    ret
