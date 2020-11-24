    list_to_facts([]).
    list_to_facts([H|T]):-
        assertz(fact(H)),
        list_to_facts(T).
