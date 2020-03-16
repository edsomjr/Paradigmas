-- Capitalização utilizando mapas
import Data.Char

capitalize xs = map cap xs where
    cap [] = []
    cap (y:ys) = toUpper y : map toLower ys
