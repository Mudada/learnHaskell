class (Show a) => Serialize a where
   serialize :: a -> String

data Muda = Mudada deriving (Show)

instance Serialize Muda where
   serialize a = "MUDADA"

instance (Serialize a) => Serialize [a] where
   serialize = show . fmap serialize
