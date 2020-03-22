module Demo where

-- naive
-- seqA :: Integer -> Integer
-- seqA 0 = 1
-- seqA 1 = 2
-- seqA 2 = 3
-- seqA n = let
--         x = seqA (n - 1)
--         y = seqA (n - 2)
--         z = seqA (n - 3)
--     in x + y - 2 * z

seqA :: Integer -> Integer
seqA 0 = 1
seqA 1 = 2
seqA 2 = 3
seqA n =
    let next :: Integer -> Integer -> Integer -> Integer
        next x y z = x + y - 2 * z
        iter :: Integer -> Integer -> Integer -> Integer -> Integer
        iter x y z count
            | n == count = x
            | otherwise = iter (next x y z) x y (count + 1)
    in iter (next 3 2 1) 3 2 3

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = sumDigits 0 0 (abs x)
  where
    sumDigits 0   count 0   = (0, 1)
    sumDigits sum count 0   = (sum, count)
    sumDigits sum count num = sumDigits (sum + (rem num 10)) (count + 1) (div num 10)

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b =
    let n = 1000
        h = (b - a) / n
        x i = a + i * h
        estimate i = (f . x) i + (f . x) (i + 1)
        iter i acc
            | i == n = acc
            | otherwise = iter (i + 1) (acc + estimate i)
    in (iter 0 0) * h / 2
