module Types where 
import Grammar

--Data Types
data ExType = TyExInt
            | ExFun ExType
            deriving (Show,Eq)

type TypeEnvironment = [ (String,ExType) ]

getBinding :: String -> TypeEnvironment -> ExType
getBinding x [] = error "Variable binding not found"
getBinding x ((y,t):tenv) | x == y  = t
                        | otherwise = getBinding x tenv

addBinding :: String -> ExType -> TypeEnvironment -> TypeEnvironment
addBinding x t tenv = (x,t):tenv

--Type checking
typeOf :: TypeEnvironment -> Expr -> ExType
typeOf tenv (ExInt _ )  = TyExInt

typeOf tenv (ExSum e1 e2) = TyExInt 
  where (TyExInt,TyExInt) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExSub e1 e2) = TyExInt 
  where (TyExInt,TyExInt) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExMult e1 e2) = TyExInt 
  where (TyExInt,TyExInt) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv (ExVar x) = getBinding x tenv

typeOf tenv (ExLam x e) = ExFun u 
  where u = typeOf (addBinding x TyExInt tenv) e

typeOf tenv (ExApp e1 e2) | t3 == TyExInt = t2
  where ((ExFun t2),t3) = (typeOf tenv e1, typeOf tenv e2)

typeOf tenv _ = error "Type Error"

-- Function for printing the results of the TypeCheck
unparseType :: ExType -> String
unparseType TyExInt = "Int"
unparseType (ExFun t2) = (unparseType TyExInt) ++ " -> " ++ (unparseType t2)
