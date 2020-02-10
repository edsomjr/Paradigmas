! Calcula o imposto de renda mensal
program IRRF

    implicit none

    real :: salario, aliquota, deducao, imposto

    write(*,*) 'Insira o salário mensal: '
    read(*,*) salario

    ! Determinar a aliquota e a dedução a partir do salário
    if (salario <= 1903.98) then
        aliquota = 0
    else if (salario <= 2826.65) then
        aliquota = 0.075
        deducao = 142.80
    else if (salario <= 3751.05) then
        aliquota = 0.15
        deducao = 354.80
    else if (salario <= 4664.68) then
        aliquota = 0.225
        deducao = 636.13
    else
        aliquota = 0.275
        deducao = 869.36
    end if

    ! Imprime o imposto a ser pago
    if (aliquota == 0) then
        write(*,*) 'Isento'
    else
        imposto = salario * aliquota - deducao
        write(*,1) imposto
    end if

1   format ('Imposto devido: ', F9.2)

end program IRRF
