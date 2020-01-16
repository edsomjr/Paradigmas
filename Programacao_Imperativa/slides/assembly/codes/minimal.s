; Menor programa assembly possível com interação com ambiente Linux
 
SECTION .text
global  _start
 
_start:
    mov ebx, 0  ; Move o código de retorno (zero) para EBX
    mov eax, 1  ; Move o código de SYS_EXIT (opcode 1) para EAX
    int 80h     ; Executa a syscall, encerrando o programa com sucesso
