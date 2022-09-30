factorial :: Integer -> Integer
factorial n = product [1..n]


binom :: Integer -> Integer -> Integer
binom n k = product [n-k+1..n] `div` (factorial k)

pascal :: Integer -> [[Integer]]
pascal num = [[binom n k | k <- [0..n]] | n <- [0..num]]