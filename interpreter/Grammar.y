{ 
module Grammar where 
import Tokens 
}

%name parseCalc MetaData
%name parseInput IntList

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
   var      { TokenVar _ $$ }
   lam      { TokenLam _ }
   set      { TokenSet _ }
   past     { TokenPast _ }
   pastCnt  { TokenPastCount _ }
   SCount   { TokenInStreamCount _ }
   eol      { TokenEndLine _ }

--associations
%nonassoc int var '(' ')' '[' ']' 
%left '+' '-'
%left '*' 
%right lam 
%left APP

%%

MetaData : Meta EOL Meta EOL Meta       { ($1, $3, $5) }

IntList : IntExprs                      { $1 }

EOL : eol            {}
    | eol EOL        {}

Meta : set past '=' '[' MappingExps ']'  { MtPst $5 }
     | set pastCnt '=' int               { MtPstSize $4 }  
     | set SCount '=' int                { MtInCnt $4 }
     | ExprList                          { MtFuncs $1 }

ExprList : Expr                      { [$1] }
         | Expr EOL ExprList         { $1 : $3 }

Expr : '(' Expr ')'                  { $2 }
     | int                           { ExInt $1 }
     | var                           { ExVar $1 } 
     | Expr '+' Expr                 { ExSum ($1) ($3) }
     | '+' '(' Expr ',' Expr ')'     { ExSum ($3) ($5) } 
     | Expr '-' Expr                 { ExSub ($1) ($3) }
     | '-' '(' Expr ',' Expr ')'     { ExSub ($3) ($5) }  
     | Expr '*' Expr                 { ExMult ($1) ($3) } 
     | '*' '(' Expr ',' Expr ')'     { ExMult ($3) ($5) }
     | Expr Expr %prec APP           { ExApp ($1) ($2) } 
     | lam var '(' Expr ')'          { ExLam ($2) ($4) }

MappingExps : MappingExps ',' MappingExp            { $3 : $1 }
            | MappingExp                            { [$1] }
MappingExp : '(''[' Exprs ']' ',' '[' Exprs ']'')'  { ($3 , $7) }
Exprs : Exprs ',' Expr                              { $3 : $1 }
      | Expr                                        { [$1] }

IntExprs : int           { [ExInt $1] }
         | int IntExprs  { ExInt $1 : $2 }


{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at: " ++ (tokenPosn t))

type Environment = [ (String,Expr) ]

type Mapping = ([Expr],[Expr])
type Past = [Mapping]
type FuncList = [Expr]
type InputList = [Expr]
type MetaData = (Meta, Meta, Meta)

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
          | Cl String Expr Environment
          deriving (Show,Eq)
} 