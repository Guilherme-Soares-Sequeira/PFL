toBitsRev :: Int -> [Int]
toBitsRev 0 = []
toBitsRev num = (num `mod` 2) : toBitsRev (num `div` 2)

toBits :: Int -> [Int]
toBits num = reverse (toBitsRev num)