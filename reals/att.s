.section .rodata
one_point_eight:
    .double 1.8
thirty_two:
    .double 32.0

.text

.global to_fahrenheit
to_fahrenheit:
    mulsd one_point_eight(%rip), %xmm0
    addsd thirty_two(%rip), %xmm0
    ret
