{-
Choose the correct definition for the Prelude function 

curry :: ((a, b) -> c) -> a -> b -> c , 

that converts a function that takes its arguments as a pair 
into a function that takes its arguments one at a time. 
For this exercise assume that bottom does not exist.
-}

{-
Ans.

Take tuple as input

curry f = \ x y -> f (x,y)
-}