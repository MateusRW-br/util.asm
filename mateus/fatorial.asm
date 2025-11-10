%include '../util.asm'
section .text
global _start
_start:
    call    readint
    mov     r12, rax
    mov     r13, rax
    test    r12, r12
    jz      ezero
    dec     r13
    jz      pula
fatoria:
    imul    r12, r13
    dec     r13
    test    r13, r13
    jnz     fatoria
    jmp     pula
ezero:
    inc     r12
pula:
    lea     rdi, [prompt]
    call    printstr
    mov     rdi, r12
    call    printint
    call    endl
    xor     r12, r12
    xor     r13, r13
    call    exit0
prompt:     db 'Fatorial: ' , 0