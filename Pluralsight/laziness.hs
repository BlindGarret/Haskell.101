getFib x y = (x + y) : (getFib y (x + y))
fibSet =  1 : (getFib 0 1)