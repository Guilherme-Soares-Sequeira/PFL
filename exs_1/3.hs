metades :: [a] -> ([a], [a])
metades list = (take (length list `div` 2) list, drop ((length list) `div` 2) list) 