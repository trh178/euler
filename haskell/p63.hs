-- euler problem 63

import Debug.Trace (trace)

countNums :: [Integer] -> [Integer] -> Integer -> Integer
countNums [] _ tot = tot
countNums bAll@(b:bs) eAll@(e:es) tot
	  | nd == e = countNums bAll es (tot + 1)
	  | nd < e = countNums bs [1..] tot
	  | nd > e = countNums (trace (show b) bs) [1..] tot
	    where nd :: Integer
	    	  nd = fromIntegral $ length $ show (b ^ e)		

p63main = countNums [2..9] [1..] 0

-- VERIFIED CORRECT!