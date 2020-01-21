; Computa o número de vértices de um poliedro por meio da
; fórmula de Euler:
;
;   V - E + F = 2
;
SECTION text
global _start

_start:
    mov edx, 6      ; Número de arestas (E) em EDX
    mov ecx, 4      ; Número de faces (F) em ECX

    mov ebx, 2      ; O número de vértices (V) ficará armazenado em EBX
    add ebx, edx
    sub ebx, ecx

    mov eax, 1      ; Move o código de SYS_EXIT (opcode 1) para EAX
    int 80h         ; Encerra o programa com erro V = 4 (tetraedro)
