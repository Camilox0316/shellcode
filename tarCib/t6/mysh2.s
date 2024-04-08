; This file is called mysh.s
section .text
global _start
_start:
    ; Store the argument string on stack
    xor eax, eax 
    mov al, "h" ; ASCII de 'h'
    push eax
    push "/bas" ; "/bas" en hexadecimal
    push "/bin" ; "/bin" en hexadecimal
    mov ebx, esp ; Get the string address

    ; Construct the argument array argv[]
    xor al, al
    push eax ; argv[1] = 0
    push ebx ; argv[0] points to the cmd string
    mov ecx, esp ; Get the address of argv[]

    ; For environment variable
    xor edx, edx ; No env variable

    ; Invoke execve()
    xor eax, eax
    mov al, 0x0b
    int 0x80
