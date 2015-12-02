fancySeven =
    let a = 3
    in 2 * a + 1

fancyNine =
    let x = 4
        y = 5
    in x + y

removeOdd [] = []
removeOdd (x : xs)
    | x `mod` 2 == 0    = x : (removeOdd xs)
    | otherwise         = (removeOdd xs)

numEven nums =
    let evenNums = removeOdd nums
    in length evenNums