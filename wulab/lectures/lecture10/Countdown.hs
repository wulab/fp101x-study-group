import Exercise0
import Exercise3

data Op = Add
        | Sub
        | Mul
        | Div
        deriving Show

-- Apply an operator
apply :: Op -> Int -> Int -> Int
apply Add x y = x + y
apply Sub x y = x - y
apply Mul x y = x * y
apply Div x y = x `div` y

-- All the numbers, including intermediate results,
-- must be positive numbers.
valid :: Op -> Int -> Int -> Bool
valid Add _ _ = True
valid Sub x y = x > y
valid Mul _ _ = True
valid Div x y = x `mod` y == 0

data Expr = Val Int
          | App Op Expr Expr
          deriving Show

-- Return the overall value of an expression.
eval :: Expr -> [Int]
eval (Val n)      = [n | n > 0]
eval (App op x y) = [apply op x' y' | x' <- eval x
                                    , y' <- eval y
                                    , valid op x' y'
                                    ]

-- Return a list of all the values in an expression.
values :: Expr -> [Int]
values (Val n)     = [n]
values (App _ l r) = values l ++ values r

-- Decide if an expression is a solution for a given list of
-- source numbers and a target number.
solution :: Expr -> [Int] -> Int -> Bool
solution e ns n = elem (values e) (choices ns)
                  && eval e == [n]

-- Return a list of all possible expressions whose values are
-- precisely a given list of numbers.
exprs :: [Int] -> [Expr]
exprs []  = []
exprs [n] = [Val n]
exprs ns  = [e | (ls, rs) <- split ns
               , l        <- exprs ls
               , r        <- exprs rs
               , e        <- combine l r
               ]

-- Combine two expressions using each operator.
combine :: Expr -> Expr -> [Expr]
combine x y = [App op x y | op <- [Add, Sub, Mul, Div]]

-- Return a list of all possible expressions that solve an instance of
-- the countdown problem.
solutions :: [Int] -> Int -> [Expr]
solutions ns n = [e | ns' <- choices ns
                    , e   <- exprs ns'
                    , eval e == [n]
                    ]
