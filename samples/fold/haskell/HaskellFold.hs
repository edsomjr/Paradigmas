module HaskellFold where


help :: String
help = "Help"


version :: String
version = "\
\fold (GNU coreutils) 8.30\n\
\Copyright (C) 2018 Free Software Foundation, Inc.\n\
\License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\n\
\This is free software: you are free to change and redistribute it.\n\
\There is NO WARRANTY, to the extent permitted by law.\n\n\
\Written by David MacKenzie."


invalidOption :: String -> String
invalidOption opt = "\
\fold: invalid option -- " ++ opt ++ "\n\
\Try 'fold --help' for more information."
