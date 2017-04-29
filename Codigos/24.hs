import System.Random
import Data.List
import Control.Applicative
 
dif_select :: Int -> Int -> IO [Int]
dif_select n m = take n . nub . randomRs (1, m) <$> getStdGen