import Data.List
import Data.Maybe

-- a

palavras :: String -> [String]
palavras string = case spaceIndex of
   Nothing ->  ([string | string /= ""])
   Just num -> take num string : palavras (drop (num+1) string)
   where spaceIndex = elemIndex ' ' string


-- b

despalavras :: [String] -> String
despalavras [] = ""
despalavras (x:xs) = x ++ " " ++ despalavras xs