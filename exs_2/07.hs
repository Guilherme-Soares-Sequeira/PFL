divprop :: Integer -> [Integer]
divprop n = [x | x <- [1..n`div`2], n `mod` x == 0]

-- 2.7

primo :: Integer -> Bool
primo n = divprop n == [1]