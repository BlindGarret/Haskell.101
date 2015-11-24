-- [List Manipulations]
stringsAreLists = "hello" == ['h','e','l','l','o']

-- this is O(n) i think, try to avoid it on large lists.
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
