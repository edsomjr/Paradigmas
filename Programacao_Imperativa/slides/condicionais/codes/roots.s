; Computa o número de raizes reais do polinômio  p(x) = ax^2 + bx + c
; Como exemplo, serão utilizados os valores a = 1, b = -5 e c = 6
SECTION .data
a       dd  1               ; dd = variáveis com 4 bytes
b       dd  -5
c       dd  6
msg     db  '0', 0Ah, 0

SECTION .text
global _start

_start:
    mov eax, 4      ; EBX = 4*a*c
    mov ecx, [a]      
    mul ecx
    mov ecx, [c]      
    mul ecx
    mov ebx, eax

    mov eax, [b]    ; b = -5    
    mul eax         ; EAX = b^2

    sub eax, ebx    ; EAX = b^2 - 4*a*c

    jz  one         ; Se EAX = 0 há apenas uma raiz
    jns two         ; Se EAX > 0 há duas raizes reais

    mov bl, '0'     ; Caso contrário não há raizes reais
    jmp finish

one:
    mov bl, '1'
    jmp finish

two:
    mov bl, '2'

finish:
    mov [msg], bl   ; Atualiza a mensagem com o número de raizes

    mov edx, 3      ; msg tem 3 bytes
    mov ecx, msg    ; msg é a mensagem a ser impressa
    mov ebx, 1      ; A saída é STDOUT
    mov eax, 4      ; Optcode de SYS_WRITE
    int 80h

    mov ebx, 0      ; Encerra com sucesso
    mov eax, 1
    int 80h
