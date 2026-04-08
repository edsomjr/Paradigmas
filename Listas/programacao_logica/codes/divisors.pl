:- use_module(library(arithmetic)).
:- arithmetic_function(divisores/1).
:- op(500, xfx, divisores).

divisores(N, X) :- divisores(N, N, 0, X).

divisores(N, D, Acc, X) :-
    (D > 0
    -> ((mod(N, D) =:= 0 -> succ(Acc, NewAcc) ; NewAcc = Acc),
        succ(NewD, D),
        divisores(N, NewD, NewAcc, X))
    ; X = Acc).
