import Prelude hiding (getLine, putStr, putStrLn)

a :: IO (Char, Char)
a = do x <- getChar
       getChar  -- ignore newline
       y <- getChar
       getChar  -- ignore newline
       return (x, y)

-- Read a string from the keyboard
getLine :: IO String
getLine = do x <- getChar
             if x == '\n' then
               return []
             else
               do xs <- getLine
                  return (x:xs)

-- Write a string to the screen
putStr :: String -> IO ()
putStr [] = return ()
putStr (x:xs) = do putChar x
                   putStr xs

-- Write a string and move to a new line
putStrLn :: String -> IO ()
putStrLn xs = do putStr xs
                 putChar '\n'

strlen :: IO ()
strlen = do putStr "Enter a string: "
            xs <- getLine
            putStr "The string has "
            putStr (show (length xs))
            putStrLn " characters"
