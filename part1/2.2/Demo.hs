module Demo where

doItYourself = f . g . h

f = (logBase 2)

g = (** 3)

h = (max 42)

swap :: (a, b) -> (b, a)
swap = uncurry $ flip $ (,)
