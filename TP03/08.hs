import Data.List
import Data.Maybe
import Data.Textt

-- a
--palavras :: String -> [String]
--palavras string = until (\x -> Nothing == (findIndex (== ' ') (last x))) (splitAt (findIndex (== ' ') )) string


palavras string = let spaceIndex = findIndex (== ' ') in
   splitAt (if ((spaceIndex string) == Nothing) then 1 else (fromJust (spaceIndex string))) string
split (==' ') string