pow2 n
    | n == 0    = 1
    | otherwise = 2 * (pow2 ( n - 1 ))

--still think this would be better with a list comprehension
removeOdd [] = []
removeOdd (x : xs)
    | x `mod` 2 == 0    = x : (removeOdd xs)
    | otherwise         = (removeOdd xs)