import Dara.List
import Data.Char(digitToInt)

compareWithHundred :: Int -> Ordering
compareWithHundred = compare 100

divideByTen :: (Floating a) => a -> a 
divideByTen = (/10)

multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a ->c)
flip' f x y = f y x

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x = x : filter p xs
  | otherwise = filter p xs

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs)
  | key == k = Just v
  | otherwise = findKey key xs
