and'  a b = a && b
or'   a b = a || b
nand' a b = not (and' a b)
nor'  a b = not (or' a b)
xor'  a b = not (equ' a b)
impl' a b = or' (not a) b
equ'  a b = a == b
table :: (Bool -> Bool -> Bool) -> IO ()
table f = mapM_ putStrLn [show a ++ " " ++ show b ++ " " ++ show (f a b)
                                | a <- [True, False], b <- [True, False]]
table2 :: (Bool -> Bool -> Bool) -> IO ()
table2 f = mapM_ putStrLn [show a ++ " " ++ show b ++ " " ++ show (f a b)
                                | a <- [True, False], b <- [True, False]]
-- functions as in solution 46
infixl 4 `or'`
infixl 6 `and'`
-- "not" has fixity 9 by default
