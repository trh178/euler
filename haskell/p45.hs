-- euler problem 45

triangle = [x * (x + 1) / 2 | x <- [1..]]
pentagonal = [x * ((3 * x) - 1) / 2 | x <- [1..]]
hexagonal = [x * ((2 * x) - 1) | x <- [1..]]

myElem :: Double -> [Double] -> Bool
myElem x (y:ys)  
       | x < y = False
       | x == y = True
       | otherwise = myElem x ys

p45main = head [x | x <- triangle, (x > 40755) && (myElem x pentagonal) && (myElem x hexagonal)]


