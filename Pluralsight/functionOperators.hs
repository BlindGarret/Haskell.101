-- . function composition operator
strLen :: String -> Int
strLen = length . show

strLen2 :: String -> String
strLen2 = show . length