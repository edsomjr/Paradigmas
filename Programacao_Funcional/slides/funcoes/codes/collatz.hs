-- Este arquivo pode ser importado no GHCi com o comando :load
--
--      ghci> :load collatz.hs
--
-- Após a importação a função collatz estará disponível para uso


-- Sequência de Collatz: c(1) = 1, c(n) = n/2, se n é par,
-- c(n) = 3*n + 1, se n é ímpar
collatz n = n : if n == 1 
                then [] 
                else if even n 
                     then collatz (div n 2)
                     else collatz (3*n + 1)
