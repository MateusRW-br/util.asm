%include	'../util.asm'

section		.text
global		_start
N:  equ 10

_start:
    mov     r15, N
.leitura:
    call    readint
    push    rax
    dec     r15
    jnz     .leitura
    call    endl
.printar:
    pop     rdi
    call    printint
    inc     r15
    call    endl
    cmp     r15, N
    jne     .printar
    call    exit0