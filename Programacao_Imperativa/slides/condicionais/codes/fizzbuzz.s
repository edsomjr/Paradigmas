; Implementa o FizzBuzz em Assembly. Os parâmetros da chamada do
; executável são armazenados na pilha: o topo contém o número de
; argumentos passados (o nome do programa é o argumento 0)
SECTION .data
error_msg   db  'Usage: fizzbuzz n', 0

%include 'functions.asm'
%include 'subroutines.s'

SECTION .text
global _start

_start:
    pop ecx             ; ECX = número de argumentos passados

    mov eax, ecx
    call iprintLF

    cmp ecx, 2
    jl  .error
    jmp .exit

.error:
    mov eax, error_msg
    call print_string

.exit:
    mov ebx, 0
    mov eax, 1
    int 80h
