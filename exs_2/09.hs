alphabet = ['A'..'Z']
alphabetIndexes = zip alphabet [0..]
lenAlphabet = length alphabet

getAlphabetIdx :: Char -> Int
getAlphabetIdx char = head [snd x | x <- alphabetIndexes, fst x == char]
 

getCharFromIdx :: Int -> Char
getCharFromIdx idx = head [fst x | x <- alphabetIndexes, snd x == idx]

convertChar :: Int -> Char -> Char
convertChar desloc char
  | char `elem` alphabet = getCharFromIdx ((getAlphabetIdx char + desloc) `mod` lenAlphabet)
  | otherwise = char

cifrar :: Int -> String -> String
cifrar desloc iniString = [convertChar desloc x | x <- iniString]