program selection           ! Implementa o selection sort
    implicit none
    integer, allocatable :: xs(:)
    integer :: n

    write(*,*) 'Insira o número de elementos: '
    read(*,*) n

    allocate(xs(n))

    write(*,*) 'Insira os elementos do vetor: '
    read(*,*) xs

    call sort(n, xs)

    write(*,*) xs

    deallocate(xs)

contains
    subroutine sort(n, xs)
        integer :: i, j, k, n, xs(:)

        do i = 1, n - 1
            j = i

            do k = i + 1, n
                if (xs(k) < xs(j)) then
                    j = k
                end if
            end do

            call swap(xs(i), xs(j))
        end do

    end subroutine sort

    subroutine swap(x, y)
        integer :: x, y, z

        z = x
        x = y
        y = z
    end subroutine swap

end program selection
