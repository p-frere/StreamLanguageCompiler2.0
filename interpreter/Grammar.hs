{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,238) ([27200,16488,26730,0,16384,26751,0,0,64,16384,0,64,27200,104,8192,0,0,8192,0,0,64,128,16384,26879,27200,16488,26730,27200,104,0,27200,16488,26730,27200,104,18432,12288,72,18480,32576,16492,27775,32576,108,0,27200,16488,26730,65344,16488,30847,27200,16488,26730,27200,16488,26879,65344,16488,26879,27200,104,0,16128,72,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Ex","Integer","Exp","int","'='","'+'","sum","'-'","sub","'*'","mult","'('","')'","'['","']'","','","let","in","var","lam","%eof"]
        bit_start = st * 24
        bit_end = (st + 1) * 24
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..23]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_4
action_0 (10) = happyShift action_5
action_0 (12) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (15) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (22) = happyShift action_10
action_0 (23) = happyShift action_11
action_0 (4) = happyGoto action_12
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_4
action_1 (10) = happyShift action_5
action_1 (12) = happyShift action_6
action_1 (14) = happyShift action_7
action_1 (15) = happyShift action_8
action_1 (20) = happyShift action_9
action_1 (22) = happyShift action_10
action_1 (23) = happyShift action_11
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_4

action_3 (7) = happyShift action_4
action_3 (9) = happyShift action_20
action_3 (10) = happyShift action_5
action_3 (11) = happyShift action_21
action_3 (12) = happyShift action_6
action_3 (13) = happyShift action_22
action_3 (14) = happyShift action_7
action_3 (15) = happyShift action_8
action_3 (20) = happyShift action_9
action_3 (22) = happyShift action_10
action_3 (23) = happyShift action_11
action_3 (5) = happyGoto action_2
action_3 (6) = happyGoto action_19
action_3 _ = happyReduce_1

action_4 _ = happyReduce_2

action_5 (15) = happyShift action_18
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (15) = happyShift action_17
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (15) = happyShift action_16
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (7) = happyShift action_4
action_8 (10) = happyShift action_5
action_8 (12) = happyShift action_6
action_8 (14) = happyShift action_7
action_8 (15) = happyShift action_8
action_8 (20) = happyShift action_9
action_8 (22) = happyShift action_10
action_8 (23) = happyShift action_11
action_8 (5) = happyGoto action_2
action_8 (6) = happyGoto action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (22) = happyShift action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_5

action_11 (22) = happyShift action_13
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (24) = happyAccept
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (15) = happyShift action_31
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_30
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_4
action_15 (9) = happyShift action_20
action_15 (10) = happyShift action_5
action_15 (11) = happyShift action_21
action_15 (12) = happyShift action_6
action_15 (13) = happyShift action_22
action_15 (14) = happyShift action_7
action_15 (15) = happyShift action_8
action_15 (16) = happyShift action_29
action_15 (20) = happyShift action_9
action_15 (22) = happyShift action_10
action_15 (23) = happyShift action_11
action_15 (5) = happyGoto action_2
action_15 (6) = happyGoto action_19
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_4
action_16 (10) = happyShift action_5
action_16 (12) = happyShift action_6
action_16 (14) = happyShift action_7
action_16 (15) = happyShift action_8
action_16 (20) = happyShift action_9
action_16 (22) = happyShift action_10
action_16 (23) = happyShift action_11
action_16 (5) = happyGoto action_2
action_16 (6) = happyGoto action_28
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_4
action_17 (10) = happyShift action_5
action_17 (12) = happyShift action_6
action_17 (14) = happyShift action_7
action_17 (15) = happyShift action_8
action_17 (20) = happyShift action_9
action_17 (22) = happyShift action_10
action_17 (23) = happyShift action_11
action_17 (5) = happyGoto action_2
action_17 (6) = happyGoto action_27
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_4
action_18 (10) = happyShift action_5
action_18 (12) = happyShift action_6
action_18 (14) = happyShift action_7
action_18 (15) = happyShift action_8
action_18 (20) = happyShift action_9
action_18 (22) = happyShift action_10
action_18 (23) = happyShift action_11
action_18 (5) = happyGoto action_2
action_18 (6) = happyGoto action_26
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyGoto action_2
action_19 (6) = happyGoto action_19
action_19 _ = happyReduce_12

action_20 (7) = happyShift action_4
action_20 (10) = happyShift action_5
action_20 (12) = happyShift action_6
action_20 (14) = happyShift action_7
action_20 (15) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (22) = happyShift action_10
action_20 (23) = happyShift action_11
action_20 (5) = happyGoto action_2
action_20 (6) = happyGoto action_25
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_4
action_21 (10) = happyShift action_5
action_21 (12) = happyShift action_6
action_21 (14) = happyShift action_7
action_21 (15) = happyShift action_8
action_21 (20) = happyShift action_9
action_21 (22) = happyShift action_10
action_21 (23) = happyShift action_11
action_21 (5) = happyGoto action_2
action_21 (6) = happyGoto action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_4
action_22 (10) = happyShift action_5
action_22 (12) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (15) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (22) = happyShift action_10
action_22 (23) = happyShift action_11
action_22 (5) = happyGoto action_2
action_22 (6) = happyGoto action_23
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (20) = happyShift action_9
action_23 (23) = happyShift action_11
action_23 (5) = happyGoto action_2
action_23 (6) = happyGoto action_19
action_23 _ = happyReduce_10

action_24 (13) = happyShift action_22
action_24 (14) = happyShift action_7
action_24 (20) = happyShift action_9
action_24 (23) = happyShift action_11
action_24 (5) = happyGoto action_2
action_24 (6) = happyGoto action_19
action_24 _ = happyReduce_8

action_25 (13) = happyShift action_22
action_25 (14) = happyShift action_7
action_25 (20) = happyShift action_9
action_25 (23) = happyShift action_11
action_25 (5) = happyGoto action_2
action_25 (6) = happyGoto action_19
action_25 _ = happyReduce_6

action_26 (7) = happyShift action_4
action_26 (9) = happyShift action_20
action_26 (10) = happyShift action_5
action_26 (11) = happyShift action_21
action_26 (12) = happyShift action_6
action_26 (13) = happyShift action_22
action_26 (14) = happyShift action_7
action_26 (15) = happyShift action_8
action_26 (19) = happyShift action_36
action_26 (20) = happyShift action_9
action_26 (22) = happyShift action_10
action_26 (23) = happyShift action_11
action_26 (5) = happyGoto action_2
action_26 (6) = happyGoto action_19
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_4
action_27 (9) = happyShift action_20
action_27 (10) = happyShift action_5
action_27 (11) = happyShift action_21
action_27 (12) = happyShift action_6
action_27 (13) = happyShift action_22
action_27 (14) = happyShift action_7
action_27 (15) = happyShift action_8
action_27 (19) = happyShift action_35
action_27 (20) = happyShift action_9
action_27 (22) = happyShift action_10
action_27 (23) = happyShift action_11
action_27 (5) = happyGoto action_2
action_27 (6) = happyGoto action_19
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_4
action_28 (9) = happyShift action_20
action_28 (10) = happyShift action_5
action_28 (11) = happyShift action_21
action_28 (12) = happyShift action_6
action_28 (13) = happyShift action_22
action_28 (14) = happyShift action_7
action_28 (15) = happyShift action_8
action_28 (19) = happyShift action_34
action_28 (20) = happyShift action_9
action_28 (22) = happyShift action_10
action_28 (23) = happyShift action_11
action_28 (5) = happyGoto action_2
action_28 (6) = happyGoto action_19
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_3

action_30 (7) = happyShift action_4
action_30 (10) = happyShift action_5
action_30 (12) = happyShift action_6
action_30 (14) = happyShift action_7
action_30 (15) = happyShift action_8
action_30 (20) = happyShift action_9
action_30 (22) = happyShift action_10
action_30 (23) = happyShift action_11
action_30 (5) = happyGoto action_2
action_30 (6) = happyGoto action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_4
action_31 (10) = happyShift action_5
action_31 (12) = happyShift action_6
action_31 (14) = happyShift action_7
action_31 (15) = happyShift action_8
action_31 (20) = happyShift action_9
action_31 (22) = happyShift action_10
action_31 (23) = happyShift action_11
action_31 (5) = happyGoto action_2
action_31 (6) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_4
action_32 (9) = happyShift action_20
action_32 (10) = happyShift action_5
action_32 (11) = happyShift action_21
action_32 (12) = happyShift action_6
action_32 (13) = happyShift action_22
action_32 (14) = happyShift action_7
action_32 (15) = happyShift action_8
action_32 (16) = happyShift action_41
action_32 (20) = happyShift action_9
action_32 (22) = happyShift action_10
action_32 (23) = happyShift action_11
action_32 (5) = happyGoto action_2
action_32 (6) = happyGoto action_19
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_4
action_33 (9) = happyShift action_20
action_33 (10) = happyShift action_5
action_33 (11) = happyShift action_21
action_33 (12) = happyShift action_6
action_33 (13) = happyShift action_22
action_33 (14) = happyShift action_7
action_33 (15) = happyShift action_8
action_33 (20) = happyShift action_9
action_33 (21) = happyShift action_40
action_33 (22) = happyShift action_10
action_33 (23) = happyShift action_11
action_33 (5) = happyGoto action_2
action_33 (6) = happyGoto action_19
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_4
action_34 (10) = happyShift action_5
action_34 (12) = happyShift action_6
action_34 (14) = happyShift action_7
action_34 (15) = happyShift action_8
action_34 (20) = happyShift action_9
action_34 (22) = happyShift action_10
action_34 (23) = happyShift action_11
action_34 (5) = happyGoto action_2
action_34 (6) = happyGoto action_39
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_4
action_35 (10) = happyShift action_5
action_35 (12) = happyShift action_6
action_35 (14) = happyShift action_7
action_35 (15) = happyShift action_8
action_35 (20) = happyShift action_9
action_35 (22) = happyShift action_10
action_35 (23) = happyShift action_11
action_35 (5) = happyGoto action_2
action_35 (6) = happyGoto action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_4
action_36 (10) = happyShift action_5
action_36 (12) = happyShift action_6
action_36 (14) = happyShift action_7
action_36 (15) = happyShift action_8
action_36 (20) = happyShift action_9
action_36 (22) = happyShift action_10
action_36 (23) = happyShift action_11
action_36 (5) = happyGoto action_2
action_36 (6) = happyGoto action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_4
action_37 (9) = happyShift action_20
action_37 (10) = happyShift action_5
action_37 (11) = happyShift action_21
action_37 (12) = happyShift action_6
action_37 (13) = happyShift action_22
action_37 (14) = happyShift action_7
action_37 (15) = happyShift action_8
action_37 (16) = happyShift action_45
action_37 (20) = happyShift action_9
action_37 (22) = happyShift action_10
action_37 (23) = happyShift action_11
action_37 (5) = happyGoto action_2
action_37 (6) = happyGoto action_19
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_4
action_38 (9) = happyShift action_20
action_38 (10) = happyShift action_5
action_38 (11) = happyShift action_21
action_38 (12) = happyShift action_6
action_38 (13) = happyShift action_22
action_38 (14) = happyShift action_7
action_38 (15) = happyShift action_8
action_38 (16) = happyShift action_44
action_38 (20) = happyShift action_9
action_38 (22) = happyShift action_10
action_38 (23) = happyShift action_11
action_38 (5) = happyGoto action_2
action_38 (6) = happyGoto action_19
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_4
action_39 (9) = happyShift action_20
action_39 (10) = happyShift action_5
action_39 (11) = happyShift action_21
action_39 (12) = happyShift action_6
action_39 (13) = happyShift action_22
action_39 (14) = happyShift action_7
action_39 (15) = happyShift action_8
action_39 (16) = happyShift action_43
action_39 (20) = happyShift action_9
action_39 (22) = happyShift action_10
action_39 (23) = happyShift action_11
action_39 (5) = happyGoto action_2
action_39 (6) = happyGoto action_19
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_4
action_40 (10) = happyShift action_5
action_40 (12) = happyShift action_6
action_40 (14) = happyShift action_7
action_40 (15) = happyShift action_8
action_40 (20) = happyShift action_9
action_40 (22) = happyShift action_10
action_40 (23) = happyShift action_11
action_40 (5) = happyGoto action_2
action_40 (6) = happyGoto action_42
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_13

action_42 (7) = happyFail []
action_42 (9) = happyShift action_20
action_42 (10) = happyShift action_5
action_42 (11) = happyShift action_21
action_42 (12) = happyShift action_6
action_42 (13) = happyShift action_22
action_42 (14) = happyShift action_7
action_42 (15) = happyFail []
action_42 (20) = happyShift action_9
action_42 (22) = happyFail []
action_42 (23) = happyShift action_11
action_42 (5) = happyGoto action_2
action_42 (6) = happyGoto action_19
action_42 _ = happyReduce_14

action_43 _ = happyReduce_11

action_44 _ = happyReduce_9

action_45 _ = happyReduce_7

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (ExInt happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  6 happyReduction_3
happyReduction_3 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  6 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (ExVar happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExSum (happy_var_1) (happy_var_3)
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 6 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExSum (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExSub (happy_var_1) (happy_var_3)
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 6 6 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExSub (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExMult (happy_var_1) (happy_var_3)
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 6 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExMult (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (ExApp (happy_var_1) (happy_var_2)
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 5 6 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExLam (happy_var_2) (happy_var_4)
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 6 happyReduction_14
happyReduction_14 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ExLet happy_var_2 (happy_var_4) (happy_var_6)
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 24 24 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 7;
	TokenEq _ -> cont 8;
	TokenPlus _ -> cont 9;
	TokenPlus _ -> cont 10;
	TokenMinus _ -> cont 11;
	TokenMinus _ -> cont 12;
	TokenTimes _ -> cont 13;
	TokenTimes _ -> cont 14;
	TokenLParen _ -> cont 15;
	TokenRParen _ -> cont 16;
	TokenLParenSq _ -> cont 17;
	TokenRParenSq _ -> cont 18;
	TokenSeq _ -> cont 19;
	TokenLet _ -> cont 20;
	TokenIn _ -> cont 21;
	TokenVar _ happy_dollar_dollar -> cont 22;
	TokenLam _ -> cont 23;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 24 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

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
          | ExLet String Expr Expr 
          deriving (Show,Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}

















































































































































































































-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 











data Happy_IntList = HappyCons Int Happy_IntList




















infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action




indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

