program fibonacci       ! Obtém os n próximos números de Fibonacci
    write(*,1) next_fib(8, .false.)
    write(*,2) next_fib(5, .false.)
    write(*,3) next_fib(10, .true.)

1   format ('8 primeiros números de Fibonacci:', 8I3)
2   format ('5 próximos números de Fibonacci:', 5I4)
3   format ('10 primeiros números de Fibonacci:', 10I3)

contains

    function next_fib(n, reset)
        integer :: n, i, next_fib(n)
        logical :: reset
        integer, save :: a = 0, b = 1

        if (reset) then
            a = 0
            b = 1
        end if

        do i = 1, n 
            next_fib(i) = b
            b = a + b
            a = next_fib(i)
        end do
 
    end function next_fib

end program fibonacci
