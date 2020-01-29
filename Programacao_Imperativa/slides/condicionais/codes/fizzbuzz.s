; Implementa o FizzBuzz em Assembly. Os parâmetros da chamada do
; executável são armazenados na pilha: o topo contém o número de
; argumentos passados (o nome do programa é o argumento 0)
SECTION .data
error_msg   db  'Usage: fizzbuzz n', 0Ah, 0
fizz        db  'Fizz', 0
buzz        db  'Buzz', 0
endl        db  0Ah, 0

%include 'subroutines.s'

SECTION .text
global _start

_start:
    pop ecx             ; ECX = número de argumentos passados

    cmp ecx, 2          ; Checa se o argumento foi passado
    jl  .error

    mov eax, [esp + 4]  ; Ignora o nome do programa

    call string_to_int  ; Converte o argumento para inteiro

    mov esi, 1          ; Início da contagem
    mov edi, eax        ; Fim da contagem

.fizzbuzz:
    cmp esi, edi        ; Verifica se a contagem já terminou
    jg .exit

    mov eax, esi        ; Checa se é múltiplo de 15
    mov edx, 0
    mov ebx, 15         
    div ebx

    cmp edx, 0
    jne .fizz

    mov eax, fizz       ; A saída é FizzBuzz
    call print_string
     
    mov eax, buzz
    call print_string

    jmp .endl

.fizz:
    mov eax, esi        ; Checa se é múltiplo de 3
    mov edx, 0
    mov ebx, 3         
    div ebx

    cmp edx, 0
    jne .buzz

    mov eax, fizz       ; A saída é Fizz
    call print_string
    jmp .endl 
 
.buzz:
    mov eax, esi        ; Checa se é múltiplo de 5
    mov edx, 0
    mov ebx, 5         
    div ebx

    cmp edx, 0
    jne .n

    mov eax, buzz       ; A saída é Buzz
    call print_string
    jmp .endl 

.n:
    mov eax, esi
    call print_int

.endl:
    mov eax, endl
    call print_string

    inc esi
    jmp .fizzbuzz

.error:
    mov eax, error_msg
    call print_string

.exit:
    mov ebx, 0
    mov eax, 1
    int 80h
