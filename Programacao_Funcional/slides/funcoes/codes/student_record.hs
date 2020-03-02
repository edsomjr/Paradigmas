    type Name = String
    type UID = Int
    type Score = Double

    data Student = Student {
        studentName  :: Name,
        studentUID   :: UID,
        studentScore :: Score
    } deriving (Show)
