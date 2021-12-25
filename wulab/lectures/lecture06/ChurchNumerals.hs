type Church a = (a -> a) -> a -> a

zero, one, two, three :: Church a

zero  = \s z -> z
one   = \s z -> s z
two   = \s -> s . s
three = \s -> s . s . s

-- two = \s z -> s (s z)
--     = \s z -> (s . s) z
--     = \s   -> s . s

-- Church to Int
c2i :: Church Int -> Int
c2i x = x (+1) 0

-- Church to String
c2s :: Church String  -> String
c2s x = x ('*':) ""

add :: Church a -> Church a -> Church a
add x y = \s z -> x s (y s z)

mul :: Church a -> Church a -> Church a
mul x y = x . y

-- http://www.cs.ox.ac.uk/ralf.hinze/publications/Church.pdf
