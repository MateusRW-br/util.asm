%include	'../util.asm'

section		.text
global		_start

_start:
    xor     r15 , r15
.for:
    call    readint
    mov     [vet+r15*8], rax
	inc     r15
    cmp     r15, 10
    jl      .for
    call    endl
    dec     r15
.printar:
    mov     rdi, [vet+r15*8]
    call    printint
    call    endl
    dec     r15
    cmp     r15, 0
    jge   .printar
    call    exit0


section		.bss
vet: 	resq  10
