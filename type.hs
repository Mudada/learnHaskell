-- :t a -- use this in ghci to give you the type of 'a'
x5 :: Int -> Int -- Explicit type declaration
x5 n = n * 5

-- type class
-- type class is an interface that specify a bunch of functions 
-- and when a type implement a typle class we define what those functions means for that type
eq' :: Eq a => a -> Bool -- '(Eq a) =>' is a class constraint it permit to check if the type 'a' implement the type class 'Eq'
eq' n = n == n
eq'' :: (Eq a, Eq b) => a -> b -> Bool -- You can add any constraint you want using ',' and '()'
eq'' n s = n == n || s == s 
