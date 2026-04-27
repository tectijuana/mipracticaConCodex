.section .data
msg_prompt:    .ascii "Ingresa dos enteros separados por espacio y Enter: "
len_prompt = . - msg_prompt
msg_suma:      .ascii "Suma: "
len_suma = . - msg_suma
msg_par:       .ascii "Par\n"
len_par = . - msg_par
msg_impar:     .ascii "Impar\n"
len_impar = . - msg_impar
msg_nl:        .ascii "\n"
len_nl = . - msg_nl

.section .bss
input_buf: .skip 64
outbuf:    .skip 32

.section .text
.global _start

.macro print_str label, length
    mov x0, #1
    adr x1, \label
    mov x2, #\length
    mov x8, #64
    svc #0
.endm

_start:
    print_str msg_prompt, len_prompt

    mov x0, #0
    adr x1, input_buf
    mov x2, #64
    mov x8, #63
    svc #0

    adr x0, input_buf
    bl parse_int
    mov x19, x0
    mov x0, x1
    bl parse_int
    mov x20, x0

    add x21, x19, x20

    print_str msg_suma, len_suma
    mov x0, x21
    bl print_int
    print_str msg_nl, len_nl

    and x0, x21, #1
    cbz x0, is_par
    print_str msg_impar, len_impar
    b exit

is_par:
    print_str msg_par, len_par

exit:
    mov x0, #0
    mov x8, #93
    svc #0

parse_int:
    mov x1, x0

skip_ws:
    ldrb w2, [x1]
    cmp w2, #' '
    b.eq ws_next
    cmp w2, #10
    b.eq ws_next
    cmp w2, #9
    b.eq ws_next
    b check_sign

ws_next:
    add x1, x1, #1
    b skip_ws

check_sign:
    mov x3, #0
    ldrb w2, [x1]
    cmp w2, #'-'
    b.ne check_plus
    mov x3, #1
    add x1, x1, #1
    b digits

check_plus:
    cmp w2, #'+'
    b.ne digits
    add x1, x1, #1

digits:
    mov x0, #0
    mov x4, #10

digit_loop:
    ldrb w2, [x1]
    cmp w2, #'0'
    b.lo done_parse
    cmp w2, #'9'
    b.hi done_parse
    sub w2, w2, #'0'
    uxtw x2, w2
    mul x0, x0, x4
    add x0, x0, x2
    add x1, x1, #1
    b digit_loop

done_parse:
    cmp x3, #0
    b.eq ret_parse
    neg x0, x0

ret_parse:
    ret

print_int:
    adr x7, outbuf
    add x7, x7, #31
    mov x2, x7
    mov x3, #0
    cmp x0, #0
    b.ge convert_digits
    neg x0, x0
    mov x3, #1

convert_digits:
    mov x4, #10
    cbnz x0, digit_convert
    mov w6, #'0'
    strb w6, [x2]
    sub x2, x2, #1
    b after_digits

digit_convert:
    udiv x5, x0, x4
    msub x6, x5, x4, x0
    add x6, x6, #'0'
    strb w6, [x2]
    sub x2, x2, #1
    mov x0, x5
    cbnz x0, digit_convert

after_digits:
    cmp x3, #0
    b.eq print_number
    mov w6, #'-'
    strb w6, [x2]
    sub x2, x2, #1

print_number:
    add x1, x2, #1
    sub x2, x7, x1
    mov x0, #1
    mov x8, #64
    svc #0
    ret
