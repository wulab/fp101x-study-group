import Exercise0
import Exercise3
import CountdownV1 hiding (valid, combine, solutions)
import CountdownV2

-- Strengthening the valid predicate to take account of
-- commutativity and identity properties.
valid :: Op -> Int -> Int -> Bool
valid Add x y = x <= y
valid Sub x y = x > y
valid Mul x y = x <= y && x /= 1 && y /= 1
valid Div x y = x `mod` y == 0 && y /= 1
