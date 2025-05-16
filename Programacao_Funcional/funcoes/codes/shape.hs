    type Radius = Double
    type Base = Double
    type Heigth = Double

    data Shape = Circle Radius
               | Triangle Base Heigth deriving (Eq, Show)
