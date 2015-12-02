newtype CustomerId = MakeCustomerId Int
data Customer = MakeCustomer CustomerId String Int

--overloading show for usage
instance Show CustomerId where
    show (MakeCustomerId x) = show x

bob :: Customer
bob = MakeCustomer (MakeCustomerId 3) "Bob" 4

getCustId :: Customer -> CustomerId
getCustId (MakeCustomer id _ _) = id