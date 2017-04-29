import System.Random (getStdGen, randomRIO)
import Data.List (permutations)
 
rndElem :: [a] -> IO a
rndElem xs = do
  index <- randomRIO (0, length xs - 1)
  return $ xs !! index
 
rndPermutation :: [a] -> IO [a]
rndPermutation xs = rndElem . permutations $ xs