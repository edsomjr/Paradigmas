Polygon class extend [
    new: n [
        | r |
        r := super new . r init: n . ^r
    ]
]

Polygon extend [
    init: n [
        sides := n
    ]

    sides [
        ^sides
    ]
]
