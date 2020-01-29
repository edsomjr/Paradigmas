; Subrotinas utilizadas no programa FizzBuzz

; Calcula o tamanho, em bytes, da string s, cujo endereço 
; de memória contido em EAX
string_len:
    push ecx                    ; registrador usado na rotina
    mov ecx, 0

.next:
    cmp byte [eax + ecx], 0     ; 0 é o terminar da string
    jz  .done

    inc ecx                     ; verifica o próximo caractere
    jmp .next

.done:
    mov eax, ecx                ; Prepara o retorno
    pop ecx                     ; Restaura o valor original de ECX
    ret

; Imprime a string s, contida em EAX
print_string:
    push eax            ; Os 4 registradores de dados serão utilizados
    push ebx
    push ecx
    push edx

    mov ecx, eax        ; Guarda o endereço da string

    call string_len     ; Calcula o tamanho da string
    mov edx, eax

    mov ebx, 1          ; Imprime em SYSOUT
    mov eax, 4          ; Optcode de SYS_WRITE
    int 80h             ; Chamada de sistema

    pop edx             ; Restaura os valores originais dos registradores 
    pop ecx
    pop ebx
    pop eax

    ret

; Transforma a string s, contida em EAX, em um inteiro n
string_to_int:
    push esi        ; Salva os registradores
    push ebx
    push ecx

    mov esi, eax    ; Buffer contendo o número como string
    mov eax, 0      ; EAX conterá o número convertido
    mov ebx, 10     ; Base numérica
    mov ecx, 0      ; Próximo dígito a ser processado

.next:
    mov cl, [esi]   ; Obtém o próximo caractere

    cmp cl, '0'     ; Se o caractere está fora da faixa [0-9] finaliza
    jl .done

    cmp cl, '9'
    jg .done

    sub ecx, '0'    ; Converte de ASCII para decimal

    mul ebx         ; EAX = 10*EAX + ECX
    add eax, ecx

    inc esi         ; Avança o ponteiro e continua o laço
    jmp .next

.done:
    pop ecx         ; Restaura os registradores
    pop ebx
    pop esi

    ret

; Imprime o inteiro n, contido em EAX
print_int:
    push eax        ; Salva os registradores
    push ebx
    push ecx
    push edx

    mov ecx, 0      ; ECX = número de dígitos

.next:
    mov edx, 0      ; Prepara a divisão: a = EDX:EAX
    mov ebx, 10     ; b = 10
    div ebx         ; q = eax, r = edx

    add edx, '0'    ; converte r para ASCII
    push dx         ; insere na pilha
    inc ecx         ; atualiza a contagem de dígitos

    cmp eax, 0      ; Verifica se ainda há dígitos a serem extraídos
    jne .next

.print:
    cmp ecx, 0      ; Verifica se há dígitos a serem impressos
    je .done

    mov eax, esp    ; Imprime o topo da pilha
    call print_string

    add esp, 2      ; Remove o topo da pilha
    dec ecx         ; Decrementa o contador
    jmp .print

.done:
    pop edx         ; Restaura os registradores
    pop ecx
    pop ebx
    pop eax

    ret
