{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
   int      { TokenInt _ $$ }
   '='      { TokenEq _ }
   '+'      { TokenPlus _ }
   '-'      { TokenMinus _ }
   '*'      { TokenTimes _ }
   '('      { TokenLParen _ }
   ')'      { TokenRParen _ }
   '['      { TokenLParenSq _ }
   ']'      { TokenRParenSq _ }
   ','      { TokenSeq _ }
   let      { TokenLet _ }
   in       { TokenIn _ }
   var      { TokenVar _ $$ }
   lam      { TokenLam _ }
   set      { TokenSet _ }
   past     { TokenPast _ }
   pastCnt  { TokenPastCount _ }
   SCount   { TokenInStreamCount _ }
   eol      { TokenEndLine _ }
   app      { TokenApp _ }

%nonassoc int var '(' ')' '[' ']' in 
%left '+' '-'
%left '*' 
%right lam let app

%%

Exp : Meta Meta Meta                { MtData ($1, $2, $3) }
    | IntExprs                      { InList $1 }  

Meta : set past '=' '[' MappingExps ']'  { MtPst $5 }
     | set pastCnt '=' int               { MtPstSize $4 }  
     | set SCount '=' int                { MtInCnt $4 }
     | Expr                              { MtFuncs [$1] }

Expr : '(' Expr ')'                  { $2 }
     | int                           { ExInt $1 }
     | var                           { ExVar $1 } 
     | Expr '+' Expr                 { ExSum ($1) ($3) }
     | '+' '(' Expr ',' Expr ')'     { ExSum ($3) ($5) } 
     | Expr '-' Expr                 { ExSub ($1) ($3) }
     | '-' '(' Expr ',' Expr ')'     { ExSub ($3) ($5) }  
     | Expr '*' Expr                 { ExMult ($1) ($3) } 
     | '*' '(' Expr ',' Expr ')'     { ExMult ($3) ($5) }
     | app '(' Expr ',' Expr ')'     { ExApp ($3) ($5) }
     | lam var '(' Expr ')'          { ExLam ($2) ($4) }
     | let var '=' Expr in Expr      { ExLet $2 $4 $6 }
     | Expr eol Expr                 { $1, $3 }

MappingExps : MappingExps ',' MappingExp            { $3 : $1 }
            | MappingExp                            { [$1] }
MappingExp : '(''[' Exprs ']' ',' '[' Exprs ']'')'  { ($3 , $7) }
Exprs : Exprs ',' Expr                              { $3 : $1 }
      | Expr                                        { [$1] }

IntExprs : Expr           { [$1] }
         | IntExprs Expr  { $2 : $1 }


{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

type Environment = [ (String,Expr) ]

type Mapping = ([Expr],[Expr])
type Past = [Mapping]
type FuncList = [Expr]
type InputList = [Expr]
type MetaData = (Meta, Meta, Meta)

data Exp = MtData MetaData
         | InList InputList

data Meta = MtFuncs [Expr]
          | MtPst Past 
          | MtPstSize Int
          | MtInCnt Int
          deriving (Show,Eq)

data Expr = ExInt Int 
          | ExVar String 
          | ExSum Expr Expr 
          | ExSub Expr Expr 
          | ExMult Expr Expr  
          | ExApp Expr Expr
          | ExLam String Expr
          | ExLet String Expr Expr 
          | Cl String Expr Environment
          deriving (Show,Eq)
} 