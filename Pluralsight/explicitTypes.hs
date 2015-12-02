str :: [Char]
str = "hello"

foo :: Int -> Int
foo x = 2 * x + 1

foo3 :: Int -> Int -> Int -> Int
foo3 x y z = 2 * x + y + z

--x = show . read  wont work, it doesn't know what types are coming in
--x y = show (read y) still errs as this is an odd case 
--                      where it's unsure what read's return
--                      value will be
x :: String -> String
x  y = show (read y :: Int)