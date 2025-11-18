%include	'../util.asm'

section		.text
global		_start

_start:
	xor 	r12, r12
.loop:
	mov 	rdi, [vet+16] 
	inc 	r12
	call 	endl
	cmp 	r12, 5
	jl 	.loop
	call 	printint
	call 	endl
	call 	exit0
	

section		.data
vet: 	dq 1000, -5, 91, 314, 321
;var1:   db 55       ;byte (8bits)
;var2:   dw 5500     ;word (16bits)
;var3:   dd 100000   ;doubleword(32bits)
;var4:   dq 1234567890;quadword(64bits)
            
