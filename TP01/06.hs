raizes :: Float -> Float -> Float -> (Float, Float)
raizes a b c
  | delta == 0 = (-b / (2*a), -b / (2*a)) 
  | delta > 0 = ((-b + delta) / (2*a), (-b - delta) / (2*a))
  | otherwise = error "This expression has no roots"
  where delta = b^2 - 4*a*c