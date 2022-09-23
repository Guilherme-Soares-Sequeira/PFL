unidades :: [String]
unidades = ["zero", "um", "dois", "tres", "quatro", "cinco", "seis", "sete", "oito", "nove", "dez", "onze", "doze", "treze", "catorze", "quinze", "dezasseis", "dezassete", "dezoito", "dezanove"]


dezenas :: [String]
dezenas = ["", "dez", "vinte", "trinta", "quarenta", "cinquenta", "sessenta", "setenta", "oitenta", "noventa"]

centenas :: [String]
centenas = ["", "cento", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos"]

conv_one_digit :: Int -> String

conv_one_digit num
  | num >= 20 = error "Unexpectedly large number in conv_one_digit"
  | otherwise = unidades !! num

conv_two_digits :: Int -> String
conv_two_digits num
  | num < 20 = conv_one_digit num 
  | num_unis == 0 = dezenas !! num_dezs
  | otherwise = (dezenas !! num_dezs) ++ " e " ++ (unidades !! num_unis)
  where num_unis = num `mod` 10
        num_dezs = num `div` 10

conv_three_digits :: Int -> String
conv_three_digits num
  | num < 100 = conv_two_digits num
  | num == 100 = "cem"
  | resto == 0 = centenas !! num_cents
  | otherwise = (centenas !! num_cents) ++ " e " ++ conv_two_digits resto
  where num_cents = num `div` 100
        resto = num `mod` 100

conv_fourplus_digits :: Int -> String
conv_fourplus_digits num
  | num < 1000 = conv_three_digits num
  | num == 1000 = "mil"
  | num_centenas == 0 = conv_three_digits num_milhares ++ " mil"
  | num_milhares == 1 && num_centenas <= 100 = "mil e " ++ (conv_two_digits num_centenas)
  | num_milhares == 1 && num_centenas > 100 && num_dezenas > 0 = "mil " ++ (conv_three_digits num_centenas)
  | num_milhares == 1 && num_centenas > 100 && num_dezenas == 0 = "mil e " ++ (conv_three_digits num_centenas)
  | num_centenas <= 100 = (conv_three_digits num_milhares) ++ " mil e " ++ (conv_two_digits num_centenas)
  | num_centenas > 100 && num_dezenas > 0 = (conv_three_digits num_milhares) ++ " mil " ++ (conv_three_digits num_centenas)
  | num_centenas > 100 && num_dezenas == 0 = (conv_three_digits num_milhares) ++ " mil e " ++ (conv_three_digits num_centenas)
  where num_milhares = num `div` 1000
        num_centenas = num `mod` 1000
        num_dezenas = num `mod` 100

      


converte :: Int -> String

converte num
  | num > 1000000 = error "Unexpectedly large number, must be under 1.000.000"
  | otherwise = conv_fourplus_digits num