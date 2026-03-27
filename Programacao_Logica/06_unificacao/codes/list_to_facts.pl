list_to_facts([]).
list_to_facts([H|T]) :-
    assertz(H),
    list_to_facts(T).
