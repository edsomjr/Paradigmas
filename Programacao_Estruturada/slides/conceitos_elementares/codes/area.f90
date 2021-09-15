! Computa a área de um círculo de raio r
program area

    implicit none

    real, parameter :: pi = 3.141592    ! Declaração de constante
    real :: A                           ! Declaração de variável real
    integer :: r                        ! Declaração de variável inteira

    r = 8               ! Define um valor para r por meio de atribuição

    A = pi * r ** 2     ! Área do círculo

    write(*,*) 'Area = ', A

end program area
