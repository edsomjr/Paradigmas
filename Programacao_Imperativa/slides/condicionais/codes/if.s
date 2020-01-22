; Código correspondente ao construto IF-ELSE

    cmp regA, regB     ; Esta comparação corresponde à condição
    jnz blockA         ; Assuma 0 falso, caso contrário verdadeiro
    jmp blockB 
    
blockA:
    ; Commandos associados ao blocoA
    jmp finish

blockB:
    ; Commandos associados ao blocoB                        
    jmp finish

finish:
    ; Prossegue com a execução do código
