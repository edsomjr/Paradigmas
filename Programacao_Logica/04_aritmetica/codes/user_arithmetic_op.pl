% 1. Load the arithmetic library
:- use_module(library(arithmetic)).

% 2. Define the operator: precedence 500, infix (yfx type)
:- op(500, yfx, plus_two).

% 3. Declare the associated predicate as an arithmetic function
:- arithmetic_function(plus_two/2).

% 4. Define the predicate implementation: Result is the last argument
plus_two(A, B, C) :-
    C is A + B + 2.
