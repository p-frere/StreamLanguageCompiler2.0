--import Tokens for func
--import Tokens for stream
--import Grammar for func
--import Grammar for stram
import SLEval2

import System.Environment
import Control.Exception
import System.IO
import Control.Monad  
import Data.Char 

f line = putStrLn ("Hi, " ++ line ++ "!")

-- main = do   (fileName : _ ) <- getArgs
--             let meta = tempMetaEval "fileName"
--             let func = getFuncs meta
--             let past = getPast meta
--             print past
--             loop

-- loop = forever $ do  
--     l <- getLine
--     let past = tempProecssStream l
--     print (snd (head past))
      
main = do   (fileName : _ ) <- getArgs
            let meta = tempMetaEval "fileName" -- alex, happy and eval go here
            let funcs = getFuncs meta 
            let past = getPast meta
            forever $ do  
                l <- getLine
                let past = tempProecssStream l --evalIn (funcs) (happy alex l) (past) go here
                print (prettyPrint (snd (head past)))

      

tempProecssStream ::String -> Past
tempProecssStream s  = [([ExInt 1],[ExInt 1])]

tempMetaEval :: String -> MetaData
tempMetaEval s = (MtInCnt 1, MtPst [([ExInt 0],[ExInt 0])], MtFuncs [ExInt 1])   

getFuncs :: MetaData -> [Expr]
getFuncs (_,_,(MtFuncs fs)) = fs

getPast :: MetaData -> Past
getPast (_,(MtPst p),_) = p

prettyPrint :: [Expr] -> String
prettyPrint ((ExInt x):xs)
    | xs /= [] = show x ++ " " ++ prettyPrint xs
    | ((ExInt x):xs) /= []  = show x

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()