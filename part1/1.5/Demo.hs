module Demo where

factorial :: Integer -> Integer
factorial 0 = 1
factorial x
    | x > 0 = x * doubleFact (x - 1)
    | otherwise = error "x can't be negative"

doubleFact :: Integer -> Integer
doubleFact 0 = 1
doubleFact 1 = 1
doubleFact x
    | x > 0 = x * doubleFact (x - 2)
    | otherwise = error "x can't be negative"

-- fibonacci :: Integer -> Integer
-- fibonacci x
--     | x == 0    = 0
--     | x == 1    = 1
--     | x == (-1) = 1
--     | x > 0     = fibonacci (x - 1) + fibonacci (x - 2)
--     | x < 0     = fibonacci (x + 2) - fibonacci (x + 1)

fibonacci :: Integer -> Integer
fibonacci x = fibIterate 0 1 x

fibIterate :: Integer -> Integer -> Integer -> Integer
fibIterate a b 0 = a
fibIterate a b x
    | x > 0 = fibIterate b (b + a) (x - 1)
    | x < 0 = fibIterate (b - a) a (x + 1)
