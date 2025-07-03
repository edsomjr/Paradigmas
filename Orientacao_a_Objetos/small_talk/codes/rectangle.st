Polygon subclass: Rect [
    | b h |

    Rect class >> base: B height: H  [
        | r |
        r := super new: 4 . r setBase: B setHeight: H . ^r
    ]

    setBase: base setHeight: height [
        b := base . h := height
    ]

    area [ ^(b * h) ]

    printOn: stream [
        stream nextPutAll: 'a Rect with base ' .
        b printOn: stream .
        stream nextPutAll: ' and height ' .
        h printOn: stream
    ]
]
