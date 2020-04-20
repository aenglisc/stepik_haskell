module Demo where

import Data.List (transpose)

addTwoElements :: a -> a -> [a] -> [a]
addTwoElements first second list = first : second : list

nTimes:: a -> Int -> [a]
nTimes value count =
    let iterate acc 0 = acc
        iterate acc n = iterate (value : acc) (n - 1)
    in iterate [] count

oddsOnly [] = []
oddsOnly (x:xs)
   | odd x     = x : oddsOnly xs
   | otherwise =     oddsOnly xs

-- oddsOnly = filter odd

-- oddsOnly [] = []
-- oddsOnly xs = [x | x <- xs, odd x]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (h:t)
    | h == last t = isPalindrome . init $ t
    | otherwise = False

-- isPalindrome :: Eq a => [a] -> Bool
-- isPalindrome xs | xs == reverse xs = True
--                 | otherwise = False

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 l1 l2 l3 = map sum $ transpose [l1, l2, l3]

groupElems :: Eq a => [a] -> [[a]]
groupElems elements =
    let reducer x []                = [[x]]
        reducer x (h:t) | elem x h  = (x:h):t
                        | otherwise = [x]:(h:t)
    in foldr reducer [] elements
