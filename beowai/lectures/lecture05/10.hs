-- Choose the correct definition for the function msort :: Ord a => [a] -> [a] that implements merge sort, in which the empty list and singleton lists are already sorted, and any other list is sorted by merging together the two lists that result from sorting the two halves of the list separately. The solutions can use the function merge from the previous exercise and the function halve that splits a list into two halves whose lengths differ by at most one.

halve : [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

msort [] = []
msort [x] = [x]
mosrt xs = merge (msort ys) (mosrt zs)
  where (ys, zs) = halve xs