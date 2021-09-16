SECTION .data
msg     db  'abc', 0Ah, 0

SECTION .text
global _start

_start:
    mov bl,[msg+1]  ; Torna maiúscula a segunda letra de msg
    sub bl, 20h     ; bl tem 1 byte de tamanho
    mov [msg+1], bl
    mov edx, 5      ; msg tem um total de 5 bytes
    mov ecx, msg    ; msg contém o endereço da mensagem
    mov ebx, 1      ; A saída é o console
    mov eax, 4      ; Optcode de sys_write
    int 80h         ; Realiza a chamada via interrupção
    mov ebx, 0      ; Encerra o programa com sucesso
    mov eax, 1
    int 80h
