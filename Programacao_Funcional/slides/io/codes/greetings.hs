import Data.Char

capitalize [] = []
capitalize (x:xs) = toUpper x : map toLower xs

formatted name = unwords $ map capitalize $ words name

-- A palavra reservada let permite chamar código puro em uma ação de I/O
main = do
    putStrLn "Insira seu nome: "
    name <- getLine
    let s = formatted name
    putStrLn $ "Bom dia, sr(a) " ++ s
