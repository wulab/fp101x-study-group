{- Exercise 9

What is the type of the following function:

  palindrome xs = reverse xs == xs

-}

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs
