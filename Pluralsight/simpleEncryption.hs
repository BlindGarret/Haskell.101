encrypt :: Char -> Char
encrypt c
    | 'A' <= c && c < 'Z' = toEnum (fromEnum c + 1)
    | c == 'Z' = 'A'
    | 'a' <= c && c < 'z' = toEnum (fromEnum c + 1)
    | c == 'z' = 'a'
    | otherwise = c

main :: IO ()
main = do
    interact (map encrypt)