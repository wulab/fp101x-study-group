ones = 1 : ones

smap _ [] []         = []
smap f (x:xs) (y:ys) = f x y : smap f xs ys
smap _ _ _           = error "list args are not the same size"

sadd = smap (+)

sscale xs c = map (* c) xs

integers = 1 : sadd ones integers

fibs = 0 : 1 : sadd fibs (tail fibs)

double = 1 : sscale double 2

primes = 2 : filter isPrime [3..]
  where
    isPrime n = iter primes
      where
        iter []            = False
        iter (x:xs)
          | x^2 > n        = True
          | n `mod` x == 0 = False
          | otherwise      = iter xs
