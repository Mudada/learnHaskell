class (Show a) => Serialize a where
  serialize :: a -> String

data Muda = Mudada deriving (Show)

newtype Mudalist = Mudalist [Muda] deriving (Show)

instance Serialize Mudalist where
  serialize (Mudalist x) = show x
  
mudopen :: Mudalist -> [Muda]
mudopen (Mudalist x) = x
