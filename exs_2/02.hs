-- a
aprox :: Int -> Double
aprox n = 4 + sum [ 4 * fromIntegral((-1)^x) / fromIntegral(2*x + 1) | x <- [1..n]]

-- b
aprox' :: Int -> Double
aprox' n = sqrt (12 * (1 + sum [fromIntegral((-1)^x) / fromIntegral((x+1)^2) | x <- [1..n]]))