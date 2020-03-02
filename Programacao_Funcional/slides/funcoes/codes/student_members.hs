type Name = String
type UID = Int
type Score = Double

data Student = Student Name UID Score deriving (Show)

-- O caractere _ é o wildcard e casa com qualquer padrão
studentName  (Student name  _    _    )  = name
studentUID   (Student _     uid  _    )  = uid
studentScore (Student _     _    score)  = score

-- Mais sobre o caractere $ no próximo slide
main = putStrLn $ "Nome: " ++ studentName s where
    s = Student "Fulano de Tal" 12345 8.7
