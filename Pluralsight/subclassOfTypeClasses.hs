-- all Ord must also be Eq as without equality you can't
--  really implement ord

class (Eq a) => Ord' a where
    (<)     :: a -> a -> Bool
    (>)     :: a -> a -> Bool
    (<=)    :: a -> a -> Bool
    (>=)    :: a -> a -> Bool
    compare :: a -> a -> Ordering
    max     :: a -> a -> a
    min     :: a -> a -> a