import Data.Char

capitalize [] = []
capitalize (x:xs) = cap x : capitalize xs where
    cap [] = []
    cap (y:ys) = toUpper y : lower ys
    lower [] = []
    lower (z:zs) = toLower z : lower zs

main = putStr $ unlines $ capitalize xs where
    xs = ["abc", "XYZ", "Teste", "iPod"]
