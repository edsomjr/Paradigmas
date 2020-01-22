; Calcula a área de um retângulo de dimensões B e H

SECTION .text
global _start

_start:
    mov eax, 25     ; A base B é armazenada em EAX
    mov ebx, 8      ; A altura H é armazenada em EBX
    mul ebx         ; O resultado está no par EDX:EAX
    
    mov ebx, eax    ; Copia o resultado em EBX
    mov eax, 1      ; Código do syscall SIS_EXIT
    int 80h         ; Encerra com código de retorno igual a área
