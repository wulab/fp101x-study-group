{-
Which of the following expressions is equal to filter p (map f xs), 
for all finite, non-partial lists xs with no bottom values, 
and for all non-bottom f and p of the correct type:
-}

{-
Ans.
[f x | x <- xs, p (f x)]
-}