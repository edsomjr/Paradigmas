; A entrada é feita por meio da chamada de sistema SYS_READ (optcode 3):
;       EDX     Tamanho máximo, em bytes, a ser preenchido
;       ECX     Endereço da variável a ser preenchida
;       EBX     Arquivo do qual a string será carregada (STDIN = 0)
SECTION .data
msg     db  'Hello, ', 0  ; mensagem + zero terminador

SECTION .bss
name:   resb 255

SECTION .text
global _start

_start:
    mov edx, 255    ; Tamanho máximo do buffer
    mov ecx, name   ; Endereço de memória do buffer
    mov ebx, 0      ; Lê a string do console
    mov eax, 3      ; Optcode de SYS_READ
    int 80h         ; Lê o nome do usuário

    mov edx, 8      ; msg tem um total de 8 bytes
    mov ecx, msg    ; msg contém o endereço da mensagem
    mov ebx, 1      ; A saída é o console
    mov eax, 4      ; Optcode de SYS_WRITE
    int 80h         ; Imprime msg, sem quebra de linha

    mov edx, 255    ; Imprime todo o buffer
    mov ecx, name   ; name contém o endereço do buffer
    mov ebx, 1      ; A saída é o console
    mov eax, 4      ; Optcode de SYS_WRITE
    int 80h         ; Imprime name, conforme foi lido

    mov ebx, 0      ; Encerra o programa com sucesso
    mov eax, 1
    int 80h
