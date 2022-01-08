{-
Choose all possible implementations of the function 

sequence_' :: Monad m => [m a] -> m () 

that takes a finite, non-partial, list of non-bottom, 
monadic values, and evaluates them in sequence, 
from left to right, ignoring all (intermediate) results?

Hint: Make sure you type in all these definitions in Hugs 
and play around with a variety of possible input.
-}

{-
Ans.
sequence_' [] = return []
sequence_' (m:ms) = m >> \ _ -> sequence_' ms
error


-}