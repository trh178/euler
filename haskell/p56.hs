-- euler problem 56

import Data.Char (digitToInt) 
import Data.Char (isHexDigit)

mydtoi :: Char -> Integer
mydtoi c = if isHexDigit c then fromIntegral (digitToInt c) else 0

largestDigitalSum :: [Integer] -> [Integer] -> Integer -> Integer
largestDigitalSum aAll@(a:as) bAll@(b:bs) l
		  | null as = l
		  | null bs = largestDigitalSum as [1..100] l 
		  | foab > l = largestDigitalSum aAll bs foab
		  | otherwise = largestDigitalSum aAll bs l
		    where foab :: Integer 
		    	  foab = fromIntegral (sum [digitToInt x | x <- (show (a ^ b))])

p56main = largestDigitalSum [1..100] [1..100] 0

-- VERIFIED CORRECT !