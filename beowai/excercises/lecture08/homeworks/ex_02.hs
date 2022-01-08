{-
Choose all possible implementations for a function 

putStrLn' :: String -> IO () 

that takes a String parameter and writes it to the 
standard output, followed by a newline character.

Assume "fast and loose" reasoning where there are 
no bottoms involved, and all functions are total, 
and all values are finite.
-}

{-
HINTS

putChar '\n' = putStrLn "" = putStr "\n"
-}

{-
Ans.
putStrLn' [] = putChar '\n'
putStrLn' xs = putStr' xs >> putStrLn' ""
Yes

putStrLn' [] = putChar 'n'
putStrLn' xs = putStr' xs >> putChar '\n'
Yes

putStrLn' [] = putChar '\n'
putStrLn' xs = putStr' xs >>= \ x -> putChar '\n'
Yes

putStrLn' [] = putChar '\n'
putStrLn' xs = putStr' xs >> \ x -> putChar '\n'
No : error on >> \ x -> putChar '\n'

putStrLn' [] = putChar '\n'
putStrLn' xs = putStr' xs >> putStr' "\n"
Yes

putStrLn' [] = putChar '\n'
putStrLn' xs = putStr' xs >> putStrLn' "\n"
No : putStrLn' "\n" prints double new lines

putStrLn' [] = return ""
putStrLn' xs = putStrLn' xs >> putStr' "\n"
No : return "" prints ""

putStrLn' [] = putChar "\n"
putStrLn' xs = putStr' xs >> putChar '\n'
No : putChar "\n" error
-}