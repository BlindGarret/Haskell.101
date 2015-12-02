x =[1,2,3]
empty = []
y = 0 : x -- [0,1,2,3]
x' = 1 : 2 : 3 : [] --same as x

--strings as lists of chars
--lists are homogeneous
--error = [1,"hello",3]

-- this is just a map
doubleAll nums = 
    if null nums
        then []
        else (2 * (head nums)) : (doubleAll (tail nums))
        --prepend the head and recurse on the tail

--this is just a list comprehension
removeOdd nums = 
    if null nums
        then []
        else
            if (head nums) `mod` 2 == 0
                then (head nums) : (removeOdd (tail nums))
                else removeOdd (tail nums)