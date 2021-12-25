{- Exercise 4

Choose the option that implements the Prelude function

  dropWhile :: (a -> Bool) -> [a] -> [a]

taking into account only finite, non-partial input lists with non-bottom values and where the predicate p always returns either True, or False, but not bottom.
-}

import Prelude hiding (dropWhile)

dropWhile _ [] = []
dropWhile p (x:xs) | p x       = dropWhile p xs
                   | otherwise = x : xs
