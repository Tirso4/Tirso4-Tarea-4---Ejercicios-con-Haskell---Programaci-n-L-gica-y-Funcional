encode [] = []
encode (x:xs) = (length $ x : takeWhile (==x) xs, x)
                 : encode (dropWhile (==x) xs)