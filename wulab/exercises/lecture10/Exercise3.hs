{- Exercise 3

Choose a correct implementation of the function split :: [a] ->
[([a],[a])] seen in the lecture, that returns all possible ways of
splitting a list into two non-empty lists that append to give the
original list.
-}

split :: [a] -> [([a], [a])]
split [] = []
split xs = [splitAt n xs | n <- [1..m]]
  where
    m = length xs - 1
