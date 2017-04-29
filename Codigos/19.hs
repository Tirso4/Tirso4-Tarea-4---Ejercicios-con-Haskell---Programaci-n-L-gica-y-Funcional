rotate xs n = take len . drop (n `mod` len) . cycle $ xs
    where len = length xs