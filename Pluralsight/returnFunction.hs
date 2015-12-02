dummyGetLine :: IO String
dummyGetLine = return "I'm not really doing anything"

main :: IO ()
main = do
    line <- dummyGetLine
    putStrLn line

-- better usecase example

promptInfo :: IO (String, String)
promptInfo = do
    putStrLn "What is your Name?"
    name <- getLine
    putStrLn "What is your favorite color?"
    color <- getLine
    return (name, color)

usePromptInfo :: IO ()
usePromptInfo = do
    (name, color) <- promptInfo
    putStrLn("Hello " ++ name)
    putStrLn("I like " ++ color ++ " too !")
