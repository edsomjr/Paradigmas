" Este código pode ser executado via terminal:
"   
"   $ gst polimorfismo.st
"
Object subclass: Printer [

    Printer class >> print: x [
        Transcript show: '++ ', x printString; cr
    ]

]

FileStream fileIn: 'polygonclass.st' .
FileStream fileIn: 'square.st' .
FileStream fileIn: 'rectangle.st' .
p := Polygon new: 5 .
s := Square sideLen: 3 .
r := Rect base: 1 height: 2 .
Printer print: p .
Printer print: s .
Printer print: r
