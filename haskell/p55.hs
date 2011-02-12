-- euler problem 55

palindrome :: Integer -> Bool
palindrome x = (show x) == (reverse . show) x

reverseInt :: Integer -> Integer
reverseInt x = read ((reverse . show) x) :: Integer

lychrel :: Integer -> Integer -> Bool
lychrel x times
	| times > 49 = True
	| palindrome nextVal = False
	| otherwise = lychrel nextVal (times + 1)
	where nextVal = x + (reverseInt x)

p55main = length [x | x <- [1..9999], (lychrel x 1)]

-- VERIFIED CORRECT!
