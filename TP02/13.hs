divprop :: Integer -> [Integer]
divprop num = [x | x <- [1..num], num `mod` x == 0]

primo :: Integer -> Bool
primo num = length (divprop num) == 2

mersennes :: [Int]
mersennes = take 30 [fromInteger x | x <- [1..], primo x && elem x [2^n - 1| n <- [1.. round (sqrt (fromIntegral x))]]]