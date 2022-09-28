divprop :: Integer -> [Integer]
divprop num = [x | x <- [1..num], num `mod` x == 0]

primo :: Integer -> Bool
primo num = length (divprop num) == 2