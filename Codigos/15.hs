repli :: [a] -> Int -> [a]
repli xs n = concatMap (take n . repeat) xs