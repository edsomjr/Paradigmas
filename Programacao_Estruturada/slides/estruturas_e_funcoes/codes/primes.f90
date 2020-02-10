! Módulo com funções relacionadas a números primos
module primes

    implicit none

    integer, parameter :: max_value = 10 ** 7
    logical, private :: sieve(max_value), ready = .false.

    ! Define a visibilidade das funções e subrotinas
    public  :: primality_check, get_primes
    private :: erasthotenes

contains

    function primality_check(n)
        integer :: n
        logical :: primality_check 

        if (n > max_value) then
            write(*,*) 'Max value exceeded!'
            call exit(-1)       ! Aborta o programa com erro
        end if

        if (n < 1) then
            primality_check = .false.
            return
        end if

        if (.not. ready) then
            call erasthotenes()        
        end if

        primality_check = sieve(n)

    end function primality_check

    ! Implementa o crivo de Erastótenes
    subroutine erasthotenes()

        integer(8) :: i, j, step = 4

        sieve = .true.
        sieve(1) = .false.

        do i = 4, max_value, 2 
            sieve(i) = .false.
        end do

        do i = 6, max_value, 3 
            sieve(i) = .false.
        end do

        do i = 5, max_value, step

            if (sieve(i)) then
                do j = i*i, max_value, 2*i
                    sieve(j) = .false.
                end do
            end if

            step = 6 - step

        end do

    end subroutine erasthotenes

    function get_primes(n)

        integer :: i, n, total = 0, get_primes(n)

        if (.not. ready) then
            call erasthotenes()        
        end if

        do i = 1, max_value
            if (sieve(i)) then
                total = total + 1
                get_primes(total) = i
            end if

            if (total == n) then
                return
            end if
        end do

    end function get_primes

end module primes
