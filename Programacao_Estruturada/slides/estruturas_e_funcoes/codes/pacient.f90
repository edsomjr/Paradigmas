! Exemplifica a declaração e instãnciação de um dado derivado
program pacient

    type Paciente
        character(len=256)  :: nome
        integer             :: idade
        real                :: peso, altura
    end type Paciente

    type(Paciente) :: p

    write(*,*) 'Insira o nome do paciente: '
    read(*,1) p%nome
    write(*,*) 'Insira a idade, peso e altura, nesta ordem: '
    read(*,*) p%idade, p%peso, p%altura

    write(*,2) p%nome, p%idade

1   format (A10)
2   format ('Paciente "', A10, '" (', I3, ' anos) registrado com sucesso')

end program pacient
