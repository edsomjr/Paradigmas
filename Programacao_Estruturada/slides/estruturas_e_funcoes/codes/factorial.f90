! Computa o fatorial de n
program priority

    implicit none

    integer :: n, i, factorial = 1

    read(*,*) n

    do i = 1, n
        factorial = factorial * i
   end do

    write(*,1) n, factorial

1   format ('Fatorial de ', I2, I10)

end program priority
