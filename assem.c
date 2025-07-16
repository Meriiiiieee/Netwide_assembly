extern printf
extern scanf

section .data
       print_msg db "Please input  the number: ", 10, 0
       frmt db "%d", 0
       finish_msg db "This is your number %d ", 0
 
section .bss
       num resd 1 

section .text

       global main 

main:
      push rbp
      mov rbp, rsp
      
      mov rdi, print_msg
      xor rax, rax 
      call printf
 
      mov rdi, frmt
      lea rsi, [num]
      xor rax, rax
      call scanf
    
      mov rdi, finish_msg
      xor rax, rax
      call printf

      mov rsp, rbp
      pop rbp
      ret

