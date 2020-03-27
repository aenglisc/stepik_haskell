module Demo where

class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab a
        | doesEnrageGork(a) && doesEnrageMork(a) = stomp(stab(a))
        | doesEnrageMork(a) = stomp(a)
        | doesEnrageGork(a) = stab(a)
        | otherwise = a

class (Eq a, Bounded a, Enum a) => SafeEnum a where
    ssucc :: a -> a
    ssucc a | a == maxBound = minBound
            | otherwise = succ a

    spred :: a -> a
    spred a | a == minBound = maxBound
            | otherwise = spred a

instance SafeEnum Bool where

instance SafeEnum Int where

instance SafeEnum Char where

avg :: Int -> Int -> Int -> Double
avg x y z = (/ 3) . sum . map fromIntegral $ [x, y, z]
