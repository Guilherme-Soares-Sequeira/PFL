fromBits :: [Int] -> Int
fromBits [] = 0
fromBits (x:[]) = x
fromBits list = sum [num * (2^(idx)) | (num, idx) <- (zip (reverse list) [0..])]