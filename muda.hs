data Muda a = Mu | Muda a | Mudada a a

class Ada a where
  (<-<) :: a -> a
  (>->) :: a -> a

instance (Show a) => Show (Muda a) where
  show Mu = "Mu"
  show (Muda a) = "Muda " ++ show a
  show (Mudada a b) = "Mudada " ++ show a ++ show b

instance Eq (Muda a) where
  Mu == Mu = True
  (Muda _) == (Muda _) = True
  (Mudada _ _) == (Mudada _ _) = True
  _ == _ = False

instance Ord (Muda a) where
  compare Mu (Muda _) = LT
  compare (Muda _) Mu = GT
  compare (Mudada _ _) _ = GT
  compare _ (Mudada _ _) = LT

instance Functor Muda where
  fmap f Mu = Mu
  fmap f (Muda a) = Muda (f a)
  fmap f (Mudada a b) = Mudada (f a) (f b)

instance Ada (Muda a) where
  (<-<) (Muda _) = Mu
  (<-<) (Mudada a _) = Muda a
  (<-<) _ = Mu
  (>->) (Muda a) = Mudada a a
  (>->) (Mudada _ _) = Mu
  (>->) _ = Mu
