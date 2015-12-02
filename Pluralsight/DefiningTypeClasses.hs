data Point2d = Point2d Double Double

class Measurable a where
    distance :: a -> a -> Double

instance Measurable Point2d where
    distance (Point2d x1 y1) (Point2d x2 y2) =
        sqrt (dx * dx + dy * dy)
        where   dx = x1 - x2
                dy = y1 - y2

instance Measurable Double where
    distance x y = abs (x - y)

--polymorphic pathLength function which will call 
-- appropriate instance for type

pathLength :: Measurable a => [a] -> Double
pathLength [] = 0
pathLength (_ : []) = 0
pathLength (p0 : p1: ps) = distance p0 p1 + pathLength (p1 : ps)