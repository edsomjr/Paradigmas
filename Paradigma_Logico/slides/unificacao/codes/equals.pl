    ?- a = a.
    true.

    ?- a = b.
    false.

    ?- p(a, b) = p(a, b).
    true

    ?- p(a, b) = p(a, c).
    false.

    ?- x(y, z(i, j)) = x(y, z(i, j)).
    true.

    ?- x(y, z(i, j)) = x(y, z(j, i)).
    false.
