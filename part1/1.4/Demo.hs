module Demo where

import Data.Char

discount :: Double -> Double -> Double -> Double
discount limit proc sum = if sum >= limit then sum * (100 - proc) / 100 else sum

standardDiscount :: Double -> Double
standardDiscount = discount 1000 5

test = isDigit '7'

twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y
    | isDigit x && isDigit y = (digitToInt x * 10) + (digitToInt y)
    | otherwise = 100

dist :: (Double, Double) -> (Double, Double) -> Double
dist (x0, y0) (x1, y1) =
    sqrt (((x0 - x1) ^ 2) + ((y0 - y1) ^ 2))

-- alternative
-- dist :: (Double, Double) -> (Double, Double) -> Double
-- dist (x0, y0) (x1, y1) =
--     sqrt . sum . map (^2) $ [x0 - x1, y0 - y1]
