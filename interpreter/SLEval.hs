module SLEval where
import Grammar
import Debug.Trace
--import GrammarStream
--data Expr = ExInt Int 
--            | ExVar String   
--            | ExSum Expr Expr 
--            | ExSub Expr Expr 
--            | ExMult Expr Expr  
--            | Cl String Expr Environment
--            | ExApp Expr Expr
--            | ExLam String Expr
--            | ExLet String Expr Expr deriving (Show,Eq)

type Configuration = (Expr,Environment,Kontinuation)
--type Environment = [ (String,Expr) ] 

-- Holds the expresion in the kontinuation in a partially evaluated form
data Frame =    SumH_ Expr Environment | Sum_H Expr
                | SubH_ Expr Environment | Sub_H Expr
                | MultH_ Expr Environment | Mult_H Expr
                | LetH String Expr Environment
                | AppH_ Expr Environment | App_H Expr deriving (Show,Eq)

type Kontinuation = [ Frame ]
type State = (Expr,Environment,Kontinuation)

--type Mapping = ([Expr],[Expr])
--type Past = [Mapping]
--type FuncList = [Expr]
--type InputList = [Expr]

-- cnt past func
--type MetaData = (Meta, Meta, Meta)

--data Meta = MtFuncs [Expr] 
--            | MtPst Past   
--            | MtPstSize Int
--            | MtInCnt Int
----------------past processing-------------------------

--getPast :: (Meta,Meta,Meta) -> Past
--getPast (MtPstSize s, generatePast s p, f) = generatePast s p
--getPast (s, MtPst p, f) = p

getPast :: (Meta,Meta,Meta) -> Past
-- getPast (MtPstSize p, MtInCnt s, f) = (MtPst (generatePast s p), MtInCnt s, f)
getPast (MtPst p, s, f) = p

updateMeta :: (Meta,Meta,Meta) -> (Meta,Meta,Meta)
updateMeta (MtPstSize p, MtInCnt s, f) = (MtPst (generatePast s p), MtInCnt s, f)
updateMeta (MtPst p, s, f) = (MtPst p, s, f)


generatePast :: Int -> Int  -> Past
generatePast strCnt pstCnt
    | pstCnt > 0  = (replicate0 strCnt,replicate0 strCnt) : generatePast strCnt (pstCnt-1)
    | otherwise = []
    where 
        replicate0 n = map (\x -> ExInt x) (replicate n 0)

-----------------Building lambda function from meta data-----------------

evalFunc :: (Meta,Meta,Meta) -> [Expr] 
evalFunc (MtPst p, MtInCnt i, MtFuncs (f:fs))
    | (fs) /= [] = (generateLam vars f) : evalFunc (MtInCnt i, MtPst p, MtFuncs fs)
    | otherwise = [(generateLam vars f)]
        where
            vars = generateVars i (length p)

-- ExVAr -> Function -> Lam
generateLam :: [Expr] -> Expr -> Expr
generateLam [ExVar s] f = ExLam s f  
generateLam ((ExVar s):ss) f = (ExLam s (generateLam ss f))

-- steram count, past size -> Vars
generateVars :: Int -> Int -> [Expr]
generateVars s p  =  (makeMap streamVars) ++ streamVars
    where   
        streamVars = (getStreamVars s) 
        makeMap ((ExVar sv):svs) 
            | svs /= [] = getPastVars sv p ++ makeMap (svs)
            | otherwise = getPastVars sv p

getStreamVars :: Int -> [Expr]
getStreamVars i 
    | i > 0 = [ExVar ("s"++show (i-1))] ++ getStreamVars (i-1)
    | otherwise = []

getPastVars :: String -> Int -> [Expr]
getPastVars s i 
    | i > 0 = [ExVar (s++".out"++show i)] ++ [ExVar (s++".in"++show i)] ++ getPastVars s (i-1)
    | otherwise = []

----------Applying Apps to lambda and calling eval--------------------
-- function     streamInput         oldPast                         newPast
-- ExLam()      [s1 s2 s3 ..]       [([1,2],[3]) ([2,3],[5])]       [([1,2],[3]) ([2,3],[5])] 
evalIn :: FuncList -> InputList -> Past -> Past
evalIn fs is p = updatePast is [evalLoop (buildExpr f is p)| f <- fs ] p

-- add new pairing to past window
--              ins         outs    oldPAst newPast
updatePast :: InputList -> [Expr] -> Past -> Past
updatePast is os p = (is,os) : init p

-- func ins past
buildExpr ::  Expr -> InputList -> Past -> Expr
buildExpr f is p =  wrapIns f (is++(orderPast p))
    where 
        wrapIns :: Expr -> [Expr] -> Expr
        wrapIns f (i:is)
            | null is = ExApp f i
            | otherwise = ExApp (wrapIns f is) i  
    
        orderPast :: Past -> [Expr]
        orderPast [] = []
        orderPast (x:xs) = fst x ++ snd x ++ orderPast xs

---------Solve lambda with eval------------------------------------
-- Function to iterate the small step reduction to termination
--evalLoop :: Expr -> Expr 
--evalLoop e = evalLoop' (e,[],[])
--    where evalLoop' (e,env,k) = if (e' == e) && (k' == []) && (isValue e') then e' else evalLoop' (e',env',k')
--                    where (e',env',k') = eval1 (e,env,k) 

-- -- Debug version of evalLoop
evalLoop :: Expr -> Expr 
evalLoop e = evalLoop' (e,[],[])
    where evalLoop' (e,env,k) = if (e' == e) && (k' == []) && (isValue e') then e' else trace ("evalLoop1: " ++ show e' ++ " - " ++ show env' ++ " - " ++ show k') evalLoop' (e',env',k')
                    where (e',env',k') = trace ("evalLp: " ++ show e ++ " - " ++ show env ++ " - " ++ show k) eval1 (e,env,k) 

-- Gets an expression and it's enviroment associated with a variable
getValueBinding :: String -> Environment -> (Expr,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y  = unpack e env
                            | otherwise = getValueBinding x env   

-- Gets the expr and new enviroment
unpack :: Expr -> Environment -> (Expr,Environment)
unpack (Cl x e env1) env2 = ((Cl x e env1), env1)
unpack e env = (e,env)

-- unpack :: Expr -> (Expr,Environment)
-- unpack (Cl x e env1) = ((ExLam x e) , env1)
-- unpack e = (e,[])
-- unpack (Cl x e env1) = ((Cl x e env1), env1)
-- unpack e = (e,[])

-- Pairs a variable's value and it's enviroment 
update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env
--update env x e1 y e2 = (x,e1):(y,e2):env


----------- Evaluation functions ----------------------------

eval1 :: State -> State
eval1 ((ExVar x),env,k) = (e',env',k) 
                where (e',env') = getValueBinding x env

-- Function decleration, f = e1 in e2
eval1 ((ExLam x e),env,k) = ((Cl x e env), [], k)

-- Sum
eval1 ((ExSum e1 e2),env,k) = (e1,env,(SumH_ e2 env):k)
eval1 ((ExInt n),env1,(SumH_ e env2):k) = (e,env2,(Sum_H (ExInt n)) : k)
eval1 ((ExInt m),env,(Sum_H (ExInt n)):k) = (ExInt (n + m),env,k)

-- Sub
eval1 ((ExSub e1 e2),env,k) = (e1,env,(SubH_ e2 env):k)
eval1 ((ExInt n),env1,(SubH_ e env2):k) = (e,env2,(Sub_H (ExInt n)) : k)
eval1 ((ExInt m),env,(Sub_H (ExInt n)):k) = (ExInt (n-m),env,k)

-- Mult
eval1 ((ExMult e1 e2),env,k) = (e1,env,(MultH_ e2 env):k)
eval1 ((ExInt n),env1,(MultH_ e env2):k) = (e,env2,(Mult_H (ExInt n)) : k)
eval1 ((ExInt m),env,(Mult_H (ExInt n)):k) = (ExInt (n*m),env,k)

-- App, Somehow this position is important
eval1 ((ExApp e1 e2),env,k) = (e1,env, (AppH_ e2 env) : k)
eval1 (v,env1,(AppH_ e env2):k ) | isValue v = (e, env2, (App_H v) : k)
eval1 (v,env1,(App_H (Cl x e env2) ) : k )  = (e, update env2 x v, k)

-- Value, Rule for terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])

--------------------Other Functions-----------------

-- Checks for terminated expressions
isValue :: Expr -> Bool
isValue (ExInt _) = True
isValue (Cl _ _ _) = True

unparse :: [Expr] -> String 
unparse [] = ""
unparse ((ExInt n):ns) = show n ++ ", " ++ unparse ns
unparse (n:ns) = "Unknown" ++ ", " ++ unparse ns

-- unparse :: Expr -> String 
-- unparse (ExInt n) = show n
-- unparse _ = "Unknown"