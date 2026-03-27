% Determina se X é múltiplo de algum dentre os inteiros contidos na lista L
is_multiple(X, Y) :- X mod Y =:= 0.

common_multiple(X, L) :- maplist(is_multiple(X), L).

any(L) :- member(X, L), call(X).

all(L) :- maplist(call, L).

celsius_fahrenheit(C, F) :-
    ((var(C), var(F)) 
        -> instantiation_error('Ao menos uma variável deve estar atada') ; true),
    (nonvar(C) -> F is C*9/5 + 32 ; C is (F - 32)*5/9).

?- maplist(celsius_fahrenheit, [-1, 100, 40], F).
F = [30.2, 212, 104].
