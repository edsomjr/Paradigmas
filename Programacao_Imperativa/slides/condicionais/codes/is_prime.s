; Determina se o número n é primo ou não
SECTION .data
yes     db  ' eh primo', 0Ah, 0
no      db  ' nao eh primo', 0Ah, 0  

SECTION .bss
bf:     resb 256    ; Buffer de leitura

SECTION .text
global _start

_start:
    ; Lê um número do console
    mov edx, 256    ; Lê, no máximo, 256 caracteres
    mov ecx, bf     ; Grava a leitura em bf
    mov ebx, 0      ; Lê de STDIN
    mov eax, 3      ; Optcode de sys_read
    int 80h         ; EAX = digitos lidos + '\n'

    dec eax         ; Desconta o '\n'

    ; Imprime o número lido
    mov edx, eax    ; Número de caracteres lidos
    mov ecx, bf     ; Buffer de leitura
    mov ebx, 1      ; Escreve em STDOUT
    mov eax, 4      ; Optcode de sys_write
    int 80h

    ; Converte a string para inteiro
    mov eax, 0      ; EAX conterá o número convertido
    mov ebx, 10     ; Base numérica
    mov ecx, bf     ; Buffer contendo o número como string

to_int:
    mov edx, 0      ; Extrai o próximo dígito
    mov dl, [ecx]

    cmp dl, '0'     ; Se o caractere está fora da faixa [0-9] finaliza
    jl done

    cmp dl, '9'
    jg done

    sub edx, '0'    ; Converte de ASCII para decimal
    mul ebx         ; EAX = 10*EAX + EDX
    add eax, edx

    inc ecx         ; Avança o ponteiro e continua o laço
    jmp to_int

done:
    mov esi, eax    ; ESI = n

    ; Verifica se o número é menor que 2
    mov ebx, 2
    cmp esi, ebx
    jl not_prime 

    ; Verifica se é igual a 2
    je is_prime

    ; Verifica se é par
    mov eax, esi
    div ebx
    cmp edx, 0
    je not_prime

    ; Tenta todos os ímpares menores que a raiz quadrada
    mov ecx, 3

next:
    ; Checa se há ultrapassou a raiz quadrada
    mov eax, ecx
    mul eax
    cmp eax, esi
    jg is_prime

    ; Verifica se ECX divide n
    mov eax, esi
    div ecx
    cmp edx, 0
    je not_prime

    ; Tenta o próximo ímpar
    add ecx, 2
    jmp next

is_prime:
    mov edx, 11     ; 'yes' tem 11 bytes
    mov ecx, yes    ; Escreve o conteúdo de no
    jmp finish

not_prime:
    mov edx, 15     ; 'no' tem 15 bytes
    mov ecx, no     ; Escreve o conteúdo de no
    jmp finish

finish:
    mov ebx, 1      ; Escreve em STDOUT
    mov eax, 4      ; Optcode de sys_write
    int 80h

    mov ebx, 0      ; Encerra com sucesso
    mov eax, 1
    int 80h
