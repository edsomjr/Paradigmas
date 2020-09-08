Object subclass: Math [
    Math class >> numDigits: x [
        | count n |
        count := 1 . 
        n := x quo: 10 .
        [ n > 0 ] whileTrue: [ count := count + 1 . n := n quo: 10 ] .
        ^count
    ]
]

(Math numDigits: 0) printNl .
(Math numDigits: 7) printNl .
(Math numDigits: 123) printNl .
(Math numDigits: 123456789) printNl
