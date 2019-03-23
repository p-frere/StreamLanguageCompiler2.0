# Outline of language 

##### Instructions from the spec

- The interpreter is to take a file name (the program in your language) as a single command line argument. **✓**
- The interpreter should expect its input on standard input (stdin),**✓**
- produce output on standard output (stdout) and error messages on standard error (stderr) **✕** 
- For each problem, we will test whether your code performs correctly by using a number of
  tests. **✕** 
- We only care about correctness and performance will not be assessed (within reason - our
  marking scripts will timeout after a generous period of time). **✓**
- You can assume that for the tests we will use correctly formatted input. For example, when assessing your solution for problem 1 we will run **✕** 

  - `myinterpreter pr1.spl < input.txt`
  - where input.txt will contain the input streams for a particular test, 

###### TODO:

Error checking

- types

- empties

- correct function arguments

- order of lines and white space

- out of bounds

- wrong variables

  

## The Language 

#### Grammar for the Program 

```
<program> 	:= <metaData> <exprList> | EOF
<exprList	:= <expr> EOL <exprList> | <expr> EOF
<expr> 		:= <identifier> | <int> | <funcApp> | ( <expr> )
<identifier>:= s<posInt> | s<posInt>.<past>
<past>      := in<posInt> | out<posInt>
<funcApp> 	:= <expr><infxFunc><expr>
<infxFunc>	:= + |-| *

<metaData>	:= <streamCnt> <past>
<streamCnt> := SizeStreamsIn = <posInt>
<past>		:= <pastCnt> | <pastList>
<pastCnt>	:= SizePast = <posInt>
<pastList>	:= Past = [(<mapping>,<mapping>)]
<mapping>	:= [<intList>]

<intList> 	:= <int> | <int>, <intList>
<int> 		:= <posInt> | <negInt> | <zero>
<posInt> 	:= <digitNo0> | <digitNo0><digitList> 
<negInt> 	:= <sign><posInt>
<digitList> := <digit><digitList> | <digit>
<digitNo0> 	:= 1|2|3|4|5|6|7|8|9
<digit> 	:= 0|1|2|3|4|5|6|7|8|9
<sign> 		:= -
<zero>		:= 0

```

\* Comments are represented as ($) and the whole line following is considered white space



#### Grammar for the Input 

```
<input> 	:= <int> | <int> <input>

<intList> 	:= <int> | <int>, <intList>
<int> 		:= <posInt> | <negInt> | <zero>
<posInt> 	:= <digitNo0> | <digitNo0><digitList> 
<negInt> 	:= <sign><posInt>
<digitList> := <digit><digitList> | <digit>
<digitNo0> 	:= 1|2|3|4|5|6|7|8|9
<digit> 	:= 0|1|2|3|4|5|6|7|8|9
<sign> 		:= -
<zero>		:= 0
```



#### Binding 

- **Infix bind to left**
  - 1+1-1+1--1 becomes ((((1+1)-1)+1)-)-1

  - Bidmas 

    

#### Functionality

1. run program

2. reads from arugmented file 

3. processes file 

   1. turns code into functions
   2. assigns meta data for past and in stream size

4. reads from std in 

5. assigns inputs to arguments used in function

   1. passes arguments, functions and past for evaluation
   2. applied lambda is built
   3. evaluation

6. prints and updates past

7. repeat from step 4

   

## Program Structure
- set past size or type past
    - set with number,  past is set as all 0's
    - set with array, past takes on past specified and size

- set number of streams in

- declare functions
    - uses set variable
    - sN where N is number of stream is stream N's input
    - sN.inM where M is the index of a past in from sN in the stored past
    - sN.outM where M is the index of a past out from sN in the stored past
    - declaring further functions will print next to the original creating more streams

    

## Programs

##### And parsing for the input code

Challenge 1
```haskell
set past = [([0],[0])]
set inStreamCount = 1

s0.in1
EXPR = 
--Parse as:
--EXPR = (MtInCnt 1, MtPst [(0,0)], MtFuncs [ExVar "s0.in1"])
```
Challenge 2
```haskell
set pastCount = 0
set inStreamCount = 1

s0
s0

--Parse as:
--EXPR = (MtInCnt 1, MtPstSize 0, MtFuncs [ExVar "s0",ExVar "s0"])
```

Challenge 3
```haskell
set inStreamCount = 2
set pastCount = 0

s1 * 3 + s0

--Parse as:
--EXPR = (MtInCnt 2, MtPstSize 0, MtFuncs [ExSum (ExMult (ExVar "s1") (ExInt 3)) (ExVar "s0")]
```

Challenge 4
```haskell
set pastCount = 1
set inStreamCount = 1

s0.out1 + s0

--Parse as:
--EXPR = (MtInCnt 1, MtPstSize 1, MtFuncs [ExSum (ExVar "s0.out1") (ExVar "s0")]
```
Challenge 5
```haskell
set pastCount = 2
set inStreamCount = 1

s0.out1 + s0.out2 + s0

--Parse as:
--EXPR = (MtInCnt 1, MtPstSize 1, MtFuncs [ExSum (ExSum (ExVar "s0.out1") (ExVar "s0.out2")) (ExVar "s0")]
```



##### Parsing for the Input streams

```haskell
1 		= [ExInt 1]
1 2 	= [ExInt 1, ExInt 2]
```



### DataTypes

```haskell

type Mapping = ([Expr],[Expr])
type Past = [Mapping]
type FuncList = [Expr]
type InputList = [Expr]

type MetaData = (Meta, Meta, Meta)

data Meta = MtFuncs [Expr] 
            | MtPst Past   
            | MtPstSize Int
            | MtInCnt Int
            
data Expr = ExInt Int 
            | ExVar String   
            | ExSum Expr Expr 
            | ExSub Expr Expr 
            | ExMult Expr Expr  
            | Cl String Expr Environment
            | ExApp Expr Expr
            | ExLam String Expr
            | ExLet String Expr Expr deriving (Show,Eq)

type Environment = [ (String,Expr) ] 
```

