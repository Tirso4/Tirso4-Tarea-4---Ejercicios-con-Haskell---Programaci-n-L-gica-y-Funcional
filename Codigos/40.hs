primesR :: Integral a => a -> a -> [a]
primesR a b = takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
  where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]
goldbach n = head [(x,y) | x <- pr, y <- pr, x+y==n]
    where pr = primesR 2 (n-2)
