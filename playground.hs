-- [Simple math]
doubleMe x = x + x

-- [Function used inside another function]
doubleUs x y = doubleMe x + doubleMe y

-- [If Statement usage]
findSmallerNumber x y = if x < y
                            then x
                            else y

findLargerNumber x y = if x > y
                            then x
                            else y

-- [Nested Functions ]
doubleSmallerNumber x y = doubleMe (findSmallerNumber x y)

doubleLargerNumber x y = doubleMe $ findLargerNumber x y

-- [List Manipulations]
stringsAreLists = "hello" == ['h','e','l','l','o']

-- this is N(1) i think, try to avoid it on large lists.
listAppend x y = x ++ y

--this appears to be instant? better if you don't care about order.
charToListPrepend x y = x : y

--doesn't work... foreach is not a thing, don't know how to do this yet.
listToListPrepend x y = x : y

getListHead x = head x

getListTail x = tail x

getListLast x = last x

getListInit x = init x

getListLength x = length x

getListIsNull x = null x

getReverseList x = reverse x

getThirdCharacter x = if length x < 3
                            then []
                            else x !! 2 : []

getFirstThreeCharacters x = take 3 x

getListContains x y = elem x y

-- [Ranges]

getCharRange = ['a'..'z']

getSteppedRange = [0,2..10]

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

--[Exercise]
-- Generate a list of all triangles with Integer sides
-- of smaller than 10 with all sides equaling 24

getTriangles maxSideSize sidesSum =
        [(x,y,z) |
            x <- [1..maxSideSize],
            y <- [1..maxSideSize],
            z <- [1..maxSideSize],
            sum [x,y,z] == sidesSum]

-- limit that to right triangles
-- duplication of code as I don't know how to disassemble a triple yet.
getRightTriangles maxSideSize sidesSum =
        [(x,y,z) |
            x <- [1..maxSideSize],
            y <- [1..maxSideSize],
            z <- [1..maxSideSize],
            sum [x,y,z] == sidesSum,
            x^2 + y^2 == z^2]

