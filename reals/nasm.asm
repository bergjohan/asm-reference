section .rodata
one_point_eight: dq 1.8
thirty_two:      dq 32.0

section .text

global to_fahrenheit
to_fahrenheit:
    mulsd xmm0, [rel one_point_eight]
    addsd xmm0, [rel thirty_two]
    ret
