; Matricula: 207720    Mateus Roque Weiler
%include '../util.asm'
NUMERO  equ 5
_start:
    CMP     r15, NUMERO
    jne     teste
    lea     rdi, [prompt]
    call    printstr
    SUB     r12, r13
    mov     rdi, r12
    call    printint
    call    endl
    call    exit0
teste: ; R12 = maior R13 = menor ;
    call    readint
    cmp     rax, r12
    CMOVG   r12, rax
    CMOVL   r13, rax
    jmp     _start

prompt:     db 'Diferença: ' , 0