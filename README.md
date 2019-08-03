# User Manual: ExStream

#### The Basics 
The language is built to apply operations to multiple infinite streams of data. The language is designed to take an input, apply modifications and return an output on potentially unbounded data.

The code should be thought to act as a transformation box, say we were to multiply a stream by 2,
the stream should pass through the program one integer at a time, with the program applying its function and return the modified value, altering the stream as it moves through the box. Only a single value is consumed, processed and returned each time producing a modified stream.

```
								 _____
			Input -> ...1 1 1 1	| x2  | 2 2 2 2 2... -> Output
								|_____|
```
#### Addressing streams
- The number passed to the program on each iteration of input from the stream, can be referred to with the keyword **s0.**
- So to multiply each input by 2 you would write `s0 * 2` as a transformation.
- The language has the ability to accept an input or output of multiple streams, each stream's current input is accessed under the reserved word relating to its order of input from base 0:
	- **sN** - where n is the nth stream in the input list ofindex of the streams, starting from base 0.

```
For example, a program that added 2 streams to combine them
								     __________
			Input(s0) -> ...1 1 1 1	| s0 + s1  | 3 3 3 3 3... -> Output
			Input(s1) -> ...2 2 2 2	|__________|
```
- Each line in the program represents a transformation.
- To add a new output stream, write a transformation on a new line.
- The lines order relates to the stream it will output onto.

```
For example a program that prints a stream twice:
								     ______
			Input(s0) -> ...3 3 3 3	| s0   | 3 3 3 3 3... -> Output(s0)
									| s0   | 3 3 3 3 3... -> Output(s1)
									|______
```
- At the beginning of the program, you must specify how many streams your programit should expect with:`set inStreamCount = <Integer>`

#### Referencing past values
To reference values which have already been processed the program keeps a window of past inputs and outputs stored. These can be called using their keywords.
For each stream sN where N is the  stream, **sN.inM** or **sN.outM**  gives you the ability to access a past input and output value at index M. This index starts at 1 and references the previous values inputted and outputted. So an index of 1 would be the previous value outputted, and index 2 references the previous to that and so on and increasing as the more iterations ago it was processed.
(Note: If the index allowed access to 0, sN.in0 would be equivalent to the s0 variable, and s0.out0 would be the value yet calculated that round. These values cannot be referenced, this is just to aid explanation. ) 
```		
Stored in the program:
							 __________	 s0.in1		s0.in2		s0.in3... -> The input entered previously
			Input -> x  x	| 	s0	   | s0.out1 	s0.out2 	s0.out3...  -> Output
							|__________|	^						^
										last processed			processed 3 iteration ago	
Example program of the previous output added to current input:
								 _______________
			Input -> ... 1 1 1	| s0 + s0.out1  | 4 3 2 1... -> Output
								|_______________|
```
#### Creating a past
- The computer cannot store an infinite stream of numbers so a window size must be set and populated to store the past.
- A custom past can be created with the command `set  past  =  <stream past>`
- The past must size must  be greater than 0 as there must always be a past size of at least 1 to print the result to the output.
	- So at minimum there must be a window size of 1, storing 1 input and 1 output value from the previous iteration.
- The past will have a diffent shape depending on how many input and output streams you are accepting.
- When adding a past you are specifying that shape to the compiler:
```
Stream past format:
[] - Specifies the past window,  () - specifies each previous iteration   [][] - Stream inputs and outputs
 
 iter1 (equivilent to prev values) 				iter2 (equivilent to prev prev values)	 ...
[ ([s0.in1, s1.in1,s2.in1... ],[s0.out1...]), 	([s0.in2,s1.in2,s2.in2...],[s0.out2...]),		... ]

As an Example: 
The minimum past (1 stream in and out) that took a zero and returned a zero last round would be:
[([0],[0])]

A past that has 1 stream in and out and has had its numbers multiplied by 2 would be:
[([3],[6]),([2],[4]),([1],[2])]

```
#### Program format
Each program begins with data on the program's inputs and past followed by each line of operation.
```
set  past  =  <stream past> 
set  inStreamCount  =  <integer> 

<operation to produce output stream 0>
<operation to produce output stream 1>
<operation to produce output stream 2>
...
```
- The past must always be specified or given a size
- The number of input streams must be specified
- There must be a minimum of one output stream

#### Comments
Comments are written on the same line after a **$**

#### Operations and binding order
- ExSteam uses a BOMAS/BIDMAS-esque system,
	- brackets bind tightest
	- then multiplication
	- then add and subtract bind the weakest 
- Negative numbers are written with no spacing between the - symbol and the number itself, for example, `-1`.

#### Type Checking
- The type checking checks that all operations: 
	- have the correct number of arguments
	- have the correct type of arguments
	- output the correct data types
- the language currently only has integer variable types
    
#### Informative Error Messages
	Parse error at: Line:1 Col:21 ERROR: Variable:"a"
Error messages include the type of error messege, the line number and the column (position in the line of the syntax error), and the error itself. Error types include:
- "Invalid stream or size number"
- "Variable binding not found"
- "Unknown Parse Error"
- "Type Error"
- - "Invalid stream input or past input" (Illegal input)
#### Syntactic Sugar/Convince Function
- Set past
  - Setting a past is often laborious and often may need a stream of 0's as some initial values.
  - The syntactic sugar `set pastCount = <Integer>` creates a past of a specified size and automatically populated with 0's.
  - The past must be greater than 0 as there must always be a past size of at least 1 to print the result to the output.

## Appendix
### Challenge Answers
Challenge 1 - Appending a zero
```haskell
set past = [([0],[0])]
set inStreamCount = 1

s0.in1
```
Challenge 2 - Duplicating a stream
```haskell
set pastCount = 0
set inStreamCount = 1

s0
s0
```

Challenge 3 - Arithmetic to combine 2 streams
```haskell
set inStreamCount = 2
set pastCount = 0

s1 * 3 + s0
```

Challenge 4 - Accumulator
```haskell
set pastCount = 1
set inStreamCount = 1

s0.out1 + s0
```
Challenge 5 - Fibonacci
```haskell
set pastCount = 2
set inStreamCount = 1

s0.out1 + s0.out2 + s0
```

Challenge 6 - Printing current and previous input
```haskell
set past = [([0],[0,0])]
set inStreamCount = 1

s0
s0.in1
```
Challenge 7 - Taking the first stream from the second and printing it with the first
```haskell
set inStreamCount = 2
set pastCount = 1

s0 - s1
s0
```
Challenge 8 - Adding the current and previous input
```haskell
set pastCount = 3
set inStreamCount = 1

s0.in1 + s0
```
Challenge 9 - Combining a stream with natural numbers
$$a_1, 	2a_1 + a_2,	 3a_1 + 2a_2 + a_3 4a_1 + 3a_2 + 2a_3 + a, ... $$
```haskell
set pastCount = 3
set inStreamCount = 1

(s0.out1 - s0.out2) + s0 + s0.out1
```
Challenge 10 - Delayed Feedback, adding every other item of the stream
$$a_1, a_2, a_3 + a_1 a_4 + a_2, a_5 + a_3 + a_1, a_6 + a_4 + a_2 . . .$$
```haskell
set pastCount = 3
set inStreamCount = 1

s0 + s0.out2
```

### Grammar for syntax
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
```

### Extra: Syntax highlighter
To create the syntax highlighter we used [iro by eeyo.io](https://eeyo.io/iro/) and this allows us to write one grammar and formatting and export it for almost all editors. I have prepackaged and modified them for Sublime Text 3 and Atom
To install the highlighter for atom you can simply search for the ExStream package and install it via the package installer or go to [https://atom.io/packages/exstream](https://atom.io/packages/exstream).

To install for sublime text, it is more difficult than atom, you have to place the ExStream.sublime-syntax file in the sublime text 3 packages/user folder, this is found in Library/ApplicationSupport on MacOS. Other operating systems may have other package folders.

Iro supports syntax highlighting for:
- TextMate, which is many popular editors such as VSCode, IntelliJ and eclipse use.
- Atom
- Ace
- Pygments
- Rouge
- Sublime Text 3

The elements that are highlighted are:
- comments - there are the $ comments
- keyword - the stream variable names e.g. s0 or s1
- numbers - the integers you can use in calculations
- set - the set keywords for the metadata
- meta - the inStreamCount, pastCount and past keywords
- in and out keywords - this defines the input or output past you are referring to 
- in/out number - the position in the past
- symbol - multiplication *, addition + or subtraction - symbols
