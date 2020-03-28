module Demo where

import Data.List hiding (union)
import Data.Set
import Test

-- this will result in a type error because only the
-- union function from the Data.Set module is being imported
--
--     myUnion [] ys = ys
--     myUnion xs ys = union xs ys
