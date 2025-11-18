%include	'../util.asm'

section		.text
global		_start

_start:
	mov 	rdi, [vet+16] ; somando para achar o 3 numero do vetor, +16 bytes ja que o vetor é quad
	call 	printint
	call 	endl
	call 	exit0
	

section		.data
vet: 	dq 1000, -5, 91, 314, 321