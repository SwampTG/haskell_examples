main = do
  putStrLn "Hello, everybody!"
  putStrLn ("Vamo ver essa parada aqui:" ++ show (take 20 (filter (> 2000) [10..10000000000000])))

fac :: Int -> Int
fac 0 = 1
fac n = n * fac(n - 1)
