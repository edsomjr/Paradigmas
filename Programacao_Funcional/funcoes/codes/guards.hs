-- p(x) = c
roots 0 0 c = []

-- p(x) = bx + c
roots 0 b c = [-c/b]

-- p(x) = ax^2 + bx + c
roots a b c | D == 0 = [-b/(2*a)]
            | D > 0  = [(-b + s)/(2*a), (-b - s)/(2*a)]
            | otherwise  = []
            where D = b^2 - 4*a*c
                  s = sqrt D

main = print $ roots 1 (-5) 6
