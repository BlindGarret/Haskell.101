elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y : ys)
    | x == y    = True
    | otherwise = elem x ys

--Lets create a type to use this
data Rgb = Rgb Int Int Int

--instance of typeclass, though i already bumped into this
--      earlier when I was printing things... whoops.
instance Eq Rgb where
    (Rgb r1 g1 b1) == (Rgb r2 g2 b2) =
        (r1 == r2) && (g1 == g2) && (b1 == b2)

instance Show Rgb where
    show (Rgb r g b) = 
        "R:" ++ (show r) ++ " G:" ++ (show g) ++ " B:" ++ (show b)

--now a parameterized class
data Maybe' a = Nothing' | Just' a

instance (Eq a) => Eq (Maybe' a) where
    Nothing' == Nothing' = True
    Nothing' == (Just' _) = False
    (Just' _) == Nothing' = False
    (Just' x) == (Just' y) = x == y
     --Make sure you constrain a or the equality check fails.