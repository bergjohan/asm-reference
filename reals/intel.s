.intel_syntax noprefix

.section .rodata
one_point_eight:
    .double 1.8
thirty_two:
    .double 32.0

.text

.global to_fahrenheit
to_fahrenheit:
    mulsd xmm0, QWORD PTR one_point_eight[rip]
    addsd xmm0, QWORD PTR thirty_two[rip]
    ret
