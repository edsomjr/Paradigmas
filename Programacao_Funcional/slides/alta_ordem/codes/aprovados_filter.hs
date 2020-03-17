-- Lista de aprovados usando filtros
data Student = Student {
    studentName   :: String,
    studentScore  :: Int
}

aprovados xs = map studentName (filter f xs) where
    f x = studentScore x >= 5

main = putStr $ unlines $ aprovados xs where
    xs = [ Student "Ana" 8, Student "Beto" 3, Student "Carlos" 5,
           Student "Daniel" 4, Student "Edgar" 7 ]
