factorial :: Integer -> Integer
factorial n = product [1..n]

-- a

binom :: Integer -> Integer -> Integer
binom n k = (factorial n) `div` ((factorial k) * factorial(n-k))

-- b

binom' :: Integer -> Integer -> Integer
binom' n k = product [n-k+1..n] `div` (factorial k)

