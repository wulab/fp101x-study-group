{- Exercise 3

Choose the option that implements the Prelude function

  takeWhile :: (a -> Bool) -> [a] -> [a]

taking into account only finite, non-partial input lists with non-bottom values and where the predicate p always returns either True, or False, but not bottom.
-}

import Prelude hiding (takeWhile)

takeWhile _ [] = []
takeWhile p (x:xs) | p x       = x : takeWhile p xs
                   | otherwise = []
