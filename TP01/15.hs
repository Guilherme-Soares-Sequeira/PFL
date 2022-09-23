mediana :: Ord a => a -> a -> a -> a

-- a

mediana a b c
  | (a <= b && a >= c) || (a <= c && a >= b) = a
  | (b <= a && b >= c) || (b <= c && b >= a) = b
  | (c <= a && c >= b) || (c <= b && c >= a) = c

-- b

mediana' :: (Num a, Ord a) => a -> a -> a -> a

mediana' a b c = a + b + c - (max (max a b) c) - (min (min a b) c)