! Computa a^n com complexidade O(log n)
program fast_exp

    implicit none

    integer(16) :: a, n, res = 1, base      ! Inteiros de 128-bits
    read(*,*) a, n

    base = a

    do while (n > 0)
        if (iand(n, 1) > 0) then            ! iand(x, y) = x & y
            res = res * base
        end if

        base = base * base
        n = ishft(n, -1)                    ! n = n >> 1
    end do

    write(*,*) res

end program fast_exp
