; Simple program
; A simple script that returns "Hello World" written in ASM x86
; To compile, do:
; nasm -f elf64 helloworld.asm
; ld -s -o helloworld helloworld.o

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
