:- dynamic
    coordenador/1.

coordenador(matheus).       % CNA
coordenador(himilsys).      % Automotiva
coordenador(batistuta).     % Eletrônica
coordenador(sebastien).     % Aeroespacial

% Após carregar estes fatos, são possíveis as seguintes consultas/atualizações

% Lista os coordenadores
?- coordenador(X).
X = matheus ;
X = himilsys ;
X = batistuta ;
X = sebastien.

% Verifica se John Lenon é coordenador de Software
?- coordenador(john).
false.

% Atualiza, adicionando os coordenadores ainda não cadastrados
?- asserta(coordenador(andrea)).        % Energia
true.

?- assertz(coordenador(john)).          % Software
true.

% Agora John é coordenador
?- coordenador(john).
true.

% Suponha que Matheus se licencie do cargo de coordenador
?- retract(coordenador(matheus)).
true.

?- coordenador(X).
X = andrea ;
X = himilsys ;
X = batistuta ;
X = sebastien ;
X = john.
