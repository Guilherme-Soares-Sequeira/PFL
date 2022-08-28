s :: Float -> Float -> Float -> Float
s a b c = (a+b+c)/2

areaTriangulo :: Float -> Float -> Float -> Float
areaTriangulo a b c = sqrt ( (s a b c) * ((s a b c) - a) * ((s a b c) - b) * ((s a b c) - c))