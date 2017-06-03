data Shape = Circle Float Float Float | Rectangle Float Float Float Float

data Person = Person { 
  firstname :: String,
  lastname :: String,
  age :: Int
} deriving (Show, Eq, Read)

blabla :: [Char] -> String
blabla a = a
