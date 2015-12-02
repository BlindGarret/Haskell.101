helloWorld = putStrLn "Hello World"

--this is the only method which will run during a compilation
main :: IO () 
main = do
    helloWorld
    helloWorld
    helloWorld

introduce :: String -> String -> IO ()
introduce name1 name2 = do
    putStrLn (name1 ++ ", this is " ++ name2)
    putStrLn (name2 ++ ", this is " ++ name1)

printIntro :: IO ()
printIntro = do
    introduce "Alice" "Bob"
    introduce "Alice" "Sally"