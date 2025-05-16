-- Esta função está disponível na biblioteca Maybe.
-- Para utilizá-la sem precisar da implementação abaixo,
-- importe esta biblioteca com o comando
--
-- import Maybe
--
--
-- Ela extrai o valor contido no tipo Maybe (wrapped),
-- ou retorna defval, em caso Nothing
fromMaybe defval wrapped =
    case wrapped of
        Nothing     -> defval
        Just value  -> value
