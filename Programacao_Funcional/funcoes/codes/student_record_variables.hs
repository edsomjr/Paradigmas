type Name = String
type UID = Int
type Score = Double

data Student = Student {
    studentName  :: Name,
    studentUID   :: UID,
    studentScore :: Score
} deriving (Show)

-- Definição de variável usando notação de registro
s = Student {
    studentName = "Fulano de Tal",
    studentUID = 12345,
    studentScore = 8.7
}

main = print $ studentScore s
