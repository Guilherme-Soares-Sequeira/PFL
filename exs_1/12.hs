xor :: Bool -> Bool -> Bool
xor True True = False
xor True False = True
xor False False = False
xor False True = True