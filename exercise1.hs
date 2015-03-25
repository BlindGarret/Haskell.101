--[Exercise]
-- Generate a list of all triangles with Integer sides
-- of smaller than 10 with all sides equaling 24

getTriangles maxSideSize sidesSum =
        [(x,y,z) |
            x <- [1..maxSideSize],
            y <- [1..maxSideSize],
            z <- [1..maxSideSize],
            sum [x,y,z] == sidesSum]

-- limit that to right triangles
-- duplication of code as I don't know how to disassemble a triple yet.
getRightTriangles maxSideSize sidesSum =
        [(x,y,z) |
            x <- [1..maxSideSize],
            y <- [1..maxSideSize],
            z <- [1..maxSideSize],
            sum [x,y,z] == sidesSum,
            x^2 + y^2 == z^2]

