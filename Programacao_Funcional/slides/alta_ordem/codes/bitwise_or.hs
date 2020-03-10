import Data.Bits

bitwise_or :: Int -> Int -> Int
bitwise_or a b = a .|. b

main = print (x, y) where       -- saída: (3, 7)
    x = bitwise_or 1 2
    y = 3 `bitwise_or` 5
