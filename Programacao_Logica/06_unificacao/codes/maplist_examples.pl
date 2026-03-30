% Determina se X é múltiplo de Y
is_multiple(X, Y) :- X mod Y =:= 0.

% Atente à aplicação parcial do predicado is_multiple
common_multiple(X, L) :- maplist(is_multiple(X), L).

% Verdeiro se ao menos um, ou todos, os membros são verdadeiros, respectivamente
any(L) :- member(X, L), call(X).
all(L) :- maplist(call, L).

% Conversão de graus Celsius para Fahrenheit
celsius_fahrenheit(C, F) :-
    ((var(C), var(F)) 
        -> instantiation_error('Ao menos uma variável deve estar atada') ; true),
    (nonvar(C) -> F is C*9/5 + 32 ; C is (F - 32)*5/9).

% Exemplo de chamada
?- maplist(celsius_fahrenheit, [-1, 100, 40], F).
F = [30.2, 212, 104].
