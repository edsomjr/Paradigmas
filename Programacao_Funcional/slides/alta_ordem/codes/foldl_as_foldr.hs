    accumulate [1..3] = foldl (+) 0 [1..3]
                      == foldr step id [1..3] 0
                      == foldr step id [1..3] 0
                      == step 1 (
 
