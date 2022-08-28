curta :: [a] -> Bool
curta list
  | length list < 3 = True
  | otherwise = False

curta' :: [a] -> Bool
curta' [] = True
curta'  [x] = True
curta' [x, y] = True
curta' _ = False