{-
Select all possible total and terminating implementations of a conversion function 

natToInteger :: Nat -> Integer 

that converts any non-bottom, non-partial, finite natural number (note: 0 is a natural number according to this definition), into the corresponding Integer value.

module Main (main) where
import Data.List
import Data.Char
import Hugs.IOExts (unsafeCoerce)
-}

{-
natToInteger Zero = 0
natToInteger (Succ n) = natToInteger n + 1

natToInteger Zero = 0
natToInteger (Succ n) = 1 + natToInteger n

natToInteger (Succ n) = 1 + natToInteger n
natToInteger Zero = 0

natToInteger = head . m
    where   m Zero = [0]
            m (Succ n) = [sum [x | x <- (1 : m n)]]

genericLength :: Integral a => [b] -> a
length :: [a] -> Int

natToInteger :: Nat -> Integer
natToInteger = \ n -> genericLength [c | c <- show n, c == 'S']

-}