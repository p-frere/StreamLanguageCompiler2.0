{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,290) ([18432,7437,36864,14874,8192,29749,0,0,0,42,0,0,0,512,0,1024,0,2048,0,6800,26,0,16,0,0,0,64,0,7168,0,0,2048,0,4096,0,8192,0,0,32,32768,0,32768,53758,0,41385,1,17234,3,34468,6,0,0,6800,26,13600,52,27200,104,54400,464,0,0,0,576,0,1155,0,2310,53248,6943,40960,13887,16384,27775,0,0,0,41385,1,17234,3,4,0,8,0,16384,0,0,0,16384,0,0,0,0,0,64000,839,62464,1927,18432,3341,36864,6682,8192,13365,16384,26879,32768,53758,0,41981,1,17234,3,0,0,49152,0,0,0,32768,0,27200,104,0,0,0,1,63488,577,0,0,0,0,0,0,0,0,16384,26751,0,3072,0,4096,0,17234,3,34804,6,8192,0,6800,26,0,3,32768,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Ex","MetaExp","Integer","Exp","PastExp","MappingExps","MappingExp","Exps","int","'='","'+'","sum","'-'","sub","'*'","mult","'('","')'","'['","']'","','","let","in","var","lam","set","past","pastCount","inStreamCount","%eof"]
        bit_start = st * 33
        bit_end = (st + 1) * 33
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..32]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (12) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (19) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (27) = happyShift action_11
action_0 (28) = happyShift action_12
action_0 (29) = happyShift action_13
action_0 (4) = happyGoto action_14
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (12) = happyShift action_5
action_1 (15) = happyShift action_6
action_1 (17) = happyShift action_7
action_1 (19) = happyShift action_8
action_1 (20) = happyShift action_9
action_1 (25) = happyShift action_10
action_1 (27) = happyShift action_11
action_1 (28) = happyShift action_12
action_1 (29) = happyShift action_13
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (12) = happyShift action_5
action_2 (15) = happyShift action_6
action_2 (17) = happyShift action_7
action_2 (19) = happyShift action_8
action_2 (20) = happyShift action_9
action_2 (25) = happyShift action_10
action_2 (27) = happyShift action_11
action_2 (28) = happyShift action_12
action_2 (29) = happyShift action_13
action_2 (5) = happyGoto action_28
action_2 (6) = happyGoto action_3
action_2 (7) = happyGoto action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_8

action_4 (12) = happyShift action_5
action_4 (14) = happyShift action_25
action_4 (15) = happyShift action_6
action_4 (16) = happyShift action_26
action_4 (17) = happyShift action_7
action_4 (18) = happyShift action_27
action_4 (19) = happyShift action_8
action_4 (20) = happyShift action_9
action_4 (25) = happyShift action_10
action_4 (27) = happyShift action_11
action_4 (28) = happyShift action_12
action_4 (6) = happyGoto action_3
action_4 (7) = happyGoto action_24
action_4 _ = happyReduce_5

action_5 _ = happyReduce_6

action_6 (20) = happyShift action_23
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (20) = happyShift action_22
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (20) = happyShift action_21
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (12) = happyShift action_5
action_9 (15) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (19) = happyShift action_8
action_9 (20) = happyShift action_9
action_9 (25) = happyShift action_10
action_9 (27) = happyShift action_11
action_9 (28) = happyShift action_12
action_9 (6) = happyGoto action_3
action_9 (7) = happyGoto action_20
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (27) = happyShift action_19
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_9

action_12 (27) = happyShift action_18
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (30) = happyShift action_15
action_13 (31) = happyShift action_16
action_13 (32) = happyShift action_17
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (33) = happyAccept
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_41
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_40
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_39
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (20) = happyShift action_38
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (13) = happyShift action_37
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (12) = happyShift action_5
action_20 (14) = happyShift action_25
action_20 (15) = happyShift action_6
action_20 (16) = happyShift action_26
action_20 (17) = happyShift action_7
action_20 (18) = happyShift action_27
action_20 (19) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (21) = happyShift action_36
action_20 (25) = happyShift action_10
action_20 (27) = happyShift action_11
action_20 (28) = happyShift action_12
action_20 (6) = happyGoto action_3
action_20 (7) = happyGoto action_24
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_5
action_21 (15) = happyShift action_6
action_21 (17) = happyShift action_7
action_21 (19) = happyShift action_8
action_21 (20) = happyShift action_9
action_21 (25) = happyShift action_10
action_21 (27) = happyShift action_11
action_21 (28) = happyShift action_12
action_21 (6) = happyGoto action_3
action_21 (7) = happyGoto action_35
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_5
action_22 (15) = happyShift action_6
action_22 (17) = happyShift action_7
action_22 (19) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (25) = happyShift action_10
action_22 (27) = happyShift action_11
action_22 (28) = happyShift action_12
action_22 (6) = happyGoto action_3
action_22 (7) = happyGoto action_34
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_5
action_23 (15) = happyShift action_6
action_23 (17) = happyShift action_7
action_23 (19) = happyShift action_8
action_23 (20) = happyShift action_9
action_23 (25) = happyShift action_10
action_23 (27) = happyShift action_11
action_23 (28) = happyShift action_12
action_23 (6) = happyGoto action_3
action_23 (7) = happyGoto action_33
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyGoto action_3
action_24 (7) = happyGoto action_24
action_24 _ = happyReduce_16

action_25 (12) = happyShift action_5
action_25 (15) = happyShift action_6
action_25 (17) = happyShift action_7
action_25 (19) = happyShift action_8
action_25 (20) = happyShift action_9
action_25 (25) = happyShift action_10
action_25 (27) = happyShift action_11
action_25 (28) = happyShift action_12
action_25 (6) = happyGoto action_3
action_25 (7) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_5
action_26 (15) = happyShift action_6
action_26 (17) = happyShift action_7
action_26 (19) = happyShift action_8
action_26 (20) = happyShift action_9
action_26 (25) = happyShift action_10
action_26 (27) = happyShift action_11
action_26 (28) = happyShift action_12
action_26 (6) = happyGoto action_3
action_26 (7) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_5
action_27 (15) = happyShift action_6
action_27 (17) = happyShift action_7
action_27 (19) = happyShift action_8
action_27 (20) = happyShift action_9
action_27 (25) = happyShift action_10
action_27 (27) = happyShift action_11
action_27 (28) = happyShift action_12
action_27 (6) = happyGoto action_3
action_27 (7) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (12) = happyShift action_5
action_28 (15) = happyShift action_6
action_28 (17) = happyShift action_7
action_28 (19) = happyShift action_8
action_28 (20) = happyShift action_9
action_28 (25) = happyShift action_10
action_28 (27) = happyShift action_11
action_28 (28) = happyShift action_12
action_28 (29) = happyShift action_13
action_28 (5) = happyGoto action_29
action_28 (6) = happyGoto action_3
action_28 (7) = happyGoto action_4
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_1

action_30 (25) = happyShift action_10
action_30 (28) = happyShift action_12
action_30 (6) = happyGoto action_3
action_30 (7) = happyGoto action_24
action_30 _ = happyReduce_14

action_31 (18) = happyShift action_27
action_31 (19) = happyShift action_8
action_31 (25) = happyShift action_10
action_31 (28) = happyShift action_12
action_31 (6) = happyGoto action_3
action_31 (7) = happyGoto action_24
action_31 _ = happyReduce_12

action_32 (18) = happyShift action_27
action_32 (19) = happyShift action_8
action_32 (25) = happyShift action_10
action_32 (28) = happyShift action_12
action_32 (6) = happyGoto action_3
action_32 (7) = happyGoto action_24
action_32 _ = happyReduce_10

action_33 (12) = happyShift action_5
action_33 (14) = happyShift action_25
action_33 (15) = happyShift action_6
action_33 (16) = happyShift action_26
action_33 (17) = happyShift action_7
action_33 (18) = happyShift action_27
action_33 (19) = happyShift action_8
action_33 (20) = happyShift action_9
action_33 (24) = happyShift action_50
action_33 (25) = happyShift action_10
action_33 (27) = happyShift action_11
action_33 (28) = happyShift action_12
action_33 (6) = happyGoto action_3
action_33 (7) = happyGoto action_24
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_5
action_34 (14) = happyShift action_25
action_34 (15) = happyShift action_6
action_34 (16) = happyShift action_26
action_34 (17) = happyShift action_7
action_34 (18) = happyShift action_27
action_34 (19) = happyShift action_8
action_34 (20) = happyShift action_9
action_34 (24) = happyShift action_49
action_34 (25) = happyShift action_10
action_34 (27) = happyShift action_11
action_34 (28) = happyShift action_12
action_34 (6) = happyGoto action_3
action_34 (7) = happyGoto action_24
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (12) = happyShift action_5
action_35 (14) = happyShift action_25
action_35 (15) = happyShift action_6
action_35 (16) = happyShift action_26
action_35 (17) = happyShift action_7
action_35 (18) = happyShift action_27
action_35 (19) = happyShift action_8
action_35 (20) = happyShift action_9
action_35 (24) = happyShift action_48
action_35 (25) = happyShift action_10
action_35 (27) = happyShift action_11
action_35 (28) = happyShift action_12
action_35 (6) = happyGoto action_3
action_35 (7) = happyGoto action_24
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_7

action_37 (12) = happyShift action_5
action_37 (15) = happyShift action_6
action_37 (17) = happyShift action_7
action_37 (19) = happyShift action_8
action_37 (20) = happyShift action_9
action_37 (25) = happyShift action_10
action_37 (27) = happyShift action_11
action_37 (28) = happyShift action_12
action_37 (6) = happyGoto action_3
action_37 (7) = happyGoto action_47
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (12) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (17) = happyShift action_7
action_38 (19) = happyShift action_8
action_38 (20) = happyShift action_9
action_38 (25) = happyShift action_10
action_38 (27) = happyShift action_11
action_38 (28) = happyShift action_12
action_38 (6) = happyGoto action_3
action_38 (7) = happyGoto action_46
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (12) = happyShift action_45
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (12) = happyShift action_44
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (22) = happyShift action_43
action_41 (8) = happyGoto action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_2

action_43 (20) = happyShift action_58
action_43 (9) = happyGoto action_56
action_43 (10) = happyGoto action_57
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_4

action_45 _ = happyReduce_3

action_46 (12) = happyShift action_5
action_46 (14) = happyShift action_25
action_46 (15) = happyShift action_6
action_46 (16) = happyShift action_26
action_46 (17) = happyShift action_7
action_46 (18) = happyShift action_27
action_46 (19) = happyShift action_8
action_46 (20) = happyShift action_9
action_46 (21) = happyShift action_55
action_46 (25) = happyShift action_10
action_46 (27) = happyShift action_11
action_46 (28) = happyShift action_12
action_46 (6) = happyGoto action_3
action_46 (7) = happyGoto action_24
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (12) = happyShift action_5
action_47 (14) = happyShift action_25
action_47 (15) = happyShift action_6
action_47 (16) = happyShift action_26
action_47 (17) = happyShift action_7
action_47 (18) = happyShift action_27
action_47 (19) = happyShift action_8
action_47 (20) = happyShift action_9
action_47 (25) = happyShift action_10
action_47 (26) = happyShift action_54
action_47 (27) = happyShift action_11
action_47 (28) = happyShift action_12
action_47 (6) = happyGoto action_3
action_47 (7) = happyGoto action_24
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (12) = happyShift action_5
action_48 (15) = happyShift action_6
action_48 (17) = happyShift action_7
action_48 (19) = happyShift action_8
action_48 (20) = happyShift action_9
action_48 (25) = happyShift action_10
action_48 (27) = happyShift action_11
action_48 (28) = happyShift action_12
action_48 (6) = happyGoto action_3
action_48 (7) = happyGoto action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (12) = happyShift action_5
action_49 (15) = happyShift action_6
action_49 (17) = happyShift action_7
action_49 (19) = happyShift action_8
action_49 (20) = happyShift action_9
action_49 (25) = happyShift action_10
action_49 (27) = happyShift action_11
action_49 (28) = happyShift action_12
action_49 (6) = happyGoto action_3
action_49 (7) = happyGoto action_52
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (12) = happyShift action_5
action_50 (15) = happyShift action_6
action_50 (17) = happyShift action_7
action_50 (19) = happyShift action_8
action_50 (20) = happyShift action_9
action_50 (25) = happyShift action_10
action_50 (27) = happyShift action_11
action_50 (28) = happyShift action_12
action_50 (6) = happyGoto action_3
action_50 (7) = happyGoto action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (12) = happyShift action_5
action_51 (14) = happyShift action_25
action_51 (15) = happyShift action_6
action_51 (16) = happyShift action_26
action_51 (17) = happyShift action_7
action_51 (18) = happyShift action_27
action_51 (19) = happyShift action_8
action_51 (20) = happyShift action_9
action_51 (21) = happyShift action_65
action_51 (25) = happyShift action_10
action_51 (27) = happyShift action_11
action_51 (28) = happyShift action_12
action_51 (6) = happyGoto action_3
action_51 (7) = happyGoto action_24
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (12) = happyShift action_5
action_52 (14) = happyShift action_25
action_52 (15) = happyShift action_6
action_52 (16) = happyShift action_26
action_52 (17) = happyShift action_7
action_52 (18) = happyShift action_27
action_52 (19) = happyShift action_8
action_52 (20) = happyShift action_9
action_52 (21) = happyShift action_64
action_52 (25) = happyShift action_10
action_52 (27) = happyShift action_11
action_52 (28) = happyShift action_12
action_52 (6) = happyGoto action_3
action_52 (7) = happyGoto action_24
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_5
action_53 (14) = happyShift action_25
action_53 (15) = happyShift action_6
action_53 (16) = happyShift action_26
action_53 (17) = happyShift action_7
action_53 (18) = happyShift action_27
action_53 (19) = happyShift action_8
action_53 (20) = happyShift action_9
action_53 (21) = happyShift action_63
action_53 (25) = happyShift action_10
action_53 (27) = happyShift action_11
action_53 (28) = happyShift action_12
action_53 (6) = happyGoto action_3
action_53 (7) = happyGoto action_24
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (12) = happyShift action_5
action_54 (15) = happyShift action_6
action_54 (17) = happyShift action_7
action_54 (19) = happyShift action_8
action_54 (20) = happyShift action_9
action_54 (25) = happyShift action_10
action_54 (27) = happyShift action_11
action_54 (28) = happyShift action_12
action_54 (6) = happyGoto action_3
action_54 (7) = happyGoto action_62
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_17

action_56 (23) = happyShift action_60
action_56 (24) = happyShift action_61
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_21

action_58 (22) = happyShift action_59
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_5
action_59 (15) = happyShift action_6
action_59 (17) = happyShift action_7
action_59 (19) = happyShift action_8
action_59 (20) = happyShift action_9
action_59 (25) = happyShift action_10
action_59 (27) = happyShift action_11
action_59 (28) = happyShift action_12
action_59 (6) = happyGoto action_3
action_59 (7) = happyGoto action_67
action_59 (11) = happyGoto action_68
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_19

action_61 (20) = happyShift action_58
action_61 (10) = happyGoto action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (12) = happyFail []
action_62 (14) = happyShift action_25
action_62 (15) = happyShift action_6
action_62 (16) = happyShift action_26
action_62 (17) = happyShift action_7
action_62 (18) = happyShift action_27
action_62 (19) = happyShift action_8
action_62 (20) = happyFail []
action_62 (25) = happyShift action_10
action_62 (27) = happyFail []
action_62 (28) = happyShift action_12
action_62 (6) = happyGoto action_3
action_62 (7) = happyGoto action_24
action_62 _ = happyReduce_18

action_63 _ = happyReduce_15

action_64 _ = happyReduce_13

action_65 _ = happyReduce_11

action_66 _ = happyReduce_20

action_67 (12) = happyShift action_5
action_67 (14) = happyShift action_25
action_67 (15) = happyShift action_6
action_67 (16) = happyShift action_26
action_67 (17) = happyShift action_7
action_67 (18) = happyShift action_27
action_67 (19) = happyShift action_8
action_67 (20) = happyShift action_9
action_67 (25) = happyShift action_10
action_67 (27) = happyShift action_11
action_67 (28) = happyShift action_12
action_67 (6) = happyGoto action_3
action_67 (7) = happyGoto action_24
action_67 _ = happyReduce_24

action_68 (23) = happyShift action_69
action_68 (24) = happyShift action_70
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (24) = happyShift action_72
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (12) = happyShift action_5
action_70 (15) = happyShift action_6
action_70 (17) = happyShift action_7
action_70 (19) = happyShift action_8
action_70 (20) = happyShift action_9
action_70 (25) = happyShift action_10
action_70 (27) = happyShift action_11
action_70 (28) = happyShift action_12
action_70 (6) = happyGoto action_3
action_70 (7) = happyGoto action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (12) = happyShift action_5
action_71 (14) = happyShift action_25
action_71 (15) = happyShift action_6
action_71 (16) = happyShift action_26
action_71 (17) = happyShift action_7
action_71 (18) = happyShift action_27
action_71 (19) = happyShift action_8
action_71 (20) = happyShift action_9
action_71 (25) = happyShift action_10
action_71 (27) = happyShift action_11
action_71 (28) = happyShift action_12
action_71 (6) = happyGoto action_3
action_71 (7) = happyGoto action_24
action_71 _ = happyReduce_23

action_72 (22) = happyShift action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (12) = happyShift action_5
action_73 (15) = happyShift action_6
action_73 (17) = happyShift action_7
action_73 (19) = happyShift action_8
action_73 (20) = happyShift action_9
action_73 (25) = happyShift action_10
action_73 (27) = happyShift action_11
action_73 (28) = happyShift action_12
action_73 (6) = happyGoto action_3
action_73 (7) = happyGoto action_67
action_73 (11) = happyGoto action_74
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (23) = happyShift action_75
action_74 (24) = happyShift action_70
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (21) = happyShift action_76
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_22

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_3)
	(HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ((happy_var_1, happy_var_2, happy_var_3)
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 4 5 happyReduction_2
happyReduction_2 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MtPst happy_var_4
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 4 5 happyReduction_3
happyReduction_3 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MtInCnt happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 4 5 happyReduction_4
happyReduction_4 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MtPstSize happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (MtFuncs [happy_var_1]
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (ExInt happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  7 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (ExVar happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ExSum (happy_var_1) (happy_var_3)
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 7 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExSum (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ExSub (happy_var_1) (happy_var_3)
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 7 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExSub (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ExMult (happy_var_1) (happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 7 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExMult (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_2  7 happyReduction_16
happyReduction_16 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (ExApp (happy_var_1) (happy_var_2)
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 5 7 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExLam (happy_var_2) (happy_var_4)
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 7 happyReduction_18
happyReduction_18 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ExLet happy_var_2 (happy_var_4) (happy_var_6)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_3 : happy_var_1
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happyReduce 9 10 happyReduction_22
happyReduction_22 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 ((happy_var_3 , happy_var_7)
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_3 : happy_var_1
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 12;
	TokenEq _ -> cont 13;
	TokenPlus _ -> cont 14;
	TokenPlus _ -> cont 15;
	TokenMinus _ -> cont 16;
	TokenMinus _ -> cont 17;
	TokenTimes _ -> cont 18;
	TokenTimes _ -> cont 19;
	TokenLParen _ -> cont 20;
	TokenRParen _ -> cont 21;
	TokenLParenSq _ -> cont 22;
	TokenRParenSq _ -> cont 23;
	TokenSeq _ -> cont 24;
	TokenLet _ -> cont 25;
	TokenIn _ -> cont 26;
	TokenVar _ happy_dollar_dollar -> cont 27;
	TokenLam _ -> cont 28;
	TokenSet _ -> cont 29;
	TokenPast _ -> cont 30;
	TokenPastCount _ -> cont 31;
	TokenInStreamCount _ -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
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

