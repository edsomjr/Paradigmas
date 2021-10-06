program binomial        ! Calcula o coeficiente binominal (n, m)
    implicit none
    integer(8) :: n, m

    write(*,*) 'Insira os valores de n e m: '
    read(*,*) n, m
    write(*,*) binom(n, m)
contains
    function factorial(n)
        integer(8) :: i, n, factorial
        factorial = 1

        do i = 2, n
            factorial = factorial * i
        end do

    end function factorial

    function binom(n, m)
        integer(8) :: n, m, binom

        if ((n < 0) .or. (m < 0) .or. (n < m)) then
            binom = 0
            return
        end if

        binom = factorial(n) / (factorial(m) * factorial(n - m))

    end function binom

end program binomial
