raizes :: Float -> Float -> Float -> (Float, Float)
raizes a b c =
  ((-b + binom) / (2*a), (-b - binom) / (2*a))
  where
     binom = b^2 - 4*a*c
  
