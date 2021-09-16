; A impressão no terminal é feita por meio da chamada SYS_WRITE (optcode 4):
;       EDX     Tamanho, em bytes, da string a ser escrita
;       ECX     Endereço da string a ser impressa
;       EBX     Arquivo onde a string será impressa (STDOUT = 1)
SECTION .data
msg     db  'Hello World!', 0Ah, 0  ; msg + '\n' + zero terminador

SECTION .text
global _start

_start:
    mov edx, 14     ; msg tem um total de 14 bytes
    mov ecx, msg    ; msg contém o endereço da mensagem
    mov ebx, 1      ; A saída é o console
    mov eax, 4      ; Optcode de SYS_WRITE
    int 80h         ; Realiza a chamada via interrupção
    mov ebx, 0      ; Encerra o programa com sucesso
    mov eax, 1
    int 80h
