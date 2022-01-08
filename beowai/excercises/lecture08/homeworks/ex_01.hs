{-
Which of the following implementations defines a function 

putStr' :: String -> IO () 

that takes a String as its parameter and writes it to 
the standard output?

Note: The helper function 

putChar :: Char -> IO () takes a character as its parameter 
and writes it to the standard output.
-}

{-
Ans.
putStr' [] = return ()
putStr' (x:xs) = putChar x >> putStr' xs
-}