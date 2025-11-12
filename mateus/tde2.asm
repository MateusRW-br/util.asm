; Matricula: 207720    Mateus Roque Weiler
%include '../util.asm'
NUMERO  equ 5
section     .text
global      _start
_start:
    mov     r15, NUMERO
voltar:
    CMP     r15, 0  ; Verifica se nao e zerio
    je      zero
    call    maiorMenorF
    jmp     voltar
maiorMenorF: ; R12 = maior R13 = menor ;
    call    readint
    cmp     r12, r13
    je      inicial
    cmp     rax, r12
    CMOVG   r12, rax
    cmp     rax, r13
    CMOVL   r13, rax
    dec     r15
    ret

inicial:
    mov     r12, rax
    call    readint
    cmp     rax, r12
    mov     r13, r12
    CMOVG   r12, rax
    CMOVL   r13, rax
    dec     r15
    dec     r15
    ret
zero:   
    lea     rdi, [prompt]
    call    printstr
    SUB     r12, r13
    mov     rdi, r12
    call    printint
    call    endl
    call    exit0
    
section     .data
prompt:     db 'Diferença: ' , 0
