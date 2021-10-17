{- type definition and its function
f :: Int
f = 0

f :: Int -> Int
f x = x + 1

f :: Int -> (Int -> Int)
f x = \y -> x + y

f :: (Int -> Int) -> Int
f x = x 1

f :: Int -> Int -> Int
f x y = x + y
-}

add :: (Int, Int) -> Int
add (x, y) = x + y

-- >>> add (1, 2)
-- 3

add' :: Int -> (Int -> Int)
add' x y = x + y

-- >>> add' 1
-- add' 1 :: Int -> Int
-- >>> add' 1 2
-- 3

mult :: Int -> (Int -> (Int -> Int))
mult x y z = z * y * z

-- >>> mult 1
-- mult 1 :: Int -> Int -> Int
-- >>> mult 1 2
-- mult 1 2 :: Int -> Int
-- >>> mult 1 2 3
-- 18
