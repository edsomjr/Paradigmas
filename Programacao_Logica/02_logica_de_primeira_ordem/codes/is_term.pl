% Definição da generalização usando o wildcard
is_term(_).

% Todas as consultas a seguir são verdadeiras
?- is_term(1).              % Números são termos
true.

?- is_term(abc).            % Átomos são termos
true.

?- is_term(A).              % Variáveis são termos
true.

% A consulta a seguir gera um erro, pois is_term tem aridade 1
?- is_term(A, B).
