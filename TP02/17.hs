hasUpperCase :: String -> Bool
hasUpperCase aString = or [elem aChar ['A'..'Z'] | aChar <- aString]

hasLowerCase :: String -> Bool
hasLowerCase aString = or [elem aChar ['a'..'z'] | aChar <- aString]

lengthCheck :: String -> Bool
lengthCheck aString = length aString >= 8

hasDigit :: String -> Bool
hasDigit aString = or [elem aChar ['0'..'9'] | aChar <- aString]

forte :: String -> Bool
forte aString = and [func aString | func <- [hasUpperCase, lengthCheck, hasLowerCase, hasDigit]]f