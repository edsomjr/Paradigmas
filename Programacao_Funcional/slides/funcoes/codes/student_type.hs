    -- Sinônimos para os campos
    type Name = String
    type UID = Int
    type Score = Double

    -- Mesmo tipo anterior, porém com nomes de campos mais descritivos
    data Student = Student Name UID Score deriving (Show)
