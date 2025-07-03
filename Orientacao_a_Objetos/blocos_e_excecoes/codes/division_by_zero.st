Object subclass: Math [

    Math class >> harmonicMean: xs [
        | h |
        h := 0 .
        xs do: [ :x | h := h + (1 / x) ] .
        ^(1 / h)
    ] 
]

(Math harmonicMean: #(1 2 3)) printNl .
[ Math harmonicMean: #(0 1 2 3) ] on: ZeroDivide do:
    [ Transcript show: 'Média não definida' . Transcript cr ]
