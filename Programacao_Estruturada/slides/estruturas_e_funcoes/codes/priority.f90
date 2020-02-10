! Determina a prioridade de atendimento do paciente, de acordo com a idade
program priority

    implicit none

    integer :: idade
    character (len = 6) :: prioridade

    write(*,*) 'Insira a idade do paciente: '
    read(*,*) idade

    select case (idade)
        case (0 : 6)
            prioridade = 'media'
        case (65 : )
            prioridade = 'maxima'
        case (7 : 64)
            prioridade = 'minima'
        case default
            write(*,*) 'Idade inválida!'
            return
    end select

    ! Imprime a prioridade do paciente
    write(*,1) idade, prioridade

1   format (I3, ' anos, prioridade: ', A6)

end program priority
