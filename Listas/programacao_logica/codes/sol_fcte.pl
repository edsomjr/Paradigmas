% (a) Disciplinas com calouros (estudantes do semestre 1) matriculados
tem_calouros(D) :-
    matricula(D, S),
    estudante(S, 1, _).

% (b) Disciplinas com ao menos um estudante de cada curso
turma_mista(D) :-
    matricula(D, S1), estudante(S1, _, 'Engenharia de Software'),
    matricula(D, S2), estudante(S2, _, 'Engenharias'),
    matricula(D, S3), estudante(S3, _, 'Engenharia de Energia').

% (c) Imprime os estudantes de Engenharia de Software, um por linha
software :-
    estudante(S, _, 'Engenharia de Software'),
    write(S), nl,
    fail.

% Serve para que a consulta não retorne falso.
software.
