max3, min3 :: Ord a => a -> a -> a -> a
max3 x y z
  | x >= y && x >= z = x
  | y >= x && y >= z = y
  | otherwise = z

min3 x y z
  | x <= y && x <= z = x
  | y <= x && y <= z = y
  | otherwise = z

max3', min3' :: Ord a => a -> a -> a -> a
max3' x y z = max (max x y) z

min3' x y z = min (min x y) z