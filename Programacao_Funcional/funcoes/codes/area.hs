type Radius = Double
type Base = Double
type Heigth = Double

data Shape = Circle Radius
           | Triangle Base Heigth deriving (Eq, Show)

-- A função area() é definida para diferentes padrões de entrada
area (Circle r)     = pi * r ^ 2
area (Triangle b h) = (b * h) / 2

main = print (area x, area y) where
    x = Circle 2.0
    y = Triangle 3.0 4.0
