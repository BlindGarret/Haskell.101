-- how maybe is defined : data Maybe a = Just a | Nothing

x :: Maybe Int
x = Nothing

fromMaybe :: a -> Maybe a -> a
fromMaybe defaulVal Nothing = defaulVal
fromMaybe _ (Just a) = a