! Verifica se o inteiro n é ou não primo
program is_prime
    use primes
    integer :: n

    write(*, 1, advance="no")
    read(*,*) n

    if (primality_check(n)) then
        write(*, 2) n
    else
        write(*, 3) n
    end if

    write(*,4) get_primes(10)

1   format('Insira o inteiro n: ')
2   format(I7, ' é primo')
3   format(I7, ' não é primo')
4   format('10 primeiros primos:', 10I4)

end program is_prime
