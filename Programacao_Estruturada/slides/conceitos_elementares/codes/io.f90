! Calcula o valor da parcela P a ser para um financiamento de R reais, 
! em N meses, com taxa de juros de j por cento ao mês, sem entrada
program financiamento

    implicit none

    real :: R, j, P
    integer :: N

    read(*,*) R, j, N                   ! Leitura dos dados

    P = R*(j/(1 - 1/((1 + j) ** N)))    ! Cálculo da prestação

    write(*,1) P                        ! Saída formatada

1   format ('Prestacao: ', F9.2)

end program financiamento
