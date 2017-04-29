import System.Random
import Control.Monad (replicateM)

rnd_select :: [a] -> Int -> IO [a]
rnd_select [] _ = return []
rnd_select l  n 
    | n<0 = error "N must be greater than zero."
    | otherwise = do pos <- replicateM n $ 
                               getStdRandom $ randomR (0, (length l)-1)
                     return [l!!p | p <- pos]