module Demo where

import Data.Char (isDigit)

readDigits :: String -> (String, String)
readDigits = span isDigit

filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj p1 p2 = filter (\x -> or [p1 x, p2 x])

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) =
    let lesser  = qsort [a | a <- xs, a <= x]
        greater = qsort [a | a <- xs, a > x]
    in  lesser ++ [x] ++ greater

squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes = concatMap (\x -> [x^2, x^3])

perms :: [a] -> [[a]]
perms [    ] = [[ ]]
perms (x:[]) = [[x]]
perms (x:xs) = concatMap (permute . (x:)) (perms xs)
    where permute (x:y:[  ]) = [[x,y],[y,x]]
          permute (x:y:rest) = (x:y:rest) : (map (y:) $ permute (x:rest))

delAllUpper :: String -> String
delAllUpper = unwords . filter (any (>'Z')) . words

max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 = zipWith3 $ (max .) . max
