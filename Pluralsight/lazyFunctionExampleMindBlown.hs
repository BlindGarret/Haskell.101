--interact takes a string and returns
--  a string lazily as lines are entered

reverseLines :: String -> String
reverseLines input = unlines ( map reverse (lines input))

main :: IO ()
main = interact reverseLines

--Here's my understanding of whats happening...
--interact takes a string input which in this case is the entire
--  string being entered into the IO including new lines, and 
--  prints the output of a function which it passes this string to
--  lazily, meaning it will complete a little bit of work whenever it
--  can. Read that as every new line in this case.

--We take this input and split it into lines using the lines function.
--We then map a reverse to the string, reversing each string.
--We then concat the lines back into a single string.

--This, when lazily evaluated, looks like I have a loop set up which
-- is taking each of my inputs and returning the reverse, when it is
-- actually turning my input into an ideterminately sized string and
-- interjecting a part of the solution whenever the program has enough
-- information to do so..... WOW.