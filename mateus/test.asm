%include '../util.asm'

section .text
global _start

_start: 
    call    readint
    mov     r12, rax
    test    r12, r12
    jz      zerof
    AND     r12, 1
    jnz     impare
    jmp     _start


zerof: 
    lea     rdi, [prompt]
    call    printstr
    mov     rdi, r13
    call    printint
    call    endl
uau:
    pop     rdi
    call    printint
    test    rsp, rsp
    jnz     uau
    xor     r12, r12
    xor     r13, r13
    xor     rdi, rdi
    call    exit0

impare:
    inc    r13, 
    push   r12
    jmp    _start


prompt:     db 'Número de impáres: ' , 0