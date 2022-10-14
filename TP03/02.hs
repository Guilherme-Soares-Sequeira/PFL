dec2int :: [Int] -> Int
dec2int xs = foldl (\x y -> x*10 + y) 0 xs