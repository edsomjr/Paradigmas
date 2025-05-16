-- Verifica se a lista está vazia
sumList [] = 0

-- Verifica se a lista é composta pela concatenação do elemento x
-- com a sublista xs. Usar uma letra seguida de um s é uma convenção
-- de nomenclatura para listas, onde xs significa: 'uma lista de
-- (vários) elementos x', com sentido de plural
sumList (x:xs) = x + sumList xs

main = print p where
    p = sumList [1..100]
