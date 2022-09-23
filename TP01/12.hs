xor :: Bool -> Bool -> Bool

xor True False = True
xor False True = True
xor True True = False
xor False False = False