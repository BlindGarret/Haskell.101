mySum :: Num a => [a] -> a
mySum [] = 0
mySum (x : xs) = x + sum xs

showSum :: (Num a, Show a) => [a] -> String
showSum x = show (sum x)