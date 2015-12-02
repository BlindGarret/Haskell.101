newtype CustId = MakeCustId Int

--overloading show just to make this printable
instance Show CustId where
    show (MakeCustId x) = show x

upOne :: CustId -> CustId
upOne (MakeCustId i) = MakeCustId (i + 1)