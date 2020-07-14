module Record where

newtype Company = Company { _staff :: [Person] } deriving Show

data Person  = Person
    { _name    :: String
    , _address :: Address
    } deriving Show

newtype Address = Address { _city :: String } deriving Show

polina, lars :: Person
polina = Person
  {  _name    = "Polina"
  ,  _address = Address { _city = "Ottawa" }
  }
lars = Person
  {  _name    = "Lars"
  ,  _address = Address { _city = "Regensburg" }
  }

iohk :: Company
iohk = Company { _staff = [polina, lars] }

-- |Moves all company staff to the specified city.
goTo :: String -> Company -> Company
goTo there c = undefined
