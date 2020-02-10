! Computa a média e o desvio padrão dos elementos do vetor xs
program statistics

    implicit none

    integer, allocatable :: xs(:)   ! Vetor dinâmico
    integer :: n, i                 ! n = dimensão de xs
    real :: stats(2)                ! Vetor com duas posições

    write(*,*) 'Insira o número de entradas: '
    read(*,*) n

    if (n < 1) then
        return
    end if

    allocate(xs(n))

    do i = 1, n 
        write(*,*) 'Insira a entrada ', i, ': '
        read(*,*) xs(i)
    end do

    stats(1) = 0.0                  ! Média             

    do i = 1, n
        stats(1) = stats(1) + xs(i)
    end do

    stats(1) = stats(1) / n

    stats(2) = 0.0                  ! Desvio-padrão

    do i = 1, n
        stats(2) = stats(2) + (xs(i) - stats(1)) ** 2
    end do

    write(*,*) 'Média = ', stats(1)

    stats(2) = sqrt(stats(2)/n)

    write(*,*) 'Desvio = ', stats(2)

    deallocate(xs)

end program statistics
