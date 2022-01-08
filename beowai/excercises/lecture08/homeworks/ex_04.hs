{-
Which of the following implementations defines a function 

interact' :: (String -> String) -> IO () 

that takes as its argument a function of type 

String -> String, 

and reads a line from the standard input, 
and passes it to this function, and then prints the resulting 
output followed by a newline on the standard output?
-}

{-
Ans.

interact' f = do input <- getLine'
                 putStrLn' (f input)
-}