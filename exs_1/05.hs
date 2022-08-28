factorial :: Integer -> Integer
factorial x = product [1..x]

binom :: Integer -> Integer -> Integer
binom n k = factorial n `div` (factorial k * factorial (n-k))

--

binom' :: Integer -> Integer -> Integer
binom' n k = product (take (fromInteger k) [n, n-1..0]) `div` factorial k