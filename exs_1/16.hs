lista_digitos :: [[Char]]
lista_digitos = ["zero", "um", "dois", "tres", "quatro", "cinco", "seis", "sete", "oito", "nove"]

lista_dezenas :: [[Char]]
lista_dezenas = ["","", "vinte", "trinta", "quarenta", "cinquenta", "sessenta", "setenta", "oitenta", "noventa"]

lista_centenas :: [[Char]]
lista_centenas = ["", "cento", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos"]

converte_digit :: Int -> String
converte_digit = (lista_digitos !!)

converte_2digits :: Int -> String
converte_2digits x
  | x < 10 = converte_digit x
  | x == 19 = "dezanove"
  | x == 18 = "dezoito"
  | x == 17 = "dezassete"
  | x == 16 = "dezasseis"
  | x == 15 = "quinze"
  | x == 14 = "catorze"
  | x == 13 = "treze"
  | x == 12 = "doze"
  | x == 11 = "onze"
  | x == 10 = "dez"
  | x == 20 = "vinte"
  | otherwise = lista_dezenas !! (x `div` 10) ++ if (units == 0) then "" else " e " ++ converte_digit units
  where units = x `mod` 10

converte_3digits :: Int -> String
converte_3digits x
  | x < 100 = converte_2digits x
  | last2 == 0 = if (hundreds == 1) then "cem" else lista_centenas !! hundreds
  | hundreds == 0 = converte_2digits x
  | otherwise = (lista_centenas !! hundreds) ++ " e " ++ converte_2digits last2
  where last2 = x `mod` 100
        hundreds = x `div` 100


meter_um_e :: Int -> String
meter_um_e x =
  let centenas = x `mod` 1000
      dezenas = x `mod` 100
      digito_centenas = (x `div` 100) `mod` 10
      digito_dezenas = (x `div` 10) `mod` 10
      digito_unidades = x `mod` 10
  in
    if (centenas /= 0 && dezenas == 0) || (centenas < 10) || (digito_centenas == 0 && dezenas /= 0 && digito_dezenas /= 0 && digito_unidades == 0) then "e "
    else ""

converte_milhares :: Int -> String
converte_milhares x
  | x < 1000 = converte_3digits x
  | x == 1000 = "mil"
  | milhares == 1 = "mil " ++ meter_um_e x ++ converte_3digits centenas
  | centenas == 0 = converte_3digits milhares ++ " mil"
  | otherwise = converte_3digits milhares ++ " mil " ++ meter_um_e x ++ converte_3digits centenas
  where milhares = x `div` 1000
        centenas = x `mod` 1000
        dezenas = x `mod` 100

converte :: Int -> String
converte x = converte_milhares x