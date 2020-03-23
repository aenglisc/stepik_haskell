module Demo where
import Data.Function

getSecondFrom :: t0 -> t1 -> t2 -> t1
getSecondFrom x y z = y

multSecond = g `on` h

g = (*)

h = snd

on3 :: (b -> b -> b -> c) -> (a -> b) -> a -> a -> a -> c
on3 op f x y z = op (f x) (f y) (f z)
