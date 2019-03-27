import Tokens
import Grammar
import SLEval
import System.Environment
import Control.Exception
import System.IO
import Control.Monad  
import Data.Char 

main :: IO ()
main = catch main' noParse

main' = do (fileName : _ ) <- getArgs
           sourceText <- readFile fileName
           let parsedProg = parseCalc (alexScanTokens sourceText)
           putStrLn ("Parsed as " ++ (show parsedProg))
           let funcs = getFuncs parsedProg 
           let past = getPast parsedProg
           forever $ do  
            l <- getLine
            let parsedL = parseInput (alexScanTokens l)
            let past = evalIn funcs parsedL past
            print (prettyPrint (snd (head past)))


getFuncs :: (Meta,Meta,Meta)  -> [Expr]
getFuncs (_,_,(MtFuncs fs)) = fs


prettyPrint :: [Expr] -> String
prettyPrint ((Grammar.ExInt x):xs) 
    | xs /= [] = show x ++ " " ++ prettyPrint xs
    | ((Grammar.ExInt x):xs) /= []  = show x

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
