(a,b) .+ (c,d) = (a + c, b + d)

-- Partial operator usage
plusIdentity = (.+) (0,0)
plusIdentity' = (.+(0,0))
plusIdentity'' = ((0,0).+) 
