; Imprime o número inteiro n, contido no registrador EAX. A rotina
; que converte de inteiro para string usa a pilha para armazenar
; os dígitos
SECTION .text
global _start

_start:
    mov eax, 5291   ; n = EAX
    mov ecx, 0      ; ECX = número de dígitos

next:
    mov edx, 0      ; Prepara a divisão: a = EDX:EAX
    mov ebx, 10     ; b = 10
    div ebx         ; q = eax, r = edx

    add edx, '0'    ; converte r para ASCII
    push dx         ; insere na pilha
    inc ecx         ; atualiza a contagem de dígitos

    cmp eax, 0      ; Verifica se ainda há dígitos a serem extraídos
    jne next

    ; Prepara a rotina de impressão
    mov esi, ecx    ; ESI conterá o número de dígitos
    mov edx, 1      ; Imprime um dígito por vez
    mov ebx, 1      ; Imprime em STDOUT
    mov eax, 4      ; Optocode de SYS_WRITE

print_int:
    cmp esi, 0      ; Verifica se há dígitos a serem impressos
    je done

    mov ecx, esp    ; Aponta para o topo da pilha
    int 80h         ; Imprime o caractere do topo
    mov eax, 4      ; Restaura o valor de eax

    add esp, 2      ; Remove o topo da pilha
    dec esi         ; Decrementa o contado
    jmp print_int

done:
    ; Imprime a quebra de linha
    mov edx, 0Ah
    push dx

    mov edx, 1
    mov ecx, esp
    int 80h

    pop dx          ; Remove a quebra de linha da pilha

exit:
    ; Encerra o programa com sucesso
    mov ebx, 0
    mov eax, 1
    int 80h
