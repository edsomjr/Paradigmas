-- Lê uma string do console e a imprime, sem modificações
-- O operador $ coloca tudo o que se segue entre parêntesis
main = do
    putStrLn "Insira uma string: "
    s <- getLine
    putStrLn $ "A string inserida foi '" ++ s ++ "'"
