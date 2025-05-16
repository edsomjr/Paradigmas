dot_product xs ys = foldr step 0.0 (zip xs ys) where
    step (x, y) z = x*y + z

main = print $ dot_product xs ys where
    xs = [ 1.2, -0.8, 5.5, 3.7 ]
    ys = [ 2.8, 1.3, -4.9, 5.0 ]
