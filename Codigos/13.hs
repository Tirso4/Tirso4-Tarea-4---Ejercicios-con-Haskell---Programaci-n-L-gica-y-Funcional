data ListItem a = Single a | Multiple Int a
    deriving (Show)
encodeDirect :: (Eq a) => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect (x:xs) = encodeDirect' 1 x xs
encodeDirect' n y [] = [encodeElement n y]
encodeDirect' n y (x:xs) | y == x    = encodeDirect' (n+1) y xs
                         | otherwise = encodeElement n y : (encodeDirect' 1 x xs)
encodeElement 1 y = Single y
encodeElement n y = Multiple n y