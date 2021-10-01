; Cálcula o índice de massa corporal: IMC = m/h^2. A unidade de medida padrão é kg/m^2,
; mas no código abaixo a massa será dada em gramas e a altura em centímetros
SECTION .text
global _start

_start:
    mov ebx, 179    ; A altura h é armazenada em EBX
    mov eax, ebx    ; EBX = h^2
    mul ebx
    mov ebx, eax
    mov eax, 805000 ; A massa m é armazenada em EAX. O zero extra é 
                    ; oriundo da conversão das unidades de medida

    div ebx         ; eax = IMC
    mov ebx, eax    ; O resultado será o código de retorno do programa
 
    mov eax, 1      ; Move o código de SYS_EXIT (opcode 1) para EAX
    int 80h         ; Encerra o programa com erro IMC
