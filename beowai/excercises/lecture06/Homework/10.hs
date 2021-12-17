{-
Choose the definition for the Prelude function 

uncurry :: (a -> b -> c) -> (a, b) -> c, 

that converts a function that takes its arguments 
one at a time into a function that takes its arguments as a pair. 
For this exercise assume that bottom does not exist.
-}

{-
Ans. Guess
Take a and b as function, then return a function which take a
parameter as tuple

uncurry f = \ (x, y) -> f x y
-}