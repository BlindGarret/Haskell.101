main :: IO ()
main = do
    line <- getLine
    putStrLn ("You said: " ++ line)

greetOnce :: IO ()
greetOnce = do
    putStrLn "Who are you?"
    who <- getLine
    putStrLn ("Hello " ++ who)

greet :: IO ()
greet = do
    greetOnce
    greet