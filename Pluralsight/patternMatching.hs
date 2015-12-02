fst' (a,b) = a

--Somthing that looks like (a,b) return a

null' [] = True
null' (x : xs) = False

head' (x : xs) = x

-- a better form of double without using head (which can crash)
double [] = []
double (x : xs) = (2 * x) : (double xs)