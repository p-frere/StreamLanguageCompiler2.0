{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t5 t6 t7 t8 t9 t10 t11 t12 t13
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,406) ([40960,3719,16384,3343,32768,14878,0,0,4,0,0,53492,0,0,0,512,0,1024,0,2048,0,7808,26,0,16,0,0,0,64,0,7168,0,0,0,0,16384,3343,0,0,0,0,0,0,0,53492,0,41448,1,17360,3,64,0,128,0,256,0,8192,0,1024,0,62464,209,59392,417,53248,835,40960,1671,16384,3343,32768,14878,0,0,4,0,0,55540,0,45544,1,25552,3,0,0,3904,13,7808,26,256,0,512,0,0,2,0,288,53248,835,0,1154,16384,3343,0,4616,0,13373,0,27898,0,55796,0,46056,1,512,0,0,0,0,0,16000,26,15616,60,31232,104,62464,208,59392,417,53248,1859,0,0,16384,3359,32768,6718,0,13437,0,26746,0,0,0,6144,0,0,0,4096,0,3904,13,0,0,8192,0,14336,72,0,0,0,0,0,0,0,0,16384,3343,0,384,0,512,0,26746,0,53492,0,1024,0,17360,3,24576,0,4096,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","%start_parseInput","MetaData","IntList","Meta","ExprList","Expr","MappingExps","MappingExp","Exprs","IntExprs","int","'='","'+'","'-'","'*'","'('","')'","'['","']'","','","let","in","var","lam","set","past","pastCnt","SCount","eol","%eof"]
        bit_start = st * 33
        bit_end = (st + 1) * 33
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..32]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (14) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (18) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (24) = happyShift action_11
action_0 (26) = happyShift action_12
action_0 (27) = happyShift action_13
action_0 (28) = happyShift action_14
action_0 (5) = happyGoto action_18
action_0 (7) = happyGoto action_3
action_0 (8) = happyGoto action_4
action_0 (9) = happyGoto action_5
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (14) = happyShift action_6
action_1 (16) = happyShift action_7
action_1 (17) = happyShift action_8
action_1 (18) = happyShift action_9
action_1 (19) = happyShift action_10
action_1 (24) = happyShift action_11
action_1 (26) = happyShift action_12
action_1 (27) = happyShift action_13
action_1 (6) = happyGoto action_15
action_1 (9) = happyGoto action_16
action_1 (13) = happyGoto action_17
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (14) = happyShift action_6
action_2 (16) = happyShift action_7
action_2 (17) = happyShift action_8
action_2 (18) = happyShift action_9
action_2 (19) = happyShift action_10
action_2 (24) = happyShift action_11
action_2 (26) = happyShift action_12
action_2 (27) = happyShift action_13
action_2 (28) = happyShift action_14
action_2 (7) = happyGoto action_3
action_2 (8) = happyGoto action_4
action_2 (9) = happyGoto action_5
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (32) = happyShift action_34
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_7

action_5 (14) = happyShift action_6
action_5 (16) = happyShift action_21
action_5 (17) = happyShift action_22
action_5 (18) = happyShift action_23
action_5 (19) = happyShift action_10
action_5 (24) = happyShift action_11
action_5 (26) = happyShift action_12
action_5 (27) = happyShift action_13
action_5 (32) = happyShift action_33
action_5 (9) = happyGoto action_20
action_5 _ = happyReduce_8

action_6 _ = happyReduce_11

action_7 (19) = happyShift action_32
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (19) = happyShift action_31
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (19) = happyShift action_30
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (14) = happyShift action_6
action_10 (16) = happyShift action_7
action_10 (17) = happyShift action_8
action_10 (18) = happyShift action_9
action_10 (19) = happyShift action_10
action_10 (24) = happyShift action_11
action_10 (26) = happyShift action_12
action_10 (27) = happyShift action_13
action_10 (9) = happyGoto action_29
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (26) = happyShift action_28
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_12

action_13 (26) = happyShift action_27
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (29) = happyShift action_24
action_14 (30) = happyShift action_25
action_14 (31) = happyShift action_26
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (33) = happyAccept
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (14) = happyShift action_6
action_16 (16) = happyShift action_21
action_16 (17) = happyShift action_22
action_16 (18) = happyShift action_23
action_16 (19) = happyShift action_10
action_16 (24) = happyShift action_11
action_16 (26) = happyShift action_12
action_16 (27) = happyShift action_13
action_16 (9) = happyGoto action_20
action_16 _ = happyReduce_27

action_17 (14) = happyShift action_6
action_17 (16) = happyShift action_7
action_17 (17) = happyShift action_8
action_17 (18) = happyShift action_9
action_17 (19) = happyShift action_10
action_17 (24) = happyShift action_11
action_17 (26) = happyShift action_12
action_17 (27) = happyShift action_13
action_17 (9) = happyGoto action_19
action_17 _ = happyReduce_3

action_18 (33) = happyAccept
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_6
action_19 (16) = happyShift action_21
action_19 (17) = happyShift action_22
action_19 (18) = happyShift action_23
action_19 (19) = happyShift action_10
action_19 (24) = happyShift action_11
action_19 (26) = happyShift action_12
action_19 (27) = happyShift action_13
action_19 (9) = happyGoto action_20
action_19 _ = happyReduce_28

action_20 (9) = happyGoto action_20
action_20 _ = happyReduce_19

action_21 (14) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (18) = happyShift action_9
action_21 (19) = happyShift action_51
action_21 (24) = happyShift action_11
action_21 (26) = happyShift action_12
action_21 (27) = happyShift action_13
action_21 (9) = happyGoto action_50
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (14) = happyShift action_6
action_22 (16) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (18) = happyShift action_9
action_22 (19) = happyShift action_49
action_22 (24) = happyShift action_11
action_22 (26) = happyShift action_12
action_22 (27) = happyShift action_13
action_22 (9) = happyGoto action_48
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (14) = happyShift action_6
action_23 (16) = happyShift action_7
action_23 (17) = happyShift action_8
action_23 (18) = happyShift action_9
action_23 (19) = happyShift action_47
action_23 (24) = happyShift action_11
action_23 (26) = happyShift action_12
action_23 (27) = happyShift action_13
action_23 (9) = happyGoto action_46
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (15) = happyShift action_45
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (15) = happyShift action_44
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (15) = happyShift action_43
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (19) = happyShift action_42
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (15) = happyShift action_41
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (14) = happyShift action_6
action_29 (16) = happyShift action_21
action_29 (17) = happyShift action_22
action_29 (18) = happyShift action_23
action_29 (19) = happyShift action_10
action_29 (20) = happyShift action_40
action_29 (24) = happyShift action_11
action_29 (26) = happyShift action_12
action_29 (27) = happyShift action_13
action_29 (9) = happyGoto action_20
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (14) = happyShift action_6
action_30 (16) = happyShift action_7
action_30 (17) = happyShift action_8
action_30 (18) = happyShift action_9
action_30 (19) = happyShift action_10
action_30 (24) = happyShift action_11
action_30 (26) = happyShift action_12
action_30 (27) = happyShift action_13
action_30 (9) = happyGoto action_39
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (14) = happyShift action_6
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (18) = happyShift action_9
action_31 (19) = happyShift action_10
action_31 (24) = happyShift action_11
action_31 (26) = happyShift action_12
action_31 (27) = happyShift action_13
action_31 (9) = happyGoto action_38
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (14) = happyShift action_6
action_32 (16) = happyShift action_7
action_32 (17) = happyShift action_8
action_32 (18) = happyShift action_9
action_32 (19) = happyShift action_10
action_32 (24) = happyShift action_11
action_32 (26) = happyShift action_12
action_32 (27) = happyShift action_13
action_32 (9) = happyGoto action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (14) = happyShift action_6
action_33 (16) = happyShift action_7
action_33 (17) = happyShift action_8
action_33 (18) = happyShift action_9
action_33 (19) = happyShift action_10
action_33 (24) = happyShift action_11
action_33 (26) = happyShift action_12
action_33 (27) = happyShift action_13
action_33 (8) = happyGoto action_36
action_33 (9) = happyGoto action_5
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_6
action_34 (16) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (18) = happyShift action_9
action_34 (19) = happyShift action_10
action_34 (24) = happyShift action_11
action_34 (26) = happyShift action_12
action_34 (27) = happyShift action_13
action_34 (28) = happyShift action_14
action_34 (7) = happyGoto action_35
action_34 (8) = happyGoto action_4
action_34 (9) = happyGoto action_5
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (32) = happyShift action_63
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_9

action_37 (14) = happyShift action_6
action_37 (16) = happyShift action_21
action_37 (17) = happyShift action_22
action_37 (18) = happyShift action_23
action_37 (19) = happyShift action_10
action_37 (23) = happyShift action_62
action_37 (24) = happyShift action_11
action_37 (26) = happyShift action_12
action_37 (27) = happyShift action_13
action_37 (9) = happyGoto action_20
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (14) = happyShift action_6
action_38 (16) = happyShift action_21
action_38 (17) = happyShift action_22
action_38 (18) = happyShift action_23
action_38 (19) = happyShift action_10
action_38 (23) = happyShift action_61
action_38 (24) = happyShift action_11
action_38 (26) = happyShift action_12
action_38 (27) = happyShift action_13
action_38 (9) = happyGoto action_20
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (14) = happyShift action_6
action_39 (16) = happyShift action_21
action_39 (17) = happyShift action_22
action_39 (18) = happyShift action_23
action_39 (19) = happyShift action_10
action_39 (23) = happyShift action_60
action_39 (24) = happyShift action_11
action_39 (26) = happyShift action_12
action_39 (27) = happyShift action_13
action_39 (9) = happyGoto action_20
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_10

action_41 (14) = happyShift action_6
action_41 (16) = happyShift action_7
action_41 (17) = happyShift action_8
action_41 (18) = happyShift action_9
action_41 (19) = happyShift action_10
action_41 (24) = happyShift action_11
action_41 (26) = happyShift action_12
action_41 (27) = happyShift action_13
action_41 (9) = happyGoto action_59
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (14) = happyShift action_6
action_42 (16) = happyShift action_7
action_42 (17) = happyShift action_8
action_42 (18) = happyShift action_9
action_42 (19) = happyShift action_10
action_42 (24) = happyShift action_11
action_42 (26) = happyShift action_12
action_42 (27) = happyShift action_13
action_42 (9) = happyGoto action_58
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (14) = happyShift action_57
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (14) = happyShift action_56
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (21) = happyShift action_55
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (24) = happyShift action_11
action_46 (27) = happyShift action_13
action_46 (9) = happyGoto action_20
action_46 _ = happyReduce_17

action_47 (14) = happyShift action_6
action_47 (16) = happyShift action_7
action_47 (17) = happyShift action_8
action_47 (18) = happyShift action_9
action_47 (19) = happyShift action_10
action_47 (24) = happyShift action_11
action_47 (26) = happyShift action_12
action_47 (27) = happyShift action_13
action_47 (9) = happyGoto action_54
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (18) = happyShift action_23
action_48 (24) = happyShift action_11
action_48 (27) = happyShift action_13
action_48 (9) = happyGoto action_20
action_48 _ = happyReduce_15

action_49 (14) = happyShift action_6
action_49 (16) = happyShift action_7
action_49 (17) = happyShift action_8
action_49 (18) = happyShift action_9
action_49 (19) = happyShift action_10
action_49 (24) = happyShift action_11
action_49 (26) = happyShift action_12
action_49 (27) = happyShift action_13
action_49 (9) = happyGoto action_53
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (18) = happyShift action_23
action_50 (24) = happyShift action_11
action_50 (27) = happyShift action_13
action_50 (9) = happyGoto action_20
action_50 _ = happyReduce_13

action_51 (14) = happyShift action_6
action_51 (16) = happyShift action_7
action_51 (17) = happyShift action_8
action_51 (18) = happyShift action_9
action_51 (19) = happyShift action_10
action_51 (24) = happyShift action_11
action_51 (26) = happyShift action_12
action_51 (27) = happyShift action_13
action_51 (9) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_6
action_52 (16) = happyShift action_21
action_52 (17) = happyShift action_22
action_52 (18) = happyShift action_23
action_52 (19) = happyShift action_10
action_52 (20) = happyShift action_40
action_52 (23) = happyShift action_62
action_52 (24) = happyShift action_11
action_52 (26) = happyShift action_12
action_52 (27) = happyShift action_13
action_52 (9) = happyGoto action_20
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (14) = happyShift action_6
action_53 (16) = happyShift action_21
action_53 (17) = happyShift action_22
action_53 (18) = happyShift action_23
action_53 (19) = happyShift action_10
action_53 (20) = happyShift action_40
action_53 (23) = happyShift action_61
action_53 (24) = happyShift action_11
action_53 (26) = happyShift action_12
action_53 (27) = happyShift action_13
action_53 (9) = happyGoto action_20
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (14) = happyShift action_6
action_54 (16) = happyShift action_21
action_54 (17) = happyShift action_22
action_54 (18) = happyShift action_23
action_54 (19) = happyShift action_10
action_54 (20) = happyShift action_40
action_54 (23) = happyShift action_60
action_54 (24) = happyShift action_11
action_54 (26) = happyShift action_12
action_54 (27) = happyShift action_13
action_54 (9) = happyGoto action_20
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (19) = happyShift action_72
action_55 (10) = happyGoto action_70
action_55 (11) = happyGoto action_71
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_5

action_57 _ = happyReduce_6

action_58 (14) = happyShift action_6
action_58 (16) = happyShift action_21
action_58 (17) = happyShift action_22
action_58 (18) = happyShift action_23
action_58 (19) = happyShift action_10
action_58 (20) = happyShift action_69
action_58 (24) = happyShift action_11
action_58 (26) = happyShift action_12
action_58 (27) = happyShift action_13
action_58 (9) = happyGoto action_20
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (14) = happyShift action_6
action_59 (16) = happyShift action_21
action_59 (17) = happyShift action_22
action_59 (18) = happyShift action_23
action_59 (19) = happyShift action_10
action_59 (24) = happyShift action_11
action_59 (25) = happyShift action_68
action_59 (26) = happyShift action_12
action_59 (27) = happyShift action_13
action_59 (9) = happyGoto action_20
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (14) = happyShift action_6
action_60 (16) = happyShift action_7
action_60 (17) = happyShift action_8
action_60 (18) = happyShift action_9
action_60 (19) = happyShift action_10
action_60 (24) = happyShift action_11
action_60 (26) = happyShift action_12
action_60 (27) = happyShift action_13
action_60 (9) = happyGoto action_67
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (14) = happyShift action_6
action_61 (16) = happyShift action_7
action_61 (17) = happyShift action_8
action_61 (18) = happyShift action_9
action_61 (19) = happyShift action_10
action_61 (24) = happyShift action_11
action_61 (26) = happyShift action_12
action_61 (27) = happyShift action_13
action_61 (9) = happyGoto action_66
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (14) = happyShift action_6
action_62 (16) = happyShift action_7
action_62 (17) = happyShift action_8
action_62 (18) = happyShift action_9
action_62 (19) = happyShift action_10
action_62 (24) = happyShift action_11
action_62 (26) = happyShift action_12
action_62 (27) = happyShift action_13
action_62 (9) = happyGoto action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (14) = happyShift action_6
action_63 (16) = happyShift action_7
action_63 (17) = happyShift action_8
action_63 (18) = happyShift action_9
action_63 (19) = happyShift action_10
action_63 (24) = happyShift action_11
action_63 (26) = happyShift action_12
action_63 (27) = happyShift action_13
action_63 (28) = happyShift action_14
action_63 (7) = happyGoto action_64
action_63 (8) = happyGoto action_4
action_63 (9) = happyGoto action_5
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_2

action_65 (14) = happyShift action_6
action_65 (16) = happyShift action_21
action_65 (17) = happyShift action_22
action_65 (18) = happyShift action_23
action_65 (19) = happyShift action_10
action_65 (20) = happyShift action_79
action_65 (24) = happyShift action_11
action_65 (26) = happyShift action_12
action_65 (27) = happyShift action_13
action_65 (9) = happyGoto action_20
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (14) = happyShift action_6
action_66 (16) = happyShift action_21
action_66 (17) = happyShift action_22
action_66 (18) = happyShift action_23
action_66 (19) = happyShift action_10
action_66 (20) = happyShift action_78
action_66 (24) = happyShift action_11
action_66 (26) = happyShift action_12
action_66 (27) = happyShift action_13
action_66 (9) = happyGoto action_20
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (14) = happyShift action_6
action_67 (16) = happyShift action_21
action_67 (17) = happyShift action_22
action_67 (18) = happyShift action_23
action_67 (19) = happyShift action_10
action_67 (20) = happyShift action_77
action_67 (24) = happyShift action_11
action_67 (26) = happyShift action_12
action_67 (27) = happyShift action_13
action_67 (9) = happyGoto action_20
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (14) = happyShift action_6
action_68 (16) = happyShift action_7
action_68 (17) = happyShift action_8
action_68 (18) = happyShift action_9
action_68 (19) = happyShift action_10
action_68 (24) = happyShift action_11
action_68 (26) = happyShift action_12
action_68 (27) = happyShift action_13
action_68 (9) = happyGoto action_76
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_20

action_70 (22) = happyShift action_74
action_70 (23) = happyShift action_75
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_23

action_72 (21) = happyShift action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (14) = happyShift action_6
action_73 (16) = happyShift action_7
action_73 (17) = happyShift action_8
action_73 (18) = happyShift action_9
action_73 (19) = happyShift action_10
action_73 (24) = happyShift action_11
action_73 (26) = happyShift action_12
action_73 (27) = happyShift action_13
action_73 (9) = happyGoto action_81
action_73 (12) = happyGoto action_82
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_4

action_75 (19) = happyShift action_72
action_75 (11) = happyGoto action_80
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (14) = happyFail []
action_76 (16) = happyShift action_21
action_76 (17) = happyShift action_22
action_76 (18) = happyShift action_23
action_76 (19) = happyFail []
action_76 (24) = happyShift action_11
action_76 (26) = happyFail []
action_76 (27) = happyShift action_13
action_76 (9) = happyGoto action_20
action_76 _ = happyReduce_21

action_77 _ = happyReduce_18

action_78 _ = happyReduce_16

action_79 _ = happyReduce_14

action_80 _ = happyReduce_22

action_81 (14) = happyShift action_6
action_81 (16) = happyShift action_21
action_81 (17) = happyShift action_22
action_81 (18) = happyShift action_23
action_81 (19) = happyShift action_10
action_81 (24) = happyShift action_11
action_81 (26) = happyShift action_12
action_81 (27) = happyShift action_13
action_81 (9) = happyGoto action_20
action_81 _ = happyReduce_26

action_82 (22) = happyShift action_83
action_82 (23) = happyShift action_84
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (23) = happyShift action_86
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (14) = happyShift action_6
action_84 (16) = happyShift action_7
action_84 (17) = happyShift action_8
action_84 (18) = happyShift action_9
action_84 (19) = happyShift action_10
action_84 (24) = happyShift action_11
action_84 (26) = happyShift action_12
action_84 (27) = happyShift action_13
action_84 (9) = happyGoto action_85
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (14) = happyShift action_6
action_85 (16) = happyShift action_21
action_85 (17) = happyShift action_22
action_85 (18) = happyShift action_23
action_85 (19) = happyShift action_10
action_85 (24) = happyShift action_11
action_85 (26) = happyShift action_12
action_85 (27) = happyShift action_13
action_85 (9) = happyGoto action_20
action_85 _ = happyReduce_25

action_86 (21) = happyShift action_87
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (14) = happyShift action_6
action_87 (16) = happyShift action_7
action_87 (17) = happyShift action_8
action_87 (18) = happyShift action_9
action_87 (19) = happyShift action_10
action_87 (24) = happyShift action_11
action_87 (26) = happyShift action_12
action_87 (27) = happyShift action_13
action_87 (9) = happyGoto action_81
action_87 (12) = happyGoto action_88
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (22) = happyShift action_89
action_88 (23) = happyShift action_84
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (20) = happyShift action_90
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_24

happyReduce_2 = happyReduce 5 5 happyReduction_2
happyReduction_2 ((HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ((happy_var_1, happy_var_3, happy_var_5)
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  6 happyReduction_3
happyReduction_3 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happyReduce 6 7 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (MtPst happy_var_5
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 4 7 happyReduction_5
happyReduction_5 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (MtPstSize happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 7 happyReduction_6
happyReduction_6 ((HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (MtInCnt happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (MtFuncs happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  8 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1 : happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  9 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  9 happyReduction_11
happyReduction_11 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn9
		 (ExInt happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn9
		 (ExVar happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  9 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (ExSum (happy_var_1) (happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 9 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (ExSum (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (ExSub (happy_var_1) (happy_var_3)
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 9 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (ExSub (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (ExMult (happy_var_1) (happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 6 9 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (ExMult (happy_var_3) (happy_var_5)
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  9 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (ExApp (happy_var_1) (happy_var_2)
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 5 9 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (ExLam (happy_var_2) (happy_var_4)
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 9 happyReduction_21
happyReduction_21 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (ExLet happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_3 : happy_var_1
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  10 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happyReduce 9 11 happyReduction_24
happyReduction_24 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 ((happy_var_3 , happy_var_7)
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  12 happyReduction_26
happyReduction_26 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  13 happyReduction_27
happyReduction_27 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  13 happyReduction_28
happyReduction_28 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_2 : happy_var_1
	)
happyReduction_28 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 14;
	TokenEq _ -> cont 15;
	TokenPlus _ -> cont 16;
	TokenMinus _ -> cont 17;
	TokenTimes _ -> cont 18;
	TokenLParen _ -> cont 19;
	TokenRParen _ -> cont 20;
	TokenLParenSq _ -> cont 21;
	TokenRParenSq _ -> cont 22;
	TokenSeq _ -> cont 23;
	TokenLet _ -> cont 24;
	TokenIn _ -> cont 25;
	TokenVar _ happy_dollar_dollar -> cont 26;
	TokenLam _ -> cont 27;
	TokenSet _ -> cont 28;
	TokenPast _ -> cont 29;
	TokenPastCount _ -> cont 30;
	TokenInStreamCount _ -> cont 31;
	TokenEndLine _ -> cont 32;
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
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn5 z -> happyReturn z; _other -> notHappyAtAll })

parseInput tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn6 z -> happyReturn z; _other -> notHappyAtAll })

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
          | Cl String Expr Environment
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

