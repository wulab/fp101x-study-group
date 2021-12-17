-- Choose the correct definition for the function that concatenates a list of lists:

concat :: [[a]] -> [a]

concat [] = []
conat (xs:xss) = xs ++ concat xss