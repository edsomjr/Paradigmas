; Exemplo de atribuição em Assembly

; O resultado da execução deste programa pode ser visto no terminal 
; por meio do comando
;
;   $ echo $?
;
SECTION .text
global  _start
 
_start:
    mov ecx, 14H    ; O número 20 (em forma hexadecimal) para ECX
    mov ebx, ecx    ; Copia o valor de ECX em EBX
    mov eax, 1      ; Move o código de SYS_EXIT (opcode 1) para EAX
    int 80h         ; Encerra o programa com erro (código 20)
