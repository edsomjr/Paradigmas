program angle       ! Calcula o ângulo entre dois vetores
    real, parameter :: pi = acos(-1.0)
    real :: theta, xlen, ylen
    real :: xs(2) = (/ 1, 0 /), ys(2) = 1   ! ys = (1, 1)
    real :: A(2, 2) = reshape((/ 0, 1, -1, 0 /), (/ 2, 2 /))

    xlen = sqrt(dot_product(xs, xs))
    ylen = sqrt(dot_product(ys, ys))
    theta = acos(dot_product(xs, ys) / (xlen * ylen))
    theta = theta * 180 / pi

    write(*,*) 'Ângulo, em graus: ', theta

    ys = matmul(A, ys)
    theta = acos(dot_product(xs, ys) / (xlen * ylen))
    theta = theta * 180 / pi

    write(*,*) 'Ângulo após rotação, em graus: ', theta
end program angle
