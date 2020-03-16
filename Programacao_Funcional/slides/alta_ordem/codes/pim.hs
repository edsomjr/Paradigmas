    pim n m = map (\x -> if mod x m == 0 then "Pim" else show x) [1..n]

    main = putStr $ unlines $ pim 10 3
