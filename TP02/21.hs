algarismosRev :: Int -> [Int]
algarismosRev 0 = []
algarismosRev num = (num `mod` 10) : algarismosRev (num `div` 10)

--algarismos :: Int → [Int]

algarismos :: Int -> [Int]
algarismos num = reverse (algarismosRev num)
