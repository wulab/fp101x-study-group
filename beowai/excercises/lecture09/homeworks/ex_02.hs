{-
Select all possible total and terminating implementations of an addition function 

add :: Nat -> Nat -> Nat 

that adds two non-bottom, non-partial, finite natural numbers m and n, such that 

natToInteger (add m n) = natToInteger m + natToInteger n.

module Main (main) where
import Data.List
import Data.Char
import Hugs.IOExts (unsafeCoerce)

data Nat = Zero
        | Succ Nat
        deriving Show
-}

{-
add Zero n = n
add (Succ m) n = Succ (add n m)

add (Succ m) n = Succ (add n m)
add Zero n = n

add n Zero = n
add n (Succ m) = Succ (add m n)

add n (Succ m) = Succ (add m n)
add n Zero = n
-}