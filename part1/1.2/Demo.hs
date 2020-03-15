sumSquares x y = x ^ 2 + y ^ 2

rock'n'roll = 42

lenVec3 x y z =
    sqrt (x ^ 2 + y ^ 2 + z ^ 2)

f x = if x > 0 then 1 else (-1)
g x = (if x > 0 then 1 else (-1)) + 3

sign x =
    if x == 0
    then 0
    else if x > 0
         then 1
         else (-1)

-- alternative
-- sign 0 = 0
-- sign x
--      | x < 0 = (-1)
--      | otherwise = 1

max5' = max 5

discount limit percent sum =
    if sum >= limit
    then sum * (100 - percent) / 100
    else sum

standardDiscount =
    discount 1000 5
