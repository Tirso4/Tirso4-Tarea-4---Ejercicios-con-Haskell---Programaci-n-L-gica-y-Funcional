removeAt :: Int -> [a] -> (a, [a])
removeAt k xs = case back of
        [] -> error "removeAt: index too large"
        x:rest -> (x, front ++ rest)
  where (front, back) = splitAt (k - 1) xs