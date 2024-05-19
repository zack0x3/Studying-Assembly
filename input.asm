section .data
msg db "Enter the name : "
size equ $-msg

section .bss
name resb 1

section .text
global _start

_start:
mov EAX, 0x4
mov EBX, 0x1
mov ECX, msg
mov EDX, size
int 0x80

mov EAX, 0x3
mov EBX, 0X0
mov ECX, name
mov EDX, 0x8
int 0x80

mov EAX, 0x4
mov EBX, 0x1
mov ECX, name
mov EDX, 0x8
int 0x80

mov EAX, 0x1
mov EBX, 0x0
int 0x80
