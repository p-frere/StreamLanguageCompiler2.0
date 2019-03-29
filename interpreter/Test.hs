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
           --parsedProgram is a (meta, meta, meta) <- this last meta is MtFuncs[]
           let parsedProg = parseCalc (alexScanTokens sourceText)
           putStrLn ("Parsed as: " ++ (show parsedProg))
           --
           let funcs = [ExLam "s0" (ExVar "s0"),ExLam "s0" (ExVar "s0")]
           putStrLn ("Funcs: " ++ (show funcs))
           let past = getPast parsedProg
           putStrLn ("Inital Past: " ++ (show past))
           forever $ do  
            l <- getLine
            let parsedL = parseInput (alexScanTokens l)
            putStrLn ("Input: " ++ (show parsedL))
            let past = evalIn funcs parsedL past
            putStrLn ("Evaluated: " ++ (show past))
            print (prettyPrint (snd (head past)))
            hPutStr stdout (prettyPrint (snd (head past)))


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
