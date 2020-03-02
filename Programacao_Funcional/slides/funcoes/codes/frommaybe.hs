-- Esta função está disponível na biblioteca Prelude
-- Ela extrai o valor contido no tipo Maybe (wrapped),
-- ou retorna defval, em caso Nothing
fromMaybe defval wrapped =
    case wrapped of
        Nothing     -> defval
        Just value  -> value
