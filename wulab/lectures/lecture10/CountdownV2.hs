module CountdownV2 where

import Exercise0
import Exercise3
import CountdownV1 hiding (combine, solutions)

type Result = (Expr, Int)

-- Fuse together the generation and evaluation of expressions.
result :: [Int] -> [Result]
result ns = [(e, n) | e <- exprs ns, n <- eval e]

results :: [Int] -> [Result]
results []  = []
results [n] = [(Val n, n) | n > 0]
results ns  = [res | (xs, ys) <- split ns
                   , x        <- results xs
                   , y        <- results ys
                   , res      <- combine x y
                   ]

combine :: Result -> Result -> [Result]
combine (x, m) (y, n) = [ (App op x y, apply op m n)
                        | op <- [Add, Sub, Mul, Div]
                        , valid op m n
                        ]

-- New function that solves the countdown problem.
solutions :: [Int] -> Int -> [Expr]
solutions ns n = [e | ns'    <- choices ns
                    , (e, m) <- results ns'
                    , m == n
                    ]
