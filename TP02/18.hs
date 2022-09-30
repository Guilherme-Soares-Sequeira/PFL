-- a
mindiv :: Int -> Int
mindiv num | length divList == 0 = num
  | otherwise = head divList
  where divList = [ans | ans <- [2..round (sqrt (fromIntegral num))], num `mod` ans == 0]
-- b
primo :: Int -> Bool
primo num | num == 1 = False
  | mindiv num == num = True
  | otherwise = False