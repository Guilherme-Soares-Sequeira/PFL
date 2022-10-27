module Tree where
data Arv a = Vazia | No a (Arv a) (Arv a)
  deriving (Show)