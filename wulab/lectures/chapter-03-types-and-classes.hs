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
