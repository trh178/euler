-- 99 LISP problems in Haskell --

-- P01 - find the last box of a list
lastOfList :: [a] -> a
lastOfList [x] = x
lastOfList (_:xs) = lastOfList xs

-- P02 - find the last but one box of a list 
