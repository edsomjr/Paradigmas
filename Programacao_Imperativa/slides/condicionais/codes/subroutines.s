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

; Imprime a string s, contida em EAX, seguida de um '\n'
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

    mov ecx, 0Ah        ; Insere o '\n' na pilha
    push ecx

    mov ecx, esp        ; Obtém o endereço para a impressão
    mov edx, 1
    mov eax, 4          ; Restaura o optcode (perdido na chamada anterior)
    int 80h

    add esp, 4          ; Remove o '\n' da pilha

    pop edx             ; Restaura os valores originais dos registradores 
    pop ecx
    pop ebx
    pop eax

    ret

; Imprime o inteiro n, contido em EAX

