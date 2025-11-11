%include '../util.asm'
extern  fatorial
section .text
global _start
_start:
    lea     rdi, [txt1]
    call    printstr
    call    readint
    mov     rdi, rax
    call    fatorial
    mov     r12, rax
    lea     rdi, [txt2]
    call    printstr
    mov     rdi, r12
    call    printint
    call    endl
    call    exit0

section     .data
txt1:       db 'Número: ' , 0
txt2:       db 'Fatorial: ', 0