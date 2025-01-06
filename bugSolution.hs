The solution involves using pattern matching to handle the empty list case explicitly:

```haskell
main :: IO ()
main = do
  let emptyList = []
  let nonEmptyList = [1,2,3]
  print (safeHead emptyList)
  print (safeHead nonEmptyList)

--Safe version of head
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x
```

This version utilizes the `Maybe` type to represent the possibility of an empty list.  If the list is empty, `Nothing` is returned, and if it's not, the head element is wrapped in `Just`.  This approach prevents the runtime error and allows for safe handling of the empty list case.