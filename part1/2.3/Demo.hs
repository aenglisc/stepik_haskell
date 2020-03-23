module Demo where

class Printable x where
  toString :: x -> String

instance Printable Bool where
  toString True = "true"
  toString False = "false"

instance Printable () where
  toString () = "unit type"

instance (Printable x, Printable y) => Printable (x, y) where
  toString (x, y) = "(" ++ toString x ++ "," ++ toString y ++ ")"
