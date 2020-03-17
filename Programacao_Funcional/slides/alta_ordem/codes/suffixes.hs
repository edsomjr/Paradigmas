    suffixes :: String -> [String]
    suffixes xs@(_:xs') = xs : suffixes xs'
    suffixes [] = []

    ghic> suffixes "Teste"
    ghic> ["Teste", "este", "ste", "te", "e"]
