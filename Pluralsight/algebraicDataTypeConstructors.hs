data DialogResponse = Yes | No | Help | Quit
data MaybeInt = NoInt | JustInt Int
defaultInt :: Int -> MaybeInt -> Int
defaultInt defaultValue NoInt = defaultValue
defaultInt _ (JustInt x) = x