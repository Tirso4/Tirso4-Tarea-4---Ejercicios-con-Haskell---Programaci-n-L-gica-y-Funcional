import Control.Monad (replicateM)
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
infixl 4 `nor'`
infixl 5 `xor'`
infixl 6 `and'`
infixl 6 `nand'`
infixl 3 `equ'` -- was 7, changing it to 3 got me the same results as in the original question :(
tablen :: Int -> ([Bool] -> Bool) -> IO ()
tablen n f = mapM_ putStrLn [toStr a ++ " => " ++ show (f a) | a <- args n]
    where args n = replicateM n [True, False]
          toStr = unwords . map (\x -> show x ++ space x)
          space True = "  "
          space False = " "
