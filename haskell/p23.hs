-- euler problem 23

abundant :: Int -> Bool
abundant x = sum [y | y <- [1..x-1], x `mod` y == 0] > x
abundant _ = False

-- abunList = [x | x <- [1..], abundant x]

-- sumO2Abun :: Int -> Bool
-- sumO2abun x = True -- fill in def

-- p23main = sum (filter (not . sumO2Abun) [1..28123])


