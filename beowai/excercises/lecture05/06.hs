-- Choose the correct definition for the function that produces a list with n identical elements:

replicate :: Int -> a -> [a]

replicate 0 _ = []
replicate n x = x : replicate (n-1) x