testaTriangulo :: Float -> Float -> Float -> Bool
testaTriangulo a b c = ((a + b) > c) && ((a + c) > b) && ((c + b) > a)