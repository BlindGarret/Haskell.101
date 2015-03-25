-- [List Comprehensions]
-- [ {output function} | {variable} <- {input}, {params predicates}..]

getEvens x = take x [y*2 | y <- [1..]]

getEveryOtherNumber x = take x [y | y <-[1..], y `mod` 2 /= 0]

getEveryOtherEven xs = [y*2 | y <- xs, y `mod` 2 /= 0]

boomBangs xs = [if x < 10 then "Boom!" else "Bang!" | x <- xs, odd x]

getEveryOddNotDivisibleByThreeOrFive xs = [y | y <- xs,
                                             odd y,
                                             y `mod` 3 /=0,
                                             y `mod` 5 /=0]

drawFromMultipleLists xs ys = [x * y | x <- xs, y <- ys]

-- _ represents us not caring what we draw. Maybe like writing to the linux void?
-- the constant in the output will just give us a list of 1's and sum will add those.
length' xs = sum [1 | _ <- xs]

--[Tuples]
-- Tuples seem just like c# tuples to me. Denoted by (x,y)

zipLists xs ys = zip xs ys
