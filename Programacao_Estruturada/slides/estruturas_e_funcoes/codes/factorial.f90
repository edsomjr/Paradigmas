! Computa o fatorial de n
program factorial

    implicit none

    integer :: n, i, Fn = 1

    read(*,*) n

    do i = 1, n
        Fn = Fn * i
   end do

    write(*,1) n, Fn

1   format ('Fatorial de ', I2, I10)

end program factorial
