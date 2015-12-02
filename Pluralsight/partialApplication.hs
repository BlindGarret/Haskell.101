foo x y z = x + y + z
partialFoo = foo 1 2

-- this creates a new function taking a 
--      single input and putting it in the Z slot