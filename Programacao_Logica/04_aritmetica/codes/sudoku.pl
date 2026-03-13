% Determina se A, B, C, D constituem uma permutação de 1, 2, 3, 4
permutation(A, B, C, D) :-
    between(1, 4, A), between(1, 4, B),
    between(1, 4, C), between(1, 4, D),
    A =\= B, A =\= C, A =\= D,
    B =\= C, B =\= D, C =\= D.

% Resolve um Sudoku 4x4
sudoku(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) :-
    permutation(A, B, C, D), permutation(E, F, G, H),
    permutation(I, J, K, L), permutation(M, N, O, P),
    permutation(A, E, I, M), permutation(B, F, J, N),
    permutation(C, G, K, O), permutation(D, H, L, P),
    permutation(A, B, E, F), permutation(I, J, M, N),
    permutation(C, D, G, H), permutation(K, L, O, P).

% Rotina auxiliar de impressão do tabuleiro
pvar(X) :- integer(X) -> write(X) ; write('.').

% Imprime um tabuleiro de Sudoku 4x4
print_sudoku(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) :-
    pvar(A), tab(1), pvar(B), write(' | '), pvar(C), tab(1), pvar(D), nl,
    pvar(E), tab(1), pvar(F), write(' | '), pvar(G), tab(1), pvar(H), nl,
    writeln('----|----'),
    pvar(I), tab(1), pvar(J), write(' | '), pvar(K), tab(1), pvar(L), nl,
    pvar(M), tab(1), pvar(N), write(' | '), pvar(O), tab(1), pvar(P), nl.

% Resolve o problema aberto, sem nenhuma restrição
solve_open :-
    sudoku(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P),
    print_sudoku(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P).

% Resolve um problema particular, com restrições
solve_constrained :-
    writeln('Problem:'),
    print_sudoku(A, 2, C, D, 3, F, G, H, 1, J, K, 4, M, N, O, P),
    nl, writeln('Solution:'),
    sudoku(A, 2, C, D, 3, F, G, H, 1, J, K, 4, M, N, O, P),
    print_sudoku(A, 2, C, D, 3, F, G, H, 1, J, K, 4, M, N, O, P).
