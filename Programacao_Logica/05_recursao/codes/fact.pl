% Implementação recursiva da função fatorial
fact(N, F) :-
    N > 0,
    succ(NewN, N),
    fact(NewN, F1),
    F is F1*N.

fact(0, F) :- F is 1.

% Implementação recursiva de cauda
factTR(N, Acc, F) :- 
    N > 0,
    succ(NewN, N),
    NewAcc is Acc * N,
    factTR(NewN, NewAcc, F).  

factTR(0, Acc, F) :- F is Acc.

factorial(N, F) :- factTR(N, 1, F).
