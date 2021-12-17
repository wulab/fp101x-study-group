{-
Following the previous question, choose an implementation of 

map :: (a -> b) -> [a] -> [b] 

using unfold.

taking into account only finite, non-partial input lists with 
non-bottom values, and where the mapping function does not 
return bottom.
-}

{-
Hint:
map f [] = []
map f (x:xs) = f x : map f xs

unfold p h t x 
    | p x = []
    | otherwise = h x : unfold p h t (t x)
-}

{-
Ans.

p = null
h = f . (head)
t = tail

what's the difference between f (head) and f . head
f (head) means ...
f . head means ...
-}