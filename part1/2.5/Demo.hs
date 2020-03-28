module Demo where

f = const $ const (4 + 5) $ max 42
-- redex count = 3
--     const
--     const
--     4 + 5

bar x y z = x + y
foo a b = bar a a (a + b)
value = foo (3 * 10) (5 - 2)
-- reduction count = 4
--     2 reductions > foo (3 * 10) (5 - 2) = bar (3 * 10) (3 * 10) ((3 * 10) + (5 - 2))
--     2 reductions > bar (3 * 10) (3 * 10) ((3 * 10) + (5 - 2)) = (3 * 10) + (3 * 10)
