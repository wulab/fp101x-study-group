{- Exercise 11

Consider the following higher-order function unfold :: (b -> Bool) ->
(b -> a) -> (b -> b) -> b -> [a] that encapsulates a simple pattern of
recursion for producing a list.

  unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)

The function unfold p h t x produces the empty list if the predicate p
x is True. Otherwise it produces a non-empty list by applying the
function h x to give the head of the generated list, and the function
t x to generate another seed that is recursively processed by unfold
to produce the tail of the generated list.

For example, the function int2bin, that converts a non-negative
integer into a binary number, with the least significant bit first,
can be defined as:

For example:

  type Bit = Int

  int2bin :: Int -> [Bit]
  int2bin 0 = []
  int2bin n = n `mod` 2 : int2bin (n `div` 2)

  > int2bin 13
  [1, 0, 1, 1]
  > int2bin (-0) -- Yes, 0 can be negative!
  []

This function can be rewritten more compactly using unfold as follows:

  int2bin = unfold (== 0) (`mod` 2) (`div` 2)

Next consider the function chop8 :: [Bit] -> [[Bit]] that takes a list
of bits and chops it into lists of at most eight bits (assuming the
list is finite, non-partial, and does not contain bottom):

  chop8 :: [Bit] -> [[Bit]]
  chop8 [] = []
  chop8 bits = take 8 bits : chop8 (drop 8 bits)

Choose an implementation of chop8 using unfold.
-}

unfold p h t x
  | p x = []
  | otherwise = h x : unfold p h t (t x)

chop8 = unfold null (take 8) (drop 8)
