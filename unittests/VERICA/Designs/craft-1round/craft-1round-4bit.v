
module Cipher ( clk, rst, EncDec, Input, Key, Output, ErrorFlag );
  input [63:0] Input;
  input [63:0] Key;
  output [63:0] Output;
  (* SILVER="clock" *)input clk;
  (* SILVER="control" *)input rst;
  (* SILVER="control" *)input EncDec;
  output ErrorFlag;
  wire   MCOutput_63_, MCOutput_62_, MCOutput_61_, MCOutput_60_, MCOutput_59_,
         MCOutput_58_, MCOutput_57_, MCOutput_56_, MCOutput_55_, MCOutput_54_,
         MCOutput_53_, MCOutput_52_, MCOutput_51_, MCOutput_50_, MCOutput_49_,
         MCOutput_48_, MCOutput_47_, MCOutput_46_, MCOutput_45_, MCOutput_44_,
         MCOutput_43_, MCOutput_42_, MCOutput_41_, MCOutput_40_, MCOutput_39_,
         MCOutput_38_, MCOutput_37_, MCOutput_36_, MCOutput_35_, MCOutput_34_,
         MCOutput_33_, MCOutput_32_, n6, n7, MCInst_XOR_r0_Inst_0_n5,
         MCInst_XOR_r0_Inst_1_n5, MCInst_XOR_r0_Inst_2_n5,
         MCInst_XOR_r0_Inst_3_n5, MCInst_XOR_r0_Inst_4_n5,
         MCInst_XOR_r0_Inst_5_n5, MCInst_XOR_r0_Inst_6_n5,
         MCInst_XOR_r0_Inst_7_n5, MCInst_XOR_r0_Inst_8_n5,
         MCInst_XOR_r0_Inst_9_n5, MCInst_XOR_r0_Inst_10_n5,
         MCInst_XOR_r0_Inst_11_n5, MCInst_XOR_r0_Inst_12_n5,
         MCInst_XOR_r0_Inst_13_n5, MCInst_XOR_r0_Inst_14_n5,
         MCInst_XOR_r0_Inst_15_n5, SubCellInst_LFInst_0_LFInst_3_n9,
         SubCellInst_LFInst_0_LFInst_3_n8, SubCellInst_LFInst_0_LFInst_3_n7,
         SubCellInst_LFInst_0_LFInst_2_n18, SubCellInst_LFInst_0_LFInst_2_n17,
         SubCellInst_LFInst_0_LFInst_2_n16, SubCellInst_LFInst_0_LFInst_2_n15,
         SubCellInst_LFInst_0_LFInst_2_n14, SubCellInst_LFInst_0_LFInst_1_n9,
         SubCellInst_LFInst_0_LFInst_1_n8, SubCellInst_LFInst_0_LFInst_1_n7,
         SubCellInst_LFInst_0_LFInst_0_n15, SubCellInst_LFInst_0_LFInst_0_n14,
         SubCellInst_LFInst_0_LFInst_0_n13, SubCellInst_LFInst_0_LFInst_0_n12,
         SubCellInst_LFInst_0_LFInst_0_n11, SubCellInst_LFInst_1_LFInst_3_n9,
         SubCellInst_LFInst_1_LFInst_3_n8, SubCellInst_LFInst_1_LFInst_3_n7,
         SubCellInst_LFInst_1_LFInst_2_n18, SubCellInst_LFInst_1_LFInst_2_n17,
         SubCellInst_LFInst_1_LFInst_2_n16, SubCellInst_LFInst_1_LFInst_2_n15,
         SubCellInst_LFInst_1_LFInst_2_n14, SubCellInst_LFInst_1_LFInst_1_n9,
         SubCellInst_LFInst_1_LFInst_1_n8, SubCellInst_LFInst_1_LFInst_1_n7,
         SubCellInst_LFInst_1_LFInst_0_n15, SubCellInst_LFInst_1_LFInst_0_n14,
         SubCellInst_LFInst_1_LFInst_0_n13, SubCellInst_LFInst_1_LFInst_0_n12,
         SubCellInst_LFInst_1_LFInst_0_n11, SubCellInst_LFInst_2_LFInst_3_n9,
         SubCellInst_LFInst_2_LFInst_3_n8, SubCellInst_LFInst_2_LFInst_3_n7,
         SubCellInst_LFInst_2_LFInst_2_n18, SubCellInst_LFInst_2_LFInst_2_n17,
         SubCellInst_LFInst_2_LFInst_2_n16, SubCellInst_LFInst_2_LFInst_2_n15,
         SubCellInst_LFInst_2_LFInst_2_n14, SubCellInst_LFInst_2_LFInst_1_n9,
         SubCellInst_LFInst_2_LFInst_1_n8, SubCellInst_LFInst_2_LFInst_1_n7,
         SubCellInst_LFInst_2_LFInst_0_n15, SubCellInst_LFInst_2_LFInst_0_n14,
         SubCellInst_LFInst_2_LFInst_0_n13, SubCellInst_LFInst_2_LFInst_0_n12,
         SubCellInst_LFInst_2_LFInst_0_n11, SubCellInst_LFInst_3_LFInst_3_n9,
         SubCellInst_LFInst_3_LFInst_3_n8, SubCellInst_LFInst_3_LFInst_3_n7,
         SubCellInst_LFInst_3_LFInst_2_n18, SubCellInst_LFInst_3_LFInst_2_n17,
         SubCellInst_LFInst_3_LFInst_2_n16, SubCellInst_LFInst_3_LFInst_2_n15,
         SubCellInst_LFInst_3_LFInst_2_n14, SubCellInst_LFInst_3_LFInst_1_n9,
         SubCellInst_LFInst_3_LFInst_1_n8, SubCellInst_LFInst_3_LFInst_1_n7,
         SubCellInst_LFInst_3_LFInst_0_n15, SubCellInst_LFInst_3_LFInst_0_n14,
         SubCellInst_LFInst_3_LFInst_0_n13, SubCellInst_LFInst_3_LFInst_0_n12,
         SubCellInst_LFInst_3_LFInst_0_n11, SubCellInst_LFInst_4_LFInst_3_n9,
         SubCellInst_LFInst_4_LFInst_3_n8, SubCellInst_LFInst_4_LFInst_3_n7,
         SubCellInst_LFInst_4_LFInst_2_n18, SubCellInst_LFInst_4_LFInst_2_n17,
         SubCellInst_LFInst_4_LFInst_2_n16, SubCellInst_LFInst_4_LFInst_2_n15,
         SubCellInst_LFInst_4_LFInst_2_n14, SubCellInst_LFInst_4_LFInst_1_n9,
         SubCellInst_LFInst_4_LFInst_1_n8, SubCellInst_LFInst_4_LFInst_1_n7,
         SubCellInst_LFInst_4_LFInst_0_n15, SubCellInst_LFInst_4_LFInst_0_n14,
         SubCellInst_LFInst_4_LFInst_0_n13, SubCellInst_LFInst_4_LFInst_0_n12,
         SubCellInst_LFInst_4_LFInst_0_n11, SubCellInst_LFInst_5_LFInst_3_n9,
         SubCellInst_LFInst_5_LFInst_3_n8, SubCellInst_LFInst_5_LFInst_3_n7,
         SubCellInst_LFInst_5_LFInst_2_n18, SubCellInst_LFInst_5_LFInst_2_n17,
         SubCellInst_LFInst_5_LFInst_2_n16, SubCellInst_LFInst_5_LFInst_2_n15,
         SubCellInst_LFInst_5_LFInst_2_n14, SubCellInst_LFInst_5_LFInst_1_n9,
         SubCellInst_LFInst_5_LFInst_1_n8, SubCellInst_LFInst_5_LFInst_1_n7,
         SubCellInst_LFInst_5_LFInst_0_n15, SubCellInst_LFInst_5_LFInst_0_n14,
         SubCellInst_LFInst_5_LFInst_0_n13, SubCellInst_LFInst_5_LFInst_0_n12,
         SubCellInst_LFInst_5_LFInst_0_n11, SubCellInst_LFInst_6_LFInst_3_n9,
         SubCellInst_LFInst_6_LFInst_3_n8, SubCellInst_LFInst_6_LFInst_3_n7,
         SubCellInst_LFInst_6_LFInst_2_n18, SubCellInst_LFInst_6_LFInst_2_n17,
         SubCellInst_LFInst_6_LFInst_2_n16, SubCellInst_LFInst_6_LFInst_2_n15,
         SubCellInst_LFInst_6_LFInst_2_n14, SubCellInst_LFInst_6_LFInst_1_n9,
         SubCellInst_LFInst_6_LFInst_1_n8, SubCellInst_LFInst_6_LFInst_1_n7,
         SubCellInst_LFInst_6_LFInst_0_n15, SubCellInst_LFInst_6_LFInst_0_n14,
         SubCellInst_LFInst_6_LFInst_0_n13, SubCellInst_LFInst_6_LFInst_0_n12,
         SubCellInst_LFInst_6_LFInst_0_n11, SubCellInst_LFInst_7_LFInst_3_n9,
         SubCellInst_LFInst_7_LFInst_3_n8, SubCellInst_LFInst_7_LFInst_3_n7,
         SubCellInst_LFInst_7_LFInst_2_n18, SubCellInst_LFInst_7_LFInst_2_n17,
         SubCellInst_LFInst_7_LFInst_2_n16, SubCellInst_LFInst_7_LFInst_2_n15,
         SubCellInst_LFInst_7_LFInst_2_n14, SubCellInst_LFInst_7_LFInst_1_n9,
         SubCellInst_LFInst_7_LFInst_1_n8, SubCellInst_LFInst_7_LFInst_1_n7,
         SubCellInst_LFInst_7_LFInst_0_n15, SubCellInst_LFInst_7_LFInst_0_n14,
         SubCellInst_LFInst_7_LFInst_0_n13, SubCellInst_LFInst_7_LFInst_0_n12,
         SubCellInst_LFInst_7_LFInst_0_n11, SubCellInst_LFInst_8_LFInst_3_n9,
         SubCellInst_LFInst_8_LFInst_3_n8, SubCellInst_LFInst_8_LFInst_3_n7,
         SubCellInst_LFInst_8_LFInst_2_n18, SubCellInst_LFInst_8_LFInst_2_n17,
         SubCellInst_LFInst_8_LFInst_2_n16, SubCellInst_LFInst_8_LFInst_2_n15,
         SubCellInst_LFInst_8_LFInst_2_n14, SubCellInst_LFInst_8_LFInst_1_n9,
         SubCellInst_LFInst_8_LFInst_1_n8, SubCellInst_LFInst_8_LFInst_1_n7,
         SubCellInst_LFInst_8_LFInst_0_n15, SubCellInst_LFInst_8_LFInst_0_n14,
         SubCellInst_LFInst_8_LFInst_0_n13, SubCellInst_LFInst_8_LFInst_0_n12,
         SubCellInst_LFInst_8_LFInst_0_n11, SubCellInst_LFInst_9_LFInst_3_n9,
         SubCellInst_LFInst_9_LFInst_3_n8, SubCellInst_LFInst_9_LFInst_3_n7,
         SubCellInst_LFInst_9_LFInst_2_n18, SubCellInst_LFInst_9_LFInst_2_n17,
         SubCellInst_LFInst_9_LFInst_2_n16, SubCellInst_LFInst_9_LFInst_2_n15,
         SubCellInst_LFInst_9_LFInst_2_n14, SubCellInst_LFInst_9_LFInst_1_n9,
         SubCellInst_LFInst_9_LFInst_1_n8, SubCellInst_LFInst_9_LFInst_1_n7,
         SubCellInst_LFInst_9_LFInst_0_n15, SubCellInst_LFInst_9_LFInst_0_n14,
         SubCellInst_LFInst_9_LFInst_0_n13, SubCellInst_LFInst_9_LFInst_0_n12,
         SubCellInst_LFInst_9_LFInst_0_n11, SubCellInst_LFInst_10_LFInst_3_n9,
         SubCellInst_LFInst_10_LFInst_3_n8, SubCellInst_LFInst_10_LFInst_3_n7,
         SubCellInst_LFInst_10_LFInst_2_n18,
         SubCellInst_LFInst_10_LFInst_2_n17,
         SubCellInst_LFInst_10_LFInst_2_n16,
         SubCellInst_LFInst_10_LFInst_2_n15,
         SubCellInst_LFInst_10_LFInst_2_n14, SubCellInst_LFInst_10_LFInst_1_n9,
         SubCellInst_LFInst_10_LFInst_1_n8, SubCellInst_LFInst_10_LFInst_1_n7,
         SubCellInst_LFInst_10_LFInst_0_n15,
         SubCellInst_LFInst_10_LFInst_0_n14,
         SubCellInst_LFInst_10_LFInst_0_n13,
         SubCellInst_LFInst_10_LFInst_0_n12,
         SubCellInst_LFInst_10_LFInst_0_n11, SubCellInst_LFInst_11_LFInst_3_n9,
         SubCellInst_LFInst_11_LFInst_3_n8, SubCellInst_LFInst_11_LFInst_3_n7,
         SubCellInst_LFInst_11_LFInst_2_n18,
         SubCellInst_LFInst_11_LFInst_2_n17,
         SubCellInst_LFInst_11_LFInst_2_n16,
         SubCellInst_LFInst_11_LFInst_2_n15,
         SubCellInst_LFInst_11_LFInst_2_n14, SubCellInst_LFInst_11_LFInst_1_n9,
         SubCellInst_LFInst_11_LFInst_1_n8, SubCellInst_LFInst_11_LFInst_1_n7,
         SubCellInst_LFInst_11_LFInst_0_n15,
         SubCellInst_LFInst_11_LFInst_0_n14,
         SubCellInst_LFInst_11_LFInst_0_n13,
         SubCellInst_LFInst_11_LFInst_0_n12,
         SubCellInst_LFInst_11_LFInst_0_n11, SubCellInst_LFInst_12_LFInst_3_n9,
         SubCellInst_LFInst_12_LFInst_3_n8, SubCellInst_LFInst_12_LFInst_3_n7,
         SubCellInst_LFInst_12_LFInst_2_n18,
         SubCellInst_LFInst_12_LFInst_2_n17,
         SubCellInst_LFInst_12_LFInst_2_n16,
         SubCellInst_LFInst_12_LFInst_2_n15,
         SubCellInst_LFInst_12_LFInst_2_n14, SubCellInst_LFInst_12_LFInst_1_n9,
         SubCellInst_LFInst_12_LFInst_1_n8, SubCellInst_LFInst_12_LFInst_1_n7,
         SubCellInst_LFInst_12_LFInst_0_n15,
         SubCellInst_LFInst_12_LFInst_0_n14,
         SubCellInst_LFInst_12_LFInst_0_n13,
         SubCellInst_LFInst_12_LFInst_0_n12,
         SubCellInst_LFInst_12_LFInst_0_n11, SubCellInst_LFInst_13_LFInst_3_n9,
         SubCellInst_LFInst_13_LFInst_3_n8, SubCellInst_LFInst_13_LFInst_3_n7,
         SubCellInst_LFInst_13_LFInst_2_n18,
         SubCellInst_LFInst_13_LFInst_2_n17,
         SubCellInst_LFInst_13_LFInst_2_n16,
         SubCellInst_LFInst_13_LFInst_2_n15,
         SubCellInst_LFInst_13_LFInst_2_n14, SubCellInst_LFInst_13_LFInst_1_n9,
         SubCellInst_LFInst_13_LFInst_1_n8, SubCellInst_LFInst_13_LFInst_1_n7,
         SubCellInst_LFInst_13_LFInst_0_n15,
         SubCellInst_LFInst_13_LFInst_0_n14,
         SubCellInst_LFInst_13_LFInst_0_n13,
         SubCellInst_LFInst_13_LFInst_0_n12,
         SubCellInst_LFInst_13_LFInst_0_n11, SubCellInst_LFInst_14_LFInst_3_n9,
         SubCellInst_LFInst_14_LFInst_3_n8, SubCellInst_LFInst_14_LFInst_3_n7,
         SubCellInst_LFInst_14_LFInst_2_n18,
         SubCellInst_LFInst_14_LFInst_2_n17,
         SubCellInst_LFInst_14_LFInst_2_n16,
         SubCellInst_LFInst_14_LFInst_2_n15,
         SubCellInst_LFInst_14_LFInst_2_n14, SubCellInst_LFInst_14_LFInst_1_n9,
         SubCellInst_LFInst_14_LFInst_1_n8, SubCellInst_LFInst_14_LFInst_1_n7,
         SubCellInst_LFInst_14_LFInst_0_n15,
         SubCellInst_LFInst_14_LFInst_0_n14,
         SubCellInst_LFInst_14_LFInst_0_n13,
         SubCellInst_LFInst_14_LFInst_0_n12,
         SubCellInst_LFInst_14_LFInst_0_n11, SubCellInst_LFInst_15_LFInst_3_n9,
         SubCellInst_LFInst_15_LFInst_3_n8, SubCellInst_LFInst_15_LFInst_3_n7,
         SubCellInst_LFInst_15_LFInst_2_n18,
         SubCellInst_LFInst_15_LFInst_2_n17,
         SubCellInst_LFInst_15_LFInst_2_n16,
         SubCellInst_LFInst_15_LFInst_2_n15,
         SubCellInst_LFInst_15_LFInst_2_n14, SubCellInst_LFInst_15_LFInst_1_n9,
         SubCellInst_LFInst_15_LFInst_1_n8, SubCellInst_LFInst_15_LFInst_1_n7,
         SubCellInst_LFInst_15_LFInst_0_n15,
         SubCellInst_LFInst_15_LFInst_0_n14,
         SubCellInst_LFInst_15_LFInst_0_n13,
         SubCellInst_LFInst_15_LFInst_0_n12,
         SubCellInst_LFInst_15_LFInst_0_n11,
         Red_InputInst_LFInst_0_LFInst_3_n3,
         Red_InputInst_LFInst_0_LFInst_2_n3,
         Red_InputInst_LFInst_0_LFInst_1_n3,
         Red_InputInst_LFInst_0_LFInst_0_n3,
         Red_InputInst_LFInst_1_LFInst_3_n3,
         Red_InputInst_LFInst_1_LFInst_2_n3,
         Red_InputInst_LFInst_1_LFInst_1_n3,
         Red_InputInst_LFInst_1_LFInst_0_n3,
         Red_InputInst_LFInst_2_LFInst_3_n3,
         Red_InputInst_LFInst_2_LFInst_2_n3,
         Red_InputInst_LFInst_2_LFInst_1_n3,
         Red_InputInst_LFInst_2_LFInst_0_n3,
         Red_InputInst_LFInst_3_LFInst_3_n3,
         Red_InputInst_LFInst_3_LFInst_2_n3,
         Red_InputInst_LFInst_3_LFInst_1_n3,
         Red_InputInst_LFInst_3_LFInst_0_n3,
         Red_InputInst_LFInst_4_LFInst_3_n3,
         Red_InputInst_LFInst_4_LFInst_2_n3,
         Red_InputInst_LFInst_4_LFInst_1_n3,
         Red_InputInst_LFInst_4_LFInst_0_n3,
         Red_InputInst_LFInst_5_LFInst_3_n3,
         Red_InputInst_LFInst_5_LFInst_2_n3,
         Red_InputInst_LFInst_5_LFInst_1_n3,
         Red_InputInst_LFInst_5_LFInst_0_n3,
         Red_InputInst_LFInst_6_LFInst_3_n3,
         Red_InputInst_LFInst_6_LFInst_2_n3,
         Red_InputInst_LFInst_6_LFInst_1_n3,
         Red_InputInst_LFInst_6_LFInst_0_n3,
         Red_InputInst_LFInst_7_LFInst_3_n3,
         Red_InputInst_LFInst_7_LFInst_2_n3,
         Red_InputInst_LFInst_7_LFInst_1_n3,
         Red_InputInst_LFInst_7_LFInst_0_n3,
         Red_InputInst_LFInst_8_LFInst_3_n3,
         Red_InputInst_LFInst_8_LFInst_2_n3,
         Red_InputInst_LFInst_8_LFInst_1_n3,
         Red_InputInst_LFInst_8_LFInst_0_n3,
         Red_InputInst_LFInst_9_LFInst_3_n3,
         Red_InputInst_LFInst_9_LFInst_2_n3,
         Red_InputInst_LFInst_9_LFInst_1_n3,
         Red_InputInst_LFInst_9_LFInst_0_n3,
         Red_InputInst_LFInst_10_LFInst_3_n3,
         Red_InputInst_LFInst_10_LFInst_2_n3,
         Red_InputInst_LFInst_10_LFInst_1_n3,
         Red_InputInst_LFInst_10_LFInst_0_n3,
         Red_InputInst_LFInst_11_LFInst_3_n3,
         Red_InputInst_LFInst_11_LFInst_2_n3,
         Red_InputInst_LFInst_11_LFInst_1_n3,
         Red_InputInst_LFInst_11_LFInst_0_n3,
         Red_InputInst_LFInst_12_LFInst_3_n3,
         Red_InputInst_LFInst_12_LFInst_2_n3,
         Red_InputInst_LFInst_12_LFInst_1_n3,
         Red_InputInst_LFInst_12_LFInst_0_n3,
         Red_InputInst_LFInst_13_LFInst_3_n3,
         Red_InputInst_LFInst_13_LFInst_2_n3,
         Red_InputInst_LFInst_13_LFInst_1_n3,
         Red_InputInst_LFInst_13_LFInst_0_n3,
         Red_InputInst_LFInst_14_LFInst_3_n3,
         Red_InputInst_LFInst_14_LFInst_2_n3,
         Red_InputInst_LFInst_14_LFInst_1_n3,
         Red_InputInst_LFInst_14_LFInst_0_n3,
         Red_InputInst_LFInst_15_LFInst_3_n3,
         Red_InputInst_LFInst_15_LFInst_2_n3,
         Red_InputInst_LFInst_15_LFInst_1_n3,
         Red_InputInst_LFInst_15_LFInst_0_n3, Red_MCInst_XOR_r0_Inst_0_n5,
         Red_MCInst_XOR_r0_Inst_1_n5, Red_MCInst_XOR_r0_Inst_2_n5,
         Red_MCInst_XOR_r0_Inst_3_n5, Red_MCInst_XOR_r0_Inst_4_n5,
         Red_MCInst_XOR_r0_Inst_5_n5, Red_MCInst_XOR_r0_Inst_6_n5,
         Red_MCInst_XOR_r0_Inst_7_n5, Red_MCInst_XOR_r0_Inst_8_n5,
         Red_MCInst_XOR_r0_Inst_9_n5, Red_MCInst_XOR_r0_Inst_10_n5,
         Red_MCInst_XOR_r0_Inst_11_n5, Red_MCInst_XOR_r0_Inst_12_n5,
         Red_MCInst_XOR_r0_Inst_13_n5, Red_MCInst_XOR_r0_Inst_14_n5,
         Red_MCInst_XOR_r0_Inst_15_n5, Red_SubCellInst_LFInst_0_LFInst_3_n8,
         Red_SubCellInst_LFInst_0_LFInst_3_n7,
         Red_SubCellInst_LFInst_0_LFInst_3_n6,
         Red_SubCellInst_LFInst_0_LFInst_2_n14,
         Red_SubCellInst_LFInst_0_LFInst_2_n13,
         Red_SubCellInst_LFInst_0_LFInst_2_n12,
         Red_SubCellInst_LFInst_0_LFInst_2_n11,
         Red_SubCellInst_LFInst_0_LFInst_2_n10,
         Red_SubCellInst_LFInst_0_LFInst_1_n25,
         Red_SubCellInst_LFInst_0_LFInst_1_n24,
         Red_SubCellInst_LFInst_0_LFInst_1_n23,
         Red_SubCellInst_LFInst_0_LFInst_1_n22,
         Red_SubCellInst_LFInst_0_LFInst_1_n21,
         Red_SubCellInst_LFInst_0_LFInst_1_n20,
         Red_SubCellInst_LFInst_0_LFInst_0_n14,
         Red_SubCellInst_LFInst_0_LFInst_0_n13,
         Red_SubCellInst_LFInst_0_LFInst_0_n12,
         Red_SubCellInst_LFInst_0_LFInst_0_n11,
         Red_SubCellInst_LFInst_0_LFInst_0_n10,
         Red_SubCellInst_LFInst_1_LFInst_3_n8,
         Red_SubCellInst_LFInst_1_LFInst_3_n7,
         Red_SubCellInst_LFInst_1_LFInst_3_n6,
         Red_SubCellInst_LFInst_1_LFInst_2_n14,
         Red_SubCellInst_LFInst_1_LFInst_2_n13,
         Red_SubCellInst_LFInst_1_LFInst_2_n12,
         Red_SubCellInst_LFInst_1_LFInst_2_n11,
         Red_SubCellInst_LFInst_1_LFInst_2_n10,
         Red_SubCellInst_LFInst_1_LFInst_1_n25,
         Red_SubCellInst_LFInst_1_LFInst_1_n24,
         Red_SubCellInst_LFInst_1_LFInst_1_n23,
         Red_SubCellInst_LFInst_1_LFInst_1_n22,
         Red_SubCellInst_LFInst_1_LFInst_1_n21,
         Red_SubCellInst_LFInst_1_LFInst_1_n20,
         Red_SubCellInst_LFInst_1_LFInst_0_n14,
         Red_SubCellInst_LFInst_1_LFInst_0_n13,
         Red_SubCellInst_LFInst_1_LFInst_0_n12,
         Red_SubCellInst_LFInst_1_LFInst_0_n11,
         Red_SubCellInst_LFInst_1_LFInst_0_n10,
         Red_SubCellInst_LFInst_2_LFInst_3_n8,
         Red_SubCellInst_LFInst_2_LFInst_3_n7,
         Red_SubCellInst_LFInst_2_LFInst_3_n6,
         Red_SubCellInst_LFInst_2_LFInst_2_n14,
         Red_SubCellInst_LFInst_2_LFInst_2_n13,
         Red_SubCellInst_LFInst_2_LFInst_2_n12,
         Red_SubCellInst_LFInst_2_LFInst_2_n11,
         Red_SubCellInst_LFInst_2_LFInst_2_n10,
         Red_SubCellInst_LFInst_2_LFInst_1_n25,
         Red_SubCellInst_LFInst_2_LFInst_1_n24,
         Red_SubCellInst_LFInst_2_LFInst_1_n23,
         Red_SubCellInst_LFInst_2_LFInst_1_n22,
         Red_SubCellInst_LFInst_2_LFInst_1_n21,
         Red_SubCellInst_LFInst_2_LFInst_1_n20,
         Red_SubCellInst_LFInst_2_LFInst_0_n14,
         Red_SubCellInst_LFInst_2_LFInst_0_n13,
         Red_SubCellInst_LFInst_2_LFInst_0_n12,
         Red_SubCellInst_LFInst_2_LFInst_0_n11,
         Red_SubCellInst_LFInst_2_LFInst_0_n10,
         Red_SubCellInst_LFInst_3_LFInst_3_n8,
         Red_SubCellInst_LFInst_3_LFInst_3_n7,
         Red_SubCellInst_LFInst_3_LFInst_3_n6,
         Red_SubCellInst_LFInst_3_LFInst_2_n14,
         Red_SubCellInst_LFInst_3_LFInst_2_n13,
         Red_SubCellInst_LFInst_3_LFInst_2_n12,
         Red_SubCellInst_LFInst_3_LFInst_2_n11,
         Red_SubCellInst_LFInst_3_LFInst_2_n10,
         Red_SubCellInst_LFInst_3_LFInst_1_n25,
         Red_SubCellInst_LFInst_3_LFInst_1_n24,
         Red_SubCellInst_LFInst_3_LFInst_1_n23,
         Red_SubCellInst_LFInst_3_LFInst_1_n22,
         Red_SubCellInst_LFInst_3_LFInst_1_n21,
         Red_SubCellInst_LFInst_3_LFInst_1_n20,
         Red_SubCellInst_LFInst_3_LFInst_0_n14,
         Red_SubCellInst_LFInst_3_LFInst_0_n13,
         Red_SubCellInst_LFInst_3_LFInst_0_n12,
         Red_SubCellInst_LFInst_3_LFInst_0_n11,
         Red_SubCellInst_LFInst_3_LFInst_0_n10,
         Red_SubCellInst_LFInst_4_LFInst_3_n8,
         Red_SubCellInst_LFInst_4_LFInst_3_n7,
         Red_SubCellInst_LFInst_4_LFInst_3_n6,
         Red_SubCellInst_LFInst_4_LFInst_2_n14,
         Red_SubCellInst_LFInst_4_LFInst_2_n13,
         Red_SubCellInst_LFInst_4_LFInst_2_n12,
         Red_SubCellInst_LFInst_4_LFInst_2_n11,
         Red_SubCellInst_LFInst_4_LFInst_2_n10,
         Red_SubCellInst_LFInst_4_LFInst_1_n25,
         Red_SubCellInst_LFInst_4_LFInst_1_n24,
         Red_SubCellInst_LFInst_4_LFInst_1_n23,
         Red_SubCellInst_LFInst_4_LFInst_1_n22,
         Red_SubCellInst_LFInst_4_LFInst_1_n21,
         Red_SubCellInst_LFInst_4_LFInst_1_n20,
         Red_SubCellInst_LFInst_4_LFInst_0_n14,
         Red_SubCellInst_LFInst_4_LFInst_0_n13,
         Red_SubCellInst_LFInst_4_LFInst_0_n12,
         Red_SubCellInst_LFInst_4_LFInst_0_n11,
         Red_SubCellInst_LFInst_4_LFInst_0_n10,
         Red_SubCellInst_LFInst_5_LFInst_3_n8,
         Red_SubCellInst_LFInst_5_LFInst_3_n7,
         Red_SubCellInst_LFInst_5_LFInst_3_n6,
         Red_SubCellInst_LFInst_5_LFInst_2_n14,
         Red_SubCellInst_LFInst_5_LFInst_2_n13,
         Red_SubCellInst_LFInst_5_LFInst_2_n12,
         Red_SubCellInst_LFInst_5_LFInst_2_n11,
         Red_SubCellInst_LFInst_5_LFInst_2_n10,
         Red_SubCellInst_LFInst_5_LFInst_1_n25,
         Red_SubCellInst_LFInst_5_LFInst_1_n24,
         Red_SubCellInst_LFInst_5_LFInst_1_n23,
         Red_SubCellInst_LFInst_5_LFInst_1_n22,
         Red_SubCellInst_LFInst_5_LFInst_1_n21,
         Red_SubCellInst_LFInst_5_LFInst_1_n20,
         Red_SubCellInst_LFInst_5_LFInst_0_n14,
         Red_SubCellInst_LFInst_5_LFInst_0_n13,
         Red_SubCellInst_LFInst_5_LFInst_0_n12,
         Red_SubCellInst_LFInst_5_LFInst_0_n11,
         Red_SubCellInst_LFInst_5_LFInst_0_n10,
         Red_SubCellInst_LFInst_6_LFInst_3_n8,
         Red_SubCellInst_LFInst_6_LFInst_3_n7,
         Red_SubCellInst_LFInst_6_LFInst_3_n6,
         Red_SubCellInst_LFInst_6_LFInst_2_n14,
         Red_SubCellInst_LFInst_6_LFInst_2_n13,
         Red_SubCellInst_LFInst_6_LFInst_2_n12,
         Red_SubCellInst_LFInst_6_LFInst_2_n11,
         Red_SubCellInst_LFInst_6_LFInst_2_n10,
         Red_SubCellInst_LFInst_6_LFInst_1_n25,
         Red_SubCellInst_LFInst_6_LFInst_1_n24,
         Red_SubCellInst_LFInst_6_LFInst_1_n23,
         Red_SubCellInst_LFInst_6_LFInst_1_n22,
         Red_SubCellInst_LFInst_6_LFInst_1_n21,
         Red_SubCellInst_LFInst_6_LFInst_1_n20,
         Red_SubCellInst_LFInst_6_LFInst_0_n14,
         Red_SubCellInst_LFInst_6_LFInst_0_n13,
         Red_SubCellInst_LFInst_6_LFInst_0_n12,
         Red_SubCellInst_LFInst_6_LFInst_0_n11,
         Red_SubCellInst_LFInst_6_LFInst_0_n10,
         Red_SubCellInst_LFInst_7_LFInst_3_n8,
         Red_SubCellInst_LFInst_7_LFInst_3_n7,
         Red_SubCellInst_LFInst_7_LFInst_3_n6,
         Red_SubCellInst_LFInst_7_LFInst_2_n14,
         Red_SubCellInst_LFInst_7_LFInst_2_n13,
         Red_SubCellInst_LFInst_7_LFInst_2_n12,
         Red_SubCellInst_LFInst_7_LFInst_2_n11,
         Red_SubCellInst_LFInst_7_LFInst_2_n10,
         Red_SubCellInst_LFInst_7_LFInst_1_n25,
         Red_SubCellInst_LFInst_7_LFInst_1_n24,
         Red_SubCellInst_LFInst_7_LFInst_1_n23,
         Red_SubCellInst_LFInst_7_LFInst_1_n22,
         Red_SubCellInst_LFInst_7_LFInst_1_n21,
         Red_SubCellInst_LFInst_7_LFInst_1_n20,
         Red_SubCellInst_LFInst_7_LFInst_0_n14,
         Red_SubCellInst_LFInst_7_LFInst_0_n13,
         Red_SubCellInst_LFInst_7_LFInst_0_n12,
         Red_SubCellInst_LFInst_7_LFInst_0_n11,
         Red_SubCellInst_LFInst_7_LFInst_0_n10,
         Red_SubCellInst_LFInst_8_LFInst_3_n8,
         Red_SubCellInst_LFInst_8_LFInst_3_n7,
         Red_SubCellInst_LFInst_8_LFInst_3_n6,
         Red_SubCellInst_LFInst_8_LFInst_2_n14,
         Red_SubCellInst_LFInst_8_LFInst_2_n13,
         Red_SubCellInst_LFInst_8_LFInst_2_n12,
         Red_SubCellInst_LFInst_8_LFInst_2_n11,
         Red_SubCellInst_LFInst_8_LFInst_2_n10,
         Red_SubCellInst_LFInst_8_LFInst_1_n25,
         Red_SubCellInst_LFInst_8_LFInst_1_n24,
         Red_SubCellInst_LFInst_8_LFInst_1_n23,
         Red_SubCellInst_LFInst_8_LFInst_1_n22,
         Red_SubCellInst_LFInst_8_LFInst_1_n21,
         Red_SubCellInst_LFInst_8_LFInst_1_n20,
         Red_SubCellInst_LFInst_8_LFInst_0_n14,
         Red_SubCellInst_LFInst_8_LFInst_0_n13,
         Red_SubCellInst_LFInst_8_LFInst_0_n12,
         Red_SubCellInst_LFInst_8_LFInst_0_n11,
         Red_SubCellInst_LFInst_8_LFInst_0_n10,
         Red_SubCellInst_LFInst_9_LFInst_3_n8,
         Red_SubCellInst_LFInst_9_LFInst_3_n7,
         Red_SubCellInst_LFInst_9_LFInst_3_n6,
         Red_SubCellInst_LFInst_9_LFInst_2_n14,
         Red_SubCellInst_LFInst_9_LFInst_2_n13,
         Red_SubCellInst_LFInst_9_LFInst_2_n12,
         Red_SubCellInst_LFInst_9_LFInst_2_n11,
         Red_SubCellInst_LFInst_9_LFInst_2_n10,
         Red_SubCellInst_LFInst_9_LFInst_1_n25,
         Red_SubCellInst_LFInst_9_LFInst_1_n24,
         Red_SubCellInst_LFInst_9_LFInst_1_n23,
         Red_SubCellInst_LFInst_9_LFInst_1_n22,
         Red_SubCellInst_LFInst_9_LFInst_1_n21,
         Red_SubCellInst_LFInst_9_LFInst_1_n20,
         Red_SubCellInst_LFInst_9_LFInst_0_n14,
         Red_SubCellInst_LFInst_9_LFInst_0_n13,
         Red_SubCellInst_LFInst_9_LFInst_0_n12,
         Red_SubCellInst_LFInst_9_LFInst_0_n11,
         Red_SubCellInst_LFInst_9_LFInst_0_n10,
         Red_SubCellInst_LFInst_10_LFInst_3_n8,
         Red_SubCellInst_LFInst_10_LFInst_3_n7,
         Red_SubCellInst_LFInst_10_LFInst_3_n6,
         Red_SubCellInst_LFInst_10_LFInst_2_n14,
         Red_SubCellInst_LFInst_10_LFInst_2_n13,
         Red_SubCellInst_LFInst_10_LFInst_2_n12,
         Red_SubCellInst_LFInst_10_LFInst_2_n11,
         Red_SubCellInst_LFInst_10_LFInst_2_n10,
         Red_SubCellInst_LFInst_10_LFInst_1_n25,
         Red_SubCellInst_LFInst_10_LFInst_1_n24,
         Red_SubCellInst_LFInst_10_LFInst_1_n23,
         Red_SubCellInst_LFInst_10_LFInst_1_n22,
         Red_SubCellInst_LFInst_10_LFInst_1_n21,
         Red_SubCellInst_LFInst_10_LFInst_1_n20,
         Red_SubCellInst_LFInst_10_LFInst_0_n14,
         Red_SubCellInst_LFInst_10_LFInst_0_n13,
         Red_SubCellInst_LFInst_10_LFInst_0_n12,
         Red_SubCellInst_LFInst_10_LFInst_0_n11,
         Red_SubCellInst_LFInst_10_LFInst_0_n10,
         Red_SubCellInst_LFInst_11_LFInst_3_n8,
         Red_SubCellInst_LFInst_11_LFInst_3_n7,
         Red_SubCellInst_LFInst_11_LFInst_3_n6,
         Red_SubCellInst_LFInst_11_LFInst_2_n14,
         Red_SubCellInst_LFInst_11_LFInst_2_n13,
         Red_SubCellInst_LFInst_11_LFInst_2_n12,
         Red_SubCellInst_LFInst_11_LFInst_2_n11,
         Red_SubCellInst_LFInst_11_LFInst_2_n10,
         Red_SubCellInst_LFInst_11_LFInst_1_n25,
         Red_SubCellInst_LFInst_11_LFInst_1_n24,
         Red_SubCellInst_LFInst_11_LFInst_1_n23,
         Red_SubCellInst_LFInst_11_LFInst_1_n22,
         Red_SubCellInst_LFInst_11_LFInst_1_n21,
         Red_SubCellInst_LFInst_11_LFInst_1_n20,
         Red_SubCellInst_LFInst_11_LFInst_0_n14,
         Red_SubCellInst_LFInst_11_LFInst_0_n13,
         Red_SubCellInst_LFInst_11_LFInst_0_n12,
         Red_SubCellInst_LFInst_11_LFInst_0_n11,
         Red_SubCellInst_LFInst_11_LFInst_0_n10,
         Red_SubCellInst_LFInst_12_LFInst_3_n8,
         Red_SubCellInst_LFInst_12_LFInst_3_n7,
         Red_SubCellInst_LFInst_12_LFInst_3_n6,
         Red_SubCellInst_LFInst_12_LFInst_2_n14,
         Red_SubCellInst_LFInst_12_LFInst_2_n13,
         Red_SubCellInst_LFInst_12_LFInst_2_n12,
         Red_SubCellInst_LFInst_12_LFInst_2_n11,
         Red_SubCellInst_LFInst_12_LFInst_2_n10,
         Red_SubCellInst_LFInst_12_LFInst_1_n25,
         Red_SubCellInst_LFInst_12_LFInst_1_n24,
         Red_SubCellInst_LFInst_12_LFInst_1_n23,
         Red_SubCellInst_LFInst_12_LFInst_1_n22,
         Red_SubCellInst_LFInst_12_LFInst_1_n21,
         Red_SubCellInst_LFInst_12_LFInst_1_n20,
         Red_SubCellInst_LFInst_12_LFInst_0_n14,
         Red_SubCellInst_LFInst_12_LFInst_0_n13,
         Red_SubCellInst_LFInst_12_LFInst_0_n12,
         Red_SubCellInst_LFInst_12_LFInst_0_n11,
         Red_SubCellInst_LFInst_12_LFInst_0_n10,
         Red_SubCellInst_LFInst_13_LFInst_3_n8,
         Red_SubCellInst_LFInst_13_LFInst_3_n7,
         Red_SubCellInst_LFInst_13_LFInst_3_n6,
         Red_SubCellInst_LFInst_13_LFInst_2_n14,
         Red_SubCellInst_LFInst_13_LFInst_2_n13,
         Red_SubCellInst_LFInst_13_LFInst_2_n12,
         Red_SubCellInst_LFInst_13_LFInst_2_n11,
         Red_SubCellInst_LFInst_13_LFInst_2_n10,
         Red_SubCellInst_LFInst_13_LFInst_1_n25,
         Red_SubCellInst_LFInst_13_LFInst_1_n24,
         Red_SubCellInst_LFInst_13_LFInst_1_n23,
         Red_SubCellInst_LFInst_13_LFInst_1_n22,
         Red_SubCellInst_LFInst_13_LFInst_1_n21,
         Red_SubCellInst_LFInst_13_LFInst_1_n20,
         Red_SubCellInst_LFInst_13_LFInst_0_n14,
         Red_SubCellInst_LFInst_13_LFInst_0_n13,
         Red_SubCellInst_LFInst_13_LFInst_0_n12,
         Red_SubCellInst_LFInst_13_LFInst_0_n11,
         Red_SubCellInst_LFInst_13_LFInst_0_n10,
         Red_SubCellInst_LFInst_14_LFInst_3_n8,
         Red_SubCellInst_LFInst_14_LFInst_3_n7,
         Red_SubCellInst_LFInst_14_LFInst_3_n6,
         Red_SubCellInst_LFInst_14_LFInst_2_n14,
         Red_SubCellInst_LFInst_14_LFInst_2_n13,
         Red_SubCellInst_LFInst_14_LFInst_2_n12,
         Red_SubCellInst_LFInst_14_LFInst_2_n11,
         Red_SubCellInst_LFInst_14_LFInst_2_n10,
         Red_SubCellInst_LFInst_14_LFInst_1_n25,
         Red_SubCellInst_LFInst_14_LFInst_1_n24,
         Red_SubCellInst_LFInst_14_LFInst_1_n23,
         Red_SubCellInst_LFInst_14_LFInst_1_n22,
         Red_SubCellInst_LFInst_14_LFInst_1_n21,
         Red_SubCellInst_LFInst_14_LFInst_1_n20,
         Red_SubCellInst_LFInst_14_LFInst_0_n14,
         Red_SubCellInst_LFInst_14_LFInst_0_n13,
         Red_SubCellInst_LFInst_14_LFInst_0_n12,
         Red_SubCellInst_LFInst_14_LFInst_0_n11,
         Red_SubCellInst_LFInst_14_LFInst_0_n10,
         Red_SubCellInst_LFInst_15_LFInst_3_n8,
         Red_SubCellInst_LFInst_15_LFInst_3_n7,
         Red_SubCellInst_LFInst_15_LFInst_3_n6,
         Red_SubCellInst_LFInst_15_LFInst_2_n14,
         Red_SubCellInst_LFInst_15_LFInst_2_n13,
         Red_SubCellInst_LFInst_15_LFInst_2_n12,
         Red_SubCellInst_LFInst_15_LFInst_2_n11,
         Red_SubCellInst_LFInst_15_LFInst_2_n10,
         Red_SubCellInst_LFInst_15_LFInst_1_n25,
         Red_SubCellInst_LFInst_15_LFInst_1_n24,
         Red_SubCellInst_LFInst_15_LFInst_1_n23,
         Red_SubCellInst_LFInst_15_LFInst_1_n22,
         Red_SubCellInst_LFInst_15_LFInst_1_n21,
         Red_SubCellInst_LFInst_15_LFInst_1_n20,
         Red_SubCellInst_LFInst_15_LFInst_0_n14,
         Red_SubCellInst_LFInst_15_LFInst_0_n13,
         Red_SubCellInst_LFInst_15_LFInst_0_n12,
         Red_SubCellInst_LFInst_15_LFInst_0_n11,
         Red_SubCellInst_LFInst_15_LFInst_0_n10,
         Red_K0Inst_LFInst_0_LFInst_3_n3, Red_K0Inst_LFInst_0_LFInst_2_n3,
         Red_K0Inst_LFInst_0_LFInst_1_n3, Red_K0Inst_LFInst_0_LFInst_0_n3,
         Red_K0Inst_LFInst_1_LFInst_3_n3, Red_K0Inst_LFInst_1_LFInst_2_n3,
         Red_K0Inst_LFInst_1_LFInst_1_n3, Red_K0Inst_LFInst_1_LFInst_0_n3,
         Red_K0Inst_LFInst_2_LFInst_3_n3, Red_K0Inst_LFInst_2_LFInst_2_n3,
         Red_K0Inst_LFInst_2_LFInst_1_n3, Red_K0Inst_LFInst_2_LFInst_0_n3,
         Red_K0Inst_LFInst_3_LFInst_3_n3, Red_K0Inst_LFInst_3_LFInst_2_n3,
         Red_K0Inst_LFInst_3_LFInst_1_n3, Red_K0Inst_LFInst_3_LFInst_0_n3,
         Red_K0Inst_LFInst_4_LFInst_3_n3, Red_K0Inst_LFInst_4_LFInst_2_n3,
         Red_K0Inst_LFInst_4_LFInst_1_n3, Red_K0Inst_LFInst_4_LFInst_0_n3,
         Red_K0Inst_LFInst_5_LFInst_3_n3, Red_K0Inst_LFInst_5_LFInst_2_n3,
         Red_K0Inst_LFInst_5_LFInst_1_n3, Red_K0Inst_LFInst_5_LFInst_0_n3,
         Red_K0Inst_LFInst_6_LFInst_3_n3, Red_K0Inst_LFInst_6_LFInst_2_n3,
         Red_K0Inst_LFInst_6_LFInst_1_n3, Red_K0Inst_LFInst_6_LFInst_0_n3,
         Red_K0Inst_LFInst_7_LFInst_3_n3, Red_K0Inst_LFInst_7_LFInst_2_n3,
         Red_K0Inst_LFInst_7_LFInst_1_n3, Red_K0Inst_LFInst_7_LFInst_0_n3,
         Red_K0Inst_LFInst_8_LFInst_3_n3, Red_K0Inst_LFInst_8_LFInst_2_n3,
         Red_K0Inst_LFInst_8_LFInst_1_n3, Red_K0Inst_LFInst_8_LFInst_0_n3,
         Red_K0Inst_LFInst_9_LFInst_3_n3, Red_K0Inst_LFInst_9_LFInst_2_n3,
         Red_K0Inst_LFInst_9_LFInst_1_n3, Red_K0Inst_LFInst_9_LFInst_0_n3,
         Red_K0Inst_LFInst_10_LFInst_3_n3, Red_K0Inst_LFInst_10_LFInst_2_n3,
         Red_K0Inst_LFInst_10_LFInst_1_n3, Red_K0Inst_LFInst_10_LFInst_0_n3,
         Red_K0Inst_LFInst_11_LFInst_3_n3, Red_K0Inst_LFInst_11_LFInst_2_n3,
         Red_K0Inst_LFInst_11_LFInst_1_n3, Red_K0Inst_LFInst_11_LFInst_0_n3,
         Red_K0Inst_LFInst_12_LFInst_3_n3, Red_K0Inst_LFInst_12_LFInst_2_n3,
         Red_K0Inst_LFInst_12_LFInst_1_n3, Red_K0Inst_LFInst_12_LFInst_0_n3,
         Red_K0Inst_LFInst_13_LFInst_3_n3, Red_K0Inst_LFInst_13_LFInst_2_n3,
         Red_K0Inst_LFInst_13_LFInst_1_n3, Red_K0Inst_LFInst_13_LFInst_0_n3,
         Red_K0Inst_LFInst_14_LFInst_3_n3, Red_K0Inst_LFInst_14_LFInst_2_n3,
         Red_K0Inst_LFInst_14_LFInst_1_n3, Red_K0Inst_LFInst_14_LFInst_0_n3,
         Red_K0Inst_LFInst_15_LFInst_3_n3, Red_K0Inst_LFInst_15_LFInst_2_n3,
         Red_K0Inst_LFInst_15_LFInst_1_n3, Red_K0Inst_LFInst_15_LFInst_0_n3,
         Red_ToCheckInst_LFInst_0_LFInst_3_n3,
         Red_ToCheckInst_LFInst_0_LFInst_2_n3,
         Red_ToCheckInst_LFInst_0_LFInst_1_n3,
         Red_ToCheckInst_LFInst_0_LFInst_0_n3,
         Red_ToCheckInst_LFInst_1_LFInst_3_n3,
         Red_ToCheckInst_LFInst_1_LFInst_2_n3,
         Red_ToCheckInst_LFInst_1_LFInst_1_n3,
         Red_ToCheckInst_LFInst_1_LFInst_0_n3,
         Red_ToCheckInst_LFInst_2_LFInst_3_n3,
         Red_ToCheckInst_LFInst_2_LFInst_2_n3,
         Red_ToCheckInst_LFInst_2_LFInst_1_n3,
         Red_ToCheckInst_LFInst_2_LFInst_0_n3,
         Red_ToCheckInst_LFInst_3_LFInst_3_n3,
         Red_ToCheckInst_LFInst_3_LFInst_2_n3,
         Red_ToCheckInst_LFInst_3_LFInst_1_n3,
         Red_ToCheckInst_LFInst_3_LFInst_0_n3,
         Red_ToCheckInst_LFInst_4_LFInst_3_n3,
         Red_ToCheckInst_LFInst_4_LFInst_2_n3,
         Red_ToCheckInst_LFInst_4_LFInst_1_n3,
         Red_ToCheckInst_LFInst_4_LFInst_0_n3,
         Red_ToCheckInst_LFInst_5_LFInst_3_n3,
         Red_ToCheckInst_LFInst_5_LFInst_2_n3,
         Red_ToCheckInst_LFInst_5_LFInst_1_n3,
         Red_ToCheckInst_LFInst_5_LFInst_0_n3,
         Red_ToCheckInst_LFInst_6_LFInst_3_n3,
         Red_ToCheckInst_LFInst_6_LFInst_2_n3,
         Red_ToCheckInst_LFInst_6_LFInst_1_n3,
         Red_ToCheckInst_LFInst_6_LFInst_0_n3,
         Red_ToCheckInst_LFInst_7_LFInst_3_n3,
         Red_ToCheckInst_LFInst_7_LFInst_2_n3,
         Red_ToCheckInst_LFInst_7_LFInst_1_n3,
         Red_ToCheckInst_LFInst_7_LFInst_0_n3,
         Red_ToCheckInst_LFInst_8_LFInst_3_n3,
         Red_ToCheckInst_LFInst_8_LFInst_2_n3,
         Red_ToCheckInst_LFInst_8_LFInst_1_n3,
         Red_ToCheckInst_LFInst_8_LFInst_0_n3,
         Red_ToCheckInst_LFInst_9_LFInst_3_n3,
         Red_ToCheckInst_LFInst_9_LFInst_2_n3,
         Red_ToCheckInst_LFInst_9_LFInst_1_n3,
         Red_ToCheckInst_LFInst_9_LFInst_0_n3,
         Red_ToCheckInst_LFInst_10_LFInst_3_n3,
         Red_ToCheckInst_LFInst_10_LFInst_2_n3,
         Red_ToCheckInst_LFInst_10_LFInst_1_n3,
         Red_ToCheckInst_LFInst_10_LFInst_0_n3,
         Red_ToCheckInst_LFInst_11_LFInst_3_n3,
         Red_ToCheckInst_LFInst_11_LFInst_2_n3,
         Red_ToCheckInst_LFInst_11_LFInst_1_n3,
         Red_ToCheckInst_LFInst_11_LFInst_0_n3,
         Red_ToCheckInst_LFInst_12_LFInst_3_n3,
         Red_ToCheckInst_LFInst_12_LFInst_2_n3,
         Red_ToCheckInst_LFInst_12_LFInst_1_n3,
         Red_ToCheckInst_LFInst_12_LFInst_0_n3,
         Red_ToCheckInst_LFInst_13_LFInst_3_n3,
         Red_ToCheckInst_LFInst_13_LFInst_2_n3,
         Red_ToCheckInst_LFInst_13_LFInst_1_n3,
         Red_ToCheckInst_LFInst_13_LFInst_0_n3,
         Red_ToCheckInst_LFInst_14_LFInst_3_n3,
         Red_ToCheckInst_LFInst_14_LFInst_2_n3,
         Red_ToCheckInst_LFInst_14_LFInst_1_n3,
         Red_ToCheckInst_LFInst_14_LFInst_0_n3,
         Red_ToCheckInst_LFInst_15_LFInst_3_n3,
         Red_ToCheckInst_LFInst_15_LFInst_2_n3,
         Red_ToCheckInst_LFInst_15_LFInst_1_n3,
         Red_ToCheckInst_LFInst_15_LFInst_0_n3,
         Red_ToCheckInst_LFInst_16_LFInst_3_n3,
         Red_ToCheckInst_LFInst_16_LFInst_2_n3,
         Red_ToCheckInst_LFInst_16_LFInst_1_n3,
         Red_ToCheckInst_LFInst_16_LFInst_0_n3,
         Red_ToCheckInst_LFInst_17_LFInst_3_n3,
         Red_ToCheckInst_LFInst_17_LFInst_2_n3,
         Red_ToCheckInst_LFInst_17_LFInst_1_n3,
         Red_ToCheckInst_LFInst_17_LFInst_0_n3,
         Red_ToCheckInst_LFInst_18_LFInst_3_n3,
         Red_ToCheckInst_LFInst_18_LFInst_2_n3,
         Red_ToCheckInst_LFInst_18_LFInst_1_n3,
         Red_ToCheckInst_LFInst_18_LFInst_0_n3,
         Red_ToCheckInst_LFInst_19_LFInst_3_n3,
         Red_ToCheckInst_LFInst_19_LFInst_2_n3,
         Red_ToCheckInst_LFInst_19_LFInst_1_n3,
         Red_ToCheckInst_LFInst_19_LFInst_0_n3,
         Red_ToCheckInst_LFInst_20_LFInst_3_n3,
         Red_ToCheckInst_LFInst_20_LFInst_2_n3,
         Red_ToCheckInst_LFInst_20_LFInst_1_n3,
         Red_ToCheckInst_LFInst_20_LFInst_0_n3,
         Red_ToCheckInst_LFInst_21_LFInst_3_n3,
         Red_ToCheckInst_LFInst_21_LFInst_2_n3,
         Red_ToCheckInst_LFInst_21_LFInst_1_n3,
         Red_ToCheckInst_LFInst_21_LFInst_0_n3,
         Red_ToCheckInst_LFInst_22_LFInst_3_n3,
         Red_ToCheckInst_LFInst_22_LFInst_2_n3,
         Red_ToCheckInst_LFInst_22_LFInst_1_n3,
         Red_ToCheckInst_LFInst_22_LFInst_0_n3,
         Red_ToCheckInst_LFInst_23_LFInst_3_n3,
         Red_ToCheckInst_LFInst_23_LFInst_2_n3,
         Red_ToCheckInst_LFInst_23_LFInst_1_n3,
         Red_ToCheckInst_LFInst_23_LFInst_0_n3,
         Red_ToCheckInst_LFInst_24_LFInst_3_n3,
         Red_ToCheckInst_LFInst_24_LFInst_2_n3,
         Red_ToCheckInst_LFInst_24_LFInst_1_n3,
         Red_ToCheckInst_LFInst_24_LFInst_0_n3,
         Red_ToCheckInst_LFInst_25_LFInst_3_n3,
         Red_ToCheckInst_LFInst_25_LFInst_2_n3,
         Red_ToCheckInst_LFInst_25_LFInst_1_n3,
         Red_ToCheckInst_LFInst_25_LFInst_0_n3,
         Red_ToCheckInst_LFInst_26_LFInst_3_n3,
         Red_ToCheckInst_LFInst_26_LFInst_2_n3,
         Red_ToCheckInst_LFInst_26_LFInst_1_n3,
         Red_ToCheckInst_LFInst_26_LFInst_0_n3,
         Red_ToCheckInst_LFInst_27_LFInst_3_n3,
         Red_ToCheckInst_LFInst_27_LFInst_2_n3,
         Red_ToCheckInst_LFInst_27_LFInst_1_n3,
         Red_ToCheckInst_LFInst_27_LFInst_0_n3,
         Red_ToCheckInst_LFInst_28_LFInst_3_n3,
         Red_ToCheckInst_LFInst_28_LFInst_2_n3,
         Red_ToCheckInst_LFInst_28_LFInst_1_n3,
         Red_ToCheckInst_LFInst_28_LFInst_0_n3,
         Red_ToCheckInst_LFInst_29_LFInst_3_n3,
         Red_ToCheckInst_LFInst_29_LFInst_2_n3,
         Red_ToCheckInst_LFInst_29_LFInst_1_n3,
         Red_ToCheckInst_LFInst_29_LFInst_0_n3,
         Red_ToCheckInst_LFInst_30_LFInst_3_n3,
         Red_ToCheckInst_LFInst_30_LFInst_2_n3,
         Red_ToCheckInst_LFInst_30_LFInst_1_n3,
         Red_ToCheckInst_LFInst_30_LFInst_0_n3,
         Red_ToCheckInst_LFInst_31_LFInst_3_n3,
         Red_ToCheckInst_LFInst_31_LFInst_2_n3,
         Red_ToCheckInst_LFInst_31_LFInst_1_n3,
         Red_ToCheckInst_LFInst_31_LFInst_0_n3, Check1_CheckInst_0_n62,
         Check1_CheckInst_0_n61, Check1_CheckInst_0_n60,
         Check1_CheckInst_0_n59, Check1_CheckInst_0_n58,
         Check1_CheckInst_0_n57, Check1_CheckInst_0_n56,
         Check1_CheckInst_0_n55, Check1_CheckInst_0_n54,
         Check1_CheckInst_0_n53, Check1_CheckInst_0_n52,
         Check1_CheckInst_0_n51, Check1_CheckInst_0_n50,
         Check1_CheckInst_0_n49, Check1_CheckInst_0_n48,
         Check1_CheckInst_0_n47, Check1_CheckInst_0_n46,
         Check1_CheckInst_0_n45, Check1_CheckInst_0_n44,
         Check1_CheckInst_0_n43, Check1_CheckInst_0_n42,
         Check1_CheckInst_0_n41, Check1_CheckInst_0_n40,
         Check1_CheckInst_0_n39, Check1_CheckInst_0_n38,
         Check1_CheckInst_0_n37, Check1_CheckInst_0_n36,
         Check1_CheckInst_0_n35, Check1_CheckInst_0_n34,
         Check1_CheckInst_0_n33, Check1_CheckInst_0_n32,
         Check1_CheckInst_0_n31, Check1_CheckInst_0_n30,
         Check1_CheckInst_0_n29, Check1_CheckInst_0_n28,
         Check1_CheckInst_0_n27, Check1_CheckInst_0_n26,
         Check1_CheckInst_0_n25, Check1_CheckInst_0_n24,
         Check1_CheckInst_0_n23, Check1_CheckInst_0_n22,
         Check1_CheckInst_0_n21, Check1_CheckInst_0_n20,
         Check1_CheckInst_0_n19, Check1_CheckInst_0_n18,
         Check1_CheckInst_0_n17, Check1_CheckInst_0_n16,
         Check1_CheckInst_0_n15, Check1_CheckInst_0_n14,
         Check1_CheckInst_0_n13, Check1_CheckInst_0_n12,
         Check1_CheckInst_0_n11, Check1_CheckInst_0_n10, Check1_CheckInst_0_n9,
         Check1_CheckInst_0_n8, Check1_CheckInst_0_n7, Check1_CheckInst_0_n6,
         Check1_CheckInst_0_n5, Check1_CheckInst_0_n4, Check1_CheckInst_0_n3,
         Check1_CheckInst_0_n2, Check1_CheckInst_0_n1, Check1_CheckInst_1_n64,
         Check1_CheckInst_1_n63, Check1_CheckInst_1_n62,
         Check1_CheckInst_1_n61, Check1_CheckInst_1_n60,
         Check1_CheckInst_1_n59, Check1_CheckInst_1_n58,
         Check1_CheckInst_1_n57, Check1_CheckInst_1_n56,
         Check1_CheckInst_1_n55, Check1_CheckInst_1_n54,
         Check1_CheckInst_1_n53, Check1_CheckInst_1_n52,
         Check1_CheckInst_1_n51, Check1_CheckInst_1_n50,
         Check1_CheckInst_1_n49, Check1_CheckInst_1_n48,
         Check1_CheckInst_1_n47, Check1_CheckInst_1_n46,
         Check1_CheckInst_1_n45, Check1_CheckInst_1_n44,
         Check1_CheckInst_1_n43, Check1_CheckInst_1_n42,
         Check1_CheckInst_1_n41, Check1_CheckInst_1_n40,
         Check1_CheckInst_1_n39, Check1_CheckInst_1_n38,
         Check1_CheckInst_1_n37, Check1_CheckInst_1_n36,
         Check1_CheckInst_1_n35, Check1_CheckInst_1_n34,
         Check1_CheckInst_1_n33, Check1_CheckInst_1_n32,
         Check1_CheckInst_1_n31, Check1_CheckInst_1_n30,
         Check1_CheckInst_1_n29, Check1_CheckInst_1_n28,
         Check1_CheckInst_1_n27, Check1_CheckInst_1_n26,
         Check1_CheckInst_1_n25, Check1_CheckInst_1_n24,
         Check1_CheckInst_1_n23, Check1_CheckInst_1_n22,
         Check1_CheckInst_1_n21, Check1_CheckInst_1_n20,
         Check1_CheckInst_1_n19, Check1_CheckInst_1_n18,
         Check1_CheckInst_1_n17, Check1_CheckInst_1_n16,
         Check1_CheckInst_1_n15, Check1_CheckInst_1_n14,
         Check1_CheckInst_1_n13, Check1_CheckInst_1_n12,
         Check1_CheckInst_1_n11, Check1_CheckInst_1_n10, Check1_CheckInst_1_n9,
         Check1_CheckInst_1_n8, Check1_CheckInst_1_n7, Check1_CheckInst_1_n6,
         Check1_CheckInst_1_n5, Check1_CheckInst_1_n4, Check1_CheckInst_1_n3,
         Check1_CheckInst_2_n64, Check1_CheckInst_2_n63,
         Check1_CheckInst_2_n62, Check1_CheckInst_2_n61,
         Check1_CheckInst_2_n60, Check1_CheckInst_2_n59,
         Check1_CheckInst_2_n58, Check1_CheckInst_2_n57,
         Check1_CheckInst_2_n56, Check1_CheckInst_2_n55,
         Check1_CheckInst_2_n54, Check1_CheckInst_2_n53,
         Check1_CheckInst_2_n52, Check1_CheckInst_2_n51,
         Check1_CheckInst_2_n50, Check1_CheckInst_2_n49,
         Check1_CheckInst_2_n48, Check1_CheckInst_2_n47,
         Check1_CheckInst_2_n46, Check1_CheckInst_2_n45,
         Check1_CheckInst_2_n44, Check1_CheckInst_2_n43,
         Check1_CheckInst_2_n42, Check1_CheckInst_2_n41,
         Check1_CheckInst_2_n40, Check1_CheckInst_2_n39,
         Check1_CheckInst_2_n38, Check1_CheckInst_2_n37,
         Check1_CheckInst_2_n36, Check1_CheckInst_2_n35,
         Check1_CheckInst_2_n34, Check1_CheckInst_2_n33,
         Check1_CheckInst_2_n32, Check1_CheckInst_2_n31,
         Check1_CheckInst_2_n30, Check1_CheckInst_2_n29,
         Check1_CheckInst_2_n28, Check1_CheckInst_2_n27,
         Check1_CheckInst_2_n26, Check1_CheckInst_2_n25,
         Check1_CheckInst_2_n24, Check1_CheckInst_2_n23,
         Check1_CheckInst_2_n22, Check1_CheckInst_2_n21,
         Check1_CheckInst_2_n20, Check1_CheckInst_2_n19,
         Check1_CheckInst_2_n18, Check1_CheckInst_2_n17,
         Check1_CheckInst_2_n16, Check1_CheckInst_2_n15,
         Check1_CheckInst_2_n14, Check1_CheckInst_2_n13,
         Check1_CheckInst_2_n12, Check1_CheckInst_2_n11,
         Check1_CheckInst_2_n10, Check1_CheckInst_2_n9, Check1_CheckInst_2_n8,
         Check1_CheckInst_2_n7, Check1_CheckInst_2_n6, Check1_CheckInst_2_n5,
         Check1_CheckInst_2_n4, Check1_CheckInst_2_n3, Check1_CheckInst_3_n64,
         Check1_CheckInst_3_n63, Check1_CheckInst_3_n62,
         Check1_CheckInst_3_n61, Check1_CheckInst_3_n60,
         Check1_CheckInst_3_n59, Check1_CheckInst_3_n58,
         Check1_CheckInst_3_n57, Check1_CheckInst_3_n56,
         Check1_CheckInst_3_n55, Check1_CheckInst_3_n54,
         Check1_CheckInst_3_n53, Check1_CheckInst_3_n52,
         Check1_CheckInst_3_n51, Check1_CheckInst_3_n50,
         Check1_CheckInst_3_n49, Check1_CheckInst_3_n48,
         Check1_CheckInst_3_n47, Check1_CheckInst_3_n46,
         Check1_CheckInst_3_n45, Check1_CheckInst_3_n44,
         Check1_CheckInst_3_n43, Check1_CheckInst_3_n42,
         Check1_CheckInst_3_n41, Check1_CheckInst_3_n40,
         Check1_CheckInst_3_n39, Check1_CheckInst_3_n38,
         Check1_CheckInst_3_n37, Check1_CheckInst_3_n36,
         Check1_CheckInst_3_n35, Check1_CheckInst_3_n34,
         Check1_CheckInst_3_n33, Check1_CheckInst_3_n32,
         Check1_CheckInst_3_n31, Check1_CheckInst_3_n30,
         Check1_CheckInst_3_n29, Check1_CheckInst_3_n28,
         Check1_CheckInst_3_n27, Check1_CheckInst_3_n26,
         Check1_CheckInst_3_n25, Check1_CheckInst_3_n24,
         Check1_CheckInst_3_n23, Check1_CheckInst_3_n22,
         Check1_CheckInst_3_n21, Check1_CheckInst_3_n20,
         Check1_CheckInst_3_n19, Check1_CheckInst_3_n18,
         Check1_CheckInst_3_n17, Check1_CheckInst_3_n16,
         Check1_CheckInst_3_n15, Check1_CheckInst_3_n14,
         Check1_CheckInst_3_n13, Check1_CheckInst_3_n12,
         Check1_CheckInst_3_n11, Check1_CheckInst_3_n10, Check1_CheckInst_3_n9,
         Check1_CheckInst_3_n8, Check1_CheckInst_3_n7, Check1_CheckInst_3_n6,
         Check1_CheckInst_3_n5, Check1_CheckInst_3_n4, Check1_CheckInst_3_n3;
  wire   [63:0] AddRoundKeyOutput;
  wire   [63:0] PermutationOutput;
  wire   [63:32] Red_Input;
  wire   [63:0] Red_MCOutput;
  wire   [63:0] Red_K0;
  wire   [63:0] Red_AddRoundKeyOutput;
  wire   [63:0] Red_PermutationOutput;
  wire   [63:0] Red_Feedback;
  wire   [127:0] Red_SignaltoCheck;
  wire   [3:0] Error;

  NAND2_X1 U8 ( .A1(Error[2]), .A2(Error[3]), .ZN(n7) );
  NAND2_X1 U9 ( .A1(Error[0]), .A2(Error[1]), .ZN(n6) );
  OR2_X1 U10 ( .A1(n7), .A2(n6), .ZN(ErrorFlag) );
  XNOR2_X1 MCInst_XOR_r0_Inst_0_U2 ( .A(MCInst_XOR_r0_Inst_0_n5), .B(Input[16]), .ZN(MCOutput_48_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_0_U1 ( .A(Input[0]), .B(Input[48]), .ZN(
        MCInst_XOR_r0_Inst_0_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_0_U1 ( .A(Input[32]), .B(Input[0]), .Z(
        MCOutput_32_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_1_U2 ( .A(MCInst_XOR_r0_Inst_1_n5), .B(Input[17]), .ZN(MCOutput_49_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_1_U1 ( .A(Input[1]), .B(Input[49]), .ZN(
        MCInst_XOR_r0_Inst_1_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_1_U1 ( .A(Input[33]), .B(Input[1]), .Z(
        MCOutput_33_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_2_U2 ( .A(MCInst_XOR_r0_Inst_2_n5), .B(Input[18]), .ZN(MCOutput_50_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_2_U1 ( .A(Input[2]), .B(Input[50]), .ZN(
        MCInst_XOR_r0_Inst_2_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_2_U1 ( .A(Input[34]), .B(Input[2]), .Z(
        MCOutput_34_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_3_U2 ( .A(MCInst_XOR_r0_Inst_3_n5), .B(Input[19]), .ZN(MCOutput_51_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_3_U1 ( .A(Input[3]), .B(Input[51]), .ZN(
        MCInst_XOR_r0_Inst_3_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_3_U1 ( .A(Input[35]), .B(Input[3]), .Z(
        MCOutput_35_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_4_U2 ( .A(MCInst_XOR_r0_Inst_4_n5), .B(Input[20]), .ZN(MCOutput_52_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_4_U1 ( .A(Input[4]), .B(Input[52]), .ZN(
        MCInst_XOR_r0_Inst_4_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_4_U1 ( .A(Input[36]), .B(Input[4]), .Z(
        MCOutput_36_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_5_U2 ( .A(MCInst_XOR_r0_Inst_5_n5), .B(Input[21]), .ZN(MCOutput_53_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_5_U1 ( .A(Input[5]), .B(Input[53]), .ZN(
        MCInst_XOR_r0_Inst_5_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_5_U1 ( .A(Input[37]), .B(Input[5]), .Z(
        MCOutput_37_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_6_U2 ( .A(MCInst_XOR_r0_Inst_6_n5), .B(Input[22]), .ZN(MCOutput_54_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_6_U1 ( .A(Input[6]), .B(Input[54]), .ZN(
        MCInst_XOR_r0_Inst_6_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_6_U1 ( .A(Input[38]), .B(Input[6]), .Z(
        MCOutput_38_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_7_U2 ( .A(MCInst_XOR_r0_Inst_7_n5), .B(Input[23]), .ZN(MCOutput_55_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_7_U1 ( .A(Input[7]), .B(Input[55]), .ZN(
        MCInst_XOR_r0_Inst_7_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_7_U1 ( .A(Input[39]), .B(Input[7]), .Z(
        MCOutput_39_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_8_U2 ( .A(MCInst_XOR_r0_Inst_8_n5), .B(Input[24]), .ZN(MCOutput_56_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_8_U1 ( .A(Input[8]), .B(Input[56]), .ZN(
        MCInst_XOR_r0_Inst_8_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_8_U1 ( .A(Input[40]), .B(Input[8]), .Z(
        MCOutput_40_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_9_U2 ( .A(MCInst_XOR_r0_Inst_9_n5), .B(Input[25]), .ZN(MCOutput_57_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_9_U1 ( .A(Input[9]), .B(Input[57]), .ZN(
        MCInst_XOR_r0_Inst_9_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_9_U1 ( .A(Input[41]), .B(Input[9]), .Z(
        MCOutput_41_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_10_U2 ( .A(MCInst_XOR_r0_Inst_10_n5), .B(
        Input[26]), .ZN(MCOutput_58_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_10_U1 ( .A(Input[10]), .B(Input[58]), .ZN(
        MCInst_XOR_r0_Inst_10_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_10_U1 ( .A(Input[42]), .B(Input[10]), .Z(
        MCOutput_42_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_11_U2 ( .A(MCInst_XOR_r0_Inst_11_n5), .B(
        Input[27]), .ZN(MCOutput_59_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_11_U1 ( .A(Input[11]), .B(Input[59]), .ZN(
        MCInst_XOR_r0_Inst_11_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_11_U1 ( .A(Input[43]), .B(Input[11]), .Z(
        MCOutput_43_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_12_U2 ( .A(MCInst_XOR_r0_Inst_12_n5), .B(
        Input[28]), .ZN(MCOutput_60_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_12_U1 ( .A(Input[12]), .B(Input[60]), .ZN(
        MCInst_XOR_r0_Inst_12_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_12_U1 ( .A(Input[44]), .B(Input[12]), .Z(
        MCOutput_44_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_13_U2 ( .A(MCInst_XOR_r0_Inst_13_n5), .B(
        Input[29]), .ZN(MCOutput_61_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_13_U1 ( .A(Input[13]), .B(Input[61]), .ZN(
        MCInst_XOR_r0_Inst_13_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_13_U1 ( .A(Input[45]), .B(Input[13]), .Z(
        MCOutput_45_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_14_U2 ( .A(MCInst_XOR_r0_Inst_14_n5), .B(
        Input[30]), .ZN(MCOutput_62_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_14_U1 ( .A(Input[14]), .B(Input[62]), .ZN(
        MCInst_XOR_r0_Inst_14_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_14_U1 ( .A(Input[46]), .B(Input[14]), .Z(
        MCOutput_46_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_15_U2 ( .A(MCInst_XOR_r0_Inst_15_n5), .B(
        Input[31]), .ZN(MCOutput_63_) );
  XNOR2_X1 MCInst_XOR_r0_Inst_15_U1 ( .A(Input[15]), .B(Input[63]), .ZN(
        MCInst_XOR_r0_Inst_15_n5) );
  XOR2_X1 MCInst_XOR_r1_Inst_15_U1 ( .A(Input[47]), .B(Input[15]), .Z(
        MCOutput_47_) );
  XOR2_X1 AddKeyXOR1_XORInst_0_0_U1 ( .A(MCOutput_48_), .B(Key[48]), .Z(
        AddRoundKeyOutput[48]) );
  XOR2_X1 AddKeyXOR1_XORInst_0_1_U1 ( .A(MCOutput_49_), .B(Key[49]), .Z(
        AddRoundKeyOutput[49]) );
  XOR2_X1 AddKeyXOR1_XORInst_0_2_U1 ( .A(MCOutput_50_), .B(Key[50]), .Z(
        AddRoundKeyOutput[50]) );
  XOR2_X1 AddKeyXOR1_XORInst_0_3_U1 ( .A(MCOutput_51_), .B(Key[51]), .Z(
        AddRoundKeyOutput[51]) );
  XOR2_X1 AddKeyXOR1_XORInst_1_0_U1 ( .A(MCOutput_52_), .B(Key[52]), .Z(
        AddRoundKeyOutput[52]) );
  XOR2_X1 AddKeyXOR1_XORInst_1_1_U1 ( .A(MCOutput_53_), .B(Key[53]), .Z(
        AddRoundKeyOutput[53]) );
  XOR2_X1 AddKeyXOR1_XORInst_1_2_U1 ( .A(MCOutput_54_), .B(Key[54]), .Z(
        AddRoundKeyOutput[54]) );
  XOR2_X1 AddKeyXOR1_XORInst_1_3_U1 ( .A(MCOutput_55_), .B(Key[55]), .Z(
        AddRoundKeyOutput[55]) );
  XOR2_X1 AddKeyXOR1_XORInst_2_0_U1 ( .A(MCOutput_56_), .B(Key[56]), .Z(
        AddRoundKeyOutput[56]) );
  XOR2_X1 AddKeyXOR1_XORInst_2_1_U1 ( .A(MCOutput_57_), .B(Key[57]), .Z(
        AddRoundKeyOutput[57]) );
  XOR2_X1 AddKeyXOR1_XORInst_2_2_U1 ( .A(MCOutput_58_), .B(Key[58]), .Z(
        AddRoundKeyOutput[58]) );
  XOR2_X1 AddKeyXOR1_XORInst_2_3_U1 ( .A(MCOutput_59_), .B(Key[59]), .Z(
        AddRoundKeyOutput[59]) );
  XOR2_X1 AddKeyXOR1_XORInst_3_0_U1 ( .A(MCOutput_60_), .B(Key[60]), .Z(
        AddRoundKeyOutput[60]) );
  XOR2_X1 AddKeyXOR1_XORInst_3_1_U1 ( .A(MCOutput_61_), .B(Key[61]), .Z(
        AddRoundKeyOutput[61]) );
  XOR2_X1 AddKeyXOR1_XORInst_3_2_U1 ( .A(MCOutput_62_), .B(Key[62]), .Z(
        AddRoundKeyOutput[62]) );
  XOR2_X1 AddKeyXOR1_XORInst_3_3_U1 ( .A(MCOutput_63_), .B(Key[63]), .Z(
        AddRoundKeyOutput[63]) );
  XOR2_X1 AddKeyConstXOR_XORInst_0_0_U1 ( .A(MCOutput_40_), .B(Key[40]), .Z(
        AddRoundKeyOutput[40]) );
  XOR2_X1 AddKeyConstXOR_XORInst_0_1_U1 ( .A(MCOutput_41_), .B(Key[41]), .Z(
        AddRoundKeyOutput[41]) );
  XOR2_X1 AddKeyConstXOR_XORInst_0_2_U1 ( .A(MCOutput_42_), .B(Key[42]), .Z(
        AddRoundKeyOutput[42]) );
  XOR2_X1 AddKeyConstXOR_XORInst_0_3_U1 ( .A(MCOutput_43_), .B(Key[43]), .Z(
        AddRoundKeyOutput[43]) );
  XOR2_X1 AddKeyConstXOR_XORInst_1_0_U1 ( .A(MCOutput_44_), .B(Key[44]), .Z(
        AddRoundKeyOutput[44]) );
  XOR2_X1 AddKeyConstXOR_XORInst_1_1_U1 ( .A(MCOutput_45_), .B(Key[45]), .Z(
        AddRoundKeyOutput[45]) );
  XOR2_X1 AddKeyConstXOR_XORInst_1_2_U1 ( .A(MCOutput_46_), .B(Key[46]), .Z(
        AddRoundKeyOutput[46]) );
  XOR2_X1 AddKeyConstXOR_XORInst_1_3_U1 ( .A(MCOutput_47_), .B(Key[47]), .Z(
        AddRoundKeyOutput[47]) );
  XOR2_X1 AddKeyXOR2_XORInst_0_0_U1 ( .A(Input[0]), .B(Key[0]), .Z(
        AddRoundKeyOutput[0]) );
  XOR2_X1 AddKeyXOR2_XORInst_0_1_U1 ( .A(Input[1]), .B(Key[1]), .Z(
        AddRoundKeyOutput[1]) );
  XOR2_X1 AddKeyXOR2_XORInst_0_2_U1 ( .A(Input[2]), .B(Key[2]), .Z(
        AddRoundKeyOutput[2]) );
  XOR2_X1 AddKeyXOR2_XORInst_0_3_U1 ( .A(Input[3]), .B(Key[3]), .Z(
        AddRoundKeyOutput[3]) );
  XOR2_X1 AddKeyXOR2_XORInst_1_0_U1 ( .A(Input[4]), .B(Key[4]), .Z(
        AddRoundKeyOutput[4]) );
  XOR2_X1 AddKeyXOR2_XORInst_1_1_U1 ( .A(Input[5]), .B(Key[5]), .Z(
        AddRoundKeyOutput[5]) );
  XOR2_X1 AddKeyXOR2_XORInst_1_2_U1 ( .A(Input[6]), .B(Key[6]), .Z(
        AddRoundKeyOutput[6]) );
  XOR2_X1 AddKeyXOR2_XORInst_1_3_U1 ( .A(Input[7]), .B(Key[7]), .Z(
        AddRoundKeyOutput[7]) );
  XOR2_X1 AddKeyXOR2_XORInst_2_0_U1 ( .A(Input[8]), .B(Key[8]), .Z(
        AddRoundKeyOutput[8]) );
  XOR2_X1 AddKeyXOR2_XORInst_2_1_U1 ( .A(Input[9]), .B(Key[9]), .Z(
        AddRoundKeyOutput[9]) );
  XOR2_X1 AddKeyXOR2_XORInst_2_2_U1 ( .A(Input[10]), .B(Key[10]), .Z(
        AddRoundKeyOutput[10]) );
  XOR2_X1 AddKeyXOR2_XORInst_2_3_U1 ( .A(Input[11]), .B(Key[11]), .Z(
        AddRoundKeyOutput[11]) );
  XOR2_X1 AddKeyXOR2_XORInst_3_0_U1 ( .A(Input[12]), .B(Key[12]), .Z(
        AddRoundKeyOutput[12]) );
  XOR2_X1 AddKeyXOR2_XORInst_3_1_U1 ( .A(Input[13]), .B(Key[13]), .Z(
        AddRoundKeyOutput[13]) );
  XOR2_X1 AddKeyXOR2_XORInst_3_2_U1 ( .A(Input[14]), .B(Key[14]), .Z(
        AddRoundKeyOutput[14]) );
  XOR2_X1 AddKeyXOR2_XORInst_3_3_U1 ( .A(Input[15]), .B(Key[15]), .Z(
        AddRoundKeyOutput[15]) );
  XOR2_X1 AddKeyXOR2_XORInst_4_0_U1 ( .A(Input[16]), .B(Key[16]), .Z(
        AddRoundKeyOutput[16]) );
  XOR2_X1 AddKeyXOR2_XORInst_4_1_U1 ( .A(Input[17]), .B(Key[17]), .Z(
        AddRoundKeyOutput[17]) );
  XOR2_X1 AddKeyXOR2_XORInst_4_2_U1 ( .A(Input[18]), .B(Key[18]), .Z(
        AddRoundKeyOutput[18]) );
  XOR2_X1 AddKeyXOR2_XORInst_4_3_U1 ( .A(Input[19]), .B(Key[19]), .Z(
        AddRoundKeyOutput[19]) );
  XOR2_X1 AddKeyXOR2_XORInst_5_0_U1 ( .A(Input[20]), .B(Key[20]), .Z(
        AddRoundKeyOutput[20]) );
  XOR2_X1 AddKeyXOR2_XORInst_5_1_U1 ( .A(Input[21]), .B(Key[21]), .Z(
        AddRoundKeyOutput[21]) );
  XOR2_X1 AddKeyXOR2_XORInst_5_2_U1 ( .A(Input[22]), .B(Key[22]), .Z(
        AddRoundKeyOutput[22]) );
  XOR2_X1 AddKeyXOR2_XORInst_5_3_U1 ( .A(Input[23]), .B(Key[23]), .Z(
        AddRoundKeyOutput[23]) );
  XOR2_X1 AddKeyXOR2_XORInst_6_0_U1 ( .A(Input[24]), .B(Key[24]), .Z(
        AddRoundKeyOutput[24]) );
  XOR2_X1 AddKeyXOR2_XORInst_6_1_U1 ( .A(Input[25]), .B(Key[25]), .Z(
        AddRoundKeyOutput[25]) );
  XOR2_X1 AddKeyXOR2_XORInst_6_2_U1 ( .A(Input[26]), .B(Key[26]), .Z(
        AddRoundKeyOutput[26]) );
  XOR2_X1 AddKeyXOR2_XORInst_6_3_U1 ( .A(Input[27]), .B(Key[27]), .Z(
        AddRoundKeyOutput[27]) );
  XOR2_X1 AddKeyXOR2_XORInst_7_0_U1 ( .A(Input[28]), .B(Key[28]), .Z(
        AddRoundKeyOutput[28]) );
  XOR2_X1 AddKeyXOR2_XORInst_7_1_U1 ( .A(Input[29]), .B(Key[29]), .Z(
        AddRoundKeyOutput[29]) );
  XOR2_X1 AddKeyXOR2_XORInst_7_2_U1 ( .A(Input[30]), .B(Key[30]), .Z(
        AddRoundKeyOutput[30]) );
  XOR2_X1 AddKeyXOR2_XORInst_7_3_U1 ( .A(Input[31]), .B(Key[31]), .Z(
        AddRoundKeyOutput[31]) );
  XOR2_X1 AddKeyXOR2_XORInst_8_0_U1 ( .A(MCOutput_32_), .B(Key[32]), .Z(
        AddRoundKeyOutput[32]) );
  XOR2_X1 AddKeyXOR2_XORInst_8_1_U1 ( .A(MCOutput_33_), .B(Key[33]), .Z(
        AddRoundKeyOutput[33]) );
  XOR2_X1 AddKeyXOR2_XORInst_8_2_U1 ( .A(MCOutput_34_), .B(Key[34]), .Z(
        AddRoundKeyOutput[34]) );
  XOR2_X1 AddKeyXOR2_XORInst_8_3_U1 ( .A(MCOutput_35_), .B(Key[35]), .Z(
        AddRoundKeyOutput[35]) );
  XOR2_X1 AddKeyXOR2_XORInst_9_0_U1 ( .A(MCOutput_36_), .B(Key[36]), .Z(
        AddRoundKeyOutput[36]) );
  XOR2_X1 AddKeyXOR2_XORInst_9_1_U1 ( .A(MCOutput_37_), .B(Key[37]), .Z(
        AddRoundKeyOutput[37]) );
  XOR2_X1 AddKeyXOR2_XORInst_9_2_U1 ( .A(MCOutput_38_), .B(Key[38]), .Z(
        AddRoundKeyOutput[38]) );
  XOR2_X1 AddKeyXOR2_XORInst_9_3_U1 ( .A(MCOutput_39_), .B(Key[39]), .Z(
        AddRoundKeyOutput[39]) );
  DFF_X1 StateReg_s_current_state_reg_0_ ( .D(AddRoundKeyOutput[0]), .CK(clk), 
        .Q(PermutationOutput[60]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_1_ ( .D(AddRoundKeyOutput[1]), .CK(clk), 
        .Q(PermutationOutput[61]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_2_ ( .D(AddRoundKeyOutput[2]), .CK(clk), 
        .Q(PermutationOutput[62]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_3_ ( .D(AddRoundKeyOutput[3]), .CK(clk), 
        .Q(PermutationOutput[63]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_4_ ( .D(AddRoundKeyOutput[4]), .CK(clk), 
        .Q(PermutationOutput[48]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_5_ ( .D(AddRoundKeyOutput[5]), .CK(clk), 
        .Q(PermutationOutput[49]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_6_ ( .D(AddRoundKeyOutput[6]), .CK(clk), 
        .Q(PermutationOutput[50]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_7_ ( .D(AddRoundKeyOutput[7]), .CK(clk), 
        .Q(PermutationOutput[51]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_8_ ( .D(AddRoundKeyOutput[8]), .CK(clk), 
        .Q(PermutationOutput[52]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_9_ ( .D(AddRoundKeyOutput[9]), .CK(clk), 
        .Q(PermutationOutput[53]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_10_ ( .D(AddRoundKeyOutput[10]), .CK(clk), .Q(PermutationOutput[54]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_11_ ( .D(AddRoundKeyOutput[11]), .CK(clk), .Q(PermutationOutput[55]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_12_ ( .D(AddRoundKeyOutput[12]), .CK(clk), .Q(PermutationOutput[56]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_13_ ( .D(AddRoundKeyOutput[13]), .CK(clk), .Q(PermutationOutput[57]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_14_ ( .D(AddRoundKeyOutput[14]), .CK(clk), .Q(PermutationOutput[58]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_15_ ( .D(AddRoundKeyOutput[15]), .CK(clk), .Q(PermutationOutput[59]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_16_ ( .D(AddRoundKeyOutput[16]), .CK(clk), .Q(PermutationOutput[32]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_17_ ( .D(AddRoundKeyOutput[17]), .CK(clk), .Q(PermutationOutput[33]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_18_ ( .D(AddRoundKeyOutput[18]), .CK(clk), .Q(PermutationOutput[34]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_19_ ( .D(AddRoundKeyOutput[19]), .CK(clk), .Q(PermutationOutput[35]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_20_ ( .D(AddRoundKeyOutput[20]), .CK(clk), .Q(PermutationOutput[44]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_21_ ( .D(AddRoundKeyOutput[21]), .CK(clk), .Q(PermutationOutput[45]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_22_ ( .D(AddRoundKeyOutput[22]), .CK(clk), .Q(PermutationOutput[46]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_23_ ( .D(AddRoundKeyOutput[23]), .CK(clk), .Q(PermutationOutput[47]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_24_ ( .D(AddRoundKeyOutput[24]), .CK(clk), .Q(PermutationOutput[40]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_25_ ( .D(AddRoundKeyOutput[25]), .CK(clk), .Q(PermutationOutput[41]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_26_ ( .D(AddRoundKeyOutput[26]), .CK(clk), .Q(PermutationOutput[42]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_27_ ( .D(AddRoundKeyOutput[27]), .CK(clk), .Q(PermutationOutput[43]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_28_ ( .D(AddRoundKeyOutput[28]), .CK(clk), .Q(PermutationOutput[36]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_29_ ( .D(AddRoundKeyOutput[29]), .CK(clk), .Q(PermutationOutput[37]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_30_ ( .D(AddRoundKeyOutput[30]), .CK(clk), .Q(PermutationOutput[38]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_31_ ( .D(AddRoundKeyOutput[31]), .CK(clk), .Q(PermutationOutput[39]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_32_ ( .D(AddRoundKeyOutput[32]), .CK(clk), .Q(PermutationOutput[16]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_33_ ( .D(AddRoundKeyOutput[33]), .CK(clk), .Q(PermutationOutput[17]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_34_ ( .D(AddRoundKeyOutput[34]), .CK(clk), .Q(PermutationOutput[18]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_35_ ( .D(AddRoundKeyOutput[35]), .CK(clk), .Q(PermutationOutput[19]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_36_ ( .D(AddRoundKeyOutput[36]), .CK(clk), .Q(PermutationOutput[28]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_37_ ( .D(AddRoundKeyOutput[37]), .CK(clk), .Q(PermutationOutput[29]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_38_ ( .D(AddRoundKeyOutput[38]), .CK(clk), .Q(PermutationOutput[30]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_39_ ( .D(AddRoundKeyOutput[39]), .CK(clk), .Q(PermutationOutput[31]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_40_ ( .D(AddRoundKeyOutput[40]), .CK(clk), .Q(PermutationOutput[24]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_41_ ( .D(AddRoundKeyOutput[41]), .CK(clk), .Q(PermutationOutput[25]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_42_ ( .D(AddRoundKeyOutput[42]), .CK(clk), .Q(PermutationOutput[26]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_43_ ( .D(AddRoundKeyOutput[43]), .CK(clk), .Q(PermutationOutput[27]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_44_ ( .D(AddRoundKeyOutput[44]), .CK(clk), .Q(PermutationOutput[20]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_45_ ( .D(AddRoundKeyOutput[45]), .CK(clk), .Q(PermutationOutput[21]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_46_ ( .D(AddRoundKeyOutput[46]), .CK(clk), .Q(PermutationOutput[22]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_47_ ( .D(AddRoundKeyOutput[47]), .CK(clk), .Q(PermutationOutput[23]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_48_ ( .D(AddRoundKeyOutput[48]), .CK(clk), .Q(PermutationOutput[4]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_49_ ( .D(AddRoundKeyOutput[49]), .CK(clk), .Q(PermutationOutput[5]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_50_ ( .D(AddRoundKeyOutput[50]), .CK(clk), .Q(PermutationOutput[6]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_51_ ( .D(AddRoundKeyOutput[51]), .CK(clk), .Q(PermutationOutput[7]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_52_ ( .D(AddRoundKeyOutput[52]), .CK(clk), .Q(PermutationOutput[8]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_53_ ( .D(AddRoundKeyOutput[53]), .CK(clk), .Q(PermutationOutput[9]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_54_ ( .D(AddRoundKeyOutput[54]), .CK(clk), .Q(PermutationOutput[10]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_55_ ( .D(AddRoundKeyOutput[55]), .CK(clk), .Q(PermutationOutput[11]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_56_ ( .D(AddRoundKeyOutput[56]), .CK(clk), .Q(PermutationOutput[12]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_57_ ( .D(AddRoundKeyOutput[57]), .CK(clk), .Q(PermutationOutput[13]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_58_ ( .D(AddRoundKeyOutput[58]), .CK(clk), .Q(PermutationOutput[14]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_59_ ( .D(AddRoundKeyOutput[59]), .CK(clk), .Q(PermutationOutput[15]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_60_ ( .D(AddRoundKeyOutput[60]), .CK(clk), .Q(PermutationOutput[0]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_61_ ( .D(AddRoundKeyOutput[61]), .CK(clk), .Q(PermutationOutput[1]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_62_ ( .D(AddRoundKeyOutput[62]), .CK(clk), .Q(PermutationOutput[2]), .QN() );
  DFF_X1 StateReg_s_current_state_reg_63_ ( .D(AddRoundKeyOutput[63]), .CK(clk), .Q(PermutationOutput[3]), .QN() );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_3_U4 ( .A1(PermutationOutput[1]), .A2(
        PermutationOutput[2]), .ZN(SubCellInst_LFInst_0_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_3_U3 ( .A1(PermutationOutput[3]), .A2(
        SubCellInst_LFInst_0_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_0_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_0_LFInst_3_U2 ( .A1(PermutationOutput[1]), .A2(
        PermutationOutput[0]), .ZN(SubCellInst_LFInst_0_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_0_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_0_LFInst_3_n9), .A2(
        SubCellInst_LFInst_0_LFInst_3_n8), .ZN(Output[3]) );
  NAND2_X1 SubCellInst_LFInst_0_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_0_LFInst_2_n18), .A2(
        SubCellInst_LFInst_0_LFInst_2_n17), .ZN(Output[2]) );
  OR2_X1 SubCellInst_LFInst_0_LFInst_2_U5 ( .A1(PermutationOutput[0]), .A2(
        PermutationOutput[3]), .ZN(SubCellInst_LFInst_0_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_0_LFInst_2_U4 ( .A1(PermutationOutput[1]), .A2(
        SubCellInst_LFInst_0_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_0_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_0_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_0_LFInst_2_n15), .A2(
        SubCellInst_LFInst_0_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_0_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_0_LFInst_2_U2 ( .A1(PermutationOutput[0]), .A2(
        PermutationOutput[3]), .ZN(SubCellInst_LFInst_0_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_0_LFInst_2_U1 ( .A(PermutationOutput[2]), .ZN(
        SubCellInst_LFInst_0_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_0_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_0_LFInst_1_n9), .A2(
        SubCellInst_LFInst_0_LFInst_1_n8), .ZN(Output[1]) );
  NAND2_X1 SubCellInst_LFInst_0_LFInst_1_U3 ( .A1(PermutationOutput[0]), .A2(
        PermutationOutput[2]), .ZN(SubCellInst_LFInst_0_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_0_LFInst_1_U2 ( .A1(PermutationOutput[3]), .A2(
        SubCellInst_LFInst_0_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_0_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_1_U1 ( .A1(PermutationOutput[0]), .A2(
        PermutationOutput[2]), .ZN(SubCellInst_LFInst_0_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_0_LFInst_0_n15), .A2(
        SubCellInst_LFInst_0_LFInst_0_n14), .ZN(Output[0]) );
  AND2_X1 SubCellInst_LFInst_0_LFInst_0_U5 ( .A1(PermutationOutput[3]), .A2(
        PermutationOutput[2]), .ZN(SubCellInst_LFInst_0_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_0_U4 ( .A1(PermutationOutput[1]), .A2(
        SubCellInst_LFInst_0_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_0_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_0_LFInst_0_n12), .A2(
        SubCellInst_LFInst_0_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_0_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_0_U2 ( .A1(PermutationOutput[3]), .A2(
        PermutationOutput[2]), .ZN(SubCellInst_LFInst_0_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_0_LFInst_0_U1 ( .A(PermutationOutput[0]), .ZN(
        SubCellInst_LFInst_0_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_3_U4 ( .A1(PermutationOutput[5]), .A2(
        PermutationOutput[6]), .ZN(SubCellInst_LFInst_1_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_3_U3 ( .A1(PermutationOutput[7]), .A2(
        SubCellInst_LFInst_1_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_1_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_1_LFInst_3_U2 ( .A1(PermutationOutput[5]), .A2(
        PermutationOutput[4]), .ZN(SubCellInst_LFInst_1_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_1_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_1_LFInst_3_n9), .A2(
        SubCellInst_LFInst_1_LFInst_3_n8), .ZN(Output[7]) );
  NAND2_X1 SubCellInst_LFInst_1_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_1_LFInst_2_n18), .A2(
        SubCellInst_LFInst_1_LFInst_2_n17), .ZN(Output[6]) );
  OR2_X1 SubCellInst_LFInst_1_LFInst_2_U5 ( .A1(PermutationOutput[4]), .A2(
        PermutationOutput[7]), .ZN(SubCellInst_LFInst_1_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_1_LFInst_2_U4 ( .A1(PermutationOutput[5]), .A2(
        SubCellInst_LFInst_1_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_1_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_1_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_1_LFInst_2_n15), .A2(
        SubCellInst_LFInst_1_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_1_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_1_LFInst_2_U2 ( .A1(PermutationOutput[4]), .A2(
        PermutationOutput[7]), .ZN(SubCellInst_LFInst_1_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_1_LFInst_2_U1 ( .A(PermutationOutput[6]), .ZN(
        SubCellInst_LFInst_1_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_1_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_1_LFInst_1_n9), .A2(
        SubCellInst_LFInst_1_LFInst_1_n8), .ZN(Output[5]) );
  NAND2_X1 SubCellInst_LFInst_1_LFInst_1_U3 ( .A1(PermutationOutput[4]), .A2(
        PermutationOutput[6]), .ZN(SubCellInst_LFInst_1_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_1_LFInst_1_U2 ( .A1(PermutationOutput[7]), .A2(
        SubCellInst_LFInst_1_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_1_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_1_U1 ( .A1(PermutationOutput[4]), .A2(
        PermutationOutput[6]), .ZN(SubCellInst_LFInst_1_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_1_LFInst_0_n15), .A2(
        SubCellInst_LFInst_1_LFInst_0_n14), .ZN(Output[4]) );
  AND2_X1 SubCellInst_LFInst_1_LFInst_0_U5 ( .A1(PermutationOutput[7]), .A2(
        PermutationOutput[6]), .ZN(SubCellInst_LFInst_1_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_0_U4 ( .A1(PermutationOutput[5]), .A2(
        SubCellInst_LFInst_1_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_1_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_1_LFInst_0_n12), .A2(
        SubCellInst_LFInst_1_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_1_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_0_U2 ( .A1(PermutationOutput[7]), .A2(
        PermutationOutput[6]), .ZN(SubCellInst_LFInst_1_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_1_LFInst_0_U1 ( .A(PermutationOutput[4]), .ZN(
        SubCellInst_LFInst_1_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_3_U4 ( .A1(PermutationOutput[9]), .A2(
        PermutationOutput[10]), .ZN(SubCellInst_LFInst_2_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_3_U3 ( .A1(PermutationOutput[11]), .A2(
        SubCellInst_LFInst_2_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_2_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_2_LFInst_3_U2 ( .A1(PermutationOutput[9]), .A2(
        PermutationOutput[8]), .ZN(SubCellInst_LFInst_2_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_2_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_2_LFInst_3_n9), .A2(
        SubCellInst_LFInst_2_LFInst_3_n8), .ZN(Output[11]) );
  NAND2_X1 SubCellInst_LFInst_2_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_2_LFInst_2_n18), .A2(
        SubCellInst_LFInst_2_LFInst_2_n17), .ZN(Output[10]) );
  OR2_X1 SubCellInst_LFInst_2_LFInst_2_U5 ( .A1(PermutationOutput[8]), .A2(
        PermutationOutput[11]), .ZN(SubCellInst_LFInst_2_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_2_LFInst_2_U4 ( .A1(PermutationOutput[9]), .A2(
        SubCellInst_LFInst_2_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_2_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_2_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_2_LFInst_2_n15), .A2(
        SubCellInst_LFInst_2_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_2_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_2_LFInst_2_U2 ( .A1(PermutationOutput[8]), .A2(
        PermutationOutput[11]), .ZN(SubCellInst_LFInst_2_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_2_LFInst_2_U1 ( .A(PermutationOutput[10]), .ZN(
        SubCellInst_LFInst_2_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_2_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_2_LFInst_1_n9), .A2(
        SubCellInst_LFInst_2_LFInst_1_n8), .ZN(Output[9]) );
  NAND2_X1 SubCellInst_LFInst_2_LFInst_1_U3 ( .A1(PermutationOutput[8]), .A2(
        PermutationOutput[10]), .ZN(SubCellInst_LFInst_2_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_2_LFInst_1_U2 ( .A1(PermutationOutput[11]), .A2(
        SubCellInst_LFInst_2_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_2_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_1_U1 ( .A1(PermutationOutput[8]), .A2(
        PermutationOutput[10]), .ZN(SubCellInst_LFInst_2_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_2_LFInst_0_n15), .A2(
        SubCellInst_LFInst_2_LFInst_0_n14), .ZN(Output[8]) );
  AND2_X1 SubCellInst_LFInst_2_LFInst_0_U5 ( .A1(PermutationOutput[11]), .A2(
        PermutationOutput[10]), .ZN(SubCellInst_LFInst_2_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_0_U4 ( .A1(PermutationOutput[9]), .A2(
        SubCellInst_LFInst_2_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_2_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_2_LFInst_0_n12), .A2(
        SubCellInst_LFInst_2_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_2_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_0_U2 ( .A1(PermutationOutput[11]), .A2(
        PermutationOutput[10]), .ZN(SubCellInst_LFInst_2_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_2_LFInst_0_U1 ( .A(PermutationOutput[8]), .ZN(
        SubCellInst_LFInst_2_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_3_U4 ( .A1(PermutationOutput[13]), .A2(
        PermutationOutput[14]), .ZN(SubCellInst_LFInst_3_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_3_U3 ( .A1(PermutationOutput[15]), .A2(
        SubCellInst_LFInst_3_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_3_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_3_LFInst_3_U2 ( .A1(PermutationOutput[13]), .A2(
        PermutationOutput[12]), .ZN(SubCellInst_LFInst_3_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_3_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_3_LFInst_3_n9), .A2(
        SubCellInst_LFInst_3_LFInst_3_n8), .ZN(Output[15]) );
  NAND2_X1 SubCellInst_LFInst_3_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_3_LFInst_2_n18), .A2(
        SubCellInst_LFInst_3_LFInst_2_n17), .ZN(Output[14]) );
  OR2_X1 SubCellInst_LFInst_3_LFInst_2_U5 ( .A1(PermutationOutput[12]), .A2(
        PermutationOutput[15]), .ZN(SubCellInst_LFInst_3_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_3_LFInst_2_U4 ( .A1(PermutationOutput[13]), .A2(
        SubCellInst_LFInst_3_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_3_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_3_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_3_LFInst_2_n15), .A2(
        SubCellInst_LFInst_3_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_3_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_3_LFInst_2_U2 ( .A1(PermutationOutput[12]), .A2(
        PermutationOutput[15]), .ZN(SubCellInst_LFInst_3_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_3_LFInst_2_U1 ( .A(PermutationOutput[14]), .ZN(
        SubCellInst_LFInst_3_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_3_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_3_LFInst_1_n9), .A2(
        SubCellInst_LFInst_3_LFInst_1_n8), .ZN(Output[13]) );
  NAND2_X1 SubCellInst_LFInst_3_LFInst_1_U3 ( .A1(PermutationOutput[12]), .A2(
        PermutationOutput[14]), .ZN(SubCellInst_LFInst_3_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_3_LFInst_1_U2 ( .A1(PermutationOutput[15]), .A2(
        SubCellInst_LFInst_3_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_3_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_1_U1 ( .A1(PermutationOutput[12]), .A2(
        PermutationOutput[14]), .ZN(SubCellInst_LFInst_3_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_3_LFInst_0_n15), .A2(
        SubCellInst_LFInst_3_LFInst_0_n14), .ZN(Output[12]) );
  AND2_X1 SubCellInst_LFInst_3_LFInst_0_U5 ( .A1(PermutationOutput[15]), .A2(
        PermutationOutput[14]), .ZN(SubCellInst_LFInst_3_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_0_U4 ( .A1(PermutationOutput[13]), .A2(
        SubCellInst_LFInst_3_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_3_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_3_LFInst_0_n12), .A2(
        SubCellInst_LFInst_3_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_3_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_0_U2 ( .A1(PermutationOutput[15]), .A2(
        PermutationOutput[14]), .ZN(SubCellInst_LFInst_3_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_3_LFInst_0_U1 ( .A(PermutationOutput[12]), .ZN(
        SubCellInst_LFInst_3_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_3_U4 ( .A1(PermutationOutput[17]), .A2(
        PermutationOutput[18]), .ZN(SubCellInst_LFInst_4_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_3_U3 ( .A1(PermutationOutput[19]), .A2(
        SubCellInst_LFInst_4_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_4_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_4_LFInst_3_U2 ( .A1(PermutationOutput[17]), .A2(
        PermutationOutput[16]), .ZN(SubCellInst_LFInst_4_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_4_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_4_LFInst_3_n9), .A2(
        SubCellInst_LFInst_4_LFInst_3_n8), .ZN(Output[19]) );
  NAND2_X1 SubCellInst_LFInst_4_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_4_LFInst_2_n18), .A2(
        SubCellInst_LFInst_4_LFInst_2_n17), .ZN(Output[18]) );
  OR2_X1 SubCellInst_LFInst_4_LFInst_2_U5 ( .A1(PermutationOutput[16]), .A2(
        PermutationOutput[19]), .ZN(SubCellInst_LFInst_4_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_4_LFInst_2_U4 ( .A1(PermutationOutput[17]), .A2(
        SubCellInst_LFInst_4_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_4_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_4_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_4_LFInst_2_n15), .A2(
        SubCellInst_LFInst_4_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_4_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_4_LFInst_2_U2 ( .A1(PermutationOutput[16]), .A2(
        PermutationOutput[19]), .ZN(SubCellInst_LFInst_4_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_4_LFInst_2_U1 ( .A(PermutationOutput[18]), .ZN(
        SubCellInst_LFInst_4_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_4_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_4_LFInst_1_n9), .A2(
        SubCellInst_LFInst_4_LFInst_1_n8), .ZN(Output[17]) );
  NAND2_X1 SubCellInst_LFInst_4_LFInst_1_U3 ( .A1(PermutationOutput[16]), .A2(
        PermutationOutput[18]), .ZN(SubCellInst_LFInst_4_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_4_LFInst_1_U2 ( .A1(PermutationOutput[19]), .A2(
        SubCellInst_LFInst_4_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_4_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_1_U1 ( .A1(PermutationOutput[16]), .A2(
        PermutationOutput[18]), .ZN(SubCellInst_LFInst_4_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_4_LFInst_0_n15), .A2(
        SubCellInst_LFInst_4_LFInst_0_n14), .ZN(Output[16]) );
  AND2_X1 SubCellInst_LFInst_4_LFInst_0_U5 ( .A1(PermutationOutput[19]), .A2(
        PermutationOutput[18]), .ZN(SubCellInst_LFInst_4_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_0_U4 ( .A1(PermutationOutput[17]), .A2(
        SubCellInst_LFInst_4_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_4_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_4_LFInst_0_n12), .A2(
        SubCellInst_LFInst_4_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_4_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_0_U2 ( .A1(PermutationOutput[19]), .A2(
        PermutationOutput[18]), .ZN(SubCellInst_LFInst_4_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_4_LFInst_0_U1 ( .A(PermutationOutput[16]), .ZN(
        SubCellInst_LFInst_4_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_3_U4 ( .A1(PermutationOutput[21]), .A2(
        PermutationOutput[22]), .ZN(SubCellInst_LFInst_5_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_3_U3 ( .A1(PermutationOutput[23]), .A2(
        SubCellInst_LFInst_5_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_5_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_5_LFInst_3_U2 ( .A1(PermutationOutput[21]), .A2(
        PermutationOutput[20]), .ZN(SubCellInst_LFInst_5_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_5_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_5_LFInst_3_n9), .A2(
        SubCellInst_LFInst_5_LFInst_3_n8), .ZN(Output[23]) );
  NAND2_X1 SubCellInst_LFInst_5_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_5_LFInst_2_n18), .A2(
        SubCellInst_LFInst_5_LFInst_2_n17), .ZN(Output[22]) );
  OR2_X1 SubCellInst_LFInst_5_LFInst_2_U5 ( .A1(PermutationOutput[20]), .A2(
        PermutationOutput[23]), .ZN(SubCellInst_LFInst_5_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_5_LFInst_2_U4 ( .A1(PermutationOutput[21]), .A2(
        SubCellInst_LFInst_5_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_5_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_5_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_5_LFInst_2_n15), .A2(
        SubCellInst_LFInst_5_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_5_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_5_LFInst_2_U2 ( .A1(PermutationOutput[20]), .A2(
        PermutationOutput[23]), .ZN(SubCellInst_LFInst_5_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_5_LFInst_2_U1 ( .A(PermutationOutput[22]), .ZN(
        SubCellInst_LFInst_5_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_5_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_5_LFInst_1_n9), .A2(
        SubCellInst_LFInst_5_LFInst_1_n8), .ZN(Output[21]) );
  NAND2_X1 SubCellInst_LFInst_5_LFInst_1_U3 ( .A1(PermutationOutput[20]), .A2(
        PermutationOutput[22]), .ZN(SubCellInst_LFInst_5_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_5_LFInst_1_U2 ( .A1(PermutationOutput[23]), .A2(
        SubCellInst_LFInst_5_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_5_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_1_U1 ( .A1(PermutationOutput[20]), .A2(
        PermutationOutput[22]), .ZN(SubCellInst_LFInst_5_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_5_LFInst_0_n15), .A2(
        SubCellInst_LFInst_5_LFInst_0_n14), .ZN(Output[20]) );
  AND2_X1 SubCellInst_LFInst_5_LFInst_0_U5 ( .A1(PermutationOutput[23]), .A2(
        PermutationOutput[22]), .ZN(SubCellInst_LFInst_5_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_0_U4 ( .A1(PermutationOutput[21]), .A2(
        SubCellInst_LFInst_5_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_5_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_5_LFInst_0_n12), .A2(
        SubCellInst_LFInst_5_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_5_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_0_U2 ( .A1(PermutationOutput[23]), .A2(
        PermutationOutput[22]), .ZN(SubCellInst_LFInst_5_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_5_LFInst_0_U1 ( .A(PermutationOutput[20]), .ZN(
        SubCellInst_LFInst_5_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_3_U4 ( .A1(PermutationOutput[25]), .A2(
        PermutationOutput[26]), .ZN(SubCellInst_LFInst_6_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_3_U3 ( .A1(PermutationOutput[27]), .A2(
        SubCellInst_LFInst_6_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_6_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_6_LFInst_3_U2 ( .A1(PermutationOutput[25]), .A2(
        PermutationOutput[24]), .ZN(SubCellInst_LFInst_6_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_6_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_6_LFInst_3_n9), .A2(
        SubCellInst_LFInst_6_LFInst_3_n8), .ZN(Output[27]) );
  NAND2_X1 SubCellInst_LFInst_6_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_6_LFInst_2_n18), .A2(
        SubCellInst_LFInst_6_LFInst_2_n17), .ZN(Output[26]) );
  OR2_X1 SubCellInst_LFInst_6_LFInst_2_U5 ( .A1(PermutationOutput[24]), .A2(
        PermutationOutput[27]), .ZN(SubCellInst_LFInst_6_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_6_LFInst_2_U4 ( .A1(PermutationOutput[25]), .A2(
        SubCellInst_LFInst_6_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_6_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_6_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_6_LFInst_2_n15), .A2(
        SubCellInst_LFInst_6_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_6_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_6_LFInst_2_U2 ( .A1(PermutationOutput[24]), .A2(
        PermutationOutput[27]), .ZN(SubCellInst_LFInst_6_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_6_LFInst_2_U1 ( .A(PermutationOutput[26]), .ZN(
        SubCellInst_LFInst_6_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_6_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_6_LFInst_1_n9), .A2(
        SubCellInst_LFInst_6_LFInst_1_n8), .ZN(Output[25]) );
  NAND2_X1 SubCellInst_LFInst_6_LFInst_1_U3 ( .A1(PermutationOutput[24]), .A2(
        PermutationOutput[26]), .ZN(SubCellInst_LFInst_6_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_6_LFInst_1_U2 ( .A1(PermutationOutput[27]), .A2(
        SubCellInst_LFInst_6_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_6_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_1_U1 ( .A1(PermutationOutput[24]), .A2(
        PermutationOutput[26]), .ZN(SubCellInst_LFInst_6_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_6_LFInst_0_n15), .A2(
        SubCellInst_LFInst_6_LFInst_0_n14), .ZN(Output[24]) );
  AND2_X1 SubCellInst_LFInst_6_LFInst_0_U5 ( .A1(PermutationOutput[27]), .A2(
        PermutationOutput[26]), .ZN(SubCellInst_LFInst_6_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_0_U4 ( .A1(PermutationOutput[25]), .A2(
        SubCellInst_LFInst_6_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_6_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_6_LFInst_0_n12), .A2(
        SubCellInst_LFInst_6_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_6_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_0_U2 ( .A1(PermutationOutput[27]), .A2(
        PermutationOutput[26]), .ZN(SubCellInst_LFInst_6_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_6_LFInst_0_U1 ( .A(PermutationOutput[24]), .ZN(
        SubCellInst_LFInst_6_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_3_U4 ( .A1(PermutationOutput[29]), .A2(
        PermutationOutput[30]), .ZN(SubCellInst_LFInst_7_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_3_U3 ( .A1(PermutationOutput[31]), .A2(
        SubCellInst_LFInst_7_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_7_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_7_LFInst_3_U2 ( .A1(PermutationOutput[29]), .A2(
        PermutationOutput[28]), .ZN(SubCellInst_LFInst_7_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_7_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_7_LFInst_3_n9), .A2(
        SubCellInst_LFInst_7_LFInst_3_n8), .ZN(Output[31]) );
  NAND2_X1 SubCellInst_LFInst_7_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_7_LFInst_2_n18), .A2(
        SubCellInst_LFInst_7_LFInst_2_n17), .ZN(Output[30]) );
  OR2_X1 SubCellInst_LFInst_7_LFInst_2_U5 ( .A1(PermutationOutput[28]), .A2(
        PermutationOutput[31]), .ZN(SubCellInst_LFInst_7_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_7_LFInst_2_U4 ( .A1(PermutationOutput[29]), .A2(
        SubCellInst_LFInst_7_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_7_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_7_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_7_LFInst_2_n15), .A2(
        SubCellInst_LFInst_7_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_7_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_7_LFInst_2_U2 ( .A1(PermutationOutput[28]), .A2(
        PermutationOutput[31]), .ZN(SubCellInst_LFInst_7_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_7_LFInst_2_U1 ( .A(PermutationOutput[30]), .ZN(
        SubCellInst_LFInst_7_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_7_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_7_LFInst_1_n9), .A2(
        SubCellInst_LFInst_7_LFInst_1_n8), .ZN(Output[29]) );
  NAND2_X1 SubCellInst_LFInst_7_LFInst_1_U3 ( .A1(PermutationOutput[28]), .A2(
        PermutationOutput[30]), .ZN(SubCellInst_LFInst_7_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_7_LFInst_1_U2 ( .A1(PermutationOutput[31]), .A2(
        SubCellInst_LFInst_7_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_7_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_1_U1 ( .A1(PermutationOutput[28]), .A2(
        PermutationOutput[30]), .ZN(SubCellInst_LFInst_7_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_7_LFInst_0_n15), .A2(
        SubCellInst_LFInst_7_LFInst_0_n14), .ZN(Output[28]) );
  AND2_X1 SubCellInst_LFInst_7_LFInst_0_U5 ( .A1(PermutationOutput[31]), .A2(
        PermutationOutput[30]), .ZN(SubCellInst_LFInst_7_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_0_U4 ( .A1(PermutationOutput[29]), .A2(
        SubCellInst_LFInst_7_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_7_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_7_LFInst_0_n12), .A2(
        SubCellInst_LFInst_7_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_7_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_0_U2 ( .A1(PermutationOutput[31]), .A2(
        PermutationOutput[30]), .ZN(SubCellInst_LFInst_7_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_7_LFInst_0_U1 ( .A(PermutationOutput[28]), .ZN(
        SubCellInst_LFInst_7_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_3_U4 ( .A1(PermutationOutput[33]), .A2(
        PermutationOutput[34]), .ZN(SubCellInst_LFInst_8_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_3_U3 ( .A1(PermutationOutput[35]), .A2(
        SubCellInst_LFInst_8_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_8_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_8_LFInst_3_U2 ( .A1(PermutationOutput[33]), .A2(
        PermutationOutput[32]), .ZN(SubCellInst_LFInst_8_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_8_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_8_LFInst_3_n9), .A2(
        SubCellInst_LFInst_8_LFInst_3_n8), .ZN(Output[35]) );
  NAND2_X1 SubCellInst_LFInst_8_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_8_LFInst_2_n18), .A2(
        SubCellInst_LFInst_8_LFInst_2_n17), .ZN(Output[34]) );
  OR2_X1 SubCellInst_LFInst_8_LFInst_2_U5 ( .A1(PermutationOutput[32]), .A2(
        PermutationOutput[35]), .ZN(SubCellInst_LFInst_8_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_8_LFInst_2_U4 ( .A1(PermutationOutput[33]), .A2(
        SubCellInst_LFInst_8_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_8_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_8_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_8_LFInst_2_n15), .A2(
        SubCellInst_LFInst_8_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_8_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_8_LFInst_2_U2 ( .A1(PermutationOutput[32]), .A2(
        PermutationOutput[35]), .ZN(SubCellInst_LFInst_8_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_8_LFInst_2_U1 ( .A(PermutationOutput[34]), .ZN(
        SubCellInst_LFInst_8_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_8_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_8_LFInst_1_n9), .A2(
        SubCellInst_LFInst_8_LFInst_1_n8), .ZN(Output[33]) );
  NAND2_X1 SubCellInst_LFInst_8_LFInst_1_U3 ( .A1(PermutationOutput[32]), .A2(
        PermutationOutput[34]), .ZN(SubCellInst_LFInst_8_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_8_LFInst_1_U2 ( .A1(PermutationOutput[35]), .A2(
        SubCellInst_LFInst_8_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_8_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_1_U1 ( .A1(PermutationOutput[32]), .A2(
        PermutationOutput[34]), .ZN(SubCellInst_LFInst_8_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_8_LFInst_0_n15), .A2(
        SubCellInst_LFInst_8_LFInst_0_n14), .ZN(Output[32]) );
  AND2_X1 SubCellInst_LFInst_8_LFInst_0_U5 ( .A1(PermutationOutput[35]), .A2(
        PermutationOutput[34]), .ZN(SubCellInst_LFInst_8_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_0_U4 ( .A1(PermutationOutput[33]), .A2(
        SubCellInst_LFInst_8_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_8_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_8_LFInst_0_n12), .A2(
        SubCellInst_LFInst_8_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_8_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_0_U2 ( .A1(PermutationOutput[35]), .A2(
        PermutationOutput[34]), .ZN(SubCellInst_LFInst_8_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_8_LFInst_0_U1 ( .A(PermutationOutput[32]), .ZN(
        SubCellInst_LFInst_8_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_3_U4 ( .A1(PermutationOutput[37]), .A2(
        PermutationOutput[38]), .ZN(SubCellInst_LFInst_9_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_3_U3 ( .A1(PermutationOutput[39]), .A2(
        SubCellInst_LFInst_9_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_9_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_9_LFInst_3_U2 ( .A1(PermutationOutput[37]), .A2(
        PermutationOutput[36]), .ZN(SubCellInst_LFInst_9_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_9_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_9_LFInst_3_n9), .A2(
        SubCellInst_LFInst_9_LFInst_3_n8), .ZN(Output[39]) );
  NAND2_X1 SubCellInst_LFInst_9_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_9_LFInst_2_n18), .A2(
        SubCellInst_LFInst_9_LFInst_2_n17), .ZN(Output[38]) );
  OR2_X1 SubCellInst_LFInst_9_LFInst_2_U5 ( .A1(PermutationOutput[36]), .A2(
        PermutationOutput[39]), .ZN(SubCellInst_LFInst_9_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_9_LFInst_2_U4 ( .A1(PermutationOutput[37]), .A2(
        SubCellInst_LFInst_9_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_9_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_9_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_9_LFInst_2_n15), .A2(
        SubCellInst_LFInst_9_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_9_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_9_LFInst_2_U2 ( .A1(PermutationOutput[36]), .A2(
        PermutationOutput[39]), .ZN(SubCellInst_LFInst_9_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_9_LFInst_2_U1 ( .A(PermutationOutput[38]), .ZN(
        SubCellInst_LFInst_9_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_9_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_9_LFInst_1_n9), .A2(
        SubCellInst_LFInst_9_LFInst_1_n8), .ZN(Output[37]) );
  NAND2_X1 SubCellInst_LFInst_9_LFInst_1_U3 ( .A1(PermutationOutput[36]), .A2(
        PermutationOutput[38]), .ZN(SubCellInst_LFInst_9_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_9_LFInst_1_U2 ( .A1(PermutationOutput[39]), .A2(
        SubCellInst_LFInst_9_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_9_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_1_U1 ( .A1(PermutationOutput[36]), .A2(
        PermutationOutput[38]), .ZN(SubCellInst_LFInst_9_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_9_LFInst_0_n15), .A2(
        SubCellInst_LFInst_9_LFInst_0_n14), .ZN(Output[36]) );
  AND2_X1 SubCellInst_LFInst_9_LFInst_0_U5 ( .A1(PermutationOutput[39]), .A2(
        PermutationOutput[38]), .ZN(SubCellInst_LFInst_9_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_0_U4 ( .A1(PermutationOutput[37]), .A2(
        SubCellInst_LFInst_9_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_9_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_9_LFInst_0_n12), .A2(
        SubCellInst_LFInst_9_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_9_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_0_U2 ( .A1(PermutationOutput[39]), .A2(
        PermutationOutput[38]), .ZN(SubCellInst_LFInst_9_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_9_LFInst_0_U1 ( .A(PermutationOutput[36]), .ZN(
        SubCellInst_LFInst_9_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_3_U4 ( .A1(PermutationOutput[41]), .A2(
        PermutationOutput[42]), .ZN(SubCellInst_LFInst_10_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_3_U3 ( .A1(PermutationOutput[43]), .A2(
        SubCellInst_LFInst_10_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_10_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_10_LFInst_3_U2 ( .A1(PermutationOutput[41]), .A2(
        PermutationOutput[40]), .ZN(SubCellInst_LFInst_10_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_10_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_10_LFInst_3_n9), .A2(
        SubCellInst_LFInst_10_LFInst_3_n8), .ZN(Output[43]) );
  NAND2_X1 SubCellInst_LFInst_10_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_10_LFInst_2_n18), .A2(
        SubCellInst_LFInst_10_LFInst_2_n17), .ZN(Output[42]) );
  OR2_X1 SubCellInst_LFInst_10_LFInst_2_U5 ( .A1(PermutationOutput[40]), .A2(
        PermutationOutput[43]), .ZN(SubCellInst_LFInst_10_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_10_LFInst_2_U4 ( .A1(PermutationOutput[41]), 
        .A2(SubCellInst_LFInst_10_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_10_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_10_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_10_LFInst_2_n15), .A2(
        SubCellInst_LFInst_10_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_10_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_10_LFInst_2_U2 ( .A1(PermutationOutput[40]), 
        .A2(PermutationOutput[43]), .ZN(SubCellInst_LFInst_10_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_10_LFInst_2_U1 ( .A(PermutationOutput[42]), .ZN(
        SubCellInst_LFInst_10_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_10_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_10_LFInst_1_n9), .A2(
        SubCellInst_LFInst_10_LFInst_1_n8), .ZN(Output[41]) );
  NAND2_X1 SubCellInst_LFInst_10_LFInst_1_U3 ( .A1(PermutationOutput[40]), 
        .A2(PermutationOutput[42]), .ZN(SubCellInst_LFInst_10_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_10_LFInst_1_U2 ( .A1(PermutationOutput[43]), .A2(
        SubCellInst_LFInst_10_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_10_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_1_U1 ( .A1(PermutationOutput[40]), .A2(
        PermutationOutput[42]), .ZN(SubCellInst_LFInst_10_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_10_LFInst_0_n15), .A2(
        SubCellInst_LFInst_10_LFInst_0_n14), .ZN(Output[40]) );
  AND2_X1 SubCellInst_LFInst_10_LFInst_0_U5 ( .A1(PermutationOutput[43]), .A2(
        PermutationOutput[42]), .ZN(SubCellInst_LFInst_10_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_0_U4 ( .A1(PermutationOutput[41]), .A2(
        SubCellInst_LFInst_10_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_10_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_10_LFInst_0_n12), .A2(
        SubCellInst_LFInst_10_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_10_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_0_U2 ( .A1(PermutationOutput[43]), .A2(
        PermutationOutput[42]), .ZN(SubCellInst_LFInst_10_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_10_LFInst_0_U1 ( .A(PermutationOutput[40]), .ZN(
        SubCellInst_LFInst_10_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_3_U4 ( .A1(PermutationOutput[45]), .A2(
        PermutationOutput[46]), .ZN(SubCellInst_LFInst_11_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_3_U3 ( .A1(PermutationOutput[47]), .A2(
        SubCellInst_LFInst_11_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_11_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_11_LFInst_3_U2 ( .A1(PermutationOutput[45]), .A2(
        PermutationOutput[44]), .ZN(SubCellInst_LFInst_11_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_11_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_11_LFInst_3_n9), .A2(
        SubCellInst_LFInst_11_LFInst_3_n8), .ZN(Output[47]) );
  NAND2_X1 SubCellInst_LFInst_11_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_11_LFInst_2_n18), .A2(
        SubCellInst_LFInst_11_LFInst_2_n17), .ZN(Output[46]) );
  OR2_X1 SubCellInst_LFInst_11_LFInst_2_U5 ( .A1(PermutationOutput[44]), .A2(
        PermutationOutput[47]), .ZN(SubCellInst_LFInst_11_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_11_LFInst_2_U4 ( .A1(PermutationOutput[45]), 
        .A2(SubCellInst_LFInst_11_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_11_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_11_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_11_LFInst_2_n15), .A2(
        SubCellInst_LFInst_11_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_11_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_11_LFInst_2_U2 ( .A1(PermutationOutput[44]), 
        .A2(PermutationOutput[47]), .ZN(SubCellInst_LFInst_11_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_11_LFInst_2_U1 ( .A(PermutationOutput[46]), .ZN(
        SubCellInst_LFInst_11_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_11_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_11_LFInst_1_n9), .A2(
        SubCellInst_LFInst_11_LFInst_1_n8), .ZN(Output[45]) );
  NAND2_X1 SubCellInst_LFInst_11_LFInst_1_U3 ( .A1(PermutationOutput[44]), 
        .A2(PermutationOutput[46]), .ZN(SubCellInst_LFInst_11_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_11_LFInst_1_U2 ( .A1(PermutationOutput[47]), .A2(
        SubCellInst_LFInst_11_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_11_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_1_U1 ( .A1(PermutationOutput[44]), .A2(
        PermutationOutput[46]), .ZN(SubCellInst_LFInst_11_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_11_LFInst_0_n15), .A2(
        SubCellInst_LFInst_11_LFInst_0_n14), .ZN(Output[44]) );
  AND2_X1 SubCellInst_LFInst_11_LFInst_0_U5 ( .A1(PermutationOutput[47]), .A2(
        PermutationOutput[46]), .ZN(SubCellInst_LFInst_11_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_0_U4 ( .A1(PermutationOutput[45]), .A2(
        SubCellInst_LFInst_11_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_11_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_11_LFInst_0_n12), .A2(
        SubCellInst_LFInst_11_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_11_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_0_U2 ( .A1(PermutationOutput[47]), .A2(
        PermutationOutput[46]), .ZN(SubCellInst_LFInst_11_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_11_LFInst_0_U1 ( .A(PermutationOutput[44]), .ZN(
        SubCellInst_LFInst_11_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_3_U4 ( .A1(PermutationOutput[49]), .A2(
        PermutationOutput[50]), .ZN(SubCellInst_LFInst_12_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_3_U3 ( .A1(PermutationOutput[51]), .A2(
        SubCellInst_LFInst_12_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_12_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_12_LFInst_3_U2 ( .A1(PermutationOutput[49]), .A2(
        PermutationOutput[48]), .ZN(SubCellInst_LFInst_12_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_12_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_12_LFInst_3_n9), .A2(
        SubCellInst_LFInst_12_LFInst_3_n8), .ZN(Output[51]) );
  NAND2_X1 SubCellInst_LFInst_12_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_12_LFInst_2_n18), .A2(
        SubCellInst_LFInst_12_LFInst_2_n17), .ZN(Output[50]) );
  OR2_X1 SubCellInst_LFInst_12_LFInst_2_U5 ( .A1(PermutationOutput[48]), .A2(
        PermutationOutput[51]), .ZN(SubCellInst_LFInst_12_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_12_LFInst_2_U4 ( .A1(PermutationOutput[49]), 
        .A2(SubCellInst_LFInst_12_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_12_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_12_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_12_LFInst_2_n15), .A2(
        SubCellInst_LFInst_12_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_12_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_12_LFInst_2_U2 ( .A1(PermutationOutput[48]), 
        .A2(PermutationOutput[51]), .ZN(SubCellInst_LFInst_12_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_12_LFInst_2_U1 ( .A(PermutationOutput[50]), .ZN(
        SubCellInst_LFInst_12_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_12_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_12_LFInst_1_n9), .A2(
        SubCellInst_LFInst_12_LFInst_1_n8), .ZN(Output[49]) );
  NAND2_X1 SubCellInst_LFInst_12_LFInst_1_U3 ( .A1(PermutationOutput[48]), 
        .A2(PermutationOutput[50]), .ZN(SubCellInst_LFInst_12_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_12_LFInst_1_U2 ( .A1(PermutationOutput[51]), .A2(
        SubCellInst_LFInst_12_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_12_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_1_U1 ( .A1(PermutationOutput[48]), .A2(
        PermutationOutput[50]), .ZN(SubCellInst_LFInst_12_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_12_LFInst_0_n15), .A2(
        SubCellInst_LFInst_12_LFInst_0_n14), .ZN(Output[48]) );
  AND2_X1 SubCellInst_LFInst_12_LFInst_0_U5 ( .A1(PermutationOutput[51]), .A2(
        PermutationOutput[50]), .ZN(SubCellInst_LFInst_12_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_0_U4 ( .A1(PermutationOutput[49]), .A2(
        SubCellInst_LFInst_12_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_12_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_12_LFInst_0_n12), .A2(
        SubCellInst_LFInst_12_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_12_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_0_U2 ( .A1(PermutationOutput[51]), .A2(
        PermutationOutput[50]), .ZN(SubCellInst_LFInst_12_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_12_LFInst_0_U1 ( .A(PermutationOutput[48]), .ZN(
        SubCellInst_LFInst_12_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_3_U4 ( .A1(PermutationOutput[53]), .A2(
        PermutationOutput[54]), .ZN(SubCellInst_LFInst_13_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_3_U3 ( .A1(PermutationOutput[55]), .A2(
        SubCellInst_LFInst_13_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_13_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_13_LFInst_3_U2 ( .A1(PermutationOutput[53]), .A2(
        PermutationOutput[52]), .ZN(SubCellInst_LFInst_13_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_13_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_13_LFInst_3_n9), .A2(
        SubCellInst_LFInst_13_LFInst_3_n8), .ZN(Output[55]) );
  NAND2_X1 SubCellInst_LFInst_13_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_13_LFInst_2_n18), .A2(
        SubCellInst_LFInst_13_LFInst_2_n17), .ZN(Output[54]) );
  OR2_X1 SubCellInst_LFInst_13_LFInst_2_U5 ( .A1(PermutationOutput[52]), .A2(
        PermutationOutput[55]), .ZN(SubCellInst_LFInst_13_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_13_LFInst_2_U4 ( .A1(PermutationOutput[53]), 
        .A2(SubCellInst_LFInst_13_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_13_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_13_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_13_LFInst_2_n15), .A2(
        SubCellInst_LFInst_13_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_13_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_13_LFInst_2_U2 ( .A1(PermutationOutput[52]), 
        .A2(PermutationOutput[55]), .ZN(SubCellInst_LFInst_13_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_13_LFInst_2_U1 ( .A(PermutationOutput[54]), .ZN(
        SubCellInst_LFInst_13_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_13_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_13_LFInst_1_n9), .A2(
        SubCellInst_LFInst_13_LFInst_1_n8), .ZN(Output[53]) );
  NAND2_X1 SubCellInst_LFInst_13_LFInst_1_U3 ( .A1(PermutationOutput[52]), 
        .A2(PermutationOutput[54]), .ZN(SubCellInst_LFInst_13_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_13_LFInst_1_U2 ( .A1(PermutationOutput[55]), .A2(
        SubCellInst_LFInst_13_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_13_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_1_U1 ( .A1(PermutationOutput[52]), .A2(
        PermutationOutput[54]), .ZN(SubCellInst_LFInst_13_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_13_LFInst_0_n15), .A2(
        SubCellInst_LFInst_13_LFInst_0_n14), .ZN(Output[52]) );
  AND2_X1 SubCellInst_LFInst_13_LFInst_0_U5 ( .A1(PermutationOutput[55]), .A2(
        PermutationOutput[54]), .ZN(SubCellInst_LFInst_13_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_0_U4 ( .A1(PermutationOutput[53]), .A2(
        SubCellInst_LFInst_13_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_13_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_13_LFInst_0_n12), .A2(
        SubCellInst_LFInst_13_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_13_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_0_U2 ( .A1(PermutationOutput[55]), .A2(
        PermutationOutput[54]), .ZN(SubCellInst_LFInst_13_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_13_LFInst_0_U1 ( .A(PermutationOutput[52]), .ZN(
        SubCellInst_LFInst_13_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_3_U4 ( .A1(PermutationOutput[57]), .A2(
        PermutationOutput[58]), .ZN(SubCellInst_LFInst_14_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_3_U3 ( .A1(PermutationOutput[59]), .A2(
        SubCellInst_LFInst_14_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_14_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_14_LFInst_3_U2 ( .A1(PermutationOutput[57]), .A2(
        PermutationOutput[56]), .ZN(SubCellInst_LFInst_14_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_14_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_14_LFInst_3_n9), .A2(
        SubCellInst_LFInst_14_LFInst_3_n8), .ZN(Output[59]) );
  NAND2_X1 SubCellInst_LFInst_14_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_14_LFInst_2_n18), .A2(
        SubCellInst_LFInst_14_LFInst_2_n17), .ZN(Output[58]) );
  OR2_X1 SubCellInst_LFInst_14_LFInst_2_U5 ( .A1(PermutationOutput[56]), .A2(
        PermutationOutput[59]), .ZN(SubCellInst_LFInst_14_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_14_LFInst_2_U4 ( .A1(PermutationOutput[57]), 
        .A2(SubCellInst_LFInst_14_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_14_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_14_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_14_LFInst_2_n15), .A2(
        SubCellInst_LFInst_14_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_14_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_14_LFInst_2_U2 ( .A1(PermutationOutput[56]), 
        .A2(PermutationOutput[59]), .ZN(SubCellInst_LFInst_14_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_14_LFInst_2_U1 ( .A(PermutationOutput[58]), .ZN(
        SubCellInst_LFInst_14_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_14_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_14_LFInst_1_n9), .A2(
        SubCellInst_LFInst_14_LFInst_1_n8), .ZN(Output[57]) );
  NAND2_X1 SubCellInst_LFInst_14_LFInst_1_U3 ( .A1(PermutationOutput[56]), 
        .A2(PermutationOutput[58]), .ZN(SubCellInst_LFInst_14_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_14_LFInst_1_U2 ( .A1(PermutationOutput[59]), .A2(
        SubCellInst_LFInst_14_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_14_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_1_U1 ( .A1(PermutationOutput[56]), .A2(
        PermutationOutput[58]), .ZN(SubCellInst_LFInst_14_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_14_LFInst_0_n15), .A2(
        SubCellInst_LFInst_14_LFInst_0_n14), .ZN(Output[56]) );
  AND2_X1 SubCellInst_LFInst_14_LFInst_0_U5 ( .A1(PermutationOutput[59]), .A2(
        PermutationOutput[58]), .ZN(SubCellInst_LFInst_14_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_0_U4 ( .A1(PermutationOutput[57]), .A2(
        SubCellInst_LFInst_14_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_14_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_14_LFInst_0_n12), .A2(
        SubCellInst_LFInst_14_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_14_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_0_U2 ( .A1(PermutationOutput[59]), .A2(
        PermutationOutput[58]), .ZN(SubCellInst_LFInst_14_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_14_LFInst_0_U1 ( .A(PermutationOutput[56]), .ZN(
        SubCellInst_LFInst_14_LFInst_0_n12) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_3_U4 ( .A1(PermutationOutput[61]), .A2(
        PermutationOutput[62]), .ZN(SubCellInst_LFInst_15_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_3_U3 ( .A1(PermutationOutput[63]), .A2(
        SubCellInst_LFInst_15_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_15_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_15_LFInst_3_U2 ( .A1(PermutationOutput[61]), .A2(
        PermutationOutput[60]), .ZN(SubCellInst_LFInst_15_LFInst_3_n7) );
  OR2_X1 SubCellInst_LFInst_15_LFInst_3_U1 ( .A1(
        SubCellInst_LFInst_15_LFInst_3_n9), .A2(
        SubCellInst_LFInst_15_LFInst_3_n8), .ZN(Output[63]) );
  NAND2_X1 SubCellInst_LFInst_15_LFInst_2_U6 ( .A1(
        SubCellInst_LFInst_15_LFInst_2_n18), .A2(
        SubCellInst_LFInst_15_LFInst_2_n17), .ZN(Output[62]) );
  OR2_X1 SubCellInst_LFInst_15_LFInst_2_U5 ( .A1(PermutationOutput[60]), .A2(
        PermutationOutput[63]), .ZN(SubCellInst_LFInst_15_LFInst_2_n17) );
  NAND2_X1 SubCellInst_LFInst_15_LFInst_2_U4 ( .A1(PermutationOutput[61]), 
        .A2(SubCellInst_LFInst_15_LFInst_2_n16), .ZN(
        SubCellInst_LFInst_15_LFInst_2_n18) );
  NAND2_X1 SubCellInst_LFInst_15_LFInst_2_U3 ( .A1(
        SubCellInst_LFInst_15_LFInst_2_n15), .A2(
        SubCellInst_LFInst_15_LFInst_2_n14), .ZN(
        SubCellInst_LFInst_15_LFInst_2_n16) );
  NAND2_X1 SubCellInst_LFInst_15_LFInst_2_U2 ( .A1(PermutationOutput[60]), 
        .A2(PermutationOutput[63]), .ZN(SubCellInst_LFInst_15_LFInst_2_n14) );
  INV_X1 SubCellInst_LFInst_15_LFInst_2_U1 ( .A(PermutationOutput[62]), .ZN(
        SubCellInst_LFInst_15_LFInst_2_n15) );
  NAND2_X1 SubCellInst_LFInst_15_LFInst_1_U4 ( .A1(
        SubCellInst_LFInst_15_LFInst_1_n9), .A2(
        SubCellInst_LFInst_15_LFInst_1_n8), .ZN(Output[61]) );
  NAND2_X1 SubCellInst_LFInst_15_LFInst_1_U3 ( .A1(PermutationOutput[60]), 
        .A2(PermutationOutput[62]), .ZN(SubCellInst_LFInst_15_LFInst_1_n8) );
  OR2_X1 SubCellInst_LFInst_15_LFInst_1_U2 ( .A1(PermutationOutput[63]), .A2(
        SubCellInst_LFInst_15_LFInst_1_n7), .ZN(
        SubCellInst_LFInst_15_LFInst_1_n9) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_1_U1 ( .A1(PermutationOutput[60]), .A2(
        PermutationOutput[62]), .ZN(SubCellInst_LFInst_15_LFInst_1_n7) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_0_U6 ( .A1(
        SubCellInst_LFInst_15_LFInst_0_n15), .A2(
        SubCellInst_LFInst_15_LFInst_0_n14), .ZN(Output[60]) );
  AND2_X1 SubCellInst_LFInst_15_LFInst_0_U5 ( .A1(PermutationOutput[63]), .A2(
        PermutationOutput[62]), .ZN(SubCellInst_LFInst_15_LFInst_0_n14) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_0_U4 ( .A1(PermutationOutput[61]), .A2(
        SubCellInst_LFInst_15_LFInst_0_n13), .ZN(
        SubCellInst_LFInst_15_LFInst_0_n15) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_0_U3 ( .A1(
        SubCellInst_LFInst_15_LFInst_0_n12), .A2(
        SubCellInst_LFInst_15_LFInst_0_n11), .ZN(
        SubCellInst_LFInst_15_LFInst_0_n13) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_0_U2 ( .A1(PermutationOutput[63]), .A2(
        PermutationOutput[62]), .ZN(SubCellInst_LFInst_15_LFInst_0_n11) );
  INV_X1 SubCellInst_LFInst_15_LFInst_0_U1 ( .A(PermutationOutput[60]), .ZN(
        SubCellInst_LFInst_15_LFInst_0_n12) );
  XNOR2_X1 Red_InputInst_LFInst_0_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_0_LFInst_3_n3), .B(Input[2]), .ZN(Red_MCOutput[3]) );
  XNOR2_X1 Red_InputInst_LFInst_0_LFInst_3_U1 ( .A(Input[0]), .B(Input[1]), 
        .ZN(Red_InputInst_LFInst_0_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_0_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_0_LFInst_2_n3), .B(Input[3]), .ZN(Red_MCOutput[2]) );
  XNOR2_X1 Red_InputInst_LFInst_0_LFInst_2_U1 ( .A(Input[0]), .B(Input[1]), 
        .ZN(Red_InputInst_LFInst_0_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_0_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_0_LFInst_1_n3), .B(Input[3]), .ZN(Red_MCOutput[1]) );
  XNOR2_X1 Red_InputInst_LFInst_0_LFInst_1_U1 ( .A(Input[0]), .B(Input[2]), 
        .ZN(Red_InputInst_LFInst_0_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_0_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_0_LFInst_0_n3), .B(Input[3]), .ZN(Red_MCOutput[0]) );
  XNOR2_X1 Red_InputInst_LFInst_0_LFInst_0_U1 ( .A(Input[1]), .B(Input[2]), 
        .ZN(Red_InputInst_LFInst_0_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_1_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_1_LFInst_3_n3), .B(Input[6]), .ZN(Red_MCOutput[7]) );
  XNOR2_X1 Red_InputInst_LFInst_1_LFInst_3_U1 ( .A(Input[4]), .B(Input[5]), 
        .ZN(Red_InputInst_LFInst_1_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_1_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_1_LFInst_2_n3), .B(Input[7]), .ZN(Red_MCOutput[6]) );
  XNOR2_X1 Red_InputInst_LFInst_1_LFInst_2_U1 ( .A(Input[4]), .B(Input[5]), 
        .ZN(Red_InputInst_LFInst_1_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_1_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_1_LFInst_1_n3), .B(Input[7]), .ZN(Red_MCOutput[5]) );
  XNOR2_X1 Red_InputInst_LFInst_1_LFInst_1_U1 ( .A(Input[4]), .B(Input[6]), 
        .ZN(Red_InputInst_LFInst_1_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_1_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_1_LFInst_0_n3), .B(Input[7]), .ZN(Red_MCOutput[4]) );
  XNOR2_X1 Red_InputInst_LFInst_1_LFInst_0_U1 ( .A(Input[5]), .B(Input[6]), 
        .ZN(Red_InputInst_LFInst_1_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_2_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_2_LFInst_3_n3), .B(Input[10]), .ZN(
        Red_MCOutput[11]) );
  XNOR2_X1 Red_InputInst_LFInst_2_LFInst_3_U1 ( .A(Input[8]), .B(Input[9]), 
        .ZN(Red_InputInst_LFInst_2_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_2_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_2_LFInst_2_n3), .B(Input[11]), .ZN(
        Red_MCOutput[10]) );
  XNOR2_X1 Red_InputInst_LFInst_2_LFInst_2_U1 ( .A(Input[8]), .B(Input[9]), 
        .ZN(Red_InputInst_LFInst_2_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_2_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_2_LFInst_1_n3), .B(Input[11]), .ZN(
        Red_MCOutput[9]) );
  XNOR2_X1 Red_InputInst_LFInst_2_LFInst_1_U1 ( .A(Input[8]), .B(Input[10]), 
        .ZN(Red_InputInst_LFInst_2_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_2_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_2_LFInst_0_n3), .B(Input[11]), .ZN(
        Red_MCOutput[8]) );
  XNOR2_X1 Red_InputInst_LFInst_2_LFInst_0_U1 ( .A(Input[9]), .B(Input[10]), 
        .ZN(Red_InputInst_LFInst_2_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_3_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_3_LFInst_3_n3), .B(Input[14]), .ZN(
        Red_MCOutput[15]) );
  XNOR2_X1 Red_InputInst_LFInst_3_LFInst_3_U1 ( .A(Input[12]), .B(Input[13]), 
        .ZN(Red_InputInst_LFInst_3_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_3_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_3_LFInst_2_n3), .B(Input[15]), .ZN(
        Red_MCOutput[14]) );
  XNOR2_X1 Red_InputInst_LFInst_3_LFInst_2_U1 ( .A(Input[12]), .B(Input[13]), 
        .ZN(Red_InputInst_LFInst_3_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_3_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_3_LFInst_1_n3), .B(Input[15]), .ZN(
        Red_MCOutput[13]) );
  XNOR2_X1 Red_InputInst_LFInst_3_LFInst_1_U1 ( .A(Input[12]), .B(Input[14]), 
        .ZN(Red_InputInst_LFInst_3_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_3_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_3_LFInst_0_n3), .B(Input[15]), .ZN(
        Red_MCOutput[12]) );
  XNOR2_X1 Red_InputInst_LFInst_3_LFInst_0_U1 ( .A(Input[13]), .B(Input[14]), 
        .ZN(Red_InputInst_LFInst_3_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_4_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_4_LFInst_3_n3), .B(Input[18]), .ZN(
        Red_MCOutput[19]) );
  XNOR2_X1 Red_InputInst_LFInst_4_LFInst_3_U1 ( .A(Input[16]), .B(Input[17]), 
        .ZN(Red_InputInst_LFInst_4_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_4_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_4_LFInst_2_n3), .B(Input[19]), .ZN(
        Red_MCOutput[18]) );
  XNOR2_X1 Red_InputInst_LFInst_4_LFInst_2_U1 ( .A(Input[16]), .B(Input[17]), 
        .ZN(Red_InputInst_LFInst_4_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_4_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_4_LFInst_1_n3), .B(Input[19]), .ZN(
        Red_MCOutput[17]) );
  XNOR2_X1 Red_InputInst_LFInst_4_LFInst_1_U1 ( .A(Input[16]), .B(Input[18]), 
        .ZN(Red_InputInst_LFInst_4_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_4_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_4_LFInst_0_n3), .B(Input[19]), .ZN(
        Red_MCOutput[16]) );
  XNOR2_X1 Red_InputInst_LFInst_4_LFInst_0_U1 ( .A(Input[17]), .B(Input[18]), 
        .ZN(Red_InputInst_LFInst_4_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_5_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_5_LFInst_3_n3), .B(Input[22]), .ZN(
        Red_MCOutput[23]) );
  XNOR2_X1 Red_InputInst_LFInst_5_LFInst_3_U1 ( .A(Input[20]), .B(Input[21]), 
        .ZN(Red_InputInst_LFInst_5_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_5_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_5_LFInst_2_n3), .B(Input[23]), .ZN(
        Red_MCOutput[22]) );
  XNOR2_X1 Red_InputInst_LFInst_5_LFInst_2_U1 ( .A(Input[20]), .B(Input[21]), 
        .ZN(Red_InputInst_LFInst_5_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_5_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_5_LFInst_1_n3), .B(Input[23]), .ZN(
        Red_MCOutput[21]) );
  XNOR2_X1 Red_InputInst_LFInst_5_LFInst_1_U1 ( .A(Input[20]), .B(Input[22]), 
        .ZN(Red_InputInst_LFInst_5_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_5_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_5_LFInst_0_n3), .B(Input[23]), .ZN(
        Red_MCOutput[20]) );
  XNOR2_X1 Red_InputInst_LFInst_5_LFInst_0_U1 ( .A(Input[21]), .B(Input[22]), 
        .ZN(Red_InputInst_LFInst_5_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_6_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_6_LFInst_3_n3), .B(Input[26]), .ZN(
        Red_MCOutput[27]) );
  XNOR2_X1 Red_InputInst_LFInst_6_LFInst_3_U1 ( .A(Input[24]), .B(Input[25]), 
        .ZN(Red_InputInst_LFInst_6_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_6_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_6_LFInst_2_n3), .B(Input[27]), .ZN(
        Red_MCOutput[26]) );
  XNOR2_X1 Red_InputInst_LFInst_6_LFInst_2_U1 ( .A(Input[24]), .B(Input[25]), 
        .ZN(Red_InputInst_LFInst_6_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_6_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_6_LFInst_1_n3), .B(Input[27]), .ZN(
        Red_MCOutput[25]) );
  XNOR2_X1 Red_InputInst_LFInst_6_LFInst_1_U1 ( .A(Input[24]), .B(Input[26]), 
        .ZN(Red_InputInst_LFInst_6_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_6_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_6_LFInst_0_n3), .B(Input[27]), .ZN(
        Red_MCOutput[24]) );
  XNOR2_X1 Red_InputInst_LFInst_6_LFInst_0_U1 ( .A(Input[25]), .B(Input[26]), 
        .ZN(Red_InputInst_LFInst_6_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_7_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_7_LFInst_3_n3), .B(Input[30]), .ZN(
        Red_MCOutput[31]) );
  XNOR2_X1 Red_InputInst_LFInst_7_LFInst_3_U1 ( .A(Input[28]), .B(Input[29]), 
        .ZN(Red_InputInst_LFInst_7_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_7_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_7_LFInst_2_n3), .B(Input[31]), .ZN(
        Red_MCOutput[30]) );
  XNOR2_X1 Red_InputInst_LFInst_7_LFInst_2_U1 ( .A(Input[28]), .B(Input[29]), 
        .ZN(Red_InputInst_LFInst_7_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_7_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_7_LFInst_1_n3), .B(Input[31]), .ZN(
        Red_MCOutput[29]) );
  XNOR2_X1 Red_InputInst_LFInst_7_LFInst_1_U1 ( .A(Input[28]), .B(Input[30]), 
        .ZN(Red_InputInst_LFInst_7_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_7_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_7_LFInst_0_n3), .B(Input[31]), .ZN(
        Red_MCOutput[28]) );
  XNOR2_X1 Red_InputInst_LFInst_7_LFInst_0_U1 ( .A(Input[29]), .B(Input[30]), 
        .ZN(Red_InputInst_LFInst_7_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_8_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_8_LFInst_3_n3), .B(Input[34]), .ZN(Red_Input[35])
         );
  XNOR2_X1 Red_InputInst_LFInst_8_LFInst_3_U1 ( .A(Input[32]), .B(Input[33]), 
        .ZN(Red_InputInst_LFInst_8_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_8_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_8_LFInst_2_n3), .B(Input[35]), .ZN(Red_Input[34])
         );
  XNOR2_X1 Red_InputInst_LFInst_8_LFInst_2_U1 ( .A(Input[32]), .B(Input[33]), 
        .ZN(Red_InputInst_LFInst_8_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_8_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_8_LFInst_1_n3), .B(Input[35]), .ZN(Red_Input[33])
         );
  XNOR2_X1 Red_InputInst_LFInst_8_LFInst_1_U1 ( .A(Input[32]), .B(Input[34]), 
        .ZN(Red_InputInst_LFInst_8_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_8_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_8_LFInst_0_n3), .B(Input[35]), .ZN(Red_Input[32])
         );
  XNOR2_X1 Red_InputInst_LFInst_8_LFInst_0_U1 ( .A(Input[33]), .B(Input[34]), 
        .ZN(Red_InputInst_LFInst_8_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_9_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_9_LFInst_3_n3), .B(Input[38]), .ZN(Red_Input[39])
         );
  XNOR2_X1 Red_InputInst_LFInst_9_LFInst_3_U1 ( .A(Input[36]), .B(Input[37]), 
        .ZN(Red_InputInst_LFInst_9_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_9_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_9_LFInst_2_n3), .B(Input[39]), .ZN(Red_Input[38])
         );
  XNOR2_X1 Red_InputInst_LFInst_9_LFInst_2_U1 ( .A(Input[36]), .B(Input[37]), 
        .ZN(Red_InputInst_LFInst_9_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_9_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_9_LFInst_1_n3), .B(Input[39]), .ZN(Red_Input[37])
         );
  XNOR2_X1 Red_InputInst_LFInst_9_LFInst_1_U1 ( .A(Input[36]), .B(Input[38]), 
        .ZN(Red_InputInst_LFInst_9_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_9_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_9_LFInst_0_n3), .B(Input[39]), .ZN(Red_Input[36])
         );
  XNOR2_X1 Red_InputInst_LFInst_9_LFInst_0_U1 ( .A(Input[37]), .B(Input[38]), 
        .ZN(Red_InputInst_LFInst_9_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_10_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_10_LFInst_3_n3), .B(Input[42]), .ZN(Red_Input[43]) );
  XNOR2_X1 Red_InputInst_LFInst_10_LFInst_3_U1 ( .A(Input[40]), .B(Input[41]), 
        .ZN(Red_InputInst_LFInst_10_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_10_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_10_LFInst_2_n3), .B(Input[43]), .ZN(Red_Input[42]) );
  XNOR2_X1 Red_InputInst_LFInst_10_LFInst_2_U1 ( .A(Input[40]), .B(Input[41]), 
        .ZN(Red_InputInst_LFInst_10_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_10_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_10_LFInst_1_n3), .B(Input[43]), .ZN(Red_Input[41]) );
  XNOR2_X1 Red_InputInst_LFInst_10_LFInst_1_U1 ( .A(Input[40]), .B(Input[42]), 
        .ZN(Red_InputInst_LFInst_10_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_10_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_10_LFInst_0_n3), .B(Input[43]), .ZN(Red_Input[40]) );
  XNOR2_X1 Red_InputInst_LFInst_10_LFInst_0_U1 ( .A(Input[41]), .B(Input[42]), 
        .ZN(Red_InputInst_LFInst_10_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_11_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_11_LFInst_3_n3), .B(Input[46]), .ZN(Red_Input[47]) );
  XNOR2_X1 Red_InputInst_LFInst_11_LFInst_3_U1 ( .A(Input[44]), .B(Input[45]), 
        .ZN(Red_InputInst_LFInst_11_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_11_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_11_LFInst_2_n3), .B(Input[47]), .ZN(Red_Input[46]) );
  XNOR2_X1 Red_InputInst_LFInst_11_LFInst_2_U1 ( .A(Input[44]), .B(Input[45]), 
        .ZN(Red_InputInst_LFInst_11_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_11_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_11_LFInst_1_n3), .B(Input[47]), .ZN(Red_Input[45]) );
  XNOR2_X1 Red_InputInst_LFInst_11_LFInst_1_U1 ( .A(Input[44]), .B(Input[46]), 
        .ZN(Red_InputInst_LFInst_11_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_11_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_11_LFInst_0_n3), .B(Input[47]), .ZN(Red_Input[44]) );
  XNOR2_X1 Red_InputInst_LFInst_11_LFInst_0_U1 ( .A(Input[45]), .B(Input[46]), 
        .ZN(Red_InputInst_LFInst_11_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_12_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_12_LFInst_3_n3), .B(Input[50]), .ZN(Red_Input[51]) );
  XNOR2_X1 Red_InputInst_LFInst_12_LFInst_3_U1 ( .A(Input[48]), .B(Input[49]), 
        .ZN(Red_InputInst_LFInst_12_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_12_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_12_LFInst_2_n3), .B(Input[51]), .ZN(Red_Input[50]) );
  XNOR2_X1 Red_InputInst_LFInst_12_LFInst_2_U1 ( .A(Input[48]), .B(Input[49]), 
        .ZN(Red_InputInst_LFInst_12_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_12_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_12_LFInst_1_n3), .B(Input[51]), .ZN(Red_Input[49]) );
  XNOR2_X1 Red_InputInst_LFInst_12_LFInst_1_U1 ( .A(Input[48]), .B(Input[50]), 
        .ZN(Red_InputInst_LFInst_12_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_12_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_12_LFInst_0_n3), .B(Input[51]), .ZN(Red_Input[48]) );
  XNOR2_X1 Red_InputInst_LFInst_12_LFInst_0_U1 ( .A(Input[49]), .B(Input[50]), 
        .ZN(Red_InputInst_LFInst_12_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_13_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_13_LFInst_3_n3), .B(Input[54]), .ZN(Red_Input[55]) );
  XNOR2_X1 Red_InputInst_LFInst_13_LFInst_3_U1 ( .A(Input[52]), .B(Input[53]), 
        .ZN(Red_InputInst_LFInst_13_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_13_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_13_LFInst_2_n3), .B(Input[55]), .ZN(Red_Input[54]) );
  XNOR2_X1 Red_InputInst_LFInst_13_LFInst_2_U1 ( .A(Input[52]), .B(Input[53]), 
        .ZN(Red_InputInst_LFInst_13_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_13_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_13_LFInst_1_n3), .B(Input[55]), .ZN(Red_Input[53]) );
  XNOR2_X1 Red_InputInst_LFInst_13_LFInst_1_U1 ( .A(Input[52]), .B(Input[54]), 
        .ZN(Red_InputInst_LFInst_13_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_13_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_13_LFInst_0_n3), .B(Input[55]), .ZN(Red_Input[52]) );
  XNOR2_X1 Red_InputInst_LFInst_13_LFInst_0_U1 ( .A(Input[53]), .B(Input[54]), 
        .ZN(Red_InputInst_LFInst_13_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_14_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_14_LFInst_3_n3), .B(Input[58]), .ZN(Red_Input[59]) );
  XNOR2_X1 Red_InputInst_LFInst_14_LFInst_3_U1 ( .A(Input[56]), .B(Input[57]), 
        .ZN(Red_InputInst_LFInst_14_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_14_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_14_LFInst_2_n3), .B(Input[59]), .ZN(Red_Input[58]) );
  XNOR2_X1 Red_InputInst_LFInst_14_LFInst_2_U1 ( .A(Input[56]), .B(Input[57]), 
        .ZN(Red_InputInst_LFInst_14_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_14_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_14_LFInst_1_n3), .B(Input[59]), .ZN(Red_Input[57]) );
  XNOR2_X1 Red_InputInst_LFInst_14_LFInst_1_U1 ( .A(Input[56]), .B(Input[58]), 
        .ZN(Red_InputInst_LFInst_14_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_14_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_14_LFInst_0_n3), .B(Input[59]), .ZN(Red_Input[56]) );
  XNOR2_X1 Red_InputInst_LFInst_14_LFInst_0_U1 ( .A(Input[57]), .B(Input[58]), 
        .ZN(Red_InputInst_LFInst_14_LFInst_0_n3) );
  XNOR2_X1 Red_InputInst_LFInst_15_LFInst_3_U2 ( .A(
        Red_InputInst_LFInst_15_LFInst_3_n3), .B(Input[62]), .ZN(Red_Input[63]) );
  XNOR2_X1 Red_InputInst_LFInst_15_LFInst_3_U1 ( .A(Input[60]), .B(Input[61]), 
        .ZN(Red_InputInst_LFInst_15_LFInst_3_n3) );
  XNOR2_X1 Red_InputInst_LFInst_15_LFInst_2_U2 ( .A(
        Red_InputInst_LFInst_15_LFInst_2_n3), .B(Input[63]), .ZN(Red_Input[62]) );
  XNOR2_X1 Red_InputInst_LFInst_15_LFInst_2_U1 ( .A(Input[60]), .B(Input[61]), 
        .ZN(Red_InputInst_LFInst_15_LFInst_2_n3) );
  XNOR2_X1 Red_InputInst_LFInst_15_LFInst_1_U2 ( .A(
        Red_InputInst_LFInst_15_LFInst_1_n3), .B(Input[63]), .ZN(Red_Input[61]) );
  XNOR2_X1 Red_InputInst_LFInst_15_LFInst_1_U1 ( .A(Input[60]), .B(Input[62]), 
        .ZN(Red_InputInst_LFInst_15_LFInst_1_n3) );
  XNOR2_X1 Red_InputInst_LFInst_15_LFInst_0_U2 ( .A(
        Red_InputInst_LFInst_15_LFInst_0_n3), .B(Input[63]), .ZN(Red_Input[60]) );
  XNOR2_X1 Red_InputInst_LFInst_15_LFInst_0_U1 ( .A(Input[61]), .B(Input[62]), 
        .ZN(Red_InputInst_LFInst_15_LFInst_0_n3) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_0_U2 ( .A(Red_MCInst_XOR_r0_Inst_0_n5), .B(
        Red_MCOutput[16]), .ZN(Red_MCOutput[48]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_0_U1 ( .A(Red_MCOutput[0]), .B(Red_Input[48]), .ZN(Red_MCInst_XOR_r0_Inst_0_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_0_U1 ( .A(Red_Input[32]), .B(Red_MCOutput[0]), 
        .Z(Red_MCOutput[32]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_1_U2 ( .A(Red_MCInst_XOR_r0_Inst_1_n5), .B(
        Red_MCOutput[17]), .ZN(Red_MCOutput[49]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_1_U1 ( .A(Red_MCOutput[1]), .B(Red_Input[49]), .ZN(Red_MCInst_XOR_r0_Inst_1_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_1_U1 ( .A(Red_Input[33]), .B(Red_MCOutput[1]), 
        .Z(Red_MCOutput[33]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_2_U2 ( .A(Red_MCInst_XOR_r0_Inst_2_n5), .B(
        Red_MCOutput[18]), .ZN(Red_MCOutput[50]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_2_U1 ( .A(Red_MCOutput[2]), .B(Red_Input[50]), .ZN(Red_MCInst_XOR_r0_Inst_2_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_2_U1 ( .A(Red_Input[34]), .B(Red_MCOutput[2]), 
        .Z(Red_MCOutput[34]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_3_U2 ( .A(Red_MCInst_XOR_r0_Inst_3_n5), .B(
        Red_MCOutput[19]), .ZN(Red_MCOutput[51]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_3_U1 ( .A(Red_MCOutput[3]), .B(Red_Input[51]), .ZN(Red_MCInst_XOR_r0_Inst_3_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_3_U1 ( .A(Red_Input[35]), .B(Red_MCOutput[3]), 
        .Z(Red_MCOutput[35]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_4_U2 ( .A(Red_MCInst_XOR_r0_Inst_4_n5), .B(
        Red_MCOutput[20]), .ZN(Red_MCOutput[52]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_4_U1 ( .A(Red_MCOutput[4]), .B(Red_Input[52]), .ZN(Red_MCInst_XOR_r0_Inst_4_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_4_U1 ( .A(Red_Input[36]), .B(Red_MCOutput[4]), 
        .Z(Red_MCOutput[36]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_5_U2 ( .A(Red_MCInst_XOR_r0_Inst_5_n5), .B(
        Red_MCOutput[21]), .ZN(Red_MCOutput[53]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_5_U1 ( .A(Red_MCOutput[5]), .B(Red_Input[53]), .ZN(Red_MCInst_XOR_r0_Inst_5_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_5_U1 ( .A(Red_Input[37]), .B(Red_MCOutput[5]), 
        .Z(Red_MCOutput[37]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_6_U2 ( .A(Red_MCInst_XOR_r0_Inst_6_n5), .B(
        Red_MCOutput[22]), .ZN(Red_MCOutput[54]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_6_U1 ( .A(Red_MCOutput[6]), .B(Red_Input[54]), .ZN(Red_MCInst_XOR_r0_Inst_6_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_6_U1 ( .A(Red_Input[38]), .B(Red_MCOutput[6]), 
        .Z(Red_MCOutput[38]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_7_U2 ( .A(Red_MCInst_XOR_r0_Inst_7_n5), .B(
        Red_MCOutput[23]), .ZN(Red_MCOutput[55]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_7_U1 ( .A(Red_MCOutput[7]), .B(Red_Input[55]), .ZN(Red_MCInst_XOR_r0_Inst_7_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_7_U1 ( .A(Red_Input[39]), .B(Red_MCOutput[7]), 
        .Z(Red_MCOutput[39]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_8_U2 ( .A(Red_MCInst_XOR_r0_Inst_8_n5), .B(
        Red_MCOutput[24]), .ZN(Red_MCOutput[56]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_8_U1 ( .A(Red_MCOutput[8]), .B(Red_Input[56]), .ZN(Red_MCInst_XOR_r0_Inst_8_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_8_U1 ( .A(Red_Input[40]), .B(Red_MCOutput[8]), 
        .Z(Red_MCOutput[40]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_9_U2 ( .A(Red_MCInst_XOR_r0_Inst_9_n5), .B(
        Red_MCOutput[25]), .ZN(Red_MCOutput[57]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_9_U1 ( .A(Red_MCOutput[9]), .B(Red_Input[57]), .ZN(Red_MCInst_XOR_r0_Inst_9_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_9_U1 ( .A(Red_Input[41]), .B(Red_MCOutput[9]), 
        .Z(Red_MCOutput[41]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_10_U2 ( .A(Red_MCInst_XOR_r0_Inst_10_n5), 
        .B(Red_MCOutput[26]), .ZN(Red_MCOutput[58]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_10_U1 ( .A(Red_MCOutput[10]), .B(
        Red_Input[58]), .ZN(Red_MCInst_XOR_r0_Inst_10_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_10_U1 ( .A(Red_Input[42]), .B(
        Red_MCOutput[10]), .Z(Red_MCOutput[42]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_11_U2 ( .A(Red_MCInst_XOR_r0_Inst_11_n5), 
        .B(Red_MCOutput[27]), .ZN(Red_MCOutput[59]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_11_U1 ( .A(Red_MCOutput[11]), .B(
        Red_Input[59]), .ZN(Red_MCInst_XOR_r0_Inst_11_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_11_U1 ( .A(Red_Input[43]), .B(
        Red_MCOutput[11]), .Z(Red_MCOutput[43]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_12_U2 ( .A(Red_MCInst_XOR_r0_Inst_12_n5), 
        .B(Red_MCOutput[28]), .ZN(Red_MCOutput[60]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_12_U1 ( .A(Red_MCOutput[12]), .B(
        Red_Input[60]), .ZN(Red_MCInst_XOR_r0_Inst_12_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_12_U1 ( .A(Red_Input[44]), .B(
        Red_MCOutput[12]), .Z(Red_MCOutput[44]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_13_U2 ( .A(Red_MCInst_XOR_r0_Inst_13_n5), 
        .B(Red_MCOutput[29]), .ZN(Red_MCOutput[61]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_13_U1 ( .A(Red_MCOutput[13]), .B(
        Red_Input[61]), .ZN(Red_MCInst_XOR_r0_Inst_13_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_13_U1 ( .A(Red_Input[45]), .B(
        Red_MCOutput[13]), .Z(Red_MCOutput[45]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_14_U2 ( .A(Red_MCInst_XOR_r0_Inst_14_n5), 
        .B(Red_MCOutput[30]), .ZN(Red_MCOutput[62]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_14_U1 ( .A(Red_MCOutput[14]), .B(
        Red_Input[62]), .ZN(Red_MCInst_XOR_r0_Inst_14_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_14_U1 ( .A(Red_Input[46]), .B(
        Red_MCOutput[14]), .Z(Red_MCOutput[46]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_15_U2 ( .A(Red_MCInst_XOR_r0_Inst_15_n5), 
        .B(Red_MCOutput[31]), .ZN(Red_MCOutput[63]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_15_U1 ( .A(Red_MCOutput[15]), .B(
        Red_Input[63]), .ZN(Red_MCInst_XOR_r0_Inst_15_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_15_U1 ( .A(Red_Input[47]), .B(
        Red_MCOutput[15]), .Z(Red_MCOutput[47]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_0_0_U1 ( .A(Red_MCOutput[48]), .B(Red_K0[48]), 
        .Z(Red_AddRoundKeyOutput[48]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_0_1_U1 ( .A(Red_MCOutput[49]), .B(Red_K0[49]), 
        .Z(Red_AddRoundKeyOutput[49]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_0_2_U1 ( .A(Red_MCOutput[50]), .B(Red_K0[50]), 
        .Z(Red_AddRoundKeyOutput[50]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_0_3_U1 ( .A(Red_MCOutput[51]), .B(Red_K0[51]), 
        .Z(Red_AddRoundKeyOutput[51]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_1_0_U1 ( .A(Red_MCOutput[52]), .B(Red_K0[52]), 
        .Z(Red_AddRoundKeyOutput[52]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_1_1_U1 ( .A(Red_MCOutput[53]), .B(Red_K0[53]), 
        .Z(Red_AddRoundKeyOutput[53]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_1_2_U1 ( .A(Red_MCOutput[54]), .B(Red_K0[54]), 
        .Z(Red_AddRoundKeyOutput[54]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_1_3_U1 ( .A(Red_MCOutput[55]), .B(Red_K0[55]), 
        .Z(Red_AddRoundKeyOutput[55]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_2_0_U1 ( .A(Red_MCOutput[56]), .B(Red_K0[56]), 
        .Z(Red_AddRoundKeyOutput[56]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_2_1_U1 ( .A(Red_MCOutput[57]), .B(Red_K0[57]), 
        .Z(Red_AddRoundKeyOutput[57]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_2_2_U1 ( .A(Red_MCOutput[58]), .B(Red_K0[58]), 
        .Z(Red_AddRoundKeyOutput[58]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_2_3_U1 ( .A(Red_MCOutput[59]), .B(Red_K0[59]), 
        .Z(Red_AddRoundKeyOutput[59]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_3_0_U1 ( .A(Red_MCOutput[60]), .B(Red_K0[60]), 
        .Z(Red_AddRoundKeyOutput[60]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_3_1_U1 ( .A(Red_MCOutput[61]), .B(Red_K0[61]), 
        .Z(Red_AddRoundKeyOutput[61]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_3_2_U1 ( .A(Red_MCOutput[62]), .B(Red_K0[62]), 
        .Z(Red_AddRoundKeyOutput[62]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_3_3_U1 ( .A(Red_MCOutput[63]), .B(Red_K0[63]), 
        .Z(Red_AddRoundKeyOutput[63]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_0_0_U1 ( .A(Red_MCOutput[40]), .B(
        Red_K0[40]), .Z(Red_AddRoundKeyOutput[40]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_0_1_U1 ( .A(Red_MCOutput[41]), .B(
        Red_K0[41]), .Z(Red_AddRoundKeyOutput[41]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_0_2_U1 ( .A(Red_MCOutput[42]), .B(
        Red_K0[42]), .Z(Red_AddRoundKeyOutput[42]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_0_3_U1 ( .A(Red_MCOutput[43]), .B(
        Red_K0[43]), .Z(Red_AddRoundKeyOutput[43]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_1_0_U1 ( .A(Red_MCOutput[44]), .B(
        Red_K0[44]), .Z(Red_AddRoundKeyOutput[44]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_1_1_U1 ( .A(Red_MCOutput[45]), .B(
        Red_K0[45]), .Z(Red_AddRoundKeyOutput[45]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_1_2_U1 ( .A(Red_MCOutput[46]), .B(
        Red_K0[46]), .Z(Red_AddRoundKeyOutput[46]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_1_3_U1 ( .A(Red_MCOutput[47]), .B(
        Red_K0[47]), .Z(Red_AddRoundKeyOutput[47]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_0_0_U1 ( .A(Red_MCOutput[0]), .B(Red_K0[0]), 
        .Z(Red_AddRoundKeyOutput[0]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_0_1_U1 ( .A(Red_MCOutput[1]), .B(Red_K0[1]), 
        .Z(Red_AddRoundKeyOutput[1]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_0_2_U1 ( .A(Red_MCOutput[2]), .B(Red_K0[2]), 
        .Z(Red_AddRoundKeyOutput[2]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_0_3_U1 ( .A(Red_MCOutput[3]), .B(Red_K0[3]), 
        .Z(Red_AddRoundKeyOutput[3]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_1_0_U1 ( .A(Red_MCOutput[4]), .B(Red_K0[4]), 
        .Z(Red_AddRoundKeyOutput[4]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_1_1_U1 ( .A(Red_MCOutput[5]), .B(Red_K0[5]), 
        .Z(Red_AddRoundKeyOutput[5]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_1_2_U1 ( .A(Red_MCOutput[6]), .B(Red_K0[6]), 
        .Z(Red_AddRoundKeyOutput[6]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_1_3_U1 ( .A(Red_MCOutput[7]), .B(Red_K0[7]), 
        .Z(Red_AddRoundKeyOutput[7]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_2_0_U1 ( .A(Red_MCOutput[8]), .B(Red_K0[8]), 
        .Z(Red_AddRoundKeyOutput[8]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_2_1_U1 ( .A(Red_MCOutput[9]), .B(Red_K0[9]), 
        .Z(Red_AddRoundKeyOutput[9]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_2_2_U1 ( .A(Red_MCOutput[10]), .B(Red_K0[10]), 
        .Z(Red_AddRoundKeyOutput[10]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_2_3_U1 ( .A(Red_MCOutput[11]), .B(Red_K0[11]), 
        .Z(Red_AddRoundKeyOutput[11]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_3_0_U1 ( .A(Red_MCOutput[12]), .B(Red_K0[12]), 
        .Z(Red_AddRoundKeyOutput[12]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_3_1_U1 ( .A(Red_MCOutput[13]), .B(Red_K0[13]), 
        .Z(Red_AddRoundKeyOutput[13]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_3_2_U1 ( .A(Red_MCOutput[14]), .B(Red_K0[14]), 
        .Z(Red_AddRoundKeyOutput[14]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_3_3_U1 ( .A(Red_MCOutput[15]), .B(Red_K0[15]), 
        .Z(Red_AddRoundKeyOutput[15]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_4_0_U1 ( .A(Red_MCOutput[16]), .B(Red_K0[16]), 
        .Z(Red_AddRoundKeyOutput[16]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_4_1_U1 ( .A(Red_MCOutput[17]), .B(Red_K0[17]), 
        .Z(Red_AddRoundKeyOutput[17]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_4_2_U1 ( .A(Red_MCOutput[18]), .B(Red_K0[18]), 
        .Z(Red_AddRoundKeyOutput[18]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_4_3_U1 ( .A(Red_MCOutput[19]), .B(Red_K0[19]), 
        .Z(Red_AddRoundKeyOutput[19]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_5_0_U1 ( .A(Red_MCOutput[20]), .B(Red_K0[20]), 
        .Z(Red_AddRoundKeyOutput[20]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_5_1_U1 ( .A(Red_MCOutput[21]), .B(Red_K0[21]), 
        .Z(Red_AddRoundKeyOutput[21]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_5_2_U1 ( .A(Red_MCOutput[22]), .B(Red_K0[22]), 
        .Z(Red_AddRoundKeyOutput[22]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_5_3_U1 ( .A(Red_MCOutput[23]), .B(Red_K0[23]), 
        .Z(Red_AddRoundKeyOutput[23]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_6_0_U1 ( .A(Red_MCOutput[24]), .B(Red_K0[24]), 
        .Z(Red_AddRoundKeyOutput[24]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_6_1_U1 ( .A(Red_MCOutput[25]), .B(Red_K0[25]), 
        .Z(Red_AddRoundKeyOutput[25]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_6_2_U1 ( .A(Red_MCOutput[26]), .B(Red_K0[26]), 
        .Z(Red_AddRoundKeyOutput[26]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_6_3_U1 ( .A(Red_MCOutput[27]), .B(Red_K0[27]), 
        .Z(Red_AddRoundKeyOutput[27]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_7_0_U1 ( .A(Red_MCOutput[28]), .B(Red_K0[28]), 
        .Z(Red_AddRoundKeyOutput[28]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_7_1_U1 ( .A(Red_MCOutput[29]), .B(Red_K0[29]), 
        .Z(Red_AddRoundKeyOutput[29]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_7_2_U1 ( .A(Red_MCOutput[30]), .B(Red_K0[30]), 
        .Z(Red_AddRoundKeyOutput[30]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_7_3_U1 ( .A(Red_MCOutput[31]), .B(Red_K0[31]), 
        .Z(Red_AddRoundKeyOutput[31]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_8_0_U1 ( .A(Red_MCOutput[32]), .B(Red_K0[32]), 
        .Z(Red_AddRoundKeyOutput[32]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_8_1_U1 ( .A(Red_MCOutput[33]), .B(Red_K0[33]), 
        .Z(Red_AddRoundKeyOutput[33]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_8_2_U1 ( .A(Red_MCOutput[34]), .B(Red_K0[34]), 
        .Z(Red_AddRoundKeyOutput[34]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_8_3_U1 ( .A(Red_MCOutput[35]), .B(Red_K0[35]), 
        .Z(Red_AddRoundKeyOutput[35]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_9_0_U1 ( .A(Red_MCOutput[36]), .B(Red_K0[36]), 
        .Z(Red_AddRoundKeyOutput[36]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_9_1_U1 ( .A(Red_MCOutput[37]), .B(Red_K0[37]), 
        .Z(Red_AddRoundKeyOutput[37]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_9_2_U1 ( .A(Red_MCOutput[38]), .B(Red_K0[38]), 
        .Z(Red_AddRoundKeyOutput[38]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_9_3_U1 ( .A(Red_MCOutput[39]), .B(Red_K0[39]), 
        .Z(Red_AddRoundKeyOutput[39]) );
  DFF_X1 Red_StateReg_s_current_state_reg_0_ ( .D(Red_AddRoundKeyOutput[0]), 
        .CK(clk), .Q(Red_PermutationOutput[60]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_1_ ( .D(Red_AddRoundKeyOutput[1]), 
        .CK(clk), .Q(Red_PermutationOutput[61]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_2_ ( .D(Red_AddRoundKeyOutput[2]), 
        .CK(clk), .Q(Red_PermutationOutput[62]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_3_ ( .D(Red_AddRoundKeyOutput[3]), 
        .CK(clk), .Q(Red_PermutationOutput[63]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_4_ ( .D(Red_AddRoundKeyOutput[4]), 
        .CK(clk), .Q(Red_PermutationOutput[48]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_5_ ( .D(Red_AddRoundKeyOutput[5]), 
        .CK(clk), .Q(Red_PermutationOutput[49]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_6_ ( .D(Red_AddRoundKeyOutput[6]), 
        .CK(clk), .Q(Red_PermutationOutput[50]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_7_ ( .D(Red_AddRoundKeyOutput[7]), 
        .CK(clk), .Q(Red_PermutationOutput[51]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_8_ ( .D(Red_AddRoundKeyOutput[8]), 
        .CK(clk), .Q(Red_PermutationOutput[52]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_9_ ( .D(Red_AddRoundKeyOutput[9]), 
        .CK(clk), .Q(Red_PermutationOutput[53]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_10_ ( .D(Red_AddRoundKeyOutput[10]), 
        .CK(clk), .Q(Red_PermutationOutput[54]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_11_ ( .D(Red_AddRoundKeyOutput[11]), 
        .CK(clk), .Q(Red_PermutationOutput[55]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_12_ ( .D(Red_AddRoundKeyOutput[12]), 
        .CK(clk), .Q(Red_PermutationOutput[56]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_13_ ( .D(Red_AddRoundKeyOutput[13]), 
        .CK(clk), .Q(Red_PermutationOutput[57]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_14_ ( .D(Red_AddRoundKeyOutput[14]), 
        .CK(clk), .Q(Red_PermutationOutput[58]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_15_ ( .D(Red_AddRoundKeyOutput[15]), 
        .CK(clk), .Q(Red_PermutationOutput[59]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_16_ ( .D(Red_AddRoundKeyOutput[16]), 
        .CK(clk), .Q(Red_PermutationOutput[32]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_17_ ( .D(Red_AddRoundKeyOutput[17]), 
        .CK(clk), .Q(Red_PermutationOutput[33]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_18_ ( .D(Red_AddRoundKeyOutput[18]), 
        .CK(clk), .Q(Red_PermutationOutput[34]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_19_ ( .D(Red_AddRoundKeyOutput[19]), 
        .CK(clk), .Q(Red_PermutationOutput[35]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_20_ ( .D(Red_AddRoundKeyOutput[20]), 
        .CK(clk), .Q(Red_PermutationOutput[44]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_21_ ( .D(Red_AddRoundKeyOutput[21]), 
        .CK(clk), .Q(Red_PermutationOutput[45]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_22_ ( .D(Red_AddRoundKeyOutput[22]), 
        .CK(clk), .Q(Red_PermutationOutput[46]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_23_ ( .D(Red_AddRoundKeyOutput[23]), 
        .CK(clk), .Q(Red_PermutationOutput[47]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_24_ ( .D(Red_AddRoundKeyOutput[24]), 
        .CK(clk), .Q(Red_PermutationOutput[40]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_25_ ( .D(Red_AddRoundKeyOutput[25]), 
        .CK(clk), .Q(Red_PermutationOutput[41]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_26_ ( .D(Red_AddRoundKeyOutput[26]), 
        .CK(clk), .Q(Red_PermutationOutput[42]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_27_ ( .D(Red_AddRoundKeyOutput[27]), 
        .CK(clk), .Q(Red_PermutationOutput[43]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_28_ ( .D(Red_AddRoundKeyOutput[28]), 
        .CK(clk), .Q(Red_PermutationOutput[36]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_29_ ( .D(Red_AddRoundKeyOutput[29]), 
        .CK(clk), .Q(Red_PermutationOutput[37]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_30_ ( .D(Red_AddRoundKeyOutput[30]), 
        .CK(clk), .Q(Red_PermutationOutput[38]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_31_ ( .D(Red_AddRoundKeyOutput[31]), 
        .CK(clk), .Q(Red_PermutationOutput[39]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_32_ ( .D(Red_AddRoundKeyOutput[32]), 
        .CK(clk), .Q(Red_PermutationOutput[16]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_33_ ( .D(Red_AddRoundKeyOutput[33]), 
        .CK(clk), .Q(Red_PermutationOutput[17]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_34_ ( .D(Red_AddRoundKeyOutput[34]), 
        .CK(clk), .Q(Red_PermutationOutput[18]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_35_ ( .D(Red_AddRoundKeyOutput[35]), 
        .CK(clk), .Q(Red_PermutationOutput[19]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_36_ ( .D(Red_AddRoundKeyOutput[36]), 
        .CK(clk), .Q(Red_PermutationOutput[28]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_37_ ( .D(Red_AddRoundKeyOutput[37]), 
        .CK(clk), .Q(Red_PermutationOutput[29]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_38_ ( .D(Red_AddRoundKeyOutput[38]), 
        .CK(clk), .Q(Red_PermutationOutput[30]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_39_ ( .D(Red_AddRoundKeyOutput[39]), 
        .CK(clk), .Q(Red_PermutationOutput[31]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_40_ ( .D(Red_AddRoundKeyOutput[40]), 
        .CK(clk), .Q(Red_PermutationOutput[24]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_41_ ( .D(Red_AddRoundKeyOutput[41]), 
        .CK(clk), .Q(Red_PermutationOutput[25]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_42_ ( .D(Red_AddRoundKeyOutput[42]), 
        .CK(clk), .Q(Red_PermutationOutput[26]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_43_ ( .D(Red_AddRoundKeyOutput[43]), 
        .CK(clk), .Q(Red_PermutationOutput[27]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_44_ ( .D(Red_AddRoundKeyOutput[44]), 
        .CK(clk), .Q(Red_PermutationOutput[20]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_45_ ( .D(Red_AddRoundKeyOutput[45]), 
        .CK(clk), .Q(Red_PermutationOutput[21]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_46_ ( .D(Red_AddRoundKeyOutput[46]), 
        .CK(clk), .Q(Red_PermutationOutput[22]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_47_ ( .D(Red_AddRoundKeyOutput[47]), 
        .CK(clk), .Q(Red_PermutationOutput[23]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_48_ ( .D(Red_AddRoundKeyOutput[48]), 
        .CK(clk), .Q(Red_PermutationOutput[4]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_49_ ( .D(Red_AddRoundKeyOutput[49]), 
        .CK(clk), .Q(Red_PermutationOutput[5]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_50_ ( .D(Red_AddRoundKeyOutput[50]), 
        .CK(clk), .Q(Red_PermutationOutput[6]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_51_ ( .D(Red_AddRoundKeyOutput[51]), 
        .CK(clk), .Q(Red_PermutationOutput[7]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_52_ ( .D(Red_AddRoundKeyOutput[52]), 
        .CK(clk), .Q(Red_PermutationOutput[8]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_53_ ( .D(Red_AddRoundKeyOutput[53]), 
        .CK(clk), .Q(Red_PermutationOutput[9]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_54_ ( .D(Red_AddRoundKeyOutput[54]), 
        .CK(clk), .Q(Red_PermutationOutput[10]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_55_ ( .D(Red_AddRoundKeyOutput[55]), 
        .CK(clk), .Q(Red_PermutationOutput[11]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_56_ ( .D(Red_AddRoundKeyOutput[56]), 
        .CK(clk), .Q(Red_PermutationOutput[12]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_57_ ( .D(Red_AddRoundKeyOutput[57]), 
        .CK(clk), .Q(Red_PermutationOutput[13]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_58_ ( .D(Red_AddRoundKeyOutput[58]), 
        .CK(clk), .Q(Red_PermutationOutput[14]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_59_ ( .D(Red_AddRoundKeyOutput[59]), 
        .CK(clk), .Q(Red_PermutationOutput[15]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_60_ ( .D(Red_AddRoundKeyOutput[60]), 
        .CK(clk), .Q(Red_PermutationOutput[0]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_61_ ( .D(Red_AddRoundKeyOutput[61]), 
        .CK(clk), .Q(Red_PermutationOutput[1]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_62_ ( .D(Red_AddRoundKeyOutput[62]), 
        .CK(clk), .Q(Red_PermutationOutput[2]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_63_ ( .D(Red_AddRoundKeyOutput[63]), 
        .CK(clk), .Q(Red_PermutationOutput[3]), .QN() );
  OR2_X1 Red_SubCellInst_LFInst_0_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_0_LFInst_3_n7), .ZN(Red_Feedback[3]) );
  NOR2_X1 Red_SubCellInst_LFInst_0_LFInst_3_U3 ( .A1(Red_PermutationOutput[1]), 
        .A2(Red_PermutationOutput[2]), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_0_LFInst_3_U2 ( .A1(Red_PermutationOutput[0]), 
        .A2(Red_SubCellInst_LFInst_0_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_0_LFInst_3_U1 ( .A(Red_PermutationOutput[1]), 
        .ZN(Red_SubCellInst_LFInst_0_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_0_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_0_LFInst_2_n13), .ZN(Red_Feedback[2]) );
  NOR2_X1 Red_SubCellInst_LFInst_0_LFInst_2_U5 ( .A1(Red_PermutationOutput[2]), 
        .A2(Red_SubCellInst_LFInst_0_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_0_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_2_n11), .A2(Red_PermutationOutput[3]), 
        .ZN(Red_SubCellInst_LFInst_0_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_2_n10), .A2(Red_PermutationOutput[1]), 
        .ZN(Red_SubCellInst_LFInst_0_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_2_U2 ( .A1(Red_PermutationOutput[2]), .A2(Red_SubCellInst_LFInst_0_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_0_LFInst_2_U1 ( .A(Red_PermutationOutput[0]), 
        .ZN(Red_SubCellInst_LFInst_0_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_0_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_0_LFInst_1_n24), .ZN(Red_Feedback[1]) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_0_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_1_U5 ( .A1(Red_PermutationOutput[2]), .A2(Red_PermutationOutput[1]), .ZN(Red_SubCellInst_LFInst_0_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_1_n21), .A2(Red_PermutationOutput[0]), 
        .ZN(Red_SubCellInst_LFInst_0_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_0_LFInst_1_U3 ( .A(Red_PermutationOutput[2]), 
        .B(Red_PermutationOutput[3]), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_0_LFInst_1_U2 ( .A1(Red_PermutationOutput[0]), 
        .A2(Red_SubCellInst_LFInst_0_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_1_U1 ( .A1(Red_PermutationOutput[1]), .A2(Red_PermutationOutput[3]), .ZN(Red_SubCellInst_LFInst_0_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_0_LFInst_0_n13), .ZN(Red_Feedback[0]) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U5 ( .A1(Red_PermutationOutput[0]), .A2(Red_SubCellInst_LFInst_0_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U4 ( .A1(Red_PermutationOutput[3]), 
        .A2(Red_SubCellInst_LFInst_0_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U3 ( .A1(Red_PermutationOutput[1]), 
        .A2(Red_SubCellInst_LFInst_0_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U2 ( .A1(Red_PermutationOutput[0]), 
        .A2(Red_SubCellInst_LFInst_0_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_0_LFInst_0_U1 ( .A(Red_PermutationOutput[2]), 
        .ZN(Red_SubCellInst_LFInst_0_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_1_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_1_LFInst_3_n7), .ZN(Red_Feedback[7]) );
  NOR2_X1 Red_SubCellInst_LFInst_1_LFInst_3_U3 ( .A1(Red_PermutationOutput[5]), 
        .A2(Red_PermutationOutput[6]), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_1_LFInst_3_U2 ( .A1(Red_PermutationOutput[4]), 
        .A2(Red_SubCellInst_LFInst_1_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_1_LFInst_3_U1 ( .A(Red_PermutationOutput[5]), 
        .ZN(Red_SubCellInst_LFInst_1_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_1_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_1_LFInst_2_n13), .ZN(Red_Feedback[6]) );
  NOR2_X1 Red_SubCellInst_LFInst_1_LFInst_2_U5 ( .A1(Red_PermutationOutput[6]), 
        .A2(Red_SubCellInst_LFInst_1_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_1_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_2_n11), .A2(Red_PermutationOutput[7]), 
        .ZN(Red_SubCellInst_LFInst_1_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_2_n10), .A2(Red_PermutationOutput[5]), 
        .ZN(Red_SubCellInst_LFInst_1_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_2_U2 ( .A1(Red_PermutationOutput[6]), .A2(Red_SubCellInst_LFInst_1_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_1_LFInst_2_U1 ( .A(Red_PermutationOutput[4]), 
        .ZN(Red_SubCellInst_LFInst_1_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_1_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_1_LFInst_1_n24), .ZN(Red_Feedback[5]) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_1_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_1_U5 ( .A1(Red_PermutationOutput[6]), .A2(Red_PermutationOutput[5]), .ZN(Red_SubCellInst_LFInst_1_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_1_n21), .A2(Red_PermutationOutput[4]), 
        .ZN(Red_SubCellInst_LFInst_1_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_1_LFInst_1_U3 ( .A(Red_PermutationOutput[6]), 
        .B(Red_PermutationOutput[7]), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_1_LFInst_1_U2 ( .A1(Red_PermutationOutput[4]), 
        .A2(Red_SubCellInst_LFInst_1_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_1_U1 ( .A1(Red_PermutationOutput[5]), .A2(Red_PermutationOutput[7]), .ZN(Red_SubCellInst_LFInst_1_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_1_LFInst_0_n13), .ZN(Red_Feedback[4]) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U5 ( .A1(Red_PermutationOutput[4]), .A2(Red_SubCellInst_LFInst_1_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U4 ( .A1(Red_PermutationOutput[7]), 
        .A2(Red_SubCellInst_LFInst_1_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U3 ( .A1(Red_PermutationOutput[5]), 
        .A2(Red_SubCellInst_LFInst_1_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U2 ( .A1(Red_PermutationOutput[4]), 
        .A2(Red_SubCellInst_LFInst_1_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_1_LFInst_0_U1 ( .A(Red_PermutationOutput[6]), 
        .ZN(Red_SubCellInst_LFInst_1_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_2_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_2_LFInst_3_n7), .ZN(Red_Feedback[11]) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_3_U3 ( .A1(Red_PermutationOutput[9]), 
        .A2(Red_PermutationOutput[10]), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_3_U2 ( .A1(Red_PermutationOutput[8]), 
        .A2(Red_SubCellInst_LFInst_2_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_2_LFInst_3_U1 ( .A(Red_PermutationOutput[9]), 
        .ZN(Red_SubCellInst_LFInst_2_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_2_LFInst_2_n13), .ZN(Red_Feedback[10]) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_2_U5 ( .A1(Red_PermutationOutput[10]), .A2(Red_SubCellInst_LFInst_2_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_2_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_2_n11), .A2(Red_PermutationOutput[11]), 
        .ZN(Red_SubCellInst_LFInst_2_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_2_n10), .A2(Red_PermutationOutput[9]), 
        .ZN(Red_SubCellInst_LFInst_2_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[10]), .A2(Red_SubCellInst_LFInst_2_LFInst_2_n12), 
        .ZN(Red_SubCellInst_LFInst_2_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_2_LFInst_2_U1 ( .A(Red_PermutationOutput[8]), 
        .ZN(Red_SubCellInst_LFInst_2_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_2_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_2_LFInst_1_n24), .ZN(Red_Feedback[9]) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_2_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[10]), .A2(Red_PermutationOutput[9]), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_1_n21), .A2(Red_PermutationOutput[8]), 
        .ZN(Red_SubCellInst_LFInst_2_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_2_LFInst_1_U3 ( .A(Red_PermutationOutput[10]), .B(Red_PermutationOutput[11]), .ZN(Red_SubCellInst_LFInst_2_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_1_U2 ( .A1(Red_PermutationOutput[8]), 
        .A2(Red_SubCellInst_LFInst_2_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_1_U1 ( .A1(Red_PermutationOutput[9]), .A2(Red_PermutationOutput[11]), .ZN(Red_SubCellInst_LFInst_2_LFInst_1_n20)
         );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_2_LFInst_0_n13), .ZN(Red_Feedback[8]) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U5 ( .A1(Red_PermutationOutput[8]), .A2(Red_SubCellInst_LFInst_2_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U4 ( .A1(Red_PermutationOutput[11]), 
        .A2(Red_SubCellInst_LFInst_2_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U3 ( .A1(Red_PermutationOutput[9]), 
        .A2(Red_SubCellInst_LFInst_2_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U2 ( .A1(Red_PermutationOutput[8]), 
        .A2(Red_SubCellInst_LFInst_2_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_2_LFInst_0_U1 ( .A(Red_PermutationOutput[10]), 
        .ZN(Red_SubCellInst_LFInst_2_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_3_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_3_LFInst_3_n7), .ZN(Red_Feedback[15]) );
  NOR2_X1 Red_SubCellInst_LFInst_3_LFInst_3_U3 ( .A1(Red_PermutationOutput[13]), .A2(Red_PermutationOutput[14]), .ZN(Red_SubCellInst_LFInst_3_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_3_LFInst_3_U2 ( .A1(Red_PermutationOutput[12]), .A2(Red_SubCellInst_LFInst_3_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_3_LFInst_3_U1 ( .A(Red_PermutationOutput[13]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_3_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_3_LFInst_2_n13), .ZN(Red_Feedback[14]) );
  NOR2_X1 Red_SubCellInst_LFInst_3_LFInst_2_U5 ( .A1(Red_PermutationOutput[14]), .A2(Red_SubCellInst_LFInst_3_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_3_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_2_n11), .A2(Red_PermutationOutput[15]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_2_n10), .A2(Red_PermutationOutput[13]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[14]), .A2(Red_SubCellInst_LFInst_3_LFInst_2_n12), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_3_LFInst_2_U1 ( .A(Red_PermutationOutput[12]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_3_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_3_LFInst_1_n24), .ZN(Red_Feedback[13]) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_3_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[14]), .A2(Red_PermutationOutput[13]), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_1_n21), .A2(Red_PermutationOutput[12]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_3_LFInst_1_U3 ( .A(Red_PermutationOutput[14]), .B(Red_PermutationOutput[15]), .ZN(Red_SubCellInst_LFInst_3_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_3_LFInst_1_U2 ( .A1(Red_PermutationOutput[12]), .A2(Red_SubCellInst_LFInst_3_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[13]), .A2(Red_PermutationOutput[15]), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_3_LFInst_0_n13), .ZN(Red_Feedback[12]) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[12]), .A2(Red_SubCellInst_LFInst_3_LFInst_0_n12), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U4 ( .A1(Red_PermutationOutput[15]), 
        .A2(Red_SubCellInst_LFInst_3_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U3 ( .A1(Red_PermutationOutput[13]), .A2(Red_SubCellInst_LFInst_3_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U2 ( .A1(Red_PermutationOutput[12]), .A2(Red_SubCellInst_LFInst_3_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_3_LFInst_0_U1 ( .A(Red_PermutationOutput[14]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_4_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_4_LFInst_3_n7), .ZN(Red_Feedback[19]) );
  NOR2_X1 Red_SubCellInst_LFInst_4_LFInst_3_U3 ( .A1(Red_PermutationOutput[17]), .A2(Red_PermutationOutput[18]), .ZN(Red_SubCellInst_LFInst_4_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_4_LFInst_3_U2 ( .A1(Red_PermutationOutput[16]), .A2(Red_SubCellInst_LFInst_4_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_4_LFInst_3_U1 ( .A(Red_PermutationOutput[17]), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_4_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_4_LFInst_2_n13), .ZN(Red_Feedback[18]) );
  NOR2_X1 Red_SubCellInst_LFInst_4_LFInst_2_U5 ( .A1(Red_PermutationOutput[18]), .A2(Red_SubCellInst_LFInst_4_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_4_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_2_n11), .A2(Red_PermutationOutput[19]), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_2_n10), .A2(Red_PermutationOutput[17]), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[18]), .A2(Red_SubCellInst_LFInst_4_LFInst_2_n12), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_4_LFInst_2_U1 ( .A(Red_PermutationOutput[16]), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_4_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_4_LFInst_1_n24), .ZN(Red_Feedback[17]) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_4_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[18]), .A2(Red_PermutationOutput[17]), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_1_n21), .A2(Red_PermutationOutput[16]), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_4_LFInst_1_U3 ( .A(Red_PermutationOutput[18]), .B(Red_PermutationOutput[19]), .ZN(Red_SubCellInst_LFInst_4_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_4_LFInst_1_U2 ( .A1(Red_PermutationOutput[16]), .A2(Red_SubCellInst_LFInst_4_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[17]), .A2(Red_PermutationOutput[19]), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_4_LFInst_0_n13), .ZN(Red_Feedback[16]) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[16]), .A2(Red_SubCellInst_LFInst_4_LFInst_0_n12), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U4 ( .A1(Red_PermutationOutput[19]), 
        .A2(Red_SubCellInst_LFInst_4_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U3 ( .A1(Red_PermutationOutput[17]), .A2(Red_SubCellInst_LFInst_4_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U2 ( .A1(Red_PermutationOutput[16]), .A2(Red_SubCellInst_LFInst_4_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_4_LFInst_0_U1 ( .A(Red_PermutationOutput[18]), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_5_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_5_LFInst_3_n7), .ZN(Red_Feedback[23]) );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_3_U3 ( .A1(Red_PermutationOutput[21]), .A2(Red_PermutationOutput[22]), .ZN(Red_SubCellInst_LFInst_5_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_3_U2 ( .A1(Red_PermutationOutput[20]), .A2(Red_SubCellInst_LFInst_5_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_5_LFInst_3_U1 ( .A(Red_PermutationOutput[21]), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_5_LFInst_2_n13), .ZN(Red_Feedback[22]) );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_2_U5 ( .A1(Red_PermutationOutput[22]), .A2(Red_SubCellInst_LFInst_5_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_5_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_2_n11), .A2(Red_PermutationOutput[23]), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_2_n10), .A2(Red_PermutationOutput[21]), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[22]), .A2(Red_SubCellInst_LFInst_5_LFInst_2_n12), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_5_LFInst_2_U1 ( .A(Red_PermutationOutput[20]), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_5_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_5_LFInst_1_n24), .ZN(Red_Feedback[21]) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_5_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[22]), .A2(Red_PermutationOutput[21]), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_1_n21), .A2(Red_PermutationOutput[20]), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_5_LFInst_1_U3 ( .A(Red_PermutationOutput[22]), .B(Red_PermutationOutput[23]), .ZN(Red_SubCellInst_LFInst_5_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_1_U2 ( .A1(Red_PermutationOutput[20]), .A2(Red_SubCellInst_LFInst_5_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[21]), .A2(Red_PermutationOutput[23]), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_5_LFInst_0_n13), .ZN(Red_Feedback[20]) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[20]), .A2(Red_SubCellInst_LFInst_5_LFInst_0_n12), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U4 ( .A1(Red_PermutationOutput[23]), 
        .A2(Red_SubCellInst_LFInst_5_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U3 ( .A1(Red_PermutationOutput[21]), .A2(Red_SubCellInst_LFInst_5_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U2 ( .A1(Red_PermutationOutput[20]), .A2(Red_SubCellInst_LFInst_5_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_5_LFInst_0_U1 ( .A(Red_PermutationOutput[22]), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_6_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_6_LFInst_3_n7), .ZN(Red_Feedback[27]) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_3_U3 ( .A1(Red_PermutationOutput[25]), .A2(Red_PermutationOutput[26]), .ZN(Red_SubCellInst_LFInst_6_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_3_U2 ( .A1(Red_PermutationOutput[24]), .A2(Red_SubCellInst_LFInst_6_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_6_LFInst_3_U1 ( .A(Red_PermutationOutput[25]), 
        .ZN(Red_SubCellInst_LFInst_6_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_6_LFInst_2_n13), .ZN(Red_Feedback[26]) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_2_U5 ( .A1(Red_PermutationOutput[26]), .A2(Red_SubCellInst_LFInst_6_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_6_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_2_n11), .A2(Red_PermutationOutput[27]), 
        .ZN(Red_SubCellInst_LFInst_6_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_2_n10), .A2(Red_PermutationOutput[25]), 
        .ZN(Red_SubCellInst_LFInst_6_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[26]), .A2(Red_SubCellInst_LFInst_6_LFInst_2_n12), 
        .ZN(Red_SubCellInst_LFInst_6_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_6_LFInst_2_U1 ( .A(Red_PermutationOutput[24]), 
        .ZN(Red_SubCellInst_LFInst_6_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_6_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_6_LFInst_1_n24), .ZN(Red_Feedback[25]) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_6_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[26]), .A2(Red_PermutationOutput[25]), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_1_n21), .A2(Red_PermutationOutput[24]), 
        .ZN(Red_SubCellInst_LFInst_6_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_6_LFInst_1_U3 ( .A(Red_PermutationOutput[26]), .B(Red_PermutationOutput[27]), .ZN(Red_SubCellInst_LFInst_6_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_1_U2 ( .A1(Red_PermutationOutput[24]), .A2(Red_SubCellInst_LFInst_6_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[25]), .A2(Red_PermutationOutput[27]), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_6_LFInst_0_n13), .ZN(Red_Feedback[24]) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[24]), .A2(Red_SubCellInst_LFInst_6_LFInst_0_n12), 
        .ZN(Red_SubCellInst_LFInst_6_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U4 ( .A1(Red_PermutationOutput[27]), 
        .A2(Red_SubCellInst_LFInst_6_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U3 ( .A1(Red_PermutationOutput[25]), .A2(Red_SubCellInst_LFInst_6_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U2 ( .A1(Red_PermutationOutput[24]), .A2(Red_SubCellInst_LFInst_6_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_6_LFInst_0_U1 ( .A(Red_PermutationOutput[26]), 
        .ZN(Red_SubCellInst_LFInst_6_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_7_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_7_LFInst_3_n7), .ZN(Red_Feedback[31]) );
  NOR2_X1 Red_SubCellInst_LFInst_7_LFInst_3_U3 ( .A1(Red_PermutationOutput[29]), .A2(Red_PermutationOutput[30]), .ZN(Red_SubCellInst_LFInst_7_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_7_LFInst_3_U2 ( .A1(Red_PermutationOutput[28]), .A2(Red_SubCellInst_LFInst_7_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_7_LFInst_3_U1 ( .A(Red_PermutationOutput[29]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_7_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_7_LFInst_2_n13), .ZN(Red_Feedback[30]) );
  NOR2_X1 Red_SubCellInst_LFInst_7_LFInst_2_U5 ( .A1(Red_PermutationOutput[30]), .A2(Red_SubCellInst_LFInst_7_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_7_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_2_n11), .A2(Red_PermutationOutput[31]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_2_n10), .A2(Red_PermutationOutput[29]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[30]), .A2(Red_SubCellInst_LFInst_7_LFInst_2_n12), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_7_LFInst_2_U1 ( .A(Red_PermutationOutput[28]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_7_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_7_LFInst_1_n24), .ZN(Red_Feedback[29]) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_7_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[30]), .A2(Red_PermutationOutput[29]), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_1_n21), .A2(Red_PermutationOutput[28]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_7_LFInst_1_U3 ( .A(Red_PermutationOutput[30]), .B(Red_PermutationOutput[31]), .ZN(Red_SubCellInst_LFInst_7_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_7_LFInst_1_U2 ( .A1(Red_PermutationOutput[28]), .A2(Red_SubCellInst_LFInst_7_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[29]), .A2(Red_PermutationOutput[31]), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_7_LFInst_0_n13), .ZN(Red_Feedback[28]) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[28]), .A2(Red_SubCellInst_LFInst_7_LFInst_0_n12), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U4 ( .A1(Red_PermutationOutput[31]), 
        .A2(Red_SubCellInst_LFInst_7_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U3 ( .A1(Red_PermutationOutput[29]), .A2(Red_SubCellInst_LFInst_7_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U2 ( .A1(Red_PermutationOutput[28]), .A2(Red_SubCellInst_LFInst_7_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_7_LFInst_0_U1 ( .A(Red_PermutationOutput[30]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_8_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_8_LFInst_3_n7), .ZN(Red_Feedback[35]) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_3_U3 ( .A1(Red_PermutationOutput[33]), .A2(Red_PermutationOutput[34]), .ZN(Red_SubCellInst_LFInst_8_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_3_U2 ( .A1(Red_PermutationOutput[32]), .A2(Red_SubCellInst_LFInst_8_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_8_LFInst_3_U1 ( .A(Red_PermutationOutput[33]), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_8_LFInst_2_n13), .ZN(Red_Feedback[34]) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_2_U5 ( .A1(Red_PermutationOutput[34]), .A2(Red_SubCellInst_LFInst_8_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_8_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_2_n11), .A2(Red_PermutationOutput[35]), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_2_n10), .A2(Red_PermutationOutput[33]), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[34]), .A2(Red_SubCellInst_LFInst_8_LFInst_2_n12), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_8_LFInst_2_U1 ( .A(Red_PermutationOutput[32]), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_8_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_8_LFInst_1_n24), .ZN(Red_Feedback[33]) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_8_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[34]), .A2(Red_PermutationOutput[33]), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_1_n21), .A2(Red_PermutationOutput[32]), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_8_LFInst_1_U3 ( .A(Red_PermutationOutput[34]), .B(Red_PermutationOutput[35]), .ZN(Red_SubCellInst_LFInst_8_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_1_U2 ( .A1(Red_PermutationOutput[32]), .A2(Red_SubCellInst_LFInst_8_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[33]), .A2(Red_PermutationOutput[35]), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_8_LFInst_0_n13), .ZN(Red_Feedback[32]) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[32]), .A2(Red_SubCellInst_LFInst_8_LFInst_0_n12), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U4 ( .A1(Red_PermutationOutput[35]), 
        .A2(Red_SubCellInst_LFInst_8_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U3 ( .A1(Red_PermutationOutput[33]), .A2(Red_SubCellInst_LFInst_8_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U2 ( .A1(Red_PermutationOutput[32]), .A2(Red_SubCellInst_LFInst_8_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_8_LFInst_0_U1 ( .A(Red_PermutationOutput[34]), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_9_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_9_LFInst_3_n7), .ZN(Red_Feedback[39]) );
  NOR2_X1 Red_SubCellInst_LFInst_9_LFInst_3_U3 ( .A1(Red_PermutationOutput[37]), .A2(Red_PermutationOutput[38]), .ZN(Red_SubCellInst_LFInst_9_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_9_LFInst_3_U2 ( .A1(Red_PermutationOutput[36]), .A2(Red_SubCellInst_LFInst_9_LFInst_3_n6), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_9_LFInst_3_U1 ( .A(Red_PermutationOutput[37]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_9_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_9_LFInst_2_n13), .ZN(Red_Feedback[38]) );
  NOR2_X1 Red_SubCellInst_LFInst_9_LFInst_2_U5 ( .A1(Red_PermutationOutput[38]), .A2(Red_SubCellInst_LFInst_9_LFInst_2_n12), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_9_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_2_n11), .A2(Red_PermutationOutput[39]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_2_n10), .A2(Red_PermutationOutput[37]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[38]), .A2(Red_SubCellInst_LFInst_9_LFInst_2_n12), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_9_LFInst_2_U1 ( .A(Red_PermutationOutput[36]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_9_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_9_LFInst_1_n24), .ZN(Red_Feedback[37]) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_9_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[38]), .A2(Red_PermutationOutput[37]), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_1_n21), .A2(Red_PermutationOutput[36]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_9_LFInst_1_U3 ( .A(Red_PermutationOutput[38]), .B(Red_PermutationOutput[39]), .ZN(Red_SubCellInst_LFInst_9_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_9_LFInst_1_U2 ( .A1(Red_PermutationOutput[36]), .A2(Red_SubCellInst_LFInst_9_LFInst_1_n20), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[37]), .A2(Red_PermutationOutput[39]), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_9_LFInst_0_n13), .ZN(Red_Feedback[36]) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[36]), .A2(Red_SubCellInst_LFInst_9_LFInst_0_n12), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U4 ( .A1(Red_PermutationOutput[39]), 
        .A2(Red_SubCellInst_LFInst_9_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U3 ( .A1(Red_PermutationOutput[37]), .A2(Red_SubCellInst_LFInst_9_LFInst_0_n10), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U2 ( .A1(Red_PermutationOutput[36]), .A2(Red_SubCellInst_LFInst_9_LFInst_0_n12), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_9_LFInst_0_U1 ( .A(Red_PermutationOutput[38]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_10_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_10_LFInst_3_n7), .ZN(Red_Feedback[43]) );
  NOR2_X1 Red_SubCellInst_LFInst_10_LFInst_3_U3 ( .A1(
        Red_PermutationOutput[41]), .A2(Red_PermutationOutput[42]), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_10_LFInst_3_U2 ( .A1(
        Red_PermutationOutput[40]), .A2(Red_SubCellInst_LFInst_10_LFInst_3_n6), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_10_LFInst_3_U1 ( .A(Red_PermutationOutput[41]), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_10_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_10_LFInst_2_n13), .ZN(Red_Feedback[42]) );
  NOR2_X1 Red_SubCellInst_LFInst_10_LFInst_2_U5 ( .A1(
        Red_PermutationOutput[42]), .A2(Red_SubCellInst_LFInst_10_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_10_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_10_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_2_n11), .A2(Red_PermutationOutput[43]), .ZN(Red_SubCellInst_LFInst_10_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_2_n10), .A2(Red_PermutationOutput[41]), .ZN(Red_SubCellInst_LFInst_10_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[42]), .A2(Red_SubCellInst_LFInst_10_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_10_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_10_LFInst_2_U1 ( .A(Red_PermutationOutput[40]), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_10_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_10_LFInst_1_n24), .ZN(Red_Feedback[41]) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_10_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[42]), .A2(Red_PermutationOutput[41]), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_1_n21), .A2(Red_PermutationOutput[40]), .ZN(Red_SubCellInst_LFInst_10_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_10_LFInst_1_U3 ( .A(
        Red_PermutationOutput[42]), .B(Red_PermutationOutput[43]), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_10_LFInst_1_U2 ( .A1(
        Red_PermutationOutput[40]), .A2(Red_SubCellInst_LFInst_10_LFInst_1_n20), .ZN(Red_SubCellInst_LFInst_10_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[41]), .A2(Red_PermutationOutput[43]), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_10_LFInst_0_n13), .ZN(Red_Feedback[40]) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[40]), .A2(Red_SubCellInst_LFInst_10_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U4 ( .A1(Red_PermutationOutput[43]), .A2(Red_SubCellInst_LFInst_10_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U3 ( .A1(
        Red_PermutationOutput[41]), .A2(Red_SubCellInst_LFInst_10_LFInst_0_n10), .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U2 ( .A1(
        Red_PermutationOutput[40]), .A2(Red_SubCellInst_LFInst_10_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_10_LFInst_0_U1 ( .A(Red_PermutationOutput[42]), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_11_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_11_LFInst_3_n7), .ZN(Red_Feedback[47]) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_3_U3 ( .A1(
        Red_PermutationOutput[45]), .A2(Red_PermutationOutput[46]), .ZN(
        Red_SubCellInst_LFInst_11_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_3_U2 ( .A1(
        Red_PermutationOutput[44]), .A2(Red_SubCellInst_LFInst_11_LFInst_3_n6), 
        .ZN(Red_SubCellInst_LFInst_11_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_11_LFInst_3_U1 ( .A(Red_PermutationOutput[45]), 
        .ZN(Red_SubCellInst_LFInst_11_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_11_LFInst_2_n13), .ZN(Red_Feedback[46]) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_2_U5 ( .A1(
        Red_PermutationOutput[46]), .A2(Red_SubCellInst_LFInst_11_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_11_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_11_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_2_n11), .A2(Red_PermutationOutput[47]), .ZN(Red_SubCellInst_LFInst_11_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_2_n10), .A2(Red_PermutationOutput[45]), .ZN(Red_SubCellInst_LFInst_11_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[46]), .A2(Red_SubCellInst_LFInst_11_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_11_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_11_LFInst_2_U1 ( .A(Red_PermutationOutput[44]), 
        .ZN(Red_SubCellInst_LFInst_11_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_11_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_11_LFInst_1_n24), .ZN(Red_Feedback[45]) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_11_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_11_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[46]), .A2(Red_PermutationOutput[45]), .ZN(
        Red_SubCellInst_LFInst_11_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_1_n21), .A2(Red_PermutationOutput[44]), .ZN(Red_SubCellInst_LFInst_11_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_11_LFInst_1_U3 ( .A(
        Red_PermutationOutput[46]), .B(Red_PermutationOutput[47]), .ZN(
        Red_SubCellInst_LFInst_11_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_1_U2 ( .A1(
        Red_PermutationOutput[44]), .A2(Red_SubCellInst_LFInst_11_LFInst_1_n20), .ZN(Red_SubCellInst_LFInst_11_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[45]), .A2(Red_PermutationOutput[47]), .ZN(
        Red_SubCellInst_LFInst_11_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_11_LFInst_0_n13), .ZN(Red_Feedback[44]) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[44]), .A2(Red_SubCellInst_LFInst_11_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_11_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U4 ( .A1(Red_PermutationOutput[47]), .A2(Red_SubCellInst_LFInst_11_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_11_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U3 ( .A1(
        Red_PermutationOutput[45]), .A2(Red_SubCellInst_LFInst_11_LFInst_0_n10), .ZN(Red_SubCellInst_LFInst_11_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U2 ( .A1(
        Red_PermutationOutput[44]), .A2(Red_SubCellInst_LFInst_11_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_11_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_11_LFInst_0_U1 ( .A(Red_PermutationOutput[46]), 
        .ZN(Red_SubCellInst_LFInst_11_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_12_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_12_LFInst_3_n7), .ZN(Red_Feedback[51]) );
  NOR2_X1 Red_SubCellInst_LFInst_12_LFInst_3_U3 ( .A1(
        Red_PermutationOutput[49]), .A2(Red_PermutationOutput[50]), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_12_LFInst_3_U2 ( .A1(
        Red_PermutationOutput[48]), .A2(Red_SubCellInst_LFInst_12_LFInst_3_n6), 
        .ZN(Red_SubCellInst_LFInst_12_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_12_LFInst_3_U1 ( .A(Red_PermutationOutput[49]), 
        .ZN(Red_SubCellInst_LFInst_12_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_12_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_12_LFInst_2_n13), .ZN(Red_Feedback[50]) );
  NOR2_X1 Red_SubCellInst_LFInst_12_LFInst_2_U5 ( .A1(
        Red_PermutationOutput[50]), .A2(Red_SubCellInst_LFInst_12_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_12_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_12_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_2_n11), .A2(Red_PermutationOutput[51]), .ZN(Red_SubCellInst_LFInst_12_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_2_n10), .A2(Red_PermutationOutput[49]), .ZN(Red_SubCellInst_LFInst_12_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[50]), .A2(Red_SubCellInst_LFInst_12_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_12_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_12_LFInst_2_U1 ( .A(Red_PermutationOutput[48]), 
        .ZN(Red_SubCellInst_LFInst_12_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_12_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_12_LFInst_1_n24), .ZN(Red_Feedback[49]) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_12_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[50]), .A2(Red_PermutationOutput[49]), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_1_n21), .A2(Red_PermutationOutput[48]), .ZN(Red_SubCellInst_LFInst_12_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_12_LFInst_1_U3 ( .A(
        Red_PermutationOutput[50]), .B(Red_PermutationOutput[51]), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_12_LFInst_1_U2 ( .A1(
        Red_PermutationOutput[48]), .A2(Red_SubCellInst_LFInst_12_LFInst_1_n20), .ZN(Red_SubCellInst_LFInst_12_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[49]), .A2(Red_PermutationOutput[51]), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_12_LFInst_0_n13), .ZN(Red_Feedback[48]) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[48]), .A2(Red_SubCellInst_LFInst_12_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_12_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U4 ( .A1(Red_PermutationOutput[51]), .A2(Red_SubCellInst_LFInst_12_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U3 ( .A1(
        Red_PermutationOutput[49]), .A2(Red_SubCellInst_LFInst_12_LFInst_0_n10), .ZN(Red_SubCellInst_LFInst_12_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U2 ( .A1(
        Red_PermutationOutput[48]), .A2(Red_SubCellInst_LFInst_12_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_12_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_12_LFInst_0_U1 ( .A(Red_PermutationOutput[50]), 
        .ZN(Red_SubCellInst_LFInst_12_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_13_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_13_LFInst_3_n7), .ZN(Red_Feedback[55]) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_3_U3 ( .A1(
        Red_PermutationOutput[53]), .A2(Red_PermutationOutput[54]), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_3_U2 ( .A1(
        Red_PermutationOutput[52]), .A2(Red_SubCellInst_LFInst_13_LFInst_3_n6), 
        .ZN(Red_SubCellInst_LFInst_13_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_13_LFInst_3_U1 ( .A(Red_PermutationOutput[53]), 
        .ZN(Red_SubCellInst_LFInst_13_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_13_LFInst_2_n13), .ZN(Red_Feedback[54]) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_2_U5 ( .A1(
        Red_PermutationOutput[54]), .A2(Red_SubCellInst_LFInst_13_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_13_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_13_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_2_n11), .A2(Red_PermutationOutput[55]), .ZN(Red_SubCellInst_LFInst_13_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_2_n10), .A2(Red_PermutationOutput[53]), .ZN(Red_SubCellInst_LFInst_13_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[54]), .A2(Red_SubCellInst_LFInst_13_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_13_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_13_LFInst_2_U1 ( .A(Red_PermutationOutput[52]), 
        .ZN(Red_SubCellInst_LFInst_13_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_13_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_13_LFInst_1_n24), .ZN(Red_Feedback[53]) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_13_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[54]), .A2(Red_PermutationOutput[53]), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_1_n21), .A2(Red_PermutationOutput[52]), .ZN(Red_SubCellInst_LFInst_13_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_13_LFInst_1_U3 ( .A(
        Red_PermutationOutput[54]), .B(Red_PermutationOutput[55]), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_1_U2 ( .A1(
        Red_PermutationOutput[52]), .A2(Red_SubCellInst_LFInst_13_LFInst_1_n20), .ZN(Red_SubCellInst_LFInst_13_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[53]), .A2(Red_PermutationOutput[55]), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_13_LFInst_0_n13), .ZN(Red_Feedback[52]) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[52]), .A2(Red_SubCellInst_LFInst_13_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_13_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U4 ( .A1(Red_PermutationOutput[55]), .A2(Red_SubCellInst_LFInst_13_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U3 ( .A1(
        Red_PermutationOutput[53]), .A2(Red_SubCellInst_LFInst_13_LFInst_0_n10), .ZN(Red_SubCellInst_LFInst_13_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U2 ( .A1(
        Red_PermutationOutput[52]), .A2(Red_SubCellInst_LFInst_13_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_13_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_13_LFInst_0_U1 ( .A(Red_PermutationOutput[54]), 
        .ZN(Red_SubCellInst_LFInst_13_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_14_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_14_LFInst_3_n7), .ZN(Red_Feedback[59]) );
  NOR2_X1 Red_SubCellInst_LFInst_14_LFInst_3_U3 ( .A1(
        Red_PermutationOutput[57]), .A2(Red_PermutationOutput[58]), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_14_LFInst_3_U2 ( .A1(
        Red_PermutationOutput[56]), .A2(Red_SubCellInst_LFInst_14_LFInst_3_n6), 
        .ZN(Red_SubCellInst_LFInst_14_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_14_LFInst_3_U1 ( .A(Red_PermutationOutput[57]), 
        .ZN(Red_SubCellInst_LFInst_14_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_14_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_14_LFInst_2_n13), .ZN(Red_Feedback[58]) );
  NOR2_X1 Red_SubCellInst_LFInst_14_LFInst_2_U5 ( .A1(
        Red_PermutationOutput[58]), .A2(Red_SubCellInst_LFInst_14_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_14_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_14_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_2_n11), .A2(Red_PermutationOutput[59]), .ZN(Red_SubCellInst_LFInst_14_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_2_n10), .A2(Red_PermutationOutput[57]), .ZN(Red_SubCellInst_LFInst_14_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[58]), .A2(Red_SubCellInst_LFInst_14_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_14_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_14_LFInst_2_U1 ( .A(Red_PermutationOutput[56]), 
        .ZN(Red_SubCellInst_LFInst_14_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_14_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_14_LFInst_1_n24), .ZN(Red_Feedback[57]) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_14_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[58]), .A2(Red_PermutationOutput[57]), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_1_n21), .A2(Red_PermutationOutput[56]), .ZN(Red_SubCellInst_LFInst_14_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_14_LFInst_1_U3 ( .A(
        Red_PermutationOutput[58]), .B(Red_PermutationOutput[59]), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_14_LFInst_1_U2 ( .A1(
        Red_PermutationOutput[56]), .A2(Red_SubCellInst_LFInst_14_LFInst_1_n20), .ZN(Red_SubCellInst_LFInst_14_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[57]), .A2(Red_PermutationOutput[59]), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_14_LFInst_0_n13), .ZN(Red_Feedback[56]) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[56]), .A2(Red_SubCellInst_LFInst_14_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_14_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U4 ( .A1(Red_PermutationOutput[59]), .A2(Red_SubCellInst_LFInst_14_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U3 ( .A1(
        Red_PermutationOutput[57]), .A2(Red_SubCellInst_LFInst_14_LFInst_0_n10), .ZN(Red_SubCellInst_LFInst_14_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U2 ( .A1(
        Red_PermutationOutput[56]), .A2(Red_SubCellInst_LFInst_14_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_14_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_14_LFInst_0_U1 ( .A(Red_PermutationOutput[58]), 
        .ZN(Red_SubCellInst_LFInst_14_LFInst_0_n12) );
  OR2_X1 Red_SubCellInst_LFInst_15_LFInst_3_U4 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_3_n8), .A2(
        Red_SubCellInst_LFInst_15_LFInst_3_n7), .ZN(Red_Feedback[63]) );
  NOR2_X1 Red_SubCellInst_LFInst_15_LFInst_3_U3 ( .A1(
        Red_PermutationOutput[61]), .A2(Red_PermutationOutput[62]), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_3_n7) );
  NOR2_X1 Red_SubCellInst_LFInst_15_LFInst_3_U2 ( .A1(
        Red_PermutationOutput[60]), .A2(Red_SubCellInst_LFInst_15_LFInst_3_n6), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_3_n8) );
  INV_X1 Red_SubCellInst_LFInst_15_LFInst_3_U1 ( .A(Red_PermutationOutput[61]), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_3_n6) );
  NOR2_X1 Red_SubCellInst_LFInst_15_LFInst_2_U6 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_2_n14), .A2(
        Red_SubCellInst_LFInst_15_LFInst_2_n13), .ZN(Red_Feedback[62]) );
  NOR2_X1 Red_SubCellInst_LFInst_15_LFInst_2_U5 ( .A1(
        Red_PermutationOutput[62]), .A2(Red_SubCellInst_LFInst_15_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_15_LFInst_2_n13) );
  AND2_X1 Red_SubCellInst_LFInst_15_LFInst_2_U4 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_2_n11), .A2(Red_PermutationOutput[63]), .ZN(Red_SubCellInst_LFInst_15_LFInst_2_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_2_U3 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_2_n10), .A2(Red_PermutationOutput[61]), .ZN(Red_SubCellInst_LFInst_15_LFInst_2_n11) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_2_U2 ( .A1(
        Red_PermutationOutput[62]), .A2(Red_SubCellInst_LFInst_15_LFInst_2_n12), .ZN(Red_SubCellInst_LFInst_15_LFInst_2_n10) );
  INV_X1 Red_SubCellInst_LFInst_15_LFInst_2_U1 ( .A(Red_PermutationOutput[60]), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_2_n12) );
  OR2_X1 Red_SubCellInst_LFInst_15_LFInst_1_U7 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_1_n25), .A2(
        Red_SubCellInst_LFInst_15_LFInst_1_n24), .ZN(Red_Feedback[61]) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_1_U6 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_1_n23), .A2(
        Red_SubCellInst_LFInst_15_LFInst_1_n22), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_1_n24) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_1_U5 ( .A1(
        Red_PermutationOutput[62]), .A2(Red_PermutationOutput[61]), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_1_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_1_U4 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_1_n21), .A2(Red_PermutationOutput[60]), .ZN(Red_SubCellInst_LFInst_15_LFInst_1_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_15_LFInst_1_U3 ( .A(
        Red_PermutationOutput[62]), .B(Red_PermutationOutput[63]), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_1_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_15_LFInst_1_U2 ( .A1(
        Red_PermutationOutput[60]), .A2(Red_SubCellInst_LFInst_15_LFInst_1_n20), .ZN(Red_SubCellInst_LFInst_15_LFInst_1_n25) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_1_U1 ( .A1(
        Red_PermutationOutput[61]), .A2(Red_PermutationOutput[63]), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_1_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_0_n14), .A2(
        Red_SubCellInst_LFInst_15_LFInst_0_n13), .ZN(Red_Feedback[60]) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U5 ( .A1(
        Red_PermutationOutput[60]), .A2(Red_SubCellInst_LFInst_15_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n13) );
  OR2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U4 ( .A1(Red_PermutationOutput[63]), .A2(Red_SubCellInst_LFInst_15_LFInst_0_n11), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_0_n14) );
  NOR2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U3 ( .A1(
        Red_PermutationOutput[61]), .A2(Red_SubCellInst_LFInst_15_LFInst_0_n10), .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n11) );
  NOR2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U2 ( .A1(
        Red_PermutationOutput[60]), .A2(Red_SubCellInst_LFInst_15_LFInst_0_n12), .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n10) );
  INV_X1 Red_SubCellInst_LFInst_15_LFInst_0_U1 ( .A(Red_PermutationOutput[62]), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n12) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_0_LFInst_3_n3), .B(Key[2]), .ZN(Red_K0[3]) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_3_U1 ( .A(Key[0]), .B(Key[1]), .ZN(
        Red_K0Inst_LFInst_0_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_0_LFInst_2_n3), .B(Key[3]), .ZN(Red_K0[2]) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_2_U1 ( .A(Key[0]), .B(Key[1]), .ZN(
        Red_K0Inst_LFInst_0_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_0_LFInst_1_n3), .B(Key[3]), .ZN(Red_K0[1]) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_1_U1 ( .A(Key[0]), .B(Key[2]), .ZN(
        Red_K0Inst_LFInst_0_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_0_LFInst_0_n3), .B(Key[3]), .ZN(Red_K0[0]) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_0_U1 ( .A(Key[1]), .B(Key[2]), .ZN(
        Red_K0Inst_LFInst_0_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_1_LFInst_3_n3), .B(Key[6]), .ZN(Red_K0[7]) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_3_U1 ( .A(Key[4]), .B(Key[5]), .ZN(
        Red_K0Inst_LFInst_1_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_1_LFInst_2_n3), .B(Key[7]), .ZN(Red_K0[6]) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_2_U1 ( .A(Key[4]), .B(Key[5]), .ZN(
        Red_K0Inst_LFInst_1_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_1_LFInst_1_n3), .B(Key[7]), .ZN(Red_K0[5]) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_1_U1 ( .A(Key[4]), .B(Key[6]), .ZN(
        Red_K0Inst_LFInst_1_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_1_LFInst_0_n3), .B(Key[7]), .ZN(Red_K0[4]) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_0_U1 ( .A(Key[5]), .B(Key[6]), .ZN(
        Red_K0Inst_LFInst_1_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_2_LFInst_3_n3), .B(Key[10]), .ZN(Red_K0[11]) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_3_U1 ( .A(Key[8]), .B(Key[9]), .ZN(
        Red_K0Inst_LFInst_2_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_2_LFInst_2_n3), .B(Key[11]), .ZN(Red_K0[10]) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_2_U1 ( .A(Key[8]), .B(Key[9]), .ZN(
        Red_K0Inst_LFInst_2_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_2_LFInst_1_n3), .B(Key[11]), .ZN(Red_K0[9]) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_1_U1 ( .A(Key[8]), .B(Key[10]), .ZN(
        Red_K0Inst_LFInst_2_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_2_LFInst_0_n3), .B(Key[11]), .ZN(Red_K0[8]) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_0_U1 ( .A(Key[9]), .B(Key[10]), .ZN(
        Red_K0Inst_LFInst_2_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_3_LFInst_3_n3), .B(Key[14]), .ZN(Red_K0[15]) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_3_U1 ( .A(Key[12]), .B(Key[13]), .ZN(
        Red_K0Inst_LFInst_3_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_3_LFInst_2_n3), .B(Key[15]), .ZN(Red_K0[14]) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_2_U1 ( .A(Key[12]), .B(Key[13]), .ZN(
        Red_K0Inst_LFInst_3_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_3_LFInst_1_n3), .B(Key[15]), .ZN(Red_K0[13]) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_1_U1 ( .A(Key[12]), .B(Key[14]), .ZN(
        Red_K0Inst_LFInst_3_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_3_LFInst_0_n3), .B(Key[15]), .ZN(Red_K0[12]) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_0_U1 ( .A(Key[13]), .B(Key[14]), .ZN(
        Red_K0Inst_LFInst_3_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_4_LFInst_3_n3), .B(Key[18]), .ZN(Red_K0[19]) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_3_U1 ( .A(Key[16]), .B(Key[17]), .ZN(
        Red_K0Inst_LFInst_4_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_4_LFInst_2_n3), .B(Key[19]), .ZN(Red_K0[18]) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_2_U1 ( .A(Key[16]), .B(Key[17]), .ZN(
        Red_K0Inst_LFInst_4_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_4_LFInst_1_n3), .B(Key[19]), .ZN(Red_K0[17]) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_1_U1 ( .A(Key[16]), .B(Key[18]), .ZN(
        Red_K0Inst_LFInst_4_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_4_LFInst_0_n3), .B(Key[19]), .ZN(Red_K0[16]) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_0_U1 ( .A(Key[17]), .B(Key[18]), .ZN(
        Red_K0Inst_LFInst_4_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_5_LFInst_3_n3), .B(Key[22]), .ZN(Red_K0[23]) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_3_U1 ( .A(Key[20]), .B(Key[21]), .ZN(
        Red_K0Inst_LFInst_5_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_5_LFInst_2_n3), .B(Key[23]), .ZN(Red_K0[22]) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_2_U1 ( .A(Key[20]), .B(Key[21]), .ZN(
        Red_K0Inst_LFInst_5_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_5_LFInst_1_n3), .B(Key[23]), .ZN(Red_K0[21]) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_1_U1 ( .A(Key[20]), .B(Key[22]), .ZN(
        Red_K0Inst_LFInst_5_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_5_LFInst_0_n3), .B(Key[23]), .ZN(Red_K0[20]) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_0_U1 ( .A(Key[21]), .B(Key[22]), .ZN(
        Red_K0Inst_LFInst_5_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_6_LFInst_3_n3), .B(Key[26]), .ZN(Red_K0[27]) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_3_U1 ( .A(Key[24]), .B(Key[25]), .ZN(
        Red_K0Inst_LFInst_6_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_6_LFInst_2_n3), .B(Key[27]), .ZN(Red_K0[26]) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_2_U1 ( .A(Key[24]), .B(Key[25]), .ZN(
        Red_K0Inst_LFInst_6_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_6_LFInst_1_n3), .B(Key[27]), .ZN(Red_K0[25]) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_1_U1 ( .A(Key[24]), .B(Key[26]), .ZN(
        Red_K0Inst_LFInst_6_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_6_LFInst_0_n3), .B(Key[27]), .ZN(Red_K0[24]) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_0_U1 ( .A(Key[25]), .B(Key[26]), .ZN(
        Red_K0Inst_LFInst_6_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_7_LFInst_3_n3), .B(Key[30]), .ZN(Red_K0[31]) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_3_U1 ( .A(Key[28]), .B(Key[29]), .ZN(
        Red_K0Inst_LFInst_7_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_7_LFInst_2_n3), .B(Key[31]), .ZN(Red_K0[30]) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_2_U1 ( .A(Key[28]), .B(Key[29]), .ZN(
        Red_K0Inst_LFInst_7_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_7_LFInst_1_n3), .B(Key[31]), .ZN(Red_K0[29]) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_1_U1 ( .A(Key[28]), .B(Key[30]), .ZN(
        Red_K0Inst_LFInst_7_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_7_LFInst_0_n3), .B(Key[31]), .ZN(Red_K0[28]) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_0_U1 ( .A(Key[29]), .B(Key[30]), .ZN(
        Red_K0Inst_LFInst_7_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_8_LFInst_3_n3), .B(Key[34]), .ZN(Red_K0[35]) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_3_U1 ( .A(Key[32]), .B(Key[33]), .ZN(
        Red_K0Inst_LFInst_8_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_8_LFInst_2_n3), .B(Key[35]), .ZN(Red_K0[34]) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_2_U1 ( .A(Key[32]), .B(Key[33]), .ZN(
        Red_K0Inst_LFInst_8_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_8_LFInst_1_n3), .B(Key[35]), .ZN(Red_K0[33]) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_1_U1 ( .A(Key[32]), .B(Key[34]), .ZN(
        Red_K0Inst_LFInst_8_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_8_LFInst_0_n3), .B(Key[35]), .ZN(Red_K0[32]) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_0_U1 ( .A(Key[33]), .B(Key[34]), .ZN(
        Red_K0Inst_LFInst_8_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_9_LFInst_3_n3), .B(Key[38]), .ZN(Red_K0[39]) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_3_U1 ( .A(Key[36]), .B(Key[37]), .ZN(
        Red_K0Inst_LFInst_9_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_9_LFInst_2_n3), .B(Key[39]), .ZN(Red_K0[38]) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_2_U1 ( .A(Key[36]), .B(Key[37]), .ZN(
        Red_K0Inst_LFInst_9_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_9_LFInst_1_n3), .B(Key[39]), .ZN(Red_K0[37]) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_1_U1 ( .A(Key[36]), .B(Key[38]), .ZN(
        Red_K0Inst_LFInst_9_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_9_LFInst_0_n3), .B(Key[39]), .ZN(Red_K0[36]) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_0_U1 ( .A(Key[37]), .B(Key[38]), .ZN(
        Red_K0Inst_LFInst_9_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_10_LFInst_3_n3), .B(Key[42]), .ZN(Red_K0[43]) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_3_U1 ( .A(Key[40]), .B(Key[41]), .ZN(
        Red_K0Inst_LFInst_10_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_10_LFInst_2_n3), .B(Key[43]), .ZN(Red_K0[42]) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_2_U1 ( .A(Key[40]), .B(Key[41]), .ZN(
        Red_K0Inst_LFInst_10_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_10_LFInst_1_n3), .B(Key[43]), .ZN(Red_K0[41]) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_1_U1 ( .A(Key[40]), .B(Key[42]), .ZN(
        Red_K0Inst_LFInst_10_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_10_LFInst_0_n3), .B(Key[43]), .ZN(Red_K0[40]) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_0_U1 ( .A(Key[41]), .B(Key[42]), .ZN(
        Red_K0Inst_LFInst_10_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_11_LFInst_3_n3), .B(Key[46]), .ZN(Red_K0[47]) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_3_U1 ( .A(Key[44]), .B(Key[45]), .ZN(
        Red_K0Inst_LFInst_11_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_11_LFInst_2_n3), .B(Key[47]), .ZN(Red_K0[46]) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_2_U1 ( .A(Key[44]), .B(Key[45]), .ZN(
        Red_K0Inst_LFInst_11_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_11_LFInst_1_n3), .B(Key[47]), .ZN(Red_K0[45]) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_1_U1 ( .A(Key[44]), .B(Key[46]), .ZN(
        Red_K0Inst_LFInst_11_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_11_LFInst_0_n3), .B(Key[47]), .ZN(Red_K0[44]) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_0_U1 ( .A(Key[45]), .B(Key[46]), .ZN(
        Red_K0Inst_LFInst_11_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_12_LFInst_3_n3), .B(Key[50]), .ZN(Red_K0[51]) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_3_U1 ( .A(Key[48]), .B(Key[49]), .ZN(
        Red_K0Inst_LFInst_12_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_12_LFInst_2_n3), .B(Key[51]), .ZN(Red_K0[50]) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_2_U1 ( .A(Key[48]), .B(Key[49]), .ZN(
        Red_K0Inst_LFInst_12_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_12_LFInst_1_n3), .B(Key[51]), .ZN(Red_K0[49]) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_1_U1 ( .A(Key[48]), .B(Key[50]), .ZN(
        Red_K0Inst_LFInst_12_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_12_LFInst_0_n3), .B(Key[51]), .ZN(Red_K0[48]) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_0_U1 ( .A(Key[49]), .B(Key[50]), .ZN(
        Red_K0Inst_LFInst_12_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_13_LFInst_3_n3), .B(Key[54]), .ZN(Red_K0[55]) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_3_U1 ( .A(Key[52]), .B(Key[53]), .ZN(
        Red_K0Inst_LFInst_13_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_13_LFInst_2_n3), .B(Key[55]), .ZN(Red_K0[54]) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_2_U1 ( .A(Key[52]), .B(Key[53]), .ZN(
        Red_K0Inst_LFInst_13_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_13_LFInst_1_n3), .B(Key[55]), .ZN(Red_K0[53]) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_1_U1 ( .A(Key[52]), .B(Key[54]), .ZN(
        Red_K0Inst_LFInst_13_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_13_LFInst_0_n3), .B(Key[55]), .ZN(Red_K0[52]) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_0_U1 ( .A(Key[53]), .B(Key[54]), .ZN(
        Red_K0Inst_LFInst_13_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_14_LFInst_3_n3), .B(Key[58]), .ZN(Red_K0[59]) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_3_U1 ( .A(Key[56]), .B(Key[57]), .ZN(
        Red_K0Inst_LFInst_14_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_14_LFInst_2_n3), .B(Key[59]), .ZN(Red_K0[58]) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_2_U1 ( .A(Key[56]), .B(Key[57]), .ZN(
        Red_K0Inst_LFInst_14_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_14_LFInst_1_n3), .B(Key[59]), .ZN(Red_K0[57]) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_1_U1 ( .A(Key[56]), .B(Key[58]), .ZN(
        Red_K0Inst_LFInst_14_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_14_LFInst_0_n3), .B(Key[59]), .ZN(Red_K0[56]) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_0_U1 ( .A(Key[57]), .B(Key[58]), .ZN(
        Red_K0Inst_LFInst_14_LFInst_0_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_3_U2 ( .A(
        Red_K0Inst_LFInst_15_LFInst_3_n3), .B(Key[62]), .ZN(Red_K0[63]) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_3_U1 ( .A(Key[60]), .B(Key[61]), .ZN(
        Red_K0Inst_LFInst_15_LFInst_3_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_2_U2 ( .A(
        Red_K0Inst_LFInst_15_LFInst_2_n3), .B(Key[63]), .ZN(Red_K0[62]) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_2_U1 ( .A(Key[60]), .B(Key[61]), .ZN(
        Red_K0Inst_LFInst_15_LFInst_2_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_1_U2 ( .A(
        Red_K0Inst_LFInst_15_LFInst_1_n3), .B(Key[63]), .ZN(Red_K0[61]) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_1_U1 ( .A(Key[60]), .B(Key[62]), .ZN(
        Red_K0Inst_LFInst_15_LFInst_1_n3) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_0_U2 ( .A(
        Red_K0Inst_LFInst_15_LFInst_0_n3), .B(Key[63]), .ZN(Red_K0[60]) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_0_U1 ( .A(Key[61]), .B(Key[62]), .ZN(
        Red_K0Inst_LFInst_15_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_0_LFInst_3_n3), .B(Output[2]), .ZN(
        Red_SignaltoCheck[3]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_3_U1 ( .A(Output[0]), .B(Output[1]), 
        .ZN(Red_ToCheckInst_LFInst_0_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_0_LFInst_2_n3), .B(Output[3]), .ZN(
        Red_SignaltoCheck[2]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_2_U1 ( .A(Output[0]), .B(Output[1]), 
        .ZN(Red_ToCheckInst_LFInst_0_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_0_LFInst_1_n3), .B(Output[3]), .ZN(
        Red_SignaltoCheck[1]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_1_U1 ( .A(Output[0]), .B(Output[2]), 
        .ZN(Red_ToCheckInst_LFInst_0_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_0_LFInst_0_n3), .B(Output[3]), .ZN(
        Red_SignaltoCheck[0]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_0_U1 ( .A(Output[1]), .B(Output[2]), 
        .ZN(Red_ToCheckInst_LFInst_0_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_1_LFInst_3_n3), .B(Output[6]), .ZN(
        Red_SignaltoCheck[7]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_3_U1 ( .A(Output[4]), .B(Output[5]), 
        .ZN(Red_ToCheckInst_LFInst_1_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_1_LFInst_2_n3), .B(Output[7]), .ZN(
        Red_SignaltoCheck[6]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_2_U1 ( .A(Output[4]), .B(Output[5]), 
        .ZN(Red_ToCheckInst_LFInst_1_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_1_LFInst_1_n3), .B(Output[7]), .ZN(
        Red_SignaltoCheck[5]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_1_U1 ( .A(Output[4]), .B(Output[6]), 
        .ZN(Red_ToCheckInst_LFInst_1_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_1_LFInst_0_n3), .B(Output[7]), .ZN(
        Red_SignaltoCheck[4]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_0_U1 ( .A(Output[5]), .B(Output[6]), 
        .ZN(Red_ToCheckInst_LFInst_1_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_2_LFInst_3_n3), .B(Output[10]), .ZN(
        Red_SignaltoCheck[11]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_3_U1 ( .A(Output[8]), .B(Output[9]), 
        .ZN(Red_ToCheckInst_LFInst_2_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_2_LFInst_2_n3), .B(Output[11]), .ZN(
        Red_SignaltoCheck[10]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_2_U1 ( .A(Output[8]), .B(Output[9]), 
        .ZN(Red_ToCheckInst_LFInst_2_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_2_LFInst_1_n3), .B(Output[11]), .ZN(
        Red_SignaltoCheck[9]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_1_U1 ( .A(Output[8]), .B(Output[10]), .ZN(Red_ToCheckInst_LFInst_2_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_2_LFInst_0_n3), .B(Output[11]), .ZN(
        Red_SignaltoCheck[8]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_0_U1 ( .A(Output[9]), .B(Output[10]), .ZN(Red_ToCheckInst_LFInst_2_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_3_LFInst_3_n3), .B(Output[14]), .ZN(
        Red_SignaltoCheck[15]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_3_U1 ( .A(Output[12]), .B(
        Output[13]), .ZN(Red_ToCheckInst_LFInst_3_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_3_LFInst_2_n3), .B(Output[15]), .ZN(
        Red_SignaltoCheck[14]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_2_U1 ( .A(Output[12]), .B(
        Output[13]), .ZN(Red_ToCheckInst_LFInst_3_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_3_LFInst_1_n3), .B(Output[15]), .ZN(
        Red_SignaltoCheck[13]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_1_U1 ( .A(Output[12]), .B(
        Output[14]), .ZN(Red_ToCheckInst_LFInst_3_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_3_LFInst_0_n3), .B(Output[15]), .ZN(
        Red_SignaltoCheck[12]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_0_U1 ( .A(Output[13]), .B(
        Output[14]), .ZN(Red_ToCheckInst_LFInst_3_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_4_LFInst_3_n3), .B(Output[18]), .ZN(
        Red_SignaltoCheck[19]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_3_U1 ( .A(Output[16]), .B(
        Output[17]), .ZN(Red_ToCheckInst_LFInst_4_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_4_LFInst_2_n3), .B(Output[19]), .ZN(
        Red_SignaltoCheck[18]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_2_U1 ( .A(Output[16]), .B(
        Output[17]), .ZN(Red_ToCheckInst_LFInst_4_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_4_LFInst_1_n3), .B(Output[19]), .ZN(
        Red_SignaltoCheck[17]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_1_U1 ( .A(Output[16]), .B(
        Output[18]), .ZN(Red_ToCheckInst_LFInst_4_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_4_LFInst_0_n3), .B(Output[19]), .ZN(
        Red_SignaltoCheck[16]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_0_U1 ( .A(Output[17]), .B(
        Output[18]), .ZN(Red_ToCheckInst_LFInst_4_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_5_LFInst_3_n3), .B(Output[22]), .ZN(
        Red_SignaltoCheck[23]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_3_U1 ( .A(Output[20]), .B(
        Output[21]), .ZN(Red_ToCheckInst_LFInst_5_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_5_LFInst_2_n3), .B(Output[23]), .ZN(
        Red_SignaltoCheck[22]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_2_U1 ( .A(Output[20]), .B(
        Output[21]), .ZN(Red_ToCheckInst_LFInst_5_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_5_LFInst_1_n3), .B(Output[23]), .ZN(
        Red_SignaltoCheck[21]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_1_U1 ( .A(Output[20]), .B(
        Output[22]), .ZN(Red_ToCheckInst_LFInst_5_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_5_LFInst_0_n3), .B(Output[23]), .ZN(
        Red_SignaltoCheck[20]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_0_U1 ( .A(Output[21]), .B(
        Output[22]), .ZN(Red_ToCheckInst_LFInst_5_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_6_LFInst_3_n3), .B(Output[26]), .ZN(
        Red_SignaltoCheck[27]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_3_U1 ( .A(Output[24]), .B(
        Output[25]), .ZN(Red_ToCheckInst_LFInst_6_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_6_LFInst_2_n3), .B(Output[27]), .ZN(
        Red_SignaltoCheck[26]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_2_U1 ( .A(Output[24]), .B(
        Output[25]), .ZN(Red_ToCheckInst_LFInst_6_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_6_LFInst_1_n3), .B(Output[27]), .ZN(
        Red_SignaltoCheck[25]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_1_U1 ( .A(Output[24]), .B(
        Output[26]), .ZN(Red_ToCheckInst_LFInst_6_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_6_LFInst_0_n3), .B(Output[27]), .ZN(
        Red_SignaltoCheck[24]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_0_U1 ( .A(Output[25]), .B(
        Output[26]), .ZN(Red_ToCheckInst_LFInst_6_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_7_LFInst_3_n3), .B(Output[30]), .ZN(
        Red_SignaltoCheck[31]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_3_U1 ( .A(Output[28]), .B(
        Output[29]), .ZN(Red_ToCheckInst_LFInst_7_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_7_LFInst_2_n3), .B(Output[31]), .ZN(
        Red_SignaltoCheck[30]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_2_U1 ( .A(Output[28]), .B(
        Output[29]), .ZN(Red_ToCheckInst_LFInst_7_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_7_LFInst_1_n3), .B(Output[31]), .ZN(
        Red_SignaltoCheck[29]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_1_U1 ( .A(Output[28]), .B(
        Output[30]), .ZN(Red_ToCheckInst_LFInst_7_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_7_LFInst_0_n3), .B(Output[31]), .ZN(
        Red_SignaltoCheck[28]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_0_U1 ( .A(Output[29]), .B(
        Output[30]), .ZN(Red_ToCheckInst_LFInst_7_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_8_LFInst_3_n3), .B(Output[34]), .ZN(
        Red_SignaltoCheck[35]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_3_U1 ( .A(Output[32]), .B(
        Output[33]), .ZN(Red_ToCheckInst_LFInst_8_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_8_LFInst_2_n3), .B(Output[35]), .ZN(
        Red_SignaltoCheck[34]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_2_U1 ( .A(Output[32]), .B(
        Output[33]), .ZN(Red_ToCheckInst_LFInst_8_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_8_LFInst_1_n3), .B(Output[35]), .ZN(
        Red_SignaltoCheck[33]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_1_U1 ( .A(Output[32]), .B(
        Output[34]), .ZN(Red_ToCheckInst_LFInst_8_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_8_LFInst_0_n3), .B(Output[35]), .ZN(
        Red_SignaltoCheck[32]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_0_U1 ( .A(Output[33]), .B(
        Output[34]), .ZN(Red_ToCheckInst_LFInst_8_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_9_LFInst_3_n3), .B(Output[38]), .ZN(
        Red_SignaltoCheck[39]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_3_U1 ( .A(Output[36]), .B(
        Output[37]), .ZN(Red_ToCheckInst_LFInst_9_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_9_LFInst_2_n3), .B(Output[39]), .ZN(
        Red_SignaltoCheck[38]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_2_U1 ( .A(Output[36]), .B(
        Output[37]), .ZN(Red_ToCheckInst_LFInst_9_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_9_LFInst_1_n3), .B(Output[39]), .ZN(
        Red_SignaltoCheck[37]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_1_U1 ( .A(Output[36]), .B(
        Output[38]), .ZN(Red_ToCheckInst_LFInst_9_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_9_LFInst_0_n3), .B(Output[39]), .ZN(
        Red_SignaltoCheck[36]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_0_U1 ( .A(Output[37]), .B(
        Output[38]), .ZN(Red_ToCheckInst_LFInst_9_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_10_LFInst_3_n3), .B(Output[42]), .ZN(
        Red_SignaltoCheck[43]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_3_U1 ( .A(Output[40]), .B(
        Output[41]), .ZN(Red_ToCheckInst_LFInst_10_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_10_LFInst_2_n3), .B(Output[43]), .ZN(
        Red_SignaltoCheck[42]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_2_U1 ( .A(Output[40]), .B(
        Output[41]), .ZN(Red_ToCheckInst_LFInst_10_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_10_LFInst_1_n3), .B(Output[43]), .ZN(
        Red_SignaltoCheck[41]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_1_U1 ( .A(Output[40]), .B(
        Output[42]), .ZN(Red_ToCheckInst_LFInst_10_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_10_LFInst_0_n3), .B(Output[43]), .ZN(
        Red_SignaltoCheck[40]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_0_U1 ( .A(Output[41]), .B(
        Output[42]), .ZN(Red_ToCheckInst_LFInst_10_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_11_LFInst_3_n3), .B(Output[46]), .ZN(
        Red_SignaltoCheck[47]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_3_U1 ( .A(Output[44]), .B(
        Output[45]), .ZN(Red_ToCheckInst_LFInst_11_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_11_LFInst_2_n3), .B(Output[47]), .ZN(
        Red_SignaltoCheck[46]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_2_U1 ( .A(Output[44]), .B(
        Output[45]), .ZN(Red_ToCheckInst_LFInst_11_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_11_LFInst_1_n3), .B(Output[47]), .ZN(
        Red_SignaltoCheck[45]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_1_U1 ( .A(Output[44]), .B(
        Output[46]), .ZN(Red_ToCheckInst_LFInst_11_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_11_LFInst_0_n3), .B(Output[47]), .ZN(
        Red_SignaltoCheck[44]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_0_U1 ( .A(Output[45]), .B(
        Output[46]), .ZN(Red_ToCheckInst_LFInst_11_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_12_LFInst_3_n3), .B(Output[50]), .ZN(
        Red_SignaltoCheck[51]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_3_U1 ( .A(Output[48]), .B(
        Output[49]), .ZN(Red_ToCheckInst_LFInst_12_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_12_LFInst_2_n3), .B(Output[51]), .ZN(
        Red_SignaltoCheck[50]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_2_U1 ( .A(Output[48]), .B(
        Output[49]), .ZN(Red_ToCheckInst_LFInst_12_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_12_LFInst_1_n3), .B(Output[51]), .ZN(
        Red_SignaltoCheck[49]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_1_U1 ( .A(Output[48]), .B(
        Output[50]), .ZN(Red_ToCheckInst_LFInst_12_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_12_LFInst_0_n3), .B(Output[51]), .ZN(
        Red_SignaltoCheck[48]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_0_U1 ( .A(Output[49]), .B(
        Output[50]), .ZN(Red_ToCheckInst_LFInst_12_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_13_LFInst_3_n3), .B(Output[54]), .ZN(
        Red_SignaltoCheck[55]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_3_U1 ( .A(Output[52]), .B(
        Output[53]), .ZN(Red_ToCheckInst_LFInst_13_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_13_LFInst_2_n3), .B(Output[55]), .ZN(
        Red_SignaltoCheck[54]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_2_U1 ( .A(Output[52]), .B(
        Output[53]), .ZN(Red_ToCheckInst_LFInst_13_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_13_LFInst_1_n3), .B(Output[55]), .ZN(
        Red_SignaltoCheck[53]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_1_U1 ( .A(Output[52]), .B(
        Output[54]), .ZN(Red_ToCheckInst_LFInst_13_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_13_LFInst_0_n3), .B(Output[55]), .ZN(
        Red_SignaltoCheck[52]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_0_U1 ( .A(Output[53]), .B(
        Output[54]), .ZN(Red_ToCheckInst_LFInst_13_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_14_LFInst_3_n3), .B(Output[58]), .ZN(
        Red_SignaltoCheck[59]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_3_U1 ( .A(Output[56]), .B(
        Output[57]), .ZN(Red_ToCheckInst_LFInst_14_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_14_LFInst_2_n3), .B(Output[59]), .ZN(
        Red_SignaltoCheck[58]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_2_U1 ( .A(Output[56]), .B(
        Output[57]), .ZN(Red_ToCheckInst_LFInst_14_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_14_LFInst_1_n3), .B(Output[59]), .ZN(
        Red_SignaltoCheck[57]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_1_U1 ( .A(Output[56]), .B(
        Output[58]), .ZN(Red_ToCheckInst_LFInst_14_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_14_LFInst_0_n3), .B(Output[59]), .ZN(
        Red_SignaltoCheck[56]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_0_U1 ( .A(Output[57]), .B(
        Output[58]), .ZN(Red_ToCheckInst_LFInst_14_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_15_LFInst_3_n3), .B(Output[62]), .ZN(
        Red_SignaltoCheck[63]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_3_U1 ( .A(Output[60]), .B(
        Output[61]), .ZN(Red_ToCheckInst_LFInst_15_LFInst_3_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_15_LFInst_2_n3), .B(Output[63]), .ZN(
        Red_SignaltoCheck[62]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_2_U1 ( .A(Output[60]), .B(
        Output[61]), .ZN(Red_ToCheckInst_LFInst_15_LFInst_2_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_15_LFInst_1_n3), .B(Output[63]), .ZN(
        Red_SignaltoCheck[61]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_1_U1 ( .A(Output[60]), .B(
        Output[62]), .ZN(Red_ToCheckInst_LFInst_15_LFInst_1_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_15_LFInst_0_n3), .B(Output[63]), .ZN(
        Red_SignaltoCheck[60]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_0_U1 ( .A(Output[61]), .B(
        Output[62]), .ZN(Red_ToCheckInst_LFInst_15_LFInst_0_n3) );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_16_LFInst_3_n3), .B(PermutationOutput[62]), 
        .ZN(Red_SignaltoCheck[67]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_3_U1 ( .A(PermutationOutput[60]), 
        .B(PermutationOutput[61]), .ZN(Red_ToCheckInst_LFInst_16_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_16_LFInst_2_n3), .B(PermutationOutput[63]), 
        .ZN(Red_SignaltoCheck[66]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_2_U1 ( .A(PermutationOutput[60]), 
        .B(PermutationOutput[61]), .ZN(Red_ToCheckInst_LFInst_16_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_16_LFInst_1_n3), .B(PermutationOutput[63]), 
        .ZN(Red_SignaltoCheck[65]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_1_U1 ( .A(PermutationOutput[60]), 
        .B(PermutationOutput[62]), .ZN(Red_ToCheckInst_LFInst_16_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_16_LFInst_0_n3), .B(PermutationOutput[63]), 
        .ZN(Red_SignaltoCheck[64]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_0_U1 ( .A(PermutationOutput[61]), 
        .B(PermutationOutput[62]), .ZN(Red_ToCheckInst_LFInst_16_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_17_LFInst_3_n3), .B(PermutationOutput[50]), 
        .ZN(Red_SignaltoCheck[71]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_3_U1 ( .A(PermutationOutput[48]), 
        .B(PermutationOutput[49]), .ZN(Red_ToCheckInst_LFInst_17_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_17_LFInst_2_n3), .B(PermutationOutput[51]), 
        .ZN(Red_SignaltoCheck[70]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_2_U1 ( .A(PermutationOutput[48]), 
        .B(PermutationOutput[49]), .ZN(Red_ToCheckInst_LFInst_17_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_17_LFInst_1_n3), .B(PermutationOutput[51]), 
        .ZN(Red_SignaltoCheck[69]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_1_U1 ( .A(PermutationOutput[48]), 
        .B(PermutationOutput[50]), .ZN(Red_ToCheckInst_LFInst_17_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_17_LFInst_0_n3), .B(PermutationOutput[51]), 
        .ZN(Red_SignaltoCheck[68]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_0_U1 ( .A(PermutationOutput[49]), 
        .B(PermutationOutput[50]), .ZN(Red_ToCheckInst_LFInst_17_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_18_LFInst_3_n3), .B(PermutationOutput[54]), 
        .ZN(Red_SignaltoCheck[75]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_3_U1 ( .A(PermutationOutput[52]), 
        .B(PermutationOutput[53]), .ZN(Red_ToCheckInst_LFInst_18_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_18_LFInst_2_n3), .B(PermutationOutput[55]), 
        .ZN(Red_SignaltoCheck[74]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_2_U1 ( .A(PermutationOutput[52]), 
        .B(PermutationOutput[53]), .ZN(Red_ToCheckInst_LFInst_18_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_18_LFInst_1_n3), .B(PermutationOutput[55]), 
        .ZN(Red_SignaltoCheck[73]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_1_U1 ( .A(PermutationOutput[52]), 
        .B(PermutationOutput[54]), .ZN(Red_ToCheckInst_LFInst_18_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_18_LFInst_0_n3), .B(PermutationOutput[55]), 
        .ZN(Red_SignaltoCheck[72]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_0_U1 ( .A(PermutationOutput[53]), 
        .B(PermutationOutput[54]), .ZN(Red_ToCheckInst_LFInst_18_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_19_LFInst_3_n3), .B(PermutationOutput[58]), 
        .ZN(Red_SignaltoCheck[79]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_3_U1 ( .A(PermutationOutput[56]), 
        .B(PermutationOutput[57]), .ZN(Red_ToCheckInst_LFInst_19_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_19_LFInst_2_n3), .B(PermutationOutput[59]), 
        .ZN(Red_SignaltoCheck[78]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_2_U1 ( .A(PermutationOutput[56]), 
        .B(PermutationOutput[57]), .ZN(Red_ToCheckInst_LFInst_19_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_19_LFInst_1_n3), .B(PermutationOutput[59]), 
        .ZN(Red_SignaltoCheck[77]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_1_U1 ( .A(PermutationOutput[56]), 
        .B(PermutationOutput[58]), .ZN(Red_ToCheckInst_LFInst_19_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_19_LFInst_0_n3), .B(PermutationOutput[59]), 
        .ZN(Red_SignaltoCheck[76]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_0_U1 ( .A(PermutationOutput[57]), 
        .B(PermutationOutput[58]), .ZN(Red_ToCheckInst_LFInst_19_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_20_LFInst_3_n3), .B(PermutationOutput[34]), 
        .ZN(Red_SignaltoCheck[83]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_3_U1 ( .A(PermutationOutput[32]), 
        .B(PermutationOutput[33]), .ZN(Red_ToCheckInst_LFInst_20_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_20_LFInst_2_n3), .B(PermutationOutput[35]), 
        .ZN(Red_SignaltoCheck[82]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_2_U1 ( .A(PermutationOutput[32]), 
        .B(PermutationOutput[33]), .ZN(Red_ToCheckInst_LFInst_20_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_20_LFInst_1_n3), .B(PermutationOutput[35]), 
        .ZN(Red_SignaltoCheck[81]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_1_U1 ( .A(PermutationOutput[32]), 
        .B(PermutationOutput[34]), .ZN(Red_ToCheckInst_LFInst_20_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_20_LFInst_0_n3), .B(PermutationOutput[35]), 
        .ZN(Red_SignaltoCheck[80]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_0_U1 ( .A(PermutationOutput[33]), 
        .B(PermutationOutput[34]), .ZN(Red_ToCheckInst_LFInst_20_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_21_LFInst_3_n3), .B(PermutationOutput[46]), 
        .ZN(Red_SignaltoCheck[87]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_3_U1 ( .A(PermutationOutput[44]), 
        .B(PermutationOutput[45]), .ZN(Red_ToCheckInst_LFInst_21_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_21_LFInst_2_n3), .B(PermutationOutput[47]), 
        .ZN(Red_SignaltoCheck[86]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_2_U1 ( .A(PermutationOutput[44]), 
        .B(PermutationOutput[45]), .ZN(Red_ToCheckInst_LFInst_21_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_21_LFInst_1_n3), .B(PermutationOutput[47]), 
        .ZN(Red_SignaltoCheck[85]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_1_U1 ( .A(PermutationOutput[44]), 
        .B(PermutationOutput[46]), .ZN(Red_ToCheckInst_LFInst_21_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_21_LFInst_0_n3), .B(PermutationOutput[47]), 
        .ZN(Red_SignaltoCheck[84]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_0_U1 ( .A(PermutationOutput[45]), 
        .B(PermutationOutput[46]), .ZN(Red_ToCheckInst_LFInst_21_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_22_LFInst_3_n3), .B(PermutationOutput[42]), 
        .ZN(Red_SignaltoCheck[91]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_3_U1 ( .A(PermutationOutput[40]), 
        .B(PermutationOutput[41]), .ZN(Red_ToCheckInst_LFInst_22_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_22_LFInst_2_n3), .B(PermutationOutput[43]), 
        .ZN(Red_SignaltoCheck[90]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_2_U1 ( .A(PermutationOutput[40]), 
        .B(PermutationOutput[41]), .ZN(Red_ToCheckInst_LFInst_22_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_22_LFInst_1_n3), .B(PermutationOutput[43]), 
        .ZN(Red_SignaltoCheck[89]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_1_U1 ( .A(PermutationOutput[40]), 
        .B(PermutationOutput[42]), .ZN(Red_ToCheckInst_LFInst_22_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_22_LFInst_0_n3), .B(PermutationOutput[43]), 
        .ZN(Red_SignaltoCheck[88]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_0_U1 ( .A(PermutationOutput[41]), 
        .B(PermutationOutput[42]), .ZN(Red_ToCheckInst_LFInst_22_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_23_LFInst_3_n3), .B(PermutationOutput[38]), 
        .ZN(Red_SignaltoCheck[95]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_3_U1 ( .A(PermutationOutput[36]), 
        .B(PermutationOutput[37]), .ZN(Red_ToCheckInst_LFInst_23_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_23_LFInst_2_n3), .B(PermutationOutput[39]), 
        .ZN(Red_SignaltoCheck[94]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_2_U1 ( .A(PermutationOutput[36]), 
        .B(PermutationOutput[37]), .ZN(Red_ToCheckInst_LFInst_23_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_23_LFInst_1_n3), .B(PermutationOutput[39]), 
        .ZN(Red_SignaltoCheck[93]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_1_U1 ( .A(PermutationOutput[36]), 
        .B(PermutationOutput[38]), .ZN(Red_ToCheckInst_LFInst_23_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_23_LFInst_0_n3), .B(PermutationOutput[39]), 
        .ZN(Red_SignaltoCheck[92]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_0_U1 ( .A(PermutationOutput[37]), 
        .B(PermutationOutput[38]), .ZN(Red_ToCheckInst_LFInst_23_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_24_LFInst_3_n3), .B(PermutationOutput[18]), 
        .ZN(Red_SignaltoCheck[99]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_3_U1 ( .A(PermutationOutput[16]), 
        .B(PermutationOutput[17]), .ZN(Red_ToCheckInst_LFInst_24_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_24_LFInst_2_n3), .B(PermutationOutput[19]), 
        .ZN(Red_SignaltoCheck[98]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_2_U1 ( .A(PermutationOutput[16]), 
        .B(PermutationOutput[17]), .ZN(Red_ToCheckInst_LFInst_24_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_24_LFInst_1_n3), .B(PermutationOutput[19]), 
        .ZN(Red_SignaltoCheck[97]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_1_U1 ( .A(PermutationOutput[16]), 
        .B(PermutationOutput[18]), .ZN(Red_ToCheckInst_LFInst_24_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_24_LFInst_0_n3), .B(PermutationOutput[19]), 
        .ZN(Red_SignaltoCheck[96]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_0_U1 ( .A(PermutationOutput[17]), 
        .B(PermutationOutput[18]), .ZN(Red_ToCheckInst_LFInst_24_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_25_LFInst_3_n3), .B(PermutationOutput[30]), 
        .ZN(Red_SignaltoCheck[103]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_3_U1 ( .A(PermutationOutput[28]), 
        .B(PermutationOutput[29]), .ZN(Red_ToCheckInst_LFInst_25_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_25_LFInst_2_n3), .B(PermutationOutput[31]), 
        .ZN(Red_SignaltoCheck[102]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_2_U1 ( .A(PermutationOutput[28]), 
        .B(PermutationOutput[29]), .ZN(Red_ToCheckInst_LFInst_25_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_25_LFInst_1_n3), .B(PermutationOutput[31]), 
        .ZN(Red_SignaltoCheck[101]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_1_U1 ( .A(PermutationOutput[28]), 
        .B(PermutationOutput[30]), .ZN(Red_ToCheckInst_LFInst_25_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_25_LFInst_0_n3), .B(PermutationOutput[31]), 
        .ZN(Red_SignaltoCheck[100]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_0_U1 ( .A(PermutationOutput[29]), 
        .B(PermutationOutput[30]), .ZN(Red_ToCheckInst_LFInst_25_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_26_LFInst_3_n3), .B(PermutationOutput[26]), 
        .ZN(Red_SignaltoCheck[107]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_3_U1 ( .A(PermutationOutput[24]), 
        .B(PermutationOutput[25]), .ZN(Red_ToCheckInst_LFInst_26_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_26_LFInst_2_n3), .B(PermutationOutput[27]), 
        .ZN(Red_SignaltoCheck[106]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_2_U1 ( .A(PermutationOutput[24]), 
        .B(PermutationOutput[25]), .ZN(Red_ToCheckInst_LFInst_26_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_26_LFInst_1_n3), .B(PermutationOutput[27]), 
        .ZN(Red_SignaltoCheck[105]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_1_U1 ( .A(PermutationOutput[24]), 
        .B(PermutationOutput[26]), .ZN(Red_ToCheckInst_LFInst_26_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_26_LFInst_0_n3), .B(PermutationOutput[27]), 
        .ZN(Red_SignaltoCheck[104]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_0_U1 ( .A(PermutationOutput[25]), 
        .B(PermutationOutput[26]), .ZN(Red_ToCheckInst_LFInst_26_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_27_LFInst_3_n3), .B(PermutationOutput[22]), 
        .ZN(Red_SignaltoCheck[111]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_3_U1 ( .A(PermutationOutput[20]), 
        .B(PermutationOutput[21]), .ZN(Red_ToCheckInst_LFInst_27_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_27_LFInst_2_n3), .B(PermutationOutput[23]), 
        .ZN(Red_SignaltoCheck[110]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_2_U1 ( .A(PermutationOutput[20]), 
        .B(PermutationOutput[21]), .ZN(Red_ToCheckInst_LFInst_27_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_27_LFInst_1_n3), .B(PermutationOutput[23]), 
        .ZN(Red_SignaltoCheck[109]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_1_U1 ( .A(PermutationOutput[20]), 
        .B(PermutationOutput[22]), .ZN(Red_ToCheckInst_LFInst_27_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_27_LFInst_0_n3), .B(PermutationOutput[23]), 
        .ZN(Red_SignaltoCheck[108]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_0_U1 ( .A(PermutationOutput[21]), 
        .B(PermutationOutput[22]), .ZN(Red_ToCheckInst_LFInst_27_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_28_LFInst_3_n3), .B(PermutationOutput[6]), .ZN(
        Red_SignaltoCheck[115]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_3_U1 ( .A(PermutationOutput[4]), 
        .B(PermutationOutput[5]), .ZN(Red_ToCheckInst_LFInst_28_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_28_LFInst_2_n3), .B(PermutationOutput[7]), .ZN(
        Red_SignaltoCheck[114]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_2_U1 ( .A(PermutationOutput[4]), 
        .B(PermutationOutput[5]), .ZN(Red_ToCheckInst_LFInst_28_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_28_LFInst_1_n3), .B(PermutationOutput[7]), .ZN(
        Red_SignaltoCheck[113]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_1_U1 ( .A(PermutationOutput[4]), 
        .B(PermutationOutput[6]), .ZN(Red_ToCheckInst_LFInst_28_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_28_LFInst_0_n3), .B(PermutationOutput[7]), .ZN(
        Red_SignaltoCheck[112]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_0_U1 ( .A(PermutationOutput[5]), 
        .B(PermutationOutput[6]), .ZN(Red_ToCheckInst_LFInst_28_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_29_LFInst_3_n3), .B(PermutationOutput[10]), 
        .ZN(Red_SignaltoCheck[119]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_3_U1 ( .A(PermutationOutput[8]), 
        .B(PermutationOutput[9]), .ZN(Red_ToCheckInst_LFInst_29_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_29_LFInst_2_n3), .B(PermutationOutput[11]), 
        .ZN(Red_SignaltoCheck[118]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_2_U1 ( .A(PermutationOutput[8]), 
        .B(PermutationOutput[9]), .ZN(Red_ToCheckInst_LFInst_29_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_29_LFInst_1_n3), .B(PermutationOutput[11]), 
        .ZN(Red_SignaltoCheck[117]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_1_U1 ( .A(PermutationOutput[8]), 
        .B(PermutationOutput[10]), .ZN(Red_ToCheckInst_LFInst_29_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_29_LFInst_0_n3), .B(PermutationOutput[11]), 
        .ZN(Red_SignaltoCheck[116]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_0_U1 ( .A(PermutationOutput[9]), 
        .B(PermutationOutput[10]), .ZN(Red_ToCheckInst_LFInst_29_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_30_LFInst_3_n3), .B(PermutationOutput[14]), 
        .ZN(Red_SignaltoCheck[123]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_3_U1 ( .A(PermutationOutput[12]), 
        .B(PermutationOutput[13]), .ZN(Red_ToCheckInst_LFInst_30_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_30_LFInst_2_n3), .B(PermutationOutput[15]), 
        .ZN(Red_SignaltoCheck[122]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_2_U1 ( .A(PermutationOutput[12]), 
        .B(PermutationOutput[13]), .ZN(Red_ToCheckInst_LFInst_30_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_30_LFInst_1_n3), .B(PermutationOutput[15]), 
        .ZN(Red_SignaltoCheck[121]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_1_U1 ( .A(PermutationOutput[12]), 
        .B(PermutationOutput[14]), .ZN(Red_ToCheckInst_LFInst_30_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_30_LFInst_0_n3), .B(PermutationOutput[15]), 
        .ZN(Red_SignaltoCheck[120]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_0_U1 ( .A(PermutationOutput[13]), 
        .B(PermutationOutput[14]), .ZN(Red_ToCheckInst_LFInst_30_LFInst_0_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_3_U2 ( .A(
        Red_ToCheckInst_LFInst_31_LFInst_3_n3), .B(PermutationOutput[2]), .ZN(
        Red_SignaltoCheck[127]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_3_U1 ( .A(PermutationOutput[0]), 
        .B(PermutationOutput[1]), .ZN(Red_ToCheckInst_LFInst_31_LFInst_3_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_2_U2 ( .A(
        Red_ToCheckInst_LFInst_31_LFInst_2_n3), .B(PermutationOutput[3]), .ZN(
        Red_SignaltoCheck[126]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_2_U1 ( .A(PermutationOutput[0]), 
        .B(PermutationOutput[1]), .ZN(Red_ToCheckInst_LFInst_31_LFInst_2_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_1_U2 ( .A(
        Red_ToCheckInst_LFInst_31_LFInst_1_n3), .B(PermutationOutput[3]), .ZN(
        Red_SignaltoCheck[125]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_1_U1 ( .A(PermutationOutput[0]), 
        .B(PermutationOutput[2]), .ZN(Red_ToCheckInst_LFInst_31_LFInst_1_n3)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_0_U2 ( .A(
        Red_ToCheckInst_LFInst_31_LFInst_0_n3), .B(PermutationOutput[3]), .ZN(
        Red_SignaltoCheck[124]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_0_U1 ( .A(PermutationOutput[1]), 
        .B(PermutationOutput[2]), .ZN(Red_ToCheckInst_LFInst_31_LFInst_0_n3)
         );
  NOR2_X1 Check1_CheckInst_0_U63 ( .A1(Check1_CheckInst_0_n62), .A2(
        Check1_CheckInst_0_n61), .ZN(Error[0]) );
  NAND2_X1 Check1_CheckInst_0_U62 ( .A1(Check1_CheckInst_0_n60), .A2(
        Check1_CheckInst_0_n59), .ZN(Check1_CheckInst_0_n61) );
  NOR2_X1 Check1_CheckInst_0_U61 ( .A1(Check1_CheckInst_0_n58), .A2(
        Check1_CheckInst_0_n57), .ZN(Check1_CheckInst_0_n59) );
  NAND2_X1 Check1_CheckInst_0_U60 ( .A1(Check1_CheckInst_0_n56), .A2(
        Check1_CheckInst_0_n55), .ZN(Check1_CheckInst_0_n57) );
  NOR2_X1 Check1_CheckInst_0_U59 ( .A1(Check1_CheckInst_0_n54), .A2(
        Check1_CheckInst_0_n53), .ZN(Check1_CheckInst_0_n55) );
  NAND2_X1 Check1_CheckInst_0_U58 ( .A1(Check1_CheckInst_0_n52), .A2(
        Check1_CheckInst_0_n51), .ZN(Check1_CheckInst_0_n53) );
  NOR2_X1 Check1_CheckInst_0_U57 ( .A1(Check1_CheckInst_0_n50), .A2(
        Check1_CheckInst_0_n49), .ZN(Check1_CheckInst_0_n51) );
  XOR2_X1 Check1_CheckInst_0_U56 ( .A(Red_PermutationOutput[40]), .B(
        Red_SignaltoCheck[88]), .Z(Check1_CheckInst_0_n49) );
  XOR2_X1 Check1_CheckInst_0_U55 ( .A(Red_PermutationOutput[44]), .B(
        Red_SignaltoCheck[84]), .Z(Check1_CheckInst_0_n50) );
  NOR2_X1 Check1_CheckInst_0_U54 ( .A1(Check1_CheckInst_0_n48), .A2(
        Check1_CheckInst_0_n47), .ZN(Check1_CheckInst_0_n52) );
  XOR2_X1 Check1_CheckInst_0_U53 ( .A(Red_PermutationOutput[32]), .B(
        Red_SignaltoCheck[80]), .Z(Check1_CheckInst_0_n47) );
  XOR2_X1 Check1_CheckInst_0_U52 ( .A(Red_PermutationOutput[56]), .B(
        Red_SignaltoCheck[76]), .Z(Check1_CheckInst_0_n48) );
  NAND2_X1 Check1_CheckInst_0_U51 ( .A1(Check1_CheckInst_0_n46), .A2(
        Check1_CheckInst_0_n45), .ZN(Check1_CheckInst_0_n54) );
  XNOR2_X1 Check1_CheckInst_0_U50 ( .A(Red_PermutationOutput[52]), .B(
        Red_SignaltoCheck[72]), .ZN(Check1_CheckInst_0_n45) );
  XNOR2_X1 Check1_CheckInst_0_U49 ( .A(Red_PermutationOutput[48]), .B(
        Red_SignaltoCheck[68]), .ZN(Check1_CheckInst_0_n46) );
  NOR2_X1 Check1_CheckInst_0_U48 ( .A1(Check1_CheckInst_0_n44), .A2(
        Check1_CheckInst_0_n43), .ZN(Check1_CheckInst_0_n56) );
  XOR2_X1 Check1_CheckInst_0_U47 ( .A(Red_PermutationOutput[60]), .B(
        Red_SignaltoCheck[64]), .Z(Check1_CheckInst_0_n43) );
  XOR2_X1 Check1_CheckInst_0_U46 ( .A(Red_Feedback[60]), .B(
        Red_SignaltoCheck[60]), .Z(Check1_CheckInst_0_n44) );
  NAND2_X1 Check1_CheckInst_0_U45 ( .A1(Check1_CheckInst_0_n42), .A2(
        Check1_CheckInst_0_n41), .ZN(Check1_CheckInst_0_n58) );
  NOR2_X1 Check1_CheckInst_0_U44 ( .A1(Check1_CheckInst_0_n40), .A2(
        Check1_CheckInst_0_n39), .ZN(Check1_CheckInst_0_n41) );
  NAND2_X1 Check1_CheckInst_0_U43 ( .A1(Check1_CheckInst_0_n38), .A2(
        Check1_CheckInst_0_n37), .ZN(Check1_CheckInst_0_n39) );
  NOR2_X1 Check1_CheckInst_0_U42 ( .A1(Check1_CheckInst_0_n36), .A2(
        Check1_CheckInst_0_n35), .ZN(Check1_CheckInst_0_n37) );
  XOR2_X1 Check1_CheckInst_0_U41 ( .A(Red_PermutationOutput[12]), .B(
        Red_SignaltoCheck[120]), .Z(Check1_CheckInst_0_n35) );
  XOR2_X1 Check1_CheckInst_0_U40 ( .A(Red_PermutationOutput[8]), .B(
        Red_SignaltoCheck[116]), .Z(Check1_CheckInst_0_n36) );
  NOR2_X1 Check1_CheckInst_0_U39 ( .A1(Check1_CheckInst_0_n34), .A2(
        Check1_CheckInst_0_n33), .ZN(Check1_CheckInst_0_n38) );
  XOR2_X1 Check1_CheckInst_0_U38 ( .A(Red_PermutationOutput[4]), .B(
        Red_SignaltoCheck[112]), .Z(Check1_CheckInst_0_n33) );
  XOR2_X1 Check1_CheckInst_0_U37 ( .A(Red_PermutationOutput[20]), .B(
        Red_SignaltoCheck[108]), .Z(Check1_CheckInst_0_n34) );
  NAND2_X1 Check1_CheckInst_0_U36 ( .A1(Check1_CheckInst_0_n32), .A2(
        Check1_CheckInst_0_n31), .ZN(Check1_CheckInst_0_n40) );
  XNOR2_X1 Check1_CheckInst_0_U35 ( .A(Red_PermutationOutput[24]), .B(
        Red_SignaltoCheck[104]), .ZN(Check1_CheckInst_0_n31) );
  XNOR2_X1 Check1_CheckInst_0_U34 ( .A(Red_PermutationOutput[28]), .B(
        Red_SignaltoCheck[100]), .ZN(Check1_CheckInst_0_n32) );
  NOR2_X1 Check1_CheckInst_0_U33 ( .A1(Check1_CheckInst_0_n30), .A2(
        Check1_CheckInst_0_n29), .ZN(Check1_CheckInst_0_n42) );
  XOR2_X1 Check1_CheckInst_0_U32 ( .A(Red_PermutationOutput[16]), .B(
        Red_SignaltoCheck[96]), .Z(Check1_CheckInst_0_n29) );
  XOR2_X1 Check1_CheckInst_0_U31 ( .A(Red_PermutationOutput[36]), .B(
        Red_SignaltoCheck[92]), .Z(Check1_CheckInst_0_n30) );
  NOR2_X1 Check1_CheckInst_0_U30 ( .A1(Check1_CheckInst_0_n28), .A2(
        Check1_CheckInst_0_n27), .ZN(Check1_CheckInst_0_n60) );
  NAND2_X1 Check1_CheckInst_0_U29 ( .A1(Check1_CheckInst_0_n26), .A2(
        Check1_CheckInst_0_n25), .ZN(Check1_CheckInst_0_n27) );
  NOR2_X1 Check1_CheckInst_0_U28 ( .A1(Check1_CheckInst_0_n24), .A2(
        Check1_CheckInst_0_n23), .ZN(Check1_CheckInst_0_n25) );
  NAND2_X1 Check1_CheckInst_0_U27 ( .A1(Check1_CheckInst_0_n22), .A2(
        Check1_CheckInst_0_n21), .ZN(Check1_CheckInst_0_n23) );
  XNOR2_X1 Check1_CheckInst_0_U26 ( .A(Red_Feedback[40]), .B(
        Red_SignaltoCheck[40]), .ZN(Check1_CheckInst_0_n21) );
  XNOR2_X1 Check1_CheckInst_0_U25 ( .A(Red_Feedback[36]), .B(
        Red_SignaltoCheck[36]), .ZN(Check1_CheckInst_0_n22) );
  NAND2_X1 Check1_CheckInst_0_U24 ( .A1(Check1_CheckInst_0_n20), .A2(
        Check1_CheckInst_0_n19), .ZN(Check1_CheckInst_0_n24) );
  XNOR2_X1 Check1_CheckInst_0_U23 ( .A(Red_Feedback[32]), .B(
        Red_SignaltoCheck[32]), .ZN(Check1_CheckInst_0_n19) );
  XNOR2_X1 Check1_CheckInst_0_U22 ( .A(Red_Feedback[28]), .B(
        Red_SignaltoCheck[28]), .ZN(Check1_CheckInst_0_n20) );
  NOR2_X1 Check1_CheckInst_0_U21 ( .A1(Check1_CheckInst_0_n18), .A2(
        Check1_CheckInst_0_n17), .ZN(Check1_CheckInst_0_n26) );
  XOR2_X1 Check1_CheckInst_0_U20 ( .A(Red_Feedback[56]), .B(
        Red_SignaltoCheck[56]), .Z(Check1_CheckInst_0_n17) );
  XOR2_X1 Check1_CheckInst_0_U19 ( .A(Red_Feedback[52]), .B(
        Red_SignaltoCheck[52]), .Z(Check1_CheckInst_0_n18) );
  NAND2_X1 Check1_CheckInst_0_U18 ( .A1(Check1_CheckInst_0_n16), .A2(
        Check1_CheckInst_0_n15), .ZN(Check1_CheckInst_0_n28) );
  XNOR2_X1 Check1_CheckInst_0_U17 ( .A(Red_Feedback[48]), .B(
        Red_SignaltoCheck[48]), .ZN(Check1_CheckInst_0_n15) );
  XNOR2_X1 Check1_CheckInst_0_U16 ( .A(Red_Feedback[44]), .B(
        Red_SignaltoCheck[44]), .ZN(Check1_CheckInst_0_n16) );
  NAND2_X1 Check1_CheckInst_0_U15 ( .A1(Check1_CheckInst_0_n14), .A2(
        Check1_CheckInst_0_n13), .ZN(Check1_CheckInst_0_n62) );
  NOR2_X1 Check1_CheckInst_0_U14 ( .A1(Check1_CheckInst_0_n12), .A2(
        Check1_CheckInst_0_n11), .ZN(Check1_CheckInst_0_n13) );
  NAND2_X1 Check1_CheckInst_0_U13 ( .A1(Check1_CheckInst_0_n10), .A2(
        Check1_CheckInst_0_n9), .ZN(Check1_CheckInst_0_n11) );
  NOR2_X1 Check1_CheckInst_0_U12 ( .A1(Check1_CheckInst_0_n8), .A2(
        Check1_CheckInst_0_n7), .ZN(Check1_CheckInst_0_n9) );
  XOR2_X1 Check1_CheckInst_0_U11 ( .A(Red_Feedback[8]), .B(
        Red_SignaltoCheck[8]), .Z(Check1_CheckInst_0_n7) );
  XOR2_X1 Check1_CheckInst_0_U10 ( .A(Red_PermutationOutput[0]), .B(
        Red_SignaltoCheck[124]), .Z(Check1_CheckInst_0_n8) );
  NOR2_X1 Check1_CheckInst_0_U9 ( .A1(Check1_CheckInst_0_n6), .A2(
        Check1_CheckInst_0_n5), .ZN(Check1_CheckInst_0_n10) );
  XOR2_X1 Check1_CheckInst_0_U8 ( .A(Red_SignaltoCheck[4]), .B(Red_Feedback[4]), .Z(Check1_CheckInst_0_n5) );
  XOR2_X1 Check1_CheckInst_0_U7 ( .A(Red_SignaltoCheck[0]), .B(Red_Feedback[0]), .Z(Check1_CheckInst_0_n6) );
  NAND2_X1 Check1_CheckInst_0_U6 ( .A1(Check1_CheckInst_0_n4), .A2(
        Check1_CheckInst_0_n3), .ZN(Check1_CheckInst_0_n12) );
  XNOR2_X1 Check1_CheckInst_0_U5 ( .A(Red_Feedback[24]), .B(
        Red_SignaltoCheck[24]), .ZN(Check1_CheckInst_0_n3) );
  XNOR2_X1 Check1_CheckInst_0_U4 ( .A(Red_Feedback[20]), .B(
        Red_SignaltoCheck[20]), .ZN(Check1_CheckInst_0_n4) );
  NOR2_X1 Check1_CheckInst_0_U3 ( .A1(Check1_CheckInst_0_n2), .A2(
        Check1_CheckInst_0_n1), .ZN(Check1_CheckInst_0_n14) );
  XOR2_X1 Check1_CheckInst_0_U2 ( .A(Red_Feedback[16]), .B(
        Red_SignaltoCheck[16]), .Z(Check1_CheckInst_0_n1) );
  XOR2_X1 Check1_CheckInst_0_U1 ( .A(Red_Feedback[12]), .B(
        Red_SignaltoCheck[12]), .Z(Check1_CheckInst_0_n2) );
  NOR2_X1 Check1_CheckInst_1_U63 ( .A1(Check1_CheckInst_1_n64), .A2(
        Check1_CheckInst_1_n63), .ZN(Error[1]) );
  NAND2_X1 Check1_CheckInst_1_U62 ( .A1(Check1_CheckInst_1_n62), .A2(
        Check1_CheckInst_1_n61), .ZN(Check1_CheckInst_1_n63) );
  NOR2_X1 Check1_CheckInst_1_U61 ( .A1(Check1_CheckInst_1_n60), .A2(
        Check1_CheckInst_1_n59), .ZN(Check1_CheckInst_1_n61) );
  NAND2_X1 Check1_CheckInst_1_U60 ( .A1(Check1_CheckInst_1_n58), .A2(
        Check1_CheckInst_1_n57), .ZN(Check1_CheckInst_1_n59) );
  NOR2_X1 Check1_CheckInst_1_U59 ( .A1(Check1_CheckInst_1_n56), .A2(
        Check1_CheckInst_1_n55), .ZN(Check1_CheckInst_1_n57) );
  NAND2_X1 Check1_CheckInst_1_U58 ( .A1(Check1_CheckInst_1_n54), .A2(
        Check1_CheckInst_1_n53), .ZN(Check1_CheckInst_1_n55) );
  NOR2_X1 Check1_CheckInst_1_U57 ( .A1(Check1_CheckInst_1_n52), .A2(
        Check1_CheckInst_1_n51), .ZN(Check1_CheckInst_1_n53) );
  XOR2_X1 Check1_CheckInst_1_U56 ( .A(Red_PermutationOutput[41]), .B(
        Red_SignaltoCheck[89]), .Z(Check1_CheckInst_1_n51) );
  XOR2_X1 Check1_CheckInst_1_U55 ( .A(Red_PermutationOutput[45]), .B(
        Red_SignaltoCheck[85]), .Z(Check1_CheckInst_1_n52) );
  NOR2_X1 Check1_CheckInst_1_U54 ( .A1(Check1_CheckInst_1_n50), .A2(
        Check1_CheckInst_1_n49), .ZN(Check1_CheckInst_1_n54) );
  XOR2_X1 Check1_CheckInst_1_U53 ( .A(Red_PermutationOutput[33]), .B(
        Red_SignaltoCheck[81]), .Z(Check1_CheckInst_1_n49) );
  XOR2_X1 Check1_CheckInst_1_U52 ( .A(Red_PermutationOutput[57]), .B(
        Red_SignaltoCheck[77]), .Z(Check1_CheckInst_1_n50) );
  NAND2_X1 Check1_CheckInst_1_U51 ( .A1(Check1_CheckInst_1_n48), .A2(
        Check1_CheckInst_1_n47), .ZN(Check1_CheckInst_1_n56) );
  XNOR2_X1 Check1_CheckInst_1_U50 ( .A(Red_PermutationOutput[53]), .B(
        Red_SignaltoCheck[73]), .ZN(Check1_CheckInst_1_n47) );
  XNOR2_X1 Check1_CheckInst_1_U49 ( .A(Red_PermutationOutput[49]), .B(
        Red_SignaltoCheck[69]), .ZN(Check1_CheckInst_1_n48) );
  NOR2_X1 Check1_CheckInst_1_U48 ( .A1(Check1_CheckInst_1_n46), .A2(
        Check1_CheckInst_1_n45), .ZN(Check1_CheckInst_1_n58) );
  XOR2_X1 Check1_CheckInst_1_U47 ( .A(Red_PermutationOutput[61]), .B(
        Red_SignaltoCheck[65]), .Z(Check1_CheckInst_1_n45) );
  XOR2_X1 Check1_CheckInst_1_U46 ( .A(Red_Feedback[61]), .B(
        Red_SignaltoCheck[61]), .Z(Check1_CheckInst_1_n46) );
  NAND2_X1 Check1_CheckInst_1_U45 ( .A1(Check1_CheckInst_1_n44), .A2(
        Check1_CheckInst_1_n43), .ZN(Check1_CheckInst_1_n60) );
  NOR2_X1 Check1_CheckInst_1_U44 ( .A1(Check1_CheckInst_1_n42), .A2(
        Check1_CheckInst_1_n41), .ZN(Check1_CheckInst_1_n43) );
  NAND2_X1 Check1_CheckInst_1_U43 ( .A1(Check1_CheckInst_1_n40), .A2(
        Check1_CheckInst_1_n39), .ZN(Check1_CheckInst_1_n41) );
  NOR2_X1 Check1_CheckInst_1_U42 ( .A1(Check1_CheckInst_1_n38), .A2(
        Check1_CheckInst_1_n37), .ZN(Check1_CheckInst_1_n39) );
  XOR2_X1 Check1_CheckInst_1_U41 ( .A(Red_PermutationOutput[13]), .B(
        Red_SignaltoCheck[121]), .Z(Check1_CheckInst_1_n37) );
  XOR2_X1 Check1_CheckInst_1_U40 ( .A(Red_PermutationOutput[9]), .B(
        Red_SignaltoCheck[117]), .Z(Check1_CheckInst_1_n38) );
  NOR2_X1 Check1_CheckInst_1_U39 ( .A1(Check1_CheckInst_1_n36), .A2(
        Check1_CheckInst_1_n35), .ZN(Check1_CheckInst_1_n40) );
  XOR2_X1 Check1_CheckInst_1_U38 ( .A(Red_PermutationOutput[5]), .B(
        Red_SignaltoCheck[113]), .Z(Check1_CheckInst_1_n35) );
  XOR2_X1 Check1_CheckInst_1_U37 ( .A(Red_PermutationOutput[21]), .B(
        Red_SignaltoCheck[109]), .Z(Check1_CheckInst_1_n36) );
  NAND2_X1 Check1_CheckInst_1_U36 ( .A1(Check1_CheckInst_1_n34), .A2(
        Check1_CheckInst_1_n33), .ZN(Check1_CheckInst_1_n42) );
  XNOR2_X1 Check1_CheckInst_1_U35 ( .A(Red_PermutationOutput[25]), .B(
        Red_SignaltoCheck[105]), .ZN(Check1_CheckInst_1_n33) );
  XNOR2_X1 Check1_CheckInst_1_U34 ( .A(Red_PermutationOutput[29]), .B(
        Red_SignaltoCheck[101]), .ZN(Check1_CheckInst_1_n34) );
  NOR2_X1 Check1_CheckInst_1_U33 ( .A1(Check1_CheckInst_1_n32), .A2(
        Check1_CheckInst_1_n31), .ZN(Check1_CheckInst_1_n44) );
  XOR2_X1 Check1_CheckInst_1_U32 ( .A(Red_PermutationOutput[17]), .B(
        Red_SignaltoCheck[97]), .Z(Check1_CheckInst_1_n31) );
  XOR2_X1 Check1_CheckInst_1_U31 ( .A(Red_PermutationOutput[37]), .B(
        Red_SignaltoCheck[93]), .Z(Check1_CheckInst_1_n32) );
  NOR2_X1 Check1_CheckInst_1_U30 ( .A1(Check1_CheckInst_1_n30), .A2(
        Check1_CheckInst_1_n29), .ZN(Check1_CheckInst_1_n62) );
  NAND2_X1 Check1_CheckInst_1_U29 ( .A1(Check1_CheckInst_1_n28), .A2(
        Check1_CheckInst_1_n27), .ZN(Check1_CheckInst_1_n29) );
  NOR2_X1 Check1_CheckInst_1_U28 ( .A1(Check1_CheckInst_1_n26), .A2(
        Check1_CheckInst_1_n25), .ZN(Check1_CheckInst_1_n27) );
  NAND2_X1 Check1_CheckInst_1_U27 ( .A1(Check1_CheckInst_1_n24), .A2(
        Check1_CheckInst_1_n23), .ZN(Check1_CheckInst_1_n25) );
  XNOR2_X1 Check1_CheckInst_1_U26 ( .A(Red_Feedback[41]), .B(
        Red_SignaltoCheck[41]), .ZN(Check1_CheckInst_1_n23) );
  XNOR2_X1 Check1_CheckInst_1_U25 ( .A(Red_Feedback[37]), .B(
        Red_SignaltoCheck[37]), .ZN(Check1_CheckInst_1_n24) );
  NAND2_X1 Check1_CheckInst_1_U24 ( .A1(Check1_CheckInst_1_n22), .A2(
        Check1_CheckInst_1_n21), .ZN(Check1_CheckInst_1_n26) );
  XNOR2_X1 Check1_CheckInst_1_U23 ( .A(Red_Feedback[33]), .B(
        Red_SignaltoCheck[33]), .ZN(Check1_CheckInst_1_n21) );
  XNOR2_X1 Check1_CheckInst_1_U22 ( .A(Red_Feedback[29]), .B(
        Red_SignaltoCheck[29]), .ZN(Check1_CheckInst_1_n22) );
  NOR2_X1 Check1_CheckInst_1_U21 ( .A1(Check1_CheckInst_1_n20), .A2(
        Check1_CheckInst_1_n19), .ZN(Check1_CheckInst_1_n28) );
  XOR2_X1 Check1_CheckInst_1_U20 ( .A(Red_Feedback[57]), .B(
        Red_SignaltoCheck[57]), .Z(Check1_CheckInst_1_n19) );
  XOR2_X1 Check1_CheckInst_1_U19 ( .A(Red_Feedback[53]), .B(
        Red_SignaltoCheck[53]), .Z(Check1_CheckInst_1_n20) );
  NAND2_X1 Check1_CheckInst_1_U18 ( .A1(Check1_CheckInst_1_n18), .A2(
        Check1_CheckInst_1_n17), .ZN(Check1_CheckInst_1_n30) );
  XNOR2_X1 Check1_CheckInst_1_U17 ( .A(Red_Feedback[49]), .B(
        Red_SignaltoCheck[49]), .ZN(Check1_CheckInst_1_n17) );
  XNOR2_X1 Check1_CheckInst_1_U16 ( .A(Red_Feedback[45]), .B(
        Red_SignaltoCheck[45]), .ZN(Check1_CheckInst_1_n18) );
  NAND2_X1 Check1_CheckInst_1_U15 ( .A1(Check1_CheckInst_1_n16), .A2(
        Check1_CheckInst_1_n15), .ZN(Check1_CheckInst_1_n64) );
  NOR2_X1 Check1_CheckInst_1_U14 ( .A1(Check1_CheckInst_1_n14), .A2(
        Check1_CheckInst_1_n13), .ZN(Check1_CheckInst_1_n15) );
  NAND2_X1 Check1_CheckInst_1_U13 ( .A1(Check1_CheckInst_1_n12), .A2(
        Check1_CheckInst_1_n11), .ZN(Check1_CheckInst_1_n13) );
  NOR2_X1 Check1_CheckInst_1_U12 ( .A1(Check1_CheckInst_1_n10), .A2(
        Check1_CheckInst_1_n9), .ZN(Check1_CheckInst_1_n11) );
  XOR2_X1 Check1_CheckInst_1_U11 ( .A(Red_Feedback[9]), .B(
        Red_SignaltoCheck[9]), .Z(Check1_CheckInst_1_n9) );
  XOR2_X1 Check1_CheckInst_1_U10 ( .A(Red_PermutationOutput[1]), .B(
        Red_SignaltoCheck[125]), .Z(Check1_CheckInst_1_n10) );
  NOR2_X1 Check1_CheckInst_1_U9 ( .A1(Check1_CheckInst_1_n8), .A2(
        Check1_CheckInst_1_n7), .ZN(Check1_CheckInst_1_n12) );
  XOR2_X1 Check1_CheckInst_1_U8 ( .A(Red_SignaltoCheck[5]), .B(Red_Feedback[5]), .Z(Check1_CheckInst_1_n7) );
  XOR2_X1 Check1_CheckInst_1_U7 ( .A(Red_SignaltoCheck[1]), .B(Red_Feedback[1]), .Z(Check1_CheckInst_1_n8) );
  NAND2_X1 Check1_CheckInst_1_U6 ( .A1(Check1_CheckInst_1_n6), .A2(
        Check1_CheckInst_1_n5), .ZN(Check1_CheckInst_1_n14) );
  XNOR2_X1 Check1_CheckInst_1_U5 ( .A(Red_Feedback[25]), .B(
        Red_SignaltoCheck[25]), .ZN(Check1_CheckInst_1_n5) );
  XNOR2_X1 Check1_CheckInst_1_U4 ( .A(Red_Feedback[21]), .B(
        Red_SignaltoCheck[21]), .ZN(Check1_CheckInst_1_n6) );
  NOR2_X1 Check1_CheckInst_1_U3 ( .A1(Check1_CheckInst_1_n4), .A2(
        Check1_CheckInst_1_n3), .ZN(Check1_CheckInst_1_n16) );
  XOR2_X1 Check1_CheckInst_1_U2 ( .A(Red_Feedback[17]), .B(
        Red_SignaltoCheck[17]), .Z(Check1_CheckInst_1_n3) );
  XOR2_X1 Check1_CheckInst_1_U1 ( .A(Red_Feedback[13]), .B(
        Red_SignaltoCheck[13]), .Z(Check1_CheckInst_1_n4) );
  NOR2_X1 Check1_CheckInst_2_U63 ( .A1(Check1_CheckInst_2_n64), .A2(
        Check1_CheckInst_2_n63), .ZN(Error[2]) );
  NAND2_X1 Check1_CheckInst_2_U62 ( .A1(Check1_CheckInst_2_n62), .A2(
        Check1_CheckInst_2_n61), .ZN(Check1_CheckInst_2_n63) );
  NOR2_X1 Check1_CheckInst_2_U61 ( .A1(Check1_CheckInst_2_n60), .A2(
        Check1_CheckInst_2_n59), .ZN(Check1_CheckInst_2_n61) );
  NAND2_X1 Check1_CheckInst_2_U60 ( .A1(Check1_CheckInst_2_n58), .A2(
        Check1_CheckInst_2_n57), .ZN(Check1_CheckInst_2_n59) );
  NOR2_X1 Check1_CheckInst_2_U59 ( .A1(Check1_CheckInst_2_n56), .A2(
        Check1_CheckInst_2_n55), .ZN(Check1_CheckInst_2_n57) );
  NAND2_X1 Check1_CheckInst_2_U58 ( .A1(Check1_CheckInst_2_n54), .A2(
        Check1_CheckInst_2_n53), .ZN(Check1_CheckInst_2_n55) );
  NOR2_X1 Check1_CheckInst_2_U57 ( .A1(Check1_CheckInst_2_n52), .A2(
        Check1_CheckInst_2_n51), .ZN(Check1_CheckInst_2_n53) );
  XOR2_X1 Check1_CheckInst_2_U56 ( .A(Red_PermutationOutput[42]), .B(
        Red_SignaltoCheck[90]), .Z(Check1_CheckInst_2_n51) );
  XOR2_X1 Check1_CheckInst_2_U55 ( .A(Red_PermutationOutput[46]), .B(
        Red_SignaltoCheck[86]), .Z(Check1_CheckInst_2_n52) );
  NOR2_X1 Check1_CheckInst_2_U54 ( .A1(Check1_CheckInst_2_n50), .A2(
        Check1_CheckInst_2_n49), .ZN(Check1_CheckInst_2_n54) );
  XOR2_X1 Check1_CheckInst_2_U53 ( .A(Red_PermutationOutput[34]), .B(
        Red_SignaltoCheck[82]), .Z(Check1_CheckInst_2_n49) );
  XOR2_X1 Check1_CheckInst_2_U52 ( .A(Red_PermutationOutput[58]), .B(
        Red_SignaltoCheck[78]), .Z(Check1_CheckInst_2_n50) );
  NAND2_X1 Check1_CheckInst_2_U51 ( .A1(Check1_CheckInst_2_n48), .A2(
        Check1_CheckInst_2_n47), .ZN(Check1_CheckInst_2_n56) );
  XNOR2_X1 Check1_CheckInst_2_U50 ( .A(Red_PermutationOutput[54]), .B(
        Red_SignaltoCheck[74]), .ZN(Check1_CheckInst_2_n47) );
  XNOR2_X1 Check1_CheckInst_2_U49 ( .A(Red_PermutationOutput[50]), .B(
        Red_SignaltoCheck[70]), .ZN(Check1_CheckInst_2_n48) );
  NOR2_X1 Check1_CheckInst_2_U48 ( .A1(Check1_CheckInst_2_n46), .A2(
        Check1_CheckInst_2_n45), .ZN(Check1_CheckInst_2_n58) );
  XOR2_X1 Check1_CheckInst_2_U47 ( .A(Red_PermutationOutput[62]), .B(
        Red_SignaltoCheck[66]), .Z(Check1_CheckInst_2_n45) );
  XOR2_X1 Check1_CheckInst_2_U46 ( .A(Red_Feedback[62]), .B(
        Red_SignaltoCheck[62]), .Z(Check1_CheckInst_2_n46) );
  NAND2_X1 Check1_CheckInst_2_U45 ( .A1(Check1_CheckInst_2_n44), .A2(
        Check1_CheckInst_2_n43), .ZN(Check1_CheckInst_2_n60) );
  NOR2_X1 Check1_CheckInst_2_U44 ( .A1(Check1_CheckInst_2_n42), .A2(
        Check1_CheckInst_2_n41), .ZN(Check1_CheckInst_2_n43) );
  NAND2_X1 Check1_CheckInst_2_U43 ( .A1(Check1_CheckInst_2_n40), .A2(
        Check1_CheckInst_2_n39), .ZN(Check1_CheckInst_2_n41) );
  NOR2_X1 Check1_CheckInst_2_U42 ( .A1(Check1_CheckInst_2_n38), .A2(
        Check1_CheckInst_2_n37), .ZN(Check1_CheckInst_2_n39) );
  XOR2_X1 Check1_CheckInst_2_U41 ( .A(Red_PermutationOutput[14]), .B(
        Red_SignaltoCheck[122]), .Z(Check1_CheckInst_2_n37) );
  XOR2_X1 Check1_CheckInst_2_U40 ( .A(Red_PermutationOutput[10]), .B(
        Red_SignaltoCheck[118]), .Z(Check1_CheckInst_2_n38) );
  NOR2_X1 Check1_CheckInst_2_U39 ( .A1(Check1_CheckInst_2_n36), .A2(
        Check1_CheckInst_2_n35), .ZN(Check1_CheckInst_2_n40) );
  XOR2_X1 Check1_CheckInst_2_U38 ( .A(Red_PermutationOutput[6]), .B(
        Red_SignaltoCheck[114]), .Z(Check1_CheckInst_2_n35) );
  XOR2_X1 Check1_CheckInst_2_U37 ( .A(Red_PermutationOutput[22]), .B(
        Red_SignaltoCheck[110]), .Z(Check1_CheckInst_2_n36) );
  NAND2_X1 Check1_CheckInst_2_U36 ( .A1(Check1_CheckInst_2_n34), .A2(
        Check1_CheckInst_2_n33), .ZN(Check1_CheckInst_2_n42) );
  XNOR2_X1 Check1_CheckInst_2_U35 ( .A(Red_PermutationOutput[26]), .B(
        Red_SignaltoCheck[106]), .ZN(Check1_CheckInst_2_n33) );
  XNOR2_X1 Check1_CheckInst_2_U34 ( .A(Red_PermutationOutput[30]), .B(
        Red_SignaltoCheck[102]), .ZN(Check1_CheckInst_2_n34) );
  NOR2_X1 Check1_CheckInst_2_U33 ( .A1(Check1_CheckInst_2_n32), .A2(
        Check1_CheckInst_2_n31), .ZN(Check1_CheckInst_2_n44) );
  XOR2_X1 Check1_CheckInst_2_U32 ( .A(Red_PermutationOutput[18]), .B(
        Red_SignaltoCheck[98]), .Z(Check1_CheckInst_2_n31) );
  XOR2_X1 Check1_CheckInst_2_U31 ( .A(Red_PermutationOutput[38]), .B(
        Red_SignaltoCheck[94]), .Z(Check1_CheckInst_2_n32) );
  NOR2_X1 Check1_CheckInst_2_U30 ( .A1(Check1_CheckInst_2_n30), .A2(
        Check1_CheckInst_2_n29), .ZN(Check1_CheckInst_2_n62) );
  NAND2_X1 Check1_CheckInst_2_U29 ( .A1(Check1_CheckInst_2_n28), .A2(
        Check1_CheckInst_2_n27), .ZN(Check1_CheckInst_2_n29) );
  NOR2_X1 Check1_CheckInst_2_U28 ( .A1(Check1_CheckInst_2_n26), .A2(
        Check1_CheckInst_2_n25), .ZN(Check1_CheckInst_2_n27) );
  NAND2_X1 Check1_CheckInst_2_U27 ( .A1(Check1_CheckInst_2_n24), .A2(
        Check1_CheckInst_2_n23), .ZN(Check1_CheckInst_2_n25) );
  XNOR2_X1 Check1_CheckInst_2_U26 ( .A(Red_Feedback[42]), .B(
        Red_SignaltoCheck[42]), .ZN(Check1_CheckInst_2_n23) );
  XNOR2_X1 Check1_CheckInst_2_U25 ( .A(Red_Feedback[38]), .B(
        Red_SignaltoCheck[38]), .ZN(Check1_CheckInst_2_n24) );
  NAND2_X1 Check1_CheckInst_2_U24 ( .A1(Check1_CheckInst_2_n22), .A2(
        Check1_CheckInst_2_n21), .ZN(Check1_CheckInst_2_n26) );
  XNOR2_X1 Check1_CheckInst_2_U23 ( .A(Red_Feedback[34]), .B(
        Red_SignaltoCheck[34]), .ZN(Check1_CheckInst_2_n21) );
  XNOR2_X1 Check1_CheckInst_2_U22 ( .A(Red_Feedback[30]), .B(
        Red_SignaltoCheck[30]), .ZN(Check1_CheckInst_2_n22) );
  NOR2_X1 Check1_CheckInst_2_U21 ( .A1(Check1_CheckInst_2_n20), .A2(
        Check1_CheckInst_2_n19), .ZN(Check1_CheckInst_2_n28) );
  XOR2_X1 Check1_CheckInst_2_U20 ( .A(Red_Feedback[58]), .B(
        Red_SignaltoCheck[58]), .Z(Check1_CheckInst_2_n19) );
  XOR2_X1 Check1_CheckInst_2_U19 ( .A(Red_Feedback[54]), .B(
        Red_SignaltoCheck[54]), .Z(Check1_CheckInst_2_n20) );
  NAND2_X1 Check1_CheckInst_2_U18 ( .A1(Check1_CheckInst_2_n18), .A2(
        Check1_CheckInst_2_n17), .ZN(Check1_CheckInst_2_n30) );
  XNOR2_X1 Check1_CheckInst_2_U17 ( .A(Red_Feedback[50]), .B(
        Red_SignaltoCheck[50]), .ZN(Check1_CheckInst_2_n17) );
  XNOR2_X1 Check1_CheckInst_2_U16 ( .A(Red_Feedback[46]), .B(
        Red_SignaltoCheck[46]), .ZN(Check1_CheckInst_2_n18) );
  NAND2_X1 Check1_CheckInst_2_U15 ( .A1(Check1_CheckInst_2_n16), .A2(
        Check1_CheckInst_2_n15), .ZN(Check1_CheckInst_2_n64) );
  NOR2_X1 Check1_CheckInst_2_U14 ( .A1(Check1_CheckInst_2_n14), .A2(
        Check1_CheckInst_2_n13), .ZN(Check1_CheckInst_2_n15) );
  NAND2_X1 Check1_CheckInst_2_U13 ( .A1(Check1_CheckInst_2_n12), .A2(
        Check1_CheckInst_2_n11), .ZN(Check1_CheckInst_2_n13) );
  NOR2_X1 Check1_CheckInst_2_U12 ( .A1(Check1_CheckInst_2_n10), .A2(
        Check1_CheckInst_2_n9), .ZN(Check1_CheckInst_2_n11) );
  XOR2_X1 Check1_CheckInst_2_U11 ( .A(Red_Feedback[10]), .B(
        Red_SignaltoCheck[10]), .Z(Check1_CheckInst_2_n9) );
  XOR2_X1 Check1_CheckInst_2_U10 ( .A(Red_PermutationOutput[2]), .B(
        Red_SignaltoCheck[126]), .Z(Check1_CheckInst_2_n10) );
  NOR2_X1 Check1_CheckInst_2_U9 ( .A1(Check1_CheckInst_2_n8), .A2(
        Check1_CheckInst_2_n7), .ZN(Check1_CheckInst_2_n12) );
  XOR2_X1 Check1_CheckInst_2_U8 ( .A(Red_SignaltoCheck[6]), .B(Red_Feedback[6]), .Z(Check1_CheckInst_2_n7) );
  XOR2_X1 Check1_CheckInst_2_U7 ( .A(Red_SignaltoCheck[2]), .B(Red_Feedback[2]), .Z(Check1_CheckInst_2_n8) );
  NAND2_X1 Check1_CheckInst_2_U6 ( .A1(Check1_CheckInst_2_n6), .A2(
        Check1_CheckInst_2_n5), .ZN(Check1_CheckInst_2_n14) );
  XNOR2_X1 Check1_CheckInst_2_U5 ( .A(Red_Feedback[26]), .B(
        Red_SignaltoCheck[26]), .ZN(Check1_CheckInst_2_n5) );
  XNOR2_X1 Check1_CheckInst_2_U4 ( .A(Red_Feedback[22]), .B(
        Red_SignaltoCheck[22]), .ZN(Check1_CheckInst_2_n6) );
  NOR2_X1 Check1_CheckInst_2_U3 ( .A1(Check1_CheckInst_2_n4), .A2(
        Check1_CheckInst_2_n3), .ZN(Check1_CheckInst_2_n16) );
  XOR2_X1 Check1_CheckInst_2_U2 ( .A(Red_Feedback[18]), .B(
        Red_SignaltoCheck[18]), .Z(Check1_CheckInst_2_n3) );
  XOR2_X1 Check1_CheckInst_2_U1 ( .A(Red_Feedback[14]), .B(
        Red_SignaltoCheck[14]), .Z(Check1_CheckInst_2_n4) );
  NOR2_X1 Check1_CheckInst_3_U63 ( .A1(Check1_CheckInst_3_n64), .A2(
        Check1_CheckInst_3_n63), .ZN(Error[3]) );
  NAND2_X1 Check1_CheckInst_3_U62 ( .A1(Check1_CheckInst_3_n62), .A2(
        Check1_CheckInst_3_n61), .ZN(Check1_CheckInst_3_n63) );
  NOR2_X1 Check1_CheckInst_3_U61 ( .A1(Check1_CheckInst_3_n60), .A2(
        Check1_CheckInst_3_n59), .ZN(Check1_CheckInst_3_n61) );
  NAND2_X1 Check1_CheckInst_3_U60 ( .A1(Check1_CheckInst_3_n58), .A2(
        Check1_CheckInst_3_n57), .ZN(Check1_CheckInst_3_n59) );
  NOR2_X1 Check1_CheckInst_3_U59 ( .A1(Check1_CheckInst_3_n56), .A2(
        Check1_CheckInst_3_n55), .ZN(Check1_CheckInst_3_n57) );
  NAND2_X1 Check1_CheckInst_3_U58 ( .A1(Check1_CheckInst_3_n54), .A2(
        Check1_CheckInst_3_n53), .ZN(Check1_CheckInst_3_n55) );
  NOR2_X1 Check1_CheckInst_3_U57 ( .A1(Check1_CheckInst_3_n52), .A2(
        Check1_CheckInst_3_n51), .ZN(Check1_CheckInst_3_n53) );
  XOR2_X1 Check1_CheckInst_3_U56 ( .A(Red_PermutationOutput[43]), .B(
        Red_SignaltoCheck[91]), .Z(Check1_CheckInst_3_n51) );
  XOR2_X1 Check1_CheckInst_3_U55 ( .A(Red_PermutationOutput[47]), .B(
        Red_SignaltoCheck[87]), .Z(Check1_CheckInst_3_n52) );
  NOR2_X1 Check1_CheckInst_3_U54 ( .A1(Check1_CheckInst_3_n50), .A2(
        Check1_CheckInst_3_n49), .ZN(Check1_CheckInst_3_n54) );
  XOR2_X1 Check1_CheckInst_3_U53 ( .A(Red_PermutationOutput[35]), .B(
        Red_SignaltoCheck[83]), .Z(Check1_CheckInst_3_n49) );
  XOR2_X1 Check1_CheckInst_3_U52 ( .A(Red_PermutationOutput[59]), .B(
        Red_SignaltoCheck[79]), .Z(Check1_CheckInst_3_n50) );
  NAND2_X1 Check1_CheckInst_3_U51 ( .A1(Check1_CheckInst_3_n48), .A2(
        Check1_CheckInst_3_n47), .ZN(Check1_CheckInst_3_n56) );
  XNOR2_X1 Check1_CheckInst_3_U50 ( .A(Red_PermutationOutput[55]), .B(
        Red_SignaltoCheck[75]), .ZN(Check1_CheckInst_3_n47) );
  XNOR2_X1 Check1_CheckInst_3_U49 ( .A(Red_PermutationOutput[51]), .B(
        Red_SignaltoCheck[71]), .ZN(Check1_CheckInst_3_n48) );
  NOR2_X1 Check1_CheckInst_3_U48 ( .A1(Check1_CheckInst_3_n46), .A2(
        Check1_CheckInst_3_n45), .ZN(Check1_CheckInst_3_n58) );
  XOR2_X1 Check1_CheckInst_3_U47 ( .A(Red_PermutationOutput[63]), .B(
        Red_SignaltoCheck[67]), .Z(Check1_CheckInst_3_n45) );
  XOR2_X1 Check1_CheckInst_3_U46 ( .A(Red_Feedback[63]), .B(
        Red_SignaltoCheck[63]), .Z(Check1_CheckInst_3_n46) );
  NAND2_X1 Check1_CheckInst_3_U45 ( .A1(Check1_CheckInst_3_n44), .A2(
        Check1_CheckInst_3_n43), .ZN(Check1_CheckInst_3_n60) );
  NOR2_X1 Check1_CheckInst_3_U44 ( .A1(Check1_CheckInst_3_n42), .A2(
        Check1_CheckInst_3_n41), .ZN(Check1_CheckInst_3_n43) );
  NAND2_X1 Check1_CheckInst_3_U43 ( .A1(Check1_CheckInst_3_n40), .A2(
        Check1_CheckInst_3_n39), .ZN(Check1_CheckInst_3_n41) );
  NOR2_X1 Check1_CheckInst_3_U42 ( .A1(Check1_CheckInst_3_n38), .A2(
        Check1_CheckInst_3_n37), .ZN(Check1_CheckInst_3_n39) );
  XOR2_X1 Check1_CheckInst_3_U41 ( .A(Red_PermutationOutput[15]), .B(
        Red_SignaltoCheck[123]), .Z(Check1_CheckInst_3_n37) );
  XOR2_X1 Check1_CheckInst_3_U40 ( .A(Red_PermutationOutput[11]), .B(
        Red_SignaltoCheck[119]), .Z(Check1_CheckInst_3_n38) );
  NOR2_X1 Check1_CheckInst_3_U39 ( .A1(Check1_CheckInst_3_n36), .A2(
        Check1_CheckInst_3_n35), .ZN(Check1_CheckInst_3_n40) );
  XOR2_X1 Check1_CheckInst_3_U38 ( .A(Red_PermutationOutput[7]), .B(
        Red_SignaltoCheck[115]), .Z(Check1_CheckInst_3_n35) );
  XOR2_X1 Check1_CheckInst_3_U37 ( .A(Red_PermutationOutput[23]), .B(
        Red_SignaltoCheck[111]), .Z(Check1_CheckInst_3_n36) );
  NAND2_X1 Check1_CheckInst_3_U36 ( .A1(Check1_CheckInst_3_n34), .A2(
        Check1_CheckInst_3_n33), .ZN(Check1_CheckInst_3_n42) );
  XNOR2_X1 Check1_CheckInst_3_U35 ( .A(Red_PermutationOutput[27]), .B(
        Red_SignaltoCheck[107]), .ZN(Check1_CheckInst_3_n33) );
  XNOR2_X1 Check1_CheckInst_3_U34 ( .A(Red_PermutationOutput[31]), .B(
        Red_SignaltoCheck[103]), .ZN(Check1_CheckInst_3_n34) );
  NOR2_X1 Check1_CheckInst_3_U33 ( .A1(Check1_CheckInst_3_n32), .A2(
        Check1_CheckInst_3_n31), .ZN(Check1_CheckInst_3_n44) );
  XOR2_X1 Check1_CheckInst_3_U32 ( .A(Red_PermutationOutput[19]), .B(
        Red_SignaltoCheck[99]), .Z(Check1_CheckInst_3_n31) );
  XOR2_X1 Check1_CheckInst_3_U31 ( .A(Red_PermutationOutput[39]), .B(
        Red_SignaltoCheck[95]), .Z(Check1_CheckInst_3_n32) );
  NOR2_X1 Check1_CheckInst_3_U30 ( .A1(Check1_CheckInst_3_n30), .A2(
        Check1_CheckInst_3_n29), .ZN(Check1_CheckInst_3_n62) );
  NAND2_X1 Check1_CheckInst_3_U29 ( .A1(Check1_CheckInst_3_n28), .A2(
        Check1_CheckInst_3_n27), .ZN(Check1_CheckInst_3_n29) );
  NOR2_X1 Check1_CheckInst_3_U28 ( .A1(Check1_CheckInst_3_n26), .A2(
        Check1_CheckInst_3_n25), .ZN(Check1_CheckInst_3_n27) );
  NAND2_X1 Check1_CheckInst_3_U27 ( .A1(Check1_CheckInst_3_n24), .A2(
        Check1_CheckInst_3_n23), .ZN(Check1_CheckInst_3_n25) );
  XNOR2_X1 Check1_CheckInst_3_U26 ( .A(Red_Feedback[43]), .B(
        Red_SignaltoCheck[43]), .ZN(Check1_CheckInst_3_n23) );
  XNOR2_X1 Check1_CheckInst_3_U25 ( .A(Red_Feedback[39]), .B(
        Red_SignaltoCheck[39]), .ZN(Check1_CheckInst_3_n24) );
  NAND2_X1 Check1_CheckInst_3_U24 ( .A1(Check1_CheckInst_3_n22), .A2(
        Check1_CheckInst_3_n21), .ZN(Check1_CheckInst_3_n26) );
  XNOR2_X1 Check1_CheckInst_3_U23 ( .A(Red_Feedback[35]), .B(
        Red_SignaltoCheck[35]), .ZN(Check1_CheckInst_3_n21) );
  XNOR2_X1 Check1_CheckInst_3_U22 ( .A(Red_Feedback[31]), .B(
        Red_SignaltoCheck[31]), .ZN(Check1_CheckInst_3_n22) );
  NOR2_X1 Check1_CheckInst_3_U21 ( .A1(Check1_CheckInst_3_n20), .A2(
        Check1_CheckInst_3_n19), .ZN(Check1_CheckInst_3_n28) );
  XOR2_X1 Check1_CheckInst_3_U20 ( .A(Red_Feedback[59]), .B(
        Red_SignaltoCheck[59]), .Z(Check1_CheckInst_3_n19) );
  XOR2_X1 Check1_CheckInst_3_U19 ( .A(Red_Feedback[55]), .B(
        Red_SignaltoCheck[55]), .Z(Check1_CheckInst_3_n20) );
  NAND2_X1 Check1_CheckInst_3_U18 ( .A1(Check1_CheckInst_3_n18), .A2(
        Check1_CheckInst_3_n17), .ZN(Check1_CheckInst_3_n30) );
  XNOR2_X1 Check1_CheckInst_3_U17 ( .A(Red_Feedback[51]), .B(
        Red_SignaltoCheck[51]), .ZN(Check1_CheckInst_3_n17) );
  XNOR2_X1 Check1_CheckInst_3_U16 ( .A(Red_Feedback[47]), .B(
        Red_SignaltoCheck[47]), .ZN(Check1_CheckInst_3_n18) );
  NAND2_X1 Check1_CheckInst_3_U15 ( .A1(Check1_CheckInst_3_n16), .A2(
        Check1_CheckInst_3_n15), .ZN(Check1_CheckInst_3_n64) );
  NOR2_X1 Check1_CheckInst_3_U14 ( .A1(Check1_CheckInst_3_n14), .A2(
        Check1_CheckInst_3_n13), .ZN(Check1_CheckInst_3_n15) );
  NAND2_X1 Check1_CheckInst_3_U13 ( .A1(Check1_CheckInst_3_n12), .A2(
        Check1_CheckInst_3_n11), .ZN(Check1_CheckInst_3_n13) );
  NOR2_X1 Check1_CheckInst_3_U12 ( .A1(Check1_CheckInst_3_n10), .A2(
        Check1_CheckInst_3_n9), .ZN(Check1_CheckInst_3_n11) );
  XOR2_X1 Check1_CheckInst_3_U11 ( .A(Red_Feedback[11]), .B(
        Red_SignaltoCheck[11]), .Z(Check1_CheckInst_3_n9) );
  XOR2_X1 Check1_CheckInst_3_U10 ( .A(Red_PermutationOutput[3]), .B(
        Red_SignaltoCheck[127]), .Z(Check1_CheckInst_3_n10) );
  NOR2_X1 Check1_CheckInst_3_U9 ( .A1(Check1_CheckInst_3_n8), .A2(
        Check1_CheckInst_3_n7), .ZN(Check1_CheckInst_3_n12) );
  XOR2_X1 Check1_CheckInst_3_U8 ( .A(Red_SignaltoCheck[7]), .B(Red_Feedback[7]), .Z(Check1_CheckInst_3_n7) );
  XOR2_X1 Check1_CheckInst_3_U7 ( .A(Red_SignaltoCheck[3]), .B(Red_Feedback[3]), .Z(Check1_CheckInst_3_n8) );
  NAND2_X1 Check1_CheckInst_3_U6 ( .A1(Check1_CheckInst_3_n6), .A2(
        Check1_CheckInst_3_n5), .ZN(Check1_CheckInst_3_n14) );
  XNOR2_X1 Check1_CheckInst_3_U5 ( .A(Red_Feedback[27]), .B(
        Red_SignaltoCheck[27]), .ZN(Check1_CheckInst_3_n5) );
  XNOR2_X1 Check1_CheckInst_3_U4 ( .A(Red_Feedback[23]), .B(
        Red_SignaltoCheck[23]), .ZN(Check1_CheckInst_3_n6) );
  NOR2_X1 Check1_CheckInst_3_U3 ( .A1(Check1_CheckInst_3_n4), .A2(
        Check1_CheckInst_3_n3), .ZN(Check1_CheckInst_3_n16) );
  XOR2_X1 Check1_CheckInst_3_U2 ( .A(Red_Feedback[19]), .B(
        Red_SignaltoCheck[19]), .Z(Check1_CheckInst_3_n3) );
  XOR2_X1 Check1_CheckInst_3_U1 ( .A(Red_Feedback[15]), .B(
        Red_SignaltoCheck[15]), .Z(Check1_CheckInst_3_n4) );
endmodule

