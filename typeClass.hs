data Shape = Circle Float Float Float | Rectangle Float Float Float Float
  deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^2
area (Rectangle x1 y1 x2 y2) = (abs $ x1 - y1) * (abs $ x2 - y2)


data Person = Person {
  firstname :: String,
  lastname :: String,
  age :: Int
}


