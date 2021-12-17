{-
Choose all options that implement the Prelude function

all :: (a -> Bool) -> [a] -> Bool

taking into account only finite, non-partial input lists 
with non-bottom values and where the predicate p always 
returns either True, or False, but not bottom.
-}

{-
all p xs = and (map p xs)
all :: (a -> Bool) -> [a] -> Bool

all p xs = map p (and xs)
all :: (a -> Bool) -> [a] -> [Bool]

all p = and . map p
all :: (a -> Bool) -> [a] -> Bool

all p = not . any (not . p)
all :: (a -> Bool) -> [a] -> Bool
hint: any :: (a -> Bool) -> [a] -> Bool

all p = map p . and
all :: (Bool -> Bool) -> [a] -> [Bool]

all p xs = foldl (&&) True (map p xs)
all :: (a -> Bool) -> [a] -> Bool

all p xs = foldr (&&) False (map p xs)
all :: (a -> Bool) -> [a] -> Bool
hint: foldr (&&) False always return false with every list.

all p = foldr (&&) True . map p
all :: (a -> Bool) -> [a] -> Bool
-}