import Data.Char

alphabet :: [Char]
alphabet = ['A'..'Z']

alphabetIndexes :: [(Char, Int)]
alphabetIndexes = zip alphabet [0..]

alphabetLen :: Int
alphabetLen = length alphabet

getCharIdx :: Char -> Int
getCharIdx aChar = (head [idx | (letter, idx) <- alphabetIndexes, letter == aChar])

getConvertedChar :: Int -> Char -> Char
getConvertedChar desloc aChar | isLetter aChar = alphabet !! (((getCharIdx aChar) + desloc) `mod` alphabetLen)
  | otherwise = aChar

cifrar :: Int -> String -> String
cifrar desloc aString = [getConvertedChar desloc letter | letter <- aString]