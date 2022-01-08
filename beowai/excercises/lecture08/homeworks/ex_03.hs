{-
Which of the following implementation defines a function 

getLine' :: IO String 

that reads a line, up to the first \n character, 
from the standard input?

Note: The helper function 

getChar :: IO Char 

reads a single character from the standard input.
-}

{-
Ans.

getLine' = get []

get :: String -> IO String
get xs
    = do x <- getChar
        case x of
            'n' -> return xs
            _ -> get (xs ++ [x])
-}