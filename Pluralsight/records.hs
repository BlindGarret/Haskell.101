data Customer = MakeCustomer
    { customerId    :: Int
    , name          :: String
    , luckyNumber   :: Int
    }

alice :: Customer
alice = MakeCustomer
    { customerId = 13
    , name = "Alice"
    , luckyNumber = 42
    }

-- call fields as methods for accessors ex : name alice returns "Alice"
-- can update using a similar syntax to constructor
--  ex: vanessa = alice { name = "vanessa" }
-- note, this means field collision will cause errors. These are NOT
--      in any way equivalent to classes. If two records share a "name"
--      field this is a compiler error. They seem fairly useless to me.