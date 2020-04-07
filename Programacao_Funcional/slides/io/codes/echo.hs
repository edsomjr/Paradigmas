-- Lê uma string do console e a imprime, sem modificações
main = do
    putStrLn "Insira uma string: "
    s <- getLine
    putStrLn $ "A string inserida foi '" ++ s ++ "'"
