Object subclass: Point [
    | x y |

    Point class >> x: xcoord y: ycoord [
        | r |
        r := super new . r setX: xcoord setY: ycoord . ^r
    ]

    Point class >> new [
        | r |
        r := super new . r setX: 0 setY: 0 . ^r
    ]

    setX: xcoord setY: ycoord [ x := xcoord .  y := ycoord ]

    printOn: stream [
        super printOn: stream .  stream nextPutAll: ' at (' .
        x printOn: stream .  stream nextPutAll: ', ' .
        y printOn: stream .  stream nextPutAll: ')'
    ]
]

p := Point x: 1 y: 2 .
p printNl .
p := Point new .
p printNl .
