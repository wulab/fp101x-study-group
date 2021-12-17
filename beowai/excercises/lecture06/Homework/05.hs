{-
Choose the option that implements the Prelude function

map :: (a -> b) -> [a] -> [b]

taking into account only finite, non-partial input lists with non-bottom values and where the mapping function does not return bottom.
-}

{-
use foldl because map starts from left to right

map f = foldl (\ x xs -> xs ++ [f x])
-}