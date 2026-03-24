% L é uma lista com os N primeiros números primos
% Complexidade: O(N ^ 3/2)
primes(N, L) :- primes_(N, 2, L).

primes_(N, X, L) :-
    N > 0,
    (is_prime(X) -> succ(NewN, N) ; NewN = N),
    succ(X, NewX),
    primes_(NewN, NewX, NewL),
    (NewN \= N -> L = [X | NewL] ; L = NewL).

primes_(0, _, []).

% Determina se o número X é ou não primo
is_prime(X) :- is_prime_(X, 3).
is_prime(2).

is_prime_(X, D) :-
    X > 2,
    mod(X, 2) =:= 1,
    S is D ^ 2,
    (S =< X
    -> (mod(X, D) =\= 0,
       NewD is D + 2,
       is_prime_(X, NewD))
    ; true).
