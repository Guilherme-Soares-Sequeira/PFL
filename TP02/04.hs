divprop :: Integer -> [Integer]

divprop num = [x | x <- [1.. num `div` 2], num `mod` x == 0]