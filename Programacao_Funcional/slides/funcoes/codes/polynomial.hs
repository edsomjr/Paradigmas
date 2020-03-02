-- p(x) = c
roots 0 0 c = []

-- p(x) = bx + c
roots 0 b c = [-c/b]

-- p(x) = ax^2 + bx + c
roots a b c = if delta >= 0
              then [(-b + sqrt delta)/(2*a), (-b - sqrt delta)/(2*a)]
              else []
              where delta = b^2 - 4*a*c

main = print $ roots 1 (-5) 6
