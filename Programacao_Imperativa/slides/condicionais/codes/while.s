; Código correspondente ao construto WHILE

.while:
    cmp regA, regB     ; Esta comparação corresponde à condição
    jz  finish         ; Assuma 0 falso, caso contrário verdadeiro
    
    ; Commandos associados ao bloco

    jmp .while         ; Retorna ao início, reavaliando a condição

.finish:
    ; Prossegue com a execução do código
