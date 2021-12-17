-- Choose the correct definition for the function that selects the n th element of a list. We start counting at 0.

(!!) :: [a] -> Int -> a

(x:_) !! 0 = x
(_:xs) !! n = xs !! (n-1)
