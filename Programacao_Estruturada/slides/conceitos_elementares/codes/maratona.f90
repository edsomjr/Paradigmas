! Verifica se um competidor pode ou não participar da Maratona no ano de 2020
program maratona

    implicit none

    integer :: inicio = 2017, nascimento = 1995
    logical :: primeira_graduacao = .true.
    logical :: ok
    
    ok = nascimento >= 1997 .or. (primeira_graduacao .and. inicio > 2015)

    write(*,*) 'Pode participar? ', ok

end program maratona
