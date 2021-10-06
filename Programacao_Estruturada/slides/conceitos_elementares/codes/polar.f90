! Computa a forma polar do complexo c
program polar

    implicit none

    complex :: c = complex (0.5, sqrt(3.0)/2)
    real :: p, theta                            ! Parâmetros da forma polar

    write(*,*) 'c = ', c

    ! Converte c para a forma polar c = p(cos(theta) + isen(theta))
    p = sqrt(real(c) ** 2 + aimag(c) ** 2)
    theta = atan(aimag(c)/real(c))

    ! p = 1, theta = pi/3 = 60°
    write(*,*) 'p = ', p, ' theta = ', theta

end program polar
