dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery (x:xs) n = dropEvery' (x:xs) n 1 where
    dropEvery' (x:xs) n i = (if (n `divides` i) then
        [] else
        [x])
        ++ (dropEvery' xs n (i+1))
    dropEvery' [] _ _ = []
    divides x y = y `mod` x == 0