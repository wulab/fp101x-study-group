primes :: [Integer]
primes = sieve [2..]

sieve :: [Integer] -> [Integer]
sieve []     = []
sieve (x:xs) = x : sieve [n | n <- xs, n `mod` x /= 0]

primes' :: [Integer]
primes' = sieve' [2..]

sieve' :: [Integer] -> [Integer]
sieve' []     = []
sieve' (x:xs) = x : sieve' (filter (\n -> n `mod` x /= 0) xs)
