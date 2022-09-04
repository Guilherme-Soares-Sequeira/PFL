factorial :: Integer -> Integer
factorial x = product [1..x]

binom :: Integer -> Integer -> Integer
binom n k = product (take (fromInteger k) [n, n-1..0]) `div` factorial k

-- 2.8

pascal :: Integer -> [[Integer]]
pascal n = [[ binom i x | x <- [0..i]] | i <- [0..n]]