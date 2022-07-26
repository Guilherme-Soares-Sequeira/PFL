classifica :: Float -> Float -> String
classifica weight height
  | imc < 18.5 = "baixo peso"
  | imc < 25 = "peso normal"
  | imc < 30 = "excesso de peso"
  | imc >= 30 = "obesidade"
  | otherwise = "NA"
  where imc = weight / (height^2)