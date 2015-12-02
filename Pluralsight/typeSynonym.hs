type Point2D = (Double, Double)

--good to implement semantic meaning, doesn't really change code

midPoint :: Point2D -> Point2D -> Point2D
midPoint (x1, y1) (x2, y2) = ((x1 + x2) / 2, (y1 + y2) / 2)