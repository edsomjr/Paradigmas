Object subclass: Math [

    Math class >> fib: n [
        | a b |
        a := 0 .
        b := 1 .
        n timesRepeat: [ | c | c := a + b . a := b . b := c ] .
        ^a
    ]
]

(Math fib: 1) printNl .
(Math fib: 2) printNl .
(Math fib: 3) printNl .
(Math fib: 4) printNl .
(Math fib: 5) printNl .
(Math fib: 100) printNl
