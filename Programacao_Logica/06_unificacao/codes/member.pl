member_(H, [H|_]).
member_(X, [_|T]) :- member_(X, T).
