polygon(triangle, 3).
polygon(square, 4).
polygon(rectangle, 4).
polygon(hexagon, 6).

:- op(100, 'xf', has_four_sides).

has_four_sides(X) :-
    polygon(X, 4).

% Exemplo de queries:
%
% ?- X has_four_sides.
% X = square ;
% X = rectangle.

% ?- triangle has_four_sides.
% false.

% ?- square has_four_sides.
% true .
