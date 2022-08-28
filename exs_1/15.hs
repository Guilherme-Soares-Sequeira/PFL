mediana :: Ord a => a -> a -> a -> a
mediana x y z
  | ((x <= y) && (x >= z)) || ((x <= z) && (x >= y)) = x 
  | ((y <= x) && (y >= z)) || ((y <= z) && (y >= x)) = y
  | otherwise = z

mediana' :: (Num a, Ord a) => a -> a -> a -> a
mediana' x y z = x + y + z - max (max x y) z - min (min x y) z