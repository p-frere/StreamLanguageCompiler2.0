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

main' = do putStrLn ("Toy Interactive Mode - enter an expression : ")
           sourceText <- getLine
           let parsedProg = parseCalc (alexScanTokens sourceText)
           let funcs = getFuncs parsedProg 
           let past = getPast parsedProg
           forever $ do  
            l <- getLine
            let parsedL = parseCalc (alexScanTokens l)
            let past = evalIn funcs parsedL past
            print (prettyPrint (snd (head past)))


getFuncs :: Exp -> [Expr]
getFuncs (MtData(_,_,(MtFuncs fs))) = fs


prettyPrint :: [Expr] -> String
prettyPrint ((Grammar.ExInt x):xs) 
    | xs /= [] = show x ++ " " ++ prettyPrint xs
    | ((Grammar.ExInt x):xs) /= []  = show x

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
