! Calcula o valor da parcela P a ser para um financiamento de R reais, 
! em N meses, com taxa de juros de j por cento ao mês, sem entrada
program financiamento

    implicit none

    real :: R, j, P
    integer :: N

    ! Leitura dos dados
    read(*,*) R, j, N

    ! Cálculo da prestação
    P = R*(j/(1 - 1/((1 + j) ** N)))

    ! Saída formatada
    write(*,1) P

1   format ('Prestacao: ', F9.2)

end program financiamento
