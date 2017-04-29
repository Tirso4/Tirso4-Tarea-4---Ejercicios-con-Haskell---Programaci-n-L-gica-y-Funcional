primesR :: Integral a => a -> a -> [a]
primesR a b = takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
  where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]
goldbach n = head [(x,y) | x <- pr, y <- pr, x+y==n]
    where pr = primesR 2 (n-2)
goldbachList lb ub = map goldbach $ [even_lb,even_lb+2..ub]
  where even_lb = max ((lb+1) `div` 2 * 2) 4
goldbachList' lb ub mv = filter (\(a,b) -> a > mv && b > mv) $
                         goldbachList lb ub
