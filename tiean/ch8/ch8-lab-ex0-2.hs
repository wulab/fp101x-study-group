triangle :: Integer -> Integer
triangle 0 = 0
triangle n = n + triangle (n -1)

-- Ex1 => bottom
-- Ex2 => Doesn't type check
