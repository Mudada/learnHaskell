-- patern matching
isTen :: Int -> String
isTen 10 = "It's ten !"
isTen x = "It's not ten :c"

-- with tuple and list
addTuple :: (Double, Double) -> (Double, Double) -> (Double, Double)
addTuple (9, 9) (9, 9) = (99.9, 99.9)

addTuple (x,y) (x1, y1) = (x + x1, y + y1) 
getFirst :: (Int, Int, Int) -> Int -- Really usefull to destructurate a tuple
getFirst (x, _, _) = x
getFirst' :: [a] -> a -- or a list
getFirst' [] = error "blabla"
getFirst' (x:_) = x

-- as patern
blabla :: String -> String
blabla all@(f:sl) = all ++ " is composed of " ++ [f] ++ " and " ++ sl -- to save the match of the patern after @

-- guards && where
faggetometer :: Int -> Int -> String -- <indent>"|"<expression->bool>
faggetometer n n1 -- if/else but more readable
 | fag == 1 = "Fagget detected"
 | fag >= 2 = "Ohoh it's a trap !"
 | otherwise = "You're not a fagget :D"
 where fag = n + n1

-- let

