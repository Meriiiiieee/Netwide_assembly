extern printf
extern scanf

section .data
        first_msg db "Enter first number: ", 0
  frmt db "%d", 0
  second_msg db "Enter second number: ", 0 
  frmt1 db "%d", 0
  result_msg db "Max : %d", 0

section .bss
        num1 resd 1
        num2 resd 1
 

section .text

        global main 

main:
        push rbp
        mov rbp, rsp 

        mov rdi, first_msg
        xor rax, rax
        call printf

        mov rdi, frmt
        lea rsi, [num1]
        xor rax, rax
        call scanf

        mov rdi, second_msg
        xor rax, rax
        call printf

        mov rdi, frmt1
        lea rsi, [num2]
        xor rax, rax
        call scanf

        mov r8d, dword[num1]
        mov r9d, dword[num2]
        cmp r8d, r9d
  JL LOOP1

LOOP2:  

        mov rdi, result_msg
        movsx rsi, r8d
        xor rax, rax
        call printf

END:
        mov rsp, rbp
        pop rbp
        ret

LOOP1:
        mov r8d, r9d
  JMP LOOP2
