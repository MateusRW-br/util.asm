%include	'../util.asm'

section		.text
global		_start

_start:
    lea      rdi, [msg1] 
    call     printstr
    call     readint
    mov      rbx, rax
    call     readint
    mov      r12, rax
    cmp      rbx, r12
    jg       maior
    jmp      menor
    
maior:
    lea     rdi, [maiorTrue]
    call    printstr
    mov     rdi, rbx
    call    printint
    call    endl
    call    exit0
menor: 
    lea     rdi, [maiorTrue]
    call    printstr
    mov     rdi, r12
    call    printint
    call    endl
    call    exit0
    

msg1:     db 'Digite dois numero: ', 10 0  
maiorTrue:    db 'Maior: ' , 0
