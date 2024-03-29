module SLEval where
import Grammar

---------Imported Data structures---------- 

--data Expr = ExInt Int
--            | ExVar String
--            | ExSum Expr Expr
--            | ExSub Expr Expr
--            | ExMult Expr Expr
--            | Cl String Expr Environment
--            | ExApp Expr Expr
--            | ExLam String Expr

--type Environment = [ (String,Expr) ]

--type Mapping = ([Expr],[Expr])
--type Past = [Mapping]
--type FuncList = [Expr]
--type InputList = [Expr]

--type MetaData = (Meta, Meta, Meta)

--data Meta = MtFuncs [Expr]
--            | MtPst Past
--            | MtPstSize Int
--            | MtInCnt Int

type Configuration = (Expr,Environment,Kontinuation)

-- Holds the expresion in the kontinuation in a partially evaluated form
data Frame =    SumH_ Expr Environment | Sum_H Expr
                | SubH_ Expr Environment | Sub_H Expr
                | MultH_ Expr Environment | Mult_H Expr
                | LetH String Expr Environment
                | AppH_ Expr Environment | App_H Expr deriving (Show,Eq)

type Kontinuation = [ Frame ]
type State = (Expr,Environment,Kontinuation)

----------------past processing-------------------------

getPast :: (Meta,Meta,Meta) -> Past
getPast (MtPst p, s, f) = p

-- updates meta to get correct past format if none
updateMeta :: (Meta,Meta,Meta) -> (Meta,Meta,Meta)
updateMeta (MtPstSize p, MtInCnt s, MtFuncs f) | (p>0) && (s>0) = (MtPst (generatePast s (length f) p), MtInCnt s, MtFuncs f)
                                               | otherwise = error "Invalid stream or size number" 
updateMeta (MtPst p, s, f) = (MtPst p, s, f)
updateMeta (MtInCnt s,MtPstSize p,MtFuncs f) | (p>0) && (s>0) = (MtPst (generatePast s (length f) p), MtInCnt s, MtFuncs f)
                                             | otherwise = error "Invalid stream or size number" 
updateMeta (s, MtPst p, f) = (MtPst p, s, f)

-- generates a blank past
generatePast :: Int -> Int -> Int -> Past
generatePast inCnt outCnt pstCnt
    | pstCnt > 0  = (replicate0 inCnt,replicate0 outCnt) : generatePast inCnt outCnt (pstCnt-1)
    | otherwise = []
    where
        replicate0 n = map (\x -> ExInt x) (replicate n 0)

-----------------Building lambda function from metadata functions-----------------

evalFunc :: (Meta,Meta,Meta) -> [Expr]
evalFunc (m1,m2,MtFuncs f) = evalFunc1 (m1,m2,MtFuncs f,length f)

evalFunc1 :: (Meta,Meta,Meta, Int) -> [Expr]
evalFunc1 (MtPst p, MtInCnt i, MtFuncs (f:fs), n)
    | (fs) /= [] = (generateLam vars f) : evalFunc1 (MtPst p, MtInCnt i, MtFuncs fs, n)
    | otherwise = [(generateLam vars f)]
        where
            vars = generateVars i n (length p)

-- builds lambdas out of functions and variable list
-- ExVAr -> Function -> Lam
generateLam :: [Expr] -> Expr -> Expr
generateLam [ExVar s] f = ExLam s f
generateLam ((ExVar s):ss) f = (ExLam s (generateLam ss f))

-- produces an ordered list of all possible var names
-- stream countin, stream count out, past size -> Vars
generateVars :: Int -> Int -> Int -> [Expr]
generateVars sin sout p  =  (makeMapOut streamOutVars) ++ (makeMapIn streamInVars) ++ streamInVars
    where
        streamInVars = (getStreamVars sin)
        streamOutVars = (getStreamVars sout)
        makeMapIn ((ExVar sv):svs)
            | svs /= [] = getPastVarsIn sv p ++ makeMapIn (svs)
            | otherwise = getPastVarsIn sv p
        makeMapOut ((ExVar sv):svs)
            | svs /= [] = getPastVarsOut sv p ++ makeMapOut (svs)
            | otherwise = getPastVarsOut sv p
        
-- gets the names of all possible vars in
getPastVarsIn :: String -> Int -> [Expr]
getPastVarsIn s i
    | i > 0 = [ExVar (s++".in"++show i)] ++ getPastVarsIn s (i-1)
    | otherwise = []
-- gets the names of all possible vars out
getPastVarsOut :: String -> Int -> [Expr]
getPastVarsOut s i
    | i > 0 = [ExVar (s++".out"++show i)] ++ getPastVarsOut s (i-1)
    | otherwise = []

-- gets the names of all possible vars for streams
getStreamVars :: Int -> [Expr]
getStreamVars i
    | i > 0 = [ExVar ("s"++show (i-1))] ++ getStreamVars (i-1)
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

-- Applies input to lambdas
-- func ins past
buildExpr ::  Expr -> InputList -> Past -> Expr
buildExpr f is p =  wrapIns f (is++(orderPastIn p)++(orderPastOut p))
    where
        wrapIns :: Expr -> [Expr] -> Expr
        wrapIns f (i:is)
            | null is = ExApp f i
            | otherwise = ExApp (wrapIns f is) i

        orderPastIn :: Past -> [Expr]
        orderPastIn [] = []
        orderPastIn (x:xs) = fst x ++ orderPastIn xs

        orderPastOut :: Past -> [Expr]
        orderPastOut [] = []
        orderPastOut (x:xs) = snd x ++ orderPastOut xs

---------Solve lambda with eval------------------------------------

--Loops to step through evaluation
evalLoop :: Expr -> Expr
evalLoop e = evalLoop' (e,[],[])
   where evalLoop' (e,env,k) = if (e' == e) && (k' == []) && (isValue e') then e' else evalLoop' (e',env',k')
                   where (e',env',k') = eval1 (e,env,k)

-- Gets an expression and it's enviroment associated with a variable
getValueBinding :: String -> Environment -> (Expr,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y  = unpack e env
                            | otherwise = getValueBinding x env

-- Gets the expr and new enviroment
unpack :: Expr -> Environment -> (Expr,Environment)
unpack (Cl x e env1) env2 = ((Cl x e env1), env1)
unpack e env = (e,env)

-- Pairs a variable's value and it's enviroment
update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env


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

-- throw error if pattern not expected 
eval1 x = error "Invalid stream input or past input" 
--------------------Other Functions-----------------

-- Checks for terminated expressions
isValue :: Expr -> Bool
isValue (ExInt _) = True
isValue (Cl _ _ _) = True

unparse :: [Expr] -> String
unparse [] = ""
unparse ((ExInt n):ns) = show n ++ ", " ++ unparse ns
unparse (n:ns) = "Unknown" ++ ", " ++ unparse ns
