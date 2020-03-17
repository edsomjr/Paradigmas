    accumulate [1..3] = foldl (+) 0 [1..3]
                      == foldr step id [1..3] 0
                      == foldr step id [1..3] 0
                      == step 1 (foldr step id [2..3]) 0
                      == step 1 (step 2 (foldr step id [3..3])) 0
                      == step 1 (step 2 (step 3 (foldr step id []))) 0
                      == step 1 (step 2 (step 3 id)) 0
                      == step 2 (step 3 id) (+ 0 1)
                      == step 3 id (+ (+ 0 1) 2)
                      == id (+ (+ (+ 0 1) 2) 3)
                      == (+ (+ (+ 0 1) 2) 3)
                      == (((0 + 1) + 2) + 3)
