gray :: Int -> [String]
gray 0 = [""]
gray n = let xs = gray (n-1) in map ('0':) xs ++ map ('1':) (reverse xs)
