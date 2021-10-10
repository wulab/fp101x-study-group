-- The library function init, which removes the last element from a non-empty list, 
-- can be defined in terms of the library functions introduced in this chapter. Choose all possible definitions.

init :: [a] -> [a]
init xs = reverse (tail (reverse xs))
