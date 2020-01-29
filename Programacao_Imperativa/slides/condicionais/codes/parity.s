; Determina se o número n é par ou ímpar
SECTION .data
n       dd  5
even    db  'Par', 0Ah, 0
odd     db  'Impar', 0Ah, 0

SECTION .text
global _start

_start:
    mov eax, [n]    ; a = n
    mov ebx, 2      ; b = 2
    div ebx         ; r = edx, q = eax

    cmp edx, 0      ; Testa se n é par (r == 0)
    je  par

    mov edx, 7      ; n é ímpar
    mov ecx, odd
    jmp finish

par:
    mov edx, 5      ; even tem 5 bytes
    mov ecx, even
    jmp finish

finish:
    mov ebx, 1      ; A saída é STDOUT
    mov eax, 4      ; Optcode de sys_write
    int 80h

    mov ebx, 0      ; Encerra com sucesso
    mov eax, 1
    int 80h
