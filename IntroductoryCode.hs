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

-- [Ranges]

getCharRange = ['a'..'z']

getSteppedRange = [0,2..10]
