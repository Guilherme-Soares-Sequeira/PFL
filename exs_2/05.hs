divprop :: Integer -> [Integer]
divprop n = [x | x <- [1..n`div`2], n `mod` x == 0]

-- 2.5
perfeitos :: Integer -> [Integer]
perfeitos n = [x | x <- [1..n], x == sum (divprop x)]