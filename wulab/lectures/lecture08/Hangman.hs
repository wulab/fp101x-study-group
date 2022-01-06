import System.IO

hangman :: IO ()
hangman = do putStrLn "Think of a word: "
             word <- sgetLine
             putStrLn "Try to guess it: "
             guess word

-- Read a line of text from the keyboard,
-- echo each character as a dash
sgetLine :: IO String
sgetLine = do x <- getCh
              if x == '\n' then
                do putChar x
                   return []
              else
                do putChar '_'
                   xs <- sgetLine
                   return (x:xs)

-- Reads a single character from the keyboard,
-- without echoing it to the screen
getCh :: IO Char
getCh = do hSetEcho stdin False
           c <- getChar
           hSetEcho stdin True
           return c

-- main loop
-- requests and process guesses until the game end
guess :: String -> IO ()
guess word = do putStr "> "
                xs <- getLine
                if xs == word then
                  putStrLn "You got it!"
                else
                  do putStrLn (diff word xs)
                     guess word

-- indicates which characters in one string
-- occur in a second string
--
--   > diff "haskell" "pascal"
--   "_as__ll"
--
diff :: String -> String -> String
diff xs ys = [if elem x ys then x else '_' | x <- xs]
