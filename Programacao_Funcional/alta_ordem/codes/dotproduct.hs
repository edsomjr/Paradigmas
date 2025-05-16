dot_product [] [] = 0.0
dot_product (x:xs) (y:ys) = x*y + dot_product xs ys

main = print $ dot_product xs ys where
    xs = [ 1.2, -0.8, 5.5, 3.7 ]
    ys = [ 2.8, 1.3, -4.9, 5.0 ]
