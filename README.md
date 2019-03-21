# Outline of language 

##### Instructions from the spec

- The interpreter is to take a file name (the program in your language) as a single command line argument. 
- The interpreter should expect its input on standard input (stdin),
- produce output on standard output (stdout) and error messages on standard error (stderr).
- For each problem, we will test whether your code performs correctly by using a number of
  tests. 
- We only care about correctness and performance will not be assessed (within reason - our
  marking scripts will timeout after a generous period of time). 
- You can assume that for the tests we will use correctly formatted input. For example, when assessing your solution for problem 1 we will run

  - `myinterpreter pr1.spl < input.txt`
  - where input.txt will contain the input streams for a particular test, 

## The Language 

#### Grammar

```
<program> 	:= <exprList> | EOF
<exprList	:= <expr> EOL <exprList> | <expr> EOF
<expr> 		:= <identifier> | <int> | <funcApp> | ( <expr> )
<identifier>:= s<posInt> | s<posInt>.<past>
<past>      := in<posInt> | out<posInt>
<funcApp> 	:= <expr><infxFunc><expr>
<infxFunc>	:= + |-| *

<intList> 	:= <int> | <int> <intList>
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

#### Binding 

- **Infix bind to left**
  - 1+1-1+1--1 becomes ((((1+1)-1)+1)-)-1
  - Bidmas 

#### Functionality

1. run program
2. reads from arugmented file 
3. turns code into functions
4. reads from std in 
5. assigns inputs to arguments used in function, passes history
6. evaluates the function
7. prints and updates history
8. repeate from step 4
   reads the first line <- this could be a assignment | expr | var | comment

## Program Structure
- set past size
    - set with number,  past is set as all 0's
    - set with array, past takes on past specified and size
- declare function
    - uses set variable
    - sN where N is number of stream is stream N's input
    - sN.inM where M is the index of a past in from sN in the stored past
    - sN.outM where M is the index of a past out from sN in the stored past
- delaring further functions will print next to the original creating more streams

## Programs
Challenge 1
```
set past = [(0,0)]

s0.in1
```
Challenge 2
```
set past = 0

s0
s0
```

Challenge 3
```
set past = 0

s1 * 3 + s0
```

Challenge 4
```
set past = 1

s0.out1 + s0
```
Challenge 5
```
set past = 2

s0.out1 + s0.out2 + s0
```
  