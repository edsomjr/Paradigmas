data Student = Student String Int

aprovados [] = []
aprovados (x:xs) | score >= 5  = name : aprovados xs
                 | otherwise   = aprovados xs
                 where (Student name score) = x

main = putStr $ unlines $ aprovados xs where
    xs = [ Student "Ana" 8, Student "Beto" 3, Student "Carlos" 5,
           Student "Daniel" 4, Student "Edgar" 7 ]
