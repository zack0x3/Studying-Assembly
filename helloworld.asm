;Simple program
;Return : Hello World

section .data
	msg: db "Hello world!"
	tam equ $ -msg

section .text
global _start
_start:
	mov EAX, 0x4
	mov EBX, 0x1
	mov ECX, msg
	mov EDX, tam
	int 0x80

	mov EAX, 0x1
	mov EBX, 0x0
	int 0x80
