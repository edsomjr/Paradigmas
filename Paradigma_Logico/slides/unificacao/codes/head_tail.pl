    ?- [H|T] = [1, 2, 3, 4, 5].
    H = 1,
    T = [2, 3, 4, 5].

    ?- [H|T] = [1].
    H = 1,
    T = [].

    ?- [H|T] = [].
    false.