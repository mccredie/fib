
import System.Environment

main = do
  [ arg ] <- getArgs
  mapM_ print (take (read arg :: Int) (fib 1 1))

fib a b = a : fib b (a + b)
