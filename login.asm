section .data
insert db "Enter password : "
size1 equ $-insert

granted db "Access Granted"
size2 equ $-granted

failed1 db "Access Denied"
size3 equ $-failed1

password db 1

section .bss
password_input resb 15

section .text
global _start

_start:

mov EAX, 0x4
mov EBX, 0x1
mov ECX, insert
mov EDX, size1
int 0x80

mov EAX, 0x3
mov EBX, 0x0
mov ECX, password_input
mov EDX, 0x7
int 0x80

mov EAX, [password]
mov EBX, [password_input]
cmp EAX, EBX
je igual
jmp failed

igual:
mov EAX, 0x4
mov EBX, 0x1
mov ECX, granted
mov EDX, size2
int 0x80
mov EAX, 0x1
mov EBX, 0x0
int 0x80

failed:
mov EAX, 0x4
mov EBX, 0x1
mov ECX, failed1
mov EDX, size3
int 0x80

mov EAX, 0x1
mov EBX, 0x0
int 0x80


