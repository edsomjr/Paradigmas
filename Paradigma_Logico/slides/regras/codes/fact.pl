% Implementação recursiva da função fatorial
fact(F, 0) :- F is 1.
fact(F, N) :-
    N > 0,
    NewN is N - 1,
    fact(X, NewN),
    F is X*N.

% Implementação recursiva de cauda
factTR(F, 0, Acc) :- F is Acc.
factTR(F, N, Acc) :- 
    N > 0,
    NewN is N - 1,
    NewAcc is Acc * N,
    factTR(F, NewN, NewAcc).  

factorial(F, N) :- factTR(F, N, 1).
