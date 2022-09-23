max3, min3 :: Ord a => a -> a -> a -> a

-- a

max3 a b c
  | a >= b && a >= c = a
  | b >= a && b >= c = b
  | c >= a && c >= b = c

min3 a b c
  | a <= b && a <= c = a
  | b <= a && b <= c = b
  | c <= a && c <= b = c

-- b

max3', min3' :: Ord a => a -> a -> a -> a

max3' a b c = max (max a b) c

min3' a b c = min (min a b) c