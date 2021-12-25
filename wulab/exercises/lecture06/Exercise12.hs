{- Exercise 12

Following the previous question, choose an implementation of map :: (a
-> b) -> [a] -> [b] using unfold.

Taking into account only finite, non-partial input lists with
non-bottom values, and where the mapping function does not return
bottom.
-}

unfold p h t x
  | p x = []
  | otherwise = h x : unfold p h t (t x)

map' f = unfold null (f . head) tail
