Object subclass: Math [

    Math class >> inverses: xs [
        | i is |
        i := 1 .
        is := OrderedCollection new .
        [
            [i <= (1 + xs size)] whileTrue:
                [ is addLast: 1 / (xs at: i) . i := i + 1 ]
        ] on: ZeroDivide, SystemExceptions.IndexOutOfRange do:
            [ :sig | is addLast: nil . i := i + 1 . sig retry ] .
        ^is
    ]

]

(Math inverses: #(-2 0 -1 0 1 0 2 0 3)) printNl
