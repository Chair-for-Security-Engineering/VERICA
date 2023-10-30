
module Cipher ( clk, rst, Input, Key, Output, ErrorFlag );
  input [63:0] Input;
  input [63:0] Key;
  output [63:0] Output;
  input clk;
  input rst;
  output ErrorFlag;
  wire   MCOutput_63_, MCOutput_62_, MCOutput_61_, MCOutput_60_, MCOutput_59_,
         MCOutput_58_, MCOutput_57_, MCOutput_56_, MCOutput_55_, MCOutput_54_,
         MCOutput_53_, MCOutput_52_, MCOutput_51_, MCOutput_50_, MCOutput_49_,
         MCOutput_48_, MCOutput_47_, MCOutput_46_, MCOutput_45_, MCOutput_44_,
         MCOutput_43_, MCOutput_42_, MCOutput_41_, MCOutput_40_, MCOutput_39_,
         MCOutput_38_, MCOutput_37_, MCOutput_36_, MCOutput_35_, MCOutput_34_,
         MCOutput_33_, MCOutput_32_, Error_0_, MCInst_XOR_r0_Inst_0_n5,
         MCInst_XOR_r0_Inst_1_n5, MCInst_XOR_r0_Inst_2_n5,
         MCInst_XOR_r0_Inst_3_n5, MCInst_XOR_r0_Inst_4_n5,
         MCInst_XOR_r0_Inst_5_n5, MCInst_XOR_r0_Inst_6_n5,
         MCInst_XOR_r0_Inst_7_n5, MCInst_XOR_r0_Inst_8_n5,
         MCInst_XOR_r0_Inst_9_n5, MCInst_XOR_r0_Inst_10_n5,
         MCInst_XOR_r0_Inst_11_n5, MCInst_XOR_r0_Inst_12_n5,
         MCInst_XOR_r0_Inst_13_n5, MCInst_XOR_r0_Inst_14_n5,
         MCInst_XOR_r0_Inst_15_n5, SubCellInst_LFInst_0_LFInst_0_n15,
         SubCellInst_LFInst_0_LFInst_0_n14, SubCellInst_LFInst_0_LFInst_0_n13,
         SubCellInst_LFInst_0_LFInst_0_n12, SubCellInst_LFInst_0_LFInst_0_n11,
         SubCellInst_LFInst_0_LFInst_1_n9, SubCellInst_LFInst_0_LFInst_1_n8,
         SubCellInst_LFInst_0_LFInst_1_n7, SubCellInst_LFInst_0_LFInst_2_n18,
         SubCellInst_LFInst_0_LFInst_2_n17, SubCellInst_LFInst_0_LFInst_2_n16,
         SubCellInst_LFInst_0_LFInst_2_n15, SubCellInst_LFInst_0_LFInst_2_n14,
         SubCellInst_LFInst_0_LFInst_3_n9, SubCellInst_LFInst_0_LFInst_3_n8,
         SubCellInst_LFInst_0_LFInst_3_n7, SubCellInst_LFInst_1_LFInst_0_n15,
         SubCellInst_LFInst_1_LFInst_0_n14, SubCellInst_LFInst_1_LFInst_0_n13,
         SubCellInst_LFInst_1_LFInst_0_n12, SubCellInst_LFInst_1_LFInst_0_n11,
         SubCellInst_LFInst_1_LFInst_1_n9, SubCellInst_LFInst_1_LFInst_1_n8,
         SubCellInst_LFInst_1_LFInst_1_n7, SubCellInst_LFInst_1_LFInst_2_n18,
         SubCellInst_LFInst_1_LFInst_2_n17, SubCellInst_LFInst_1_LFInst_2_n16,
         SubCellInst_LFInst_1_LFInst_2_n15, SubCellInst_LFInst_1_LFInst_2_n14,
         SubCellInst_LFInst_1_LFInst_3_n9, SubCellInst_LFInst_1_LFInst_3_n8,
         SubCellInst_LFInst_1_LFInst_3_n7, SubCellInst_LFInst_2_LFInst_0_n15,
         SubCellInst_LFInst_2_LFInst_0_n14, SubCellInst_LFInst_2_LFInst_0_n13,
         SubCellInst_LFInst_2_LFInst_0_n12, SubCellInst_LFInst_2_LFInst_0_n11,
         SubCellInst_LFInst_2_LFInst_1_n9, SubCellInst_LFInst_2_LFInst_1_n8,
         SubCellInst_LFInst_2_LFInst_1_n7, SubCellInst_LFInst_2_LFInst_2_n18,
         SubCellInst_LFInst_2_LFInst_2_n17, SubCellInst_LFInst_2_LFInst_2_n16,
         SubCellInst_LFInst_2_LFInst_2_n15, SubCellInst_LFInst_2_LFInst_2_n14,
         SubCellInst_LFInst_2_LFInst_3_n9, SubCellInst_LFInst_2_LFInst_3_n8,
         SubCellInst_LFInst_2_LFInst_3_n7, SubCellInst_LFInst_3_LFInst_0_n15,
         SubCellInst_LFInst_3_LFInst_0_n14, SubCellInst_LFInst_3_LFInst_0_n13,
         SubCellInst_LFInst_3_LFInst_0_n12, SubCellInst_LFInst_3_LFInst_0_n11,
         SubCellInst_LFInst_3_LFInst_1_n9, SubCellInst_LFInst_3_LFInst_1_n8,
         SubCellInst_LFInst_3_LFInst_1_n7, SubCellInst_LFInst_3_LFInst_2_n18,
         SubCellInst_LFInst_3_LFInst_2_n17, SubCellInst_LFInst_3_LFInst_2_n16,
         SubCellInst_LFInst_3_LFInst_2_n15, SubCellInst_LFInst_3_LFInst_2_n14,
         SubCellInst_LFInst_3_LFInst_3_n9, SubCellInst_LFInst_3_LFInst_3_n8,
         SubCellInst_LFInst_3_LFInst_3_n7, SubCellInst_LFInst_4_LFInst_0_n15,
         SubCellInst_LFInst_4_LFInst_0_n14, SubCellInst_LFInst_4_LFInst_0_n13,
         SubCellInst_LFInst_4_LFInst_0_n12, SubCellInst_LFInst_4_LFInst_0_n11,
         SubCellInst_LFInst_4_LFInst_1_n9, SubCellInst_LFInst_4_LFInst_1_n8,
         SubCellInst_LFInst_4_LFInst_1_n7, SubCellInst_LFInst_4_LFInst_2_n18,
         SubCellInst_LFInst_4_LFInst_2_n17, SubCellInst_LFInst_4_LFInst_2_n16,
         SubCellInst_LFInst_4_LFInst_2_n15, SubCellInst_LFInst_4_LFInst_2_n14,
         SubCellInst_LFInst_4_LFInst_3_n9, SubCellInst_LFInst_4_LFInst_3_n8,
         SubCellInst_LFInst_4_LFInst_3_n7, SubCellInst_LFInst_5_LFInst_0_n15,
         SubCellInst_LFInst_5_LFInst_0_n14, SubCellInst_LFInst_5_LFInst_0_n13,
         SubCellInst_LFInst_5_LFInst_0_n12, SubCellInst_LFInst_5_LFInst_0_n11,
         SubCellInst_LFInst_5_LFInst_1_n9, SubCellInst_LFInst_5_LFInst_1_n8,
         SubCellInst_LFInst_5_LFInst_1_n7, SubCellInst_LFInst_5_LFInst_2_n18,
         SubCellInst_LFInst_5_LFInst_2_n17, SubCellInst_LFInst_5_LFInst_2_n16,
         SubCellInst_LFInst_5_LFInst_2_n15, SubCellInst_LFInst_5_LFInst_2_n14,
         SubCellInst_LFInst_5_LFInst_3_n9, SubCellInst_LFInst_5_LFInst_3_n8,
         SubCellInst_LFInst_5_LFInst_3_n7, SubCellInst_LFInst_6_LFInst_0_n15,
         SubCellInst_LFInst_6_LFInst_0_n14, SubCellInst_LFInst_6_LFInst_0_n13,
         SubCellInst_LFInst_6_LFInst_0_n12, SubCellInst_LFInst_6_LFInst_0_n11,
         SubCellInst_LFInst_6_LFInst_1_n9, SubCellInst_LFInst_6_LFInst_1_n8,
         SubCellInst_LFInst_6_LFInst_1_n7, SubCellInst_LFInst_6_LFInst_2_n18,
         SubCellInst_LFInst_6_LFInst_2_n17, SubCellInst_LFInst_6_LFInst_2_n16,
         SubCellInst_LFInst_6_LFInst_2_n15, SubCellInst_LFInst_6_LFInst_2_n14,
         SubCellInst_LFInst_6_LFInst_3_n9, SubCellInst_LFInst_6_LFInst_3_n8,
         SubCellInst_LFInst_6_LFInst_3_n7, SubCellInst_LFInst_7_LFInst_0_n15,
         SubCellInst_LFInst_7_LFInst_0_n14, SubCellInst_LFInst_7_LFInst_0_n13,
         SubCellInst_LFInst_7_LFInst_0_n12, SubCellInst_LFInst_7_LFInst_0_n11,
         SubCellInst_LFInst_7_LFInst_1_n9, SubCellInst_LFInst_7_LFInst_1_n8,
         SubCellInst_LFInst_7_LFInst_1_n7, SubCellInst_LFInst_7_LFInst_2_n18,
         SubCellInst_LFInst_7_LFInst_2_n17, SubCellInst_LFInst_7_LFInst_2_n16,
         SubCellInst_LFInst_7_LFInst_2_n15, SubCellInst_LFInst_7_LFInst_2_n14,
         SubCellInst_LFInst_7_LFInst_3_n9, SubCellInst_LFInst_7_LFInst_3_n8,
         SubCellInst_LFInst_7_LFInst_3_n7, SubCellInst_LFInst_8_LFInst_0_n15,
         SubCellInst_LFInst_8_LFInst_0_n14, SubCellInst_LFInst_8_LFInst_0_n13,
         SubCellInst_LFInst_8_LFInst_0_n12, SubCellInst_LFInst_8_LFInst_0_n11,
         SubCellInst_LFInst_8_LFInst_1_n9, SubCellInst_LFInst_8_LFInst_1_n8,
         SubCellInst_LFInst_8_LFInst_1_n7, SubCellInst_LFInst_8_LFInst_2_n18,
         SubCellInst_LFInst_8_LFInst_2_n17, SubCellInst_LFInst_8_LFInst_2_n16,
         SubCellInst_LFInst_8_LFInst_2_n15, SubCellInst_LFInst_8_LFInst_2_n14,
         SubCellInst_LFInst_8_LFInst_3_n9, SubCellInst_LFInst_8_LFInst_3_n8,
         SubCellInst_LFInst_8_LFInst_3_n7, SubCellInst_LFInst_9_LFInst_0_n15,
         SubCellInst_LFInst_9_LFInst_0_n14, SubCellInst_LFInst_9_LFInst_0_n13,
         SubCellInst_LFInst_9_LFInst_0_n12, SubCellInst_LFInst_9_LFInst_0_n11,
         SubCellInst_LFInst_9_LFInst_1_n9, SubCellInst_LFInst_9_LFInst_1_n8,
         SubCellInst_LFInst_9_LFInst_1_n7, SubCellInst_LFInst_9_LFInst_2_n18,
         SubCellInst_LFInst_9_LFInst_2_n17, SubCellInst_LFInst_9_LFInst_2_n16,
         SubCellInst_LFInst_9_LFInst_2_n15, SubCellInst_LFInst_9_LFInst_2_n14,
         SubCellInst_LFInst_9_LFInst_3_n9, SubCellInst_LFInst_9_LFInst_3_n8,
         SubCellInst_LFInst_9_LFInst_3_n7, SubCellInst_LFInst_10_LFInst_0_n15,
         SubCellInst_LFInst_10_LFInst_0_n14,
         SubCellInst_LFInst_10_LFInst_0_n13,
         SubCellInst_LFInst_10_LFInst_0_n12,
         SubCellInst_LFInst_10_LFInst_0_n11, SubCellInst_LFInst_10_LFInst_1_n9,
         SubCellInst_LFInst_10_LFInst_1_n8, SubCellInst_LFInst_10_LFInst_1_n7,
         SubCellInst_LFInst_10_LFInst_2_n18,
         SubCellInst_LFInst_10_LFInst_2_n17,
         SubCellInst_LFInst_10_LFInst_2_n16,
         SubCellInst_LFInst_10_LFInst_2_n15,
         SubCellInst_LFInst_10_LFInst_2_n14, SubCellInst_LFInst_10_LFInst_3_n9,
         SubCellInst_LFInst_10_LFInst_3_n8, SubCellInst_LFInst_10_LFInst_3_n7,
         SubCellInst_LFInst_11_LFInst_0_n15,
         SubCellInst_LFInst_11_LFInst_0_n14,
         SubCellInst_LFInst_11_LFInst_0_n13,
         SubCellInst_LFInst_11_LFInst_0_n12,
         SubCellInst_LFInst_11_LFInst_0_n11, SubCellInst_LFInst_11_LFInst_1_n9,
         SubCellInst_LFInst_11_LFInst_1_n8, SubCellInst_LFInst_11_LFInst_1_n7,
         SubCellInst_LFInst_11_LFInst_2_n18,
         SubCellInst_LFInst_11_LFInst_2_n17,
         SubCellInst_LFInst_11_LFInst_2_n16,
         SubCellInst_LFInst_11_LFInst_2_n15,
         SubCellInst_LFInst_11_LFInst_2_n14, SubCellInst_LFInst_11_LFInst_3_n9,
         SubCellInst_LFInst_11_LFInst_3_n8, SubCellInst_LFInst_11_LFInst_3_n7,
         SubCellInst_LFInst_12_LFInst_0_n15,
         SubCellInst_LFInst_12_LFInst_0_n14,
         SubCellInst_LFInst_12_LFInst_0_n13,
         SubCellInst_LFInst_12_LFInst_0_n12,
         SubCellInst_LFInst_12_LFInst_0_n11, SubCellInst_LFInst_12_LFInst_1_n9,
         SubCellInst_LFInst_12_LFInst_1_n8, SubCellInst_LFInst_12_LFInst_1_n7,
         SubCellInst_LFInst_12_LFInst_2_n18,
         SubCellInst_LFInst_12_LFInst_2_n17,
         SubCellInst_LFInst_12_LFInst_2_n16,
         SubCellInst_LFInst_12_LFInst_2_n15,
         SubCellInst_LFInst_12_LFInst_2_n14, SubCellInst_LFInst_12_LFInst_3_n9,
         SubCellInst_LFInst_12_LFInst_3_n8, SubCellInst_LFInst_12_LFInst_3_n7,
         SubCellInst_LFInst_13_LFInst_0_n15,
         SubCellInst_LFInst_13_LFInst_0_n14,
         SubCellInst_LFInst_13_LFInst_0_n13,
         SubCellInst_LFInst_13_LFInst_0_n12,
         SubCellInst_LFInst_13_LFInst_0_n11, SubCellInst_LFInst_13_LFInst_1_n9,
         SubCellInst_LFInst_13_LFInst_1_n8, SubCellInst_LFInst_13_LFInst_1_n7,
         SubCellInst_LFInst_13_LFInst_2_n18,
         SubCellInst_LFInst_13_LFInst_2_n17,
         SubCellInst_LFInst_13_LFInst_2_n16,
         SubCellInst_LFInst_13_LFInst_2_n15,
         SubCellInst_LFInst_13_LFInst_2_n14, SubCellInst_LFInst_13_LFInst_3_n9,
         SubCellInst_LFInst_13_LFInst_3_n8, SubCellInst_LFInst_13_LFInst_3_n7,
         SubCellInst_LFInst_14_LFInst_0_n15,
         SubCellInst_LFInst_14_LFInst_0_n14,
         SubCellInst_LFInst_14_LFInst_0_n13,
         SubCellInst_LFInst_14_LFInst_0_n12,
         SubCellInst_LFInst_14_LFInst_0_n11, SubCellInst_LFInst_14_LFInst_1_n9,
         SubCellInst_LFInst_14_LFInst_1_n8, SubCellInst_LFInst_14_LFInst_1_n7,
         SubCellInst_LFInst_14_LFInst_2_n18,
         SubCellInst_LFInst_14_LFInst_2_n17,
         SubCellInst_LFInst_14_LFInst_2_n16,
         SubCellInst_LFInst_14_LFInst_2_n15,
         SubCellInst_LFInst_14_LFInst_2_n14, SubCellInst_LFInst_14_LFInst_3_n9,
         SubCellInst_LFInst_14_LFInst_3_n8, SubCellInst_LFInst_14_LFInst_3_n7,
         SubCellInst_LFInst_15_LFInst_0_n15,
         SubCellInst_LFInst_15_LFInst_0_n14,
         SubCellInst_LFInst_15_LFInst_0_n13,
         SubCellInst_LFInst_15_LFInst_0_n12,
         SubCellInst_LFInst_15_LFInst_0_n11, SubCellInst_LFInst_15_LFInst_1_n9,
         SubCellInst_LFInst_15_LFInst_1_n8, SubCellInst_LFInst_15_LFInst_1_n7,
         SubCellInst_LFInst_15_LFInst_2_n18,
         SubCellInst_LFInst_15_LFInst_2_n17,
         SubCellInst_LFInst_15_LFInst_2_n16,
         SubCellInst_LFInst_15_LFInst_2_n15,
         SubCellInst_LFInst_15_LFInst_2_n14, SubCellInst_LFInst_15_LFInst_3_n9,
         SubCellInst_LFInst_15_LFInst_3_n8, SubCellInst_LFInst_15_LFInst_3_n7,
         Red_PlaintextInst_LFInst_0_LFInst_0_n6,
         Red_PlaintextInst_LFInst_0_LFInst_0_n5,
         Red_PlaintextInst_LFInst_1_LFInst_0_n6,
         Red_PlaintextInst_LFInst_1_LFInst_0_n5,
         Red_PlaintextInst_LFInst_2_LFInst_0_n6,
         Red_PlaintextInst_LFInst_2_LFInst_0_n5,
         Red_PlaintextInst_LFInst_3_LFInst_0_n6,
         Red_PlaintextInst_LFInst_3_LFInst_0_n5,
         Red_PlaintextInst_LFInst_4_LFInst_0_n6,
         Red_PlaintextInst_LFInst_4_LFInst_0_n5,
         Red_PlaintextInst_LFInst_5_LFInst_0_n6,
         Red_PlaintextInst_LFInst_5_LFInst_0_n5,
         Red_PlaintextInst_LFInst_6_LFInst_0_n6,
         Red_PlaintextInst_LFInst_6_LFInst_0_n5,
         Red_PlaintextInst_LFInst_7_LFInst_0_n6,
         Red_PlaintextInst_LFInst_7_LFInst_0_n5,
         Red_PlaintextInst_LFInst_8_LFInst_0_n6,
         Red_PlaintextInst_LFInst_8_LFInst_0_n5,
         Red_PlaintextInst_LFInst_9_LFInst_0_n6,
         Red_PlaintextInst_LFInst_9_LFInst_0_n5,
         Red_PlaintextInst_LFInst_10_LFInst_0_n6,
         Red_PlaintextInst_LFInst_10_LFInst_0_n5,
         Red_PlaintextInst_LFInst_11_LFInst_0_n6,
         Red_PlaintextInst_LFInst_11_LFInst_0_n5,
         Red_PlaintextInst_LFInst_12_LFInst_0_n6,
         Red_PlaintextInst_LFInst_12_LFInst_0_n5,
         Red_PlaintextInst_LFInst_13_LFInst_0_n6,
         Red_PlaintextInst_LFInst_13_LFInst_0_n5,
         Red_PlaintextInst_LFInst_14_LFInst_0_n6,
         Red_PlaintextInst_LFInst_14_LFInst_0_n5,
         Red_PlaintextInst_LFInst_15_LFInst_0_n6,
         Red_PlaintextInst_LFInst_15_LFInst_0_n5, Red_MCInst_XOR_r0_Inst_0_n5,
         Red_MCInst_XOR_r0_Inst_1_n5, Red_MCInst_XOR_r0_Inst_2_n5,
         Red_MCInst_XOR_r0_Inst_3_n5, Red_SubCellInst_LFInst_0_LFInst_0_n22,
         Red_SubCellInst_LFInst_0_LFInst_0_n21,
         Red_SubCellInst_LFInst_0_LFInst_0_n20,
         Red_SubCellInst_LFInst_0_LFInst_0_n19,
         Red_SubCellInst_LFInst_0_LFInst_0_n18,
         Red_SubCellInst_LFInst_0_LFInst_0_n17,
         Red_SubCellInst_LFInst_0_LFInst_0_n16,
         Red_SubCellInst_LFInst_1_LFInst_0_n21,
         Red_SubCellInst_LFInst_1_LFInst_0_n20,
         Red_SubCellInst_LFInst_1_LFInst_0_n19,
         Red_SubCellInst_LFInst_1_LFInst_0_n18,
         Red_SubCellInst_LFInst_1_LFInst_0_n17,
         Red_SubCellInst_LFInst_1_LFInst_0_n16,
         Red_SubCellInst_LFInst_2_LFInst_0_n21,
         Red_SubCellInst_LFInst_2_LFInst_0_n20,
         Red_SubCellInst_LFInst_2_LFInst_0_n19,
         Red_SubCellInst_LFInst_2_LFInst_0_n18,
         Red_SubCellInst_LFInst_2_LFInst_0_n17,
         Red_SubCellInst_LFInst_2_LFInst_0_n16,
         Red_SubCellInst_LFInst_3_LFInst_0_n22,
         Red_SubCellInst_LFInst_3_LFInst_0_n21,
         Red_SubCellInst_LFInst_3_LFInst_0_n20,
         Red_SubCellInst_LFInst_3_LFInst_0_n19,
         Red_SubCellInst_LFInst_3_LFInst_0_n18,
         Red_SubCellInst_LFInst_3_LFInst_0_n17,
         Red_SubCellInst_LFInst_3_LFInst_0_n16,
         Red_SubCellInst_LFInst_3_LFInst_0_n15,
         Red_SubCellInst_LFInst_3_LFInst_0_n14,
         Red_SubCellInst_LFInst_4_LFInst_0_n22,
         Red_SubCellInst_LFInst_4_LFInst_0_n21,
         Red_SubCellInst_LFInst_4_LFInst_0_n20,
         Red_SubCellInst_LFInst_4_LFInst_0_n19,
         Red_SubCellInst_LFInst_4_LFInst_0_n18,
         Red_SubCellInst_LFInst_4_LFInst_0_n17,
         Red_SubCellInst_LFInst_4_LFInst_0_n16,
         Red_SubCellInst_LFInst_5_LFInst_0_n17,
         Red_SubCellInst_LFInst_5_LFInst_0_n16,
         Red_SubCellInst_LFInst_5_LFInst_0_n15,
         Red_SubCellInst_LFInst_5_LFInst_0_n14,
         Red_SubCellInst_LFInst_6_LFInst_0_n21,
         Red_SubCellInst_LFInst_6_LFInst_0_n20,
         Red_SubCellInst_LFInst_6_LFInst_0_n19,
         Red_SubCellInst_LFInst_6_LFInst_0_n18,
         Red_SubCellInst_LFInst_6_LFInst_0_n17,
         Red_SubCellInst_LFInst_6_LFInst_0_n16,
         Red_SubCellInst_LFInst_7_LFInst_0_n22,
         Red_SubCellInst_LFInst_7_LFInst_0_n21,
         Red_SubCellInst_LFInst_7_LFInst_0_n20,
         Red_SubCellInst_LFInst_7_LFInst_0_n19,
         Red_SubCellInst_LFInst_7_LFInst_0_n18,
         Red_SubCellInst_LFInst_7_LFInst_0_n17,
         Red_SubCellInst_LFInst_7_LFInst_0_n16,
         Red_SubCellInst_LFInst_7_LFInst_0_n15,
         Red_SubCellInst_LFInst_7_LFInst_0_n14,
         Red_SubCellInst_LFInst_8_LFInst_0_n21,
         Red_SubCellInst_LFInst_8_LFInst_0_n20,
         Red_SubCellInst_LFInst_8_LFInst_0_n19,
         Red_SubCellInst_LFInst_8_LFInst_0_n18,
         Red_SubCellInst_LFInst_8_LFInst_0_n17,
         Red_SubCellInst_LFInst_8_LFInst_0_n16,
         Red_SubCellInst_LFInst_9_LFInst_0_n22,
         Red_SubCellInst_LFInst_9_LFInst_0_n21,
         Red_SubCellInst_LFInst_9_LFInst_0_n20,
         Red_SubCellInst_LFInst_9_LFInst_0_n19,
         Red_SubCellInst_LFInst_9_LFInst_0_n18,
         Red_SubCellInst_LFInst_9_LFInst_0_n17,
         Red_SubCellInst_LFInst_9_LFInst_0_n16,
         Red_SubCellInst_LFInst_9_LFInst_0_n15,
         Red_SubCellInst_LFInst_9_LFInst_0_n14,
         Red_SubCellInst_LFInst_10_LFInst_0_n22,
         Red_SubCellInst_LFInst_10_LFInst_0_n21,
         Red_SubCellInst_LFInst_10_LFInst_0_n20,
         Red_SubCellInst_LFInst_10_LFInst_0_n19,
         Red_SubCellInst_LFInst_10_LFInst_0_n18,
         Red_SubCellInst_LFInst_10_LFInst_0_n17,
         Red_SubCellInst_LFInst_10_LFInst_0_n16,
         Red_SubCellInst_LFInst_10_LFInst_0_n15,
         Red_SubCellInst_LFInst_10_LFInst_0_n14,
         Red_SubCellInst_LFInst_11_LFInst_0_n17,
         Red_SubCellInst_LFInst_11_LFInst_0_n16,
         Red_SubCellInst_LFInst_11_LFInst_0_n15,
         Red_SubCellInst_LFInst_11_LFInst_0_n14,
         Red_SubCellInst_LFInst_12_LFInst_0_n22,
         Red_SubCellInst_LFInst_12_LFInst_0_n21,
         Red_SubCellInst_LFInst_12_LFInst_0_n20,
         Red_SubCellInst_LFInst_12_LFInst_0_n19,
         Red_SubCellInst_LFInst_12_LFInst_0_n18,
         Red_SubCellInst_LFInst_12_LFInst_0_n17,
         Red_SubCellInst_LFInst_12_LFInst_0_n16,
         Red_SubCellInst_LFInst_13_LFInst_0_n21,
         Red_SubCellInst_LFInst_13_LFInst_0_n20,
         Red_SubCellInst_LFInst_13_LFInst_0_n19,
         Red_SubCellInst_LFInst_13_LFInst_0_n18,
         Red_SubCellInst_LFInst_13_LFInst_0_n17,
         Red_SubCellInst_LFInst_13_LFInst_0_n16,
         Red_SubCellInst_LFInst_13_LFInst_0_n15,
         Red_SubCellInst_LFInst_13_LFInst_0_n14,
         Red_SubCellInst_LFInst_14_LFInst_0_n21,
         Red_SubCellInst_LFInst_14_LFInst_0_n20,
         Red_SubCellInst_LFInst_14_LFInst_0_n19,
         Red_SubCellInst_LFInst_14_LFInst_0_n18,
         Red_SubCellInst_LFInst_14_LFInst_0_n17,
         Red_SubCellInst_LFInst_14_LFInst_0_n16,
         Red_SubCellInst_LFInst_15_LFInst_0_n23,
         Red_SubCellInst_LFInst_15_LFInst_0_n22,
         Red_SubCellInst_LFInst_15_LFInst_0_n21,
         Red_SubCellInst_LFInst_15_LFInst_0_n20,
         Red_SubCellInst_LFInst_15_LFInst_0_n19,
         Red_SubCellInst_LFInst_15_LFInst_0_n18,
         Red_SubCellInst_LFInst_15_LFInst_0_n17,
         Red_SubCellInst_LFInst_15_LFInst_0_n16,
         Red_SubCellInst_LFInst_15_LFInst_0_n15,
         Red_SubCellInst_LFInst_15_LFInst_0_n14,
         Red_K0Inst_LFInst_0_LFInst_0_n6, Red_K0Inst_LFInst_0_LFInst_0_n5,
         Red_K0Inst_LFInst_1_LFInst_0_n6, Red_K0Inst_LFInst_1_LFInst_0_n5,
         Red_K0Inst_LFInst_2_LFInst_0_n6, Red_K0Inst_LFInst_2_LFInst_0_n5,
         Red_K0Inst_LFInst_3_LFInst_0_n6, Red_K0Inst_LFInst_3_LFInst_0_n5,
         Red_K0Inst_LFInst_4_LFInst_0_n6, Red_K0Inst_LFInst_4_LFInst_0_n5,
         Red_K0Inst_LFInst_5_LFInst_0_n6, Red_K0Inst_LFInst_5_LFInst_0_n5,
         Red_K0Inst_LFInst_6_LFInst_0_n6, Red_K0Inst_LFInst_6_LFInst_0_n5,
         Red_K0Inst_LFInst_7_LFInst_0_n6, Red_K0Inst_LFInst_7_LFInst_0_n5,
         Red_K0Inst_LFInst_8_LFInst_0_n6, Red_K0Inst_LFInst_8_LFInst_0_n5,
         Red_K0Inst_LFInst_9_LFInst_0_n6, Red_K0Inst_LFInst_9_LFInst_0_n5,
         Red_K0Inst_LFInst_10_LFInst_0_n6, Red_K0Inst_LFInst_10_LFInst_0_n5,
         Red_K0Inst_LFInst_11_LFInst_0_n6, Red_K0Inst_LFInst_11_LFInst_0_n5,
         Red_K0Inst_LFInst_12_LFInst_0_n6, Red_K0Inst_LFInst_12_LFInst_0_n5,
         Red_K0Inst_LFInst_13_LFInst_0_n6, Red_K0Inst_LFInst_13_LFInst_0_n5,
         Red_K0Inst_LFInst_14_LFInst_0_n6, Red_K0Inst_LFInst_14_LFInst_0_n5,
         Red_K0Inst_LFInst_15_LFInst_0_n6, Red_K0Inst_LFInst_15_LFInst_0_n5,
         Red_ToCheckInst_LFInst_0_LFInst_0_n6,
         Red_ToCheckInst_LFInst_0_LFInst_0_n5,
         Red_ToCheckInst_LFInst_1_LFInst_0_n6,
         Red_ToCheckInst_LFInst_1_LFInst_0_n5,
         Red_ToCheckInst_LFInst_2_LFInst_0_n6,
         Red_ToCheckInst_LFInst_2_LFInst_0_n5,
         Red_ToCheckInst_LFInst_3_LFInst_0_n6,
         Red_ToCheckInst_LFInst_3_LFInst_0_n5,
         Red_ToCheckInst_LFInst_4_LFInst_0_n6,
         Red_ToCheckInst_LFInst_4_LFInst_0_n5,
         Red_ToCheckInst_LFInst_5_LFInst_0_n6,
         Red_ToCheckInst_LFInst_5_LFInst_0_n5,
         Red_ToCheckInst_LFInst_6_LFInst_0_n6,
         Red_ToCheckInst_LFInst_6_LFInst_0_n5,
         Red_ToCheckInst_LFInst_7_LFInst_0_n6,
         Red_ToCheckInst_LFInst_7_LFInst_0_n5,
         Red_ToCheckInst_LFInst_8_LFInst_0_n6,
         Red_ToCheckInst_LFInst_8_LFInst_0_n5,
         Red_ToCheckInst_LFInst_9_LFInst_0_n6,
         Red_ToCheckInst_LFInst_9_LFInst_0_n5,
         Red_ToCheckInst_LFInst_10_LFInst_0_n6,
         Red_ToCheckInst_LFInst_10_LFInst_0_n5,
         Red_ToCheckInst_LFInst_11_LFInst_0_n6,
         Red_ToCheckInst_LFInst_11_LFInst_0_n5,
         Red_ToCheckInst_LFInst_12_LFInst_0_n6,
         Red_ToCheckInst_LFInst_12_LFInst_0_n5,
         Red_ToCheckInst_LFInst_13_LFInst_0_n6,
         Red_ToCheckInst_LFInst_13_LFInst_0_n5,
         Red_ToCheckInst_LFInst_14_LFInst_0_n6,
         Red_ToCheckInst_LFInst_14_LFInst_0_n5,
         Red_ToCheckInst_LFInst_15_LFInst_0_n6,
         Red_ToCheckInst_LFInst_15_LFInst_0_n5,
         Red_ToCheckInst_LFInst_16_LFInst_0_n6,
         Red_ToCheckInst_LFInst_16_LFInst_0_n5,
         Red_ToCheckInst_LFInst_17_LFInst_0_n6,
         Red_ToCheckInst_LFInst_17_LFInst_0_n5,
         Red_ToCheckInst_LFInst_18_LFInst_0_n6,
         Red_ToCheckInst_LFInst_18_LFInst_0_n5,
         Red_ToCheckInst_LFInst_19_LFInst_0_n6,
         Red_ToCheckInst_LFInst_19_LFInst_0_n5,
         Red_ToCheckInst_LFInst_20_LFInst_0_n6,
         Red_ToCheckInst_LFInst_20_LFInst_0_n5,
         Red_ToCheckInst_LFInst_21_LFInst_0_n6,
         Red_ToCheckInst_LFInst_21_LFInst_0_n5,
         Red_ToCheckInst_LFInst_22_LFInst_0_n6,
         Red_ToCheckInst_LFInst_22_LFInst_0_n5,
         Red_ToCheckInst_LFInst_23_LFInst_0_n6,
         Red_ToCheckInst_LFInst_23_LFInst_0_n5,
         Red_ToCheckInst_LFInst_24_LFInst_0_n6,
         Red_ToCheckInst_LFInst_24_LFInst_0_n5,
         Red_ToCheckInst_LFInst_25_LFInst_0_n6,
         Red_ToCheckInst_LFInst_25_LFInst_0_n5,
         Red_ToCheckInst_LFInst_26_LFInst_0_n6,
         Red_ToCheckInst_LFInst_26_LFInst_0_n5,
         Red_ToCheckInst_LFInst_27_LFInst_0_n6,
         Red_ToCheckInst_LFInst_27_LFInst_0_n5,
         Red_ToCheckInst_LFInst_28_LFInst_0_n6,
         Red_ToCheckInst_LFInst_28_LFInst_0_n5,
         Red_ToCheckInst_LFInst_29_LFInst_0_n6,
         Red_ToCheckInst_LFInst_29_LFInst_0_n5,
         Red_ToCheckInst_LFInst_30_LFInst_0_n6,
         Red_ToCheckInst_LFInst_30_LFInst_0_n5,
         Red_ToCheckInst_LFInst_31_LFInst_0_n6,
         Red_ToCheckInst_LFInst_31_LFInst_0_n5, Check1_CheckInst_0_n62,
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
         Check1_CheckInst_0_n2, Check1_CheckInst_0_n1;
  wire   [63:0] AddRoundKeyOutput;
  wire   [63:0] PermutationOutput;
  wire   [15:8] Red_Input;
  wire   [15:0] Red_MCOutput;
  wire   [15:0] Red_AddRoundKeyOutput;
  wire   [15:0] Red_RoundKey;
  wire   [15:0] Red_StateRegOutput;
  wire   [15:0] Red_Feedback;
  wire   [31:0] Red_SignaltoCheck;

  INV_X1 U4 ( .A(Error_0_), .ZN(ErrorFlag) );
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
  OR2_X1 SubCellInst_LFInst_0_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_0_LFInst_3_n9), .A2(
        SubCellInst_LFInst_0_LFInst_3_n8), .ZN(Output[3]) );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_3_U3 ( .A1(PermutationOutput[1]), .A2(
        PermutationOutput[2]), .ZN(SubCellInst_LFInst_0_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_0_LFInst_3_U2 ( .A1(PermutationOutput[3]), .A2(
        SubCellInst_LFInst_0_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_0_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_0_LFInst_3_U1 ( .A1(PermutationOutput[1]), .A2(
        PermutationOutput[0]), .ZN(SubCellInst_LFInst_0_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_1_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_1_LFInst_3_n9), .A2(
        SubCellInst_LFInst_1_LFInst_3_n8), .ZN(Output[7]) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_3_U3 ( .A1(PermutationOutput[5]), .A2(
        PermutationOutput[6]), .ZN(SubCellInst_LFInst_1_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_1_LFInst_3_U2 ( .A1(PermutationOutput[7]), .A2(
        SubCellInst_LFInst_1_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_1_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_1_LFInst_3_U1 ( .A1(PermutationOutput[5]), .A2(
        PermutationOutput[4]), .ZN(SubCellInst_LFInst_1_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_2_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_2_LFInst_3_n9), .A2(
        SubCellInst_LFInst_2_LFInst_3_n8), .ZN(Output[11]) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_3_U3 ( .A1(PermutationOutput[9]), .A2(
        PermutationOutput[10]), .ZN(SubCellInst_LFInst_2_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_2_LFInst_3_U2 ( .A1(PermutationOutput[11]), .A2(
        SubCellInst_LFInst_2_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_2_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_2_LFInst_3_U1 ( .A1(PermutationOutput[9]), .A2(
        PermutationOutput[8]), .ZN(SubCellInst_LFInst_2_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_3_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_3_LFInst_3_n9), .A2(
        SubCellInst_LFInst_3_LFInst_3_n8), .ZN(Output[15]) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_3_U3 ( .A1(PermutationOutput[13]), .A2(
        PermutationOutput[14]), .ZN(SubCellInst_LFInst_3_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_3_LFInst_3_U2 ( .A1(PermutationOutput[15]), .A2(
        SubCellInst_LFInst_3_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_3_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_3_LFInst_3_U1 ( .A1(PermutationOutput[13]), .A2(
        PermutationOutput[12]), .ZN(SubCellInst_LFInst_3_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_4_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_4_LFInst_3_n9), .A2(
        SubCellInst_LFInst_4_LFInst_3_n8), .ZN(Output[19]) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_3_U3 ( .A1(PermutationOutput[17]), .A2(
        PermutationOutput[18]), .ZN(SubCellInst_LFInst_4_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_4_LFInst_3_U2 ( .A1(PermutationOutput[19]), .A2(
        SubCellInst_LFInst_4_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_4_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_4_LFInst_3_U1 ( .A1(PermutationOutput[17]), .A2(
        PermutationOutput[16]), .ZN(SubCellInst_LFInst_4_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_5_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_5_LFInst_3_n9), .A2(
        SubCellInst_LFInst_5_LFInst_3_n8), .ZN(Output[23]) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_3_U3 ( .A1(PermutationOutput[21]), .A2(
        PermutationOutput[22]), .ZN(SubCellInst_LFInst_5_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_5_LFInst_3_U2 ( .A1(PermutationOutput[23]), .A2(
        SubCellInst_LFInst_5_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_5_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_5_LFInst_3_U1 ( .A1(PermutationOutput[21]), .A2(
        PermutationOutput[20]), .ZN(SubCellInst_LFInst_5_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_6_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_6_LFInst_3_n9), .A2(
        SubCellInst_LFInst_6_LFInst_3_n8), .ZN(Output[27]) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_3_U3 ( .A1(PermutationOutput[25]), .A2(
        PermutationOutput[26]), .ZN(SubCellInst_LFInst_6_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_6_LFInst_3_U2 ( .A1(PermutationOutput[27]), .A2(
        SubCellInst_LFInst_6_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_6_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_6_LFInst_3_U1 ( .A1(PermutationOutput[25]), .A2(
        PermutationOutput[24]), .ZN(SubCellInst_LFInst_6_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_7_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_7_LFInst_3_n9), .A2(
        SubCellInst_LFInst_7_LFInst_3_n8), .ZN(Output[31]) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_3_U3 ( .A1(PermutationOutput[29]), .A2(
        PermutationOutput[30]), .ZN(SubCellInst_LFInst_7_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_7_LFInst_3_U2 ( .A1(PermutationOutput[31]), .A2(
        SubCellInst_LFInst_7_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_7_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_7_LFInst_3_U1 ( .A1(PermutationOutput[29]), .A2(
        PermutationOutput[28]), .ZN(SubCellInst_LFInst_7_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_8_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_8_LFInst_3_n9), .A2(
        SubCellInst_LFInst_8_LFInst_3_n8), .ZN(Output[35]) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_3_U3 ( .A1(PermutationOutput[33]), .A2(
        PermutationOutput[34]), .ZN(SubCellInst_LFInst_8_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_8_LFInst_3_U2 ( .A1(PermutationOutput[35]), .A2(
        SubCellInst_LFInst_8_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_8_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_8_LFInst_3_U1 ( .A1(PermutationOutput[33]), .A2(
        PermutationOutput[32]), .ZN(SubCellInst_LFInst_8_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_9_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_9_LFInst_3_n9), .A2(
        SubCellInst_LFInst_9_LFInst_3_n8), .ZN(Output[39]) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_3_U3 ( .A1(PermutationOutput[37]), .A2(
        PermutationOutput[38]), .ZN(SubCellInst_LFInst_9_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_9_LFInst_3_U2 ( .A1(PermutationOutput[39]), .A2(
        SubCellInst_LFInst_9_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_9_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_9_LFInst_3_U1 ( .A1(PermutationOutput[37]), .A2(
        PermutationOutput[36]), .ZN(SubCellInst_LFInst_9_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_10_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_10_LFInst_3_n9), .A2(
        SubCellInst_LFInst_10_LFInst_3_n8), .ZN(Output[43]) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_3_U3 ( .A1(PermutationOutput[41]), .A2(
        PermutationOutput[42]), .ZN(SubCellInst_LFInst_10_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_10_LFInst_3_U2 ( .A1(PermutationOutput[43]), .A2(
        SubCellInst_LFInst_10_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_10_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_10_LFInst_3_U1 ( .A1(PermutationOutput[41]), .A2(
        PermutationOutput[40]), .ZN(SubCellInst_LFInst_10_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_11_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_11_LFInst_3_n9), .A2(
        SubCellInst_LFInst_11_LFInst_3_n8), .ZN(Output[47]) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_3_U3 ( .A1(PermutationOutput[45]), .A2(
        PermutationOutput[46]), .ZN(SubCellInst_LFInst_11_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_11_LFInst_3_U2 ( .A1(PermutationOutput[47]), .A2(
        SubCellInst_LFInst_11_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_11_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_11_LFInst_3_U1 ( .A1(PermutationOutput[45]), .A2(
        PermutationOutput[44]), .ZN(SubCellInst_LFInst_11_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_12_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_12_LFInst_3_n9), .A2(
        SubCellInst_LFInst_12_LFInst_3_n8), .ZN(Output[51]) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_3_U3 ( .A1(PermutationOutput[49]), .A2(
        PermutationOutput[50]), .ZN(SubCellInst_LFInst_12_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_12_LFInst_3_U2 ( .A1(PermutationOutput[51]), .A2(
        SubCellInst_LFInst_12_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_12_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_12_LFInst_3_U1 ( .A1(PermutationOutput[49]), .A2(
        PermutationOutput[48]), .ZN(SubCellInst_LFInst_12_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_13_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_13_LFInst_3_n9), .A2(
        SubCellInst_LFInst_13_LFInst_3_n8), .ZN(Output[55]) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_3_U3 ( .A1(PermutationOutput[53]), .A2(
        PermutationOutput[54]), .ZN(SubCellInst_LFInst_13_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_13_LFInst_3_U2 ( .A1(PermutationOutput[55]), .A2(
        SubCellInst_LFInst_13_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_13_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_13_LFInst_3_U1 ( .A1(PermutationOutput[53]), .A2(
        PermutationOutput[52]), .ZN(SubCellInst_LFInst_13_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_14_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_14_LFInst_3_n9), .A2(
        SubCellInst_LFInst_14_LFInst_3_n8), .ZN(Output[59]) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_3_U3 ( .A1(PermutationOutput[57]), .A2(
        PermutationOutput[58]), .ZN(SubCellInst_LFInst_14_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_14_LFInst_3_U2 ( .A1(PermutationOutput[59]), .A2(
        SubCellInst_LFInst_14_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_14_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_14_LFInst_3_U1 ( .A1(PermutationOutput[57]), .A2(
        PermutationOutput[56]), .ZN(SubCellInst_LFInst_14_LFInst_3_n7) );
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
  OR2_X1 SubCellInst_LFInst_15_LFInst_3_U4 ( .A1(
        SubCellInst_LFInst_15_LFInst_3_n9), .A2(
        SubCellInst_LFInst_15_LFInst_3_n8), .ZN(Output[63]) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_3_U3 ( .A1(PermutationOutput[61]), .A2(
        PermutationOutput[62]), .ZN(SubCellInst_LFInst_15_LFInst_3_n8) );
  NOR2_X1 SubCellInst_LFInst_15_LFInst_3_U2 ( .A1(PermutationOutput[63]), .A2(
        SubCellInst_LFInst_15_LFInst_3_n7), .ZN(
        SubCellInst_LFInst_15_LFInst_3_n9) );
  AND2_X1 SubCellInst_LFInst_15_LFInst_3_U1 ( .A1(PermutationOutput[61]), .A2(
        PermutationOutput[60]), .ZN(SubCellInst_LFInst_15_LFInst_3_n7) );
  XNOR2_X1 Red_PlaintextInst_LFInst_0_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_0_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_0_LFInst_0_n5), .ZN(Red_MCOutput[0]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_0_LFInst_0_U2 ( .A(Input[2]), .B(Input[3]), 
        .ZN(Red_PlaintextInst_LFInst_0_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_0_LFInst_0_U1 ( .A(Input[0]), .B(Input[1]), 
        .Z(Red_PlaintextInst_LFInst_0_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_1_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_1_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_1_LFInst_0_n5), .ZN(Red_MCOutput[1]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_1_LFInst_0_U2 ( .A(Input[6]), .B(Input[7]), 
        .ZN(Red_PlaintextInst_LFInst_1_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_1_LFInst_0_U1 ( .A(Input[4]), .B(Input[5]), 
        .Z(Red_PlaintextInst_LFInst_1_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_2_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_2_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_2_LFInst_0_n5), .ZN(Red_MCOutput[2]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_2_LFInst_0_U2 ( .A(Input[10]), .B(
        Input[11]), .ZN(Red_PlaintextInst_LFInst_2_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_2_LFInst_0_U1 ( .A(Input[8]), .B(Input[9]), 
        .Z(Red_PlaintextInst_LFInst_2_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_3_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_3_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_3_LFInst_0_n5), .ZN(Red_MCOutput[3]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_3_LFInst_0_U2 ( .A(Input[14]), .B(
        Input[15]), .ZN(Red_PlaintextInst_LFInst_3_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_3_LFInst_0_U1 ( .A(Input[12]), .B(Input[13]), .Z(Red_PlaintextInst_LFInst_3_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_4_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_4_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_4_LFInst_0_n5), .ZN(Red_MCOutput[4]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_4_LFInst_0_U2 ( .A(Input[18]), .B(
        Input[19]), .ZN(Red_PlaintextInst_LFInst_4_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_4_LFInst_0_U1 ( .A(Input[16]), .B(Input[17]), .Z(Red_PlaintextInst_LFInst_4_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_5_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_5_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_5_LFInst_0_n5), .ZN(Red_MCOutput[5]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_5_LFInst_0_U2 ( .A(Input[22]), .B(
        Input[23]), .ZN(Red_PlaintextInst_LFInst_5_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_5_LFInst_0_U1 ( .A(Input[20]), .B(Input[21]), .Z(Red_PlaintextInst_LFInst_5_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_6_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_6_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_6_LFInst_0_n5), .ZN(Red_MCOutput[6]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_6_LFInst_0_U2 ( .A(Input[26]), .B(
        Input[27]), .ZN(Red_PlaintextInst_LFInst_6_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_6_LFInst_0_U1 ( .A(Input[24]), .B(Input[25]), .Z(Red_PlaintextInst_LFInst_6_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_7_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_7_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_7_LFInst_0_n5), .ZN(Red_MCOutput[7]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_7_LFInst_0_U2 ( .A(Input[30]), .B(
        Input[31]), .ZN(Red_PlaintextInst_LFInst_7_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_7_LFInst_0_U1 ( .A(Input[28]), .B(Input[29]), .Z(Red_PlaintextInst_LFInst_7_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_8_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_8_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_8_LFInst_0_n5), .ZN(Red_Input[8]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_8_LFInst_0_U2 ( .A(Input[34]), .B(
        Input[35]), .ZN(Red_PlaintextInst_LFInst_8_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_8_LFInst_0_U1 ( .A(Input[32]), .B(Input[33]), .Z(Red_PlaintextInst_LFInst_8_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_9_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_9_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_9_LFInst_0_n5), .ZN(Red_Input[9]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_9_LFInst_0_U2 ( .A(Input[38]), .B(
        Input[39]), .ZN(Red_PlaintextInst_LFInst_9_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_9_LFInst_0_U1 ( .A(Input[36]), .B(Input[37]), .Z(Red_PlaintextInst_LFInst_9_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_10_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_10_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_10_LFInst_0_n5), .ZN(Red_Input[10]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_10_LFInst_0_U2 ( .A(Input[42]), .B(
        Input[43]), .ZN(Red_PlaintextInst_LFInst_10_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_10_LFInst_0_U1 ( .A(Input[40]), .B(
        Input[41]), .Z(Red_PlaintextInst_LFInst_10_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_11_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_11_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_11_LFInst_0_n5), .ZN(Red_Input[11]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_11_LFInst_0_U2 ( .A(Input[46]), .B(
        Input[47]), .ZN(Red_PlaintextInst_LFInst_11_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_11_LFInst_0_U1 ( .A(Input[44]), .B(
        Input[45]), .Z(Red_PlaintextInst_LFInst_11_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_12_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_12_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_12_LFInst_0_n5), .ZN(Red_Input[12]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_12_LFInst_0_U2 ( .A(Input[50]), .B(
        Input[51]), .ZN(Red_PlaintextInst_LFInst_12_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_12_LFInst_0_U1 ( .A(Input[48]), .B(
        Input[49]), .Z(Red_PlaintextInst_LFInst_12_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_13_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_13_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_13_LFInst_0_n5), .ZN(Red_Input[13]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_13_LFInst_0_U2 ( .A(Input[54]), .B(
        Input[55]), .ZN(Red_PlaintextInst_LFInst_13_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_13_LFInst_0_U1 ( .A(Input[52]), .B(
        Input[53]), .Z(Red_PlaintextInst_LFInst_13_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_14_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_14_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_14_LFInst_0_n5), .ZN(Red_Input[14]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_14_LFInst_0_U2 ( .A(Input[58]), .B(
        Input[59]), .ZN(Red_PlaintextInst_LFInst_14_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_14_LFInst_0_U1 ( .A(Input[56]), .B(
        Input[57]), .Z(Red_PlaintextInst_LFInst_14_LFInst_0_n6) );
  XNOR2_X1 Red_PlaintextInst_LFInst_15_LFInst_0_U3 ( .A(
        Red_PlaintextInst_LFInst_15_LFInst_0_n6), .B(
        Red_PlaintextInst_LFInst_15_LFInst_0_n5), .ZN(Red_Input[15]) );
  XNOR2_X1 Red_PlaintextInst_LFInst_15_LFInst_0_U2 ( .A(Input[62]), .B(
        Input[63]), .ZN(Red_PlaintextInst_LFInst_15_LFInst_0_n5) );
  XOR2_X1 Red_PlaintextInst_LFInst_15_LFInst_0_U1 ( .A(Input[60]), .B(
        Input[61]), .Z(Red_PlaintextInst_LFInst_15_LFInst_0_n6) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_0_U2 ( .A(Red_MCInst_XOR_r0_Inst_0_n5), .B(
        Red_MCOutput[4]), .ZN(Red_MCOutput[12]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_0_U1 ( .A(Red_MCOutput[0]), .B(Red_Input[12]), .ZN(Red_MCInst_XOR_r0_Inst_0_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_0_U1 ( .A(Red_Input[8]), .B(Red_MCOutput[0]), 
        .Z(Red_MCOutput[8]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_1_U2 ( .A(Red_MCInst_XOR_r0_Inst_1_n5), .B(
        Red_MCOutput[5]), .ZN(Red_MCOutput[13]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_1_U1 ( .A(Red_MCOutput[1]), .B(Red_Input[13]), .ZN(Red_MCInst_XOR_r0_Inst_1_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_1_U1 ( .A(Red_Input[9]), .B(Red_MCOutput[1]), 
        .Z(Red_MCOutput[9]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_2_U2 ( .A(Red_MCInst_XOR_r0_Inst_2_n5), .B(
        Red_MCOutput[6]), .ZN(Red_MCOutput[14]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_2_U1 ( .A(Red_MCOutput[2]), .B(Red_Input[14]), .ZN(Red_MCInst_XOR_r0_Inst_2_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_2_U1 ( .A(Red_Input[10]), .B(Red_MCOutput[2]), 
        .Z(Red_MCOutput[10]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_3_U2 ( .A(Red_MCInst_XOR_r0_Inst_3_n5), .B(
        Red_MCOutput[7]), .ZN(Red_MCOutput[15]) );
  XNOR2_X1 Red_MCInst_XOR_r0_Inst_3_U1 ( .A(Red_MCOutput[3]), .B(Red_Input[15]), .ZN(Red_MCInst_XOR_r0_Inst_3_n5) );
  XOR2_X1 Red_MCInst_XOR_r1_Inst_3_U1 ( .A(Red_Input[11]), .B(Red_MCOutput[3]), 
        .Z(Red_MCOutput[11]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_0_0_U1 ( .A(Red_MCOutput[12]), .B(
        Red_RoundKey[12]), .Z(Red_AddRoundKeyOutput[12]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_1_0_U1 ( .A(Red_MCOutput[13]), .B(
        Red_RoundKey[13]), .Z(Red_AddRoundKeyOutput[13]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_2_0_U1 ( .A(Red_MCOutput[14]), .B(
        Red_RoundKey[14]), .Z(Red_AddRoundKeyOutput[14]) );
  XOR2_X1 Red_AddKeyXOR1_XORInst_3_0_U1 ( .A(Red_MCOutput[15]), .B(
        Red_RoundKey[15]), .Z(Red_AddRoundKeyOutput[15]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_0_0_U1 ( .A(Red_MCOutput[10]), .B(
        Red_RoundKey[10]), .Z(Red_AddRoundKeyOutput[10]) );
  XOR2_X1 Red_AddKeyConstXOR_XORInst_1_0_U1 ( .A(Red_MCOutput[11]), .B(
        Red_RoundKey[11]), .Z(Red_AddRoundKeyOutput[11]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_0_0_U1 ( .A(Red_MCOutput[0]), .B(
        Red_RoundKey[0]), .Z(Red_AddRoundKeyOutput[0]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_1_0_U1 ( .A(Red_MCOutput[1]), .B(
        Red_RoundKey[1]), .Z(Red_AddRoundKeyOutput[1]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_2_0_U1 ( .A(Red_MCOutput[2]), .B(
        Red_RoundKey[2]), .Z(Red_AddRoundKeyOutput[2]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_3_0_U1 ( .A(Red_MCOutput[3]), .B(
        Red_RoundKey[3]), .Z(Red_AddRoundKeyOutput[3]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_4_0_U1 ( .A(Red_MCOutput[4]), .B(
        Red_RoundKey[4]), .Z(Red_AddRoundKeyOutput[4]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_5_0_U1 ( .A(Red_MCOutput[5]), .B(
        Red_RoundKey[5]), .Z(Red_AddRoundKeyOutput[5]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_6_0_U1 ( .A(Red_MCOutput[6]), .B(
        Red_RoundKey[6]), .Z(Red_AddRoundKeyOutput[6]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_7_0_U1 ( .A(Red_MCOutput[7]), .B(
        Red_RoundKey[7]), .Z(Red_AddRoundKeyOutput[7]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_8_0_U1 ( .A(Red_MCOutput[8]), .B(
        Red_RoundKey[8]), .Z(Red_AddRoundKeyOutput[8]) );
  XOR2_X1 Red_AddKeyXOR2_XORInst_9_0_U1 ( .A(Red_MCOutput[9]), .B(
        Red_RoundKey[9]), .Z(Red_AddRoundKeyOutput[9]) );
  DFF_X1 Red_StateReg_s_current_state_reg_0_ ( .D(Red_AddRoundKeyOutput[0]), 
        .CK(clk), .Q(Red_StateRegOutput[0]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_1_ ( .D(Red_AddRoundKeyOutput[1]), 
        .CK(clk), .Q(Red_StateRegOutput[1]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_2_ ( .D(Red_AddRoundKeyOutput[2]), 
        .CK(clk), .Q(Red_StateRegOutput[2]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_3_ ( .D(Red_AddRoundKeyOutput[3]), 
        .CK(clk), .Q(Red_StateRegOutput[3]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_4_ ( .D(Red_AddRoundKeyOutput[4]), 
        .CK(clk), .Q(Red_StateRegOutput[4]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_5_ ( .D(Red_AddRoundKeyOutput[5]), 
        .CK(clk), .Q(Red_StateRegOutput[5]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_6_ ( .D(Red_AddRoundKeyOutput[6]), 
        .CK(clk), .Q(Red_StateRegOutput[6]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_7_ ( .D(Red_AddRoundKeyOutput[7]), 
        .CK(clk), .Q(Red_StateRegOutput[7]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_8_ ( .D(Red_AddRoundKeyOutput[8]), 
        .CK(clk), .Q(Red_StateRegOutput[8]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_9_ ( .D(Red_AddRoundKeyOutput[9]), 
        .CK(clk), .Q(Red_StateRegOutput[9]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_10_ ( .D(Red_AddRoundKeyOutput[10]), 
        .CK(clk), .Q(Red_StateRegOutput[10]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_11_ ( .D(Red_AddRoundKeyOutput[11]), 
        .CK(clk), .Q(Red_StateRegOutput[11]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_12_ ( .D(Red_AddRoundKeyOutput[12]), 
        .CK(clk), .Q(Red_StateRegOutput[12]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_13_ ( .D(Red_AddRoundKeyOutput[13]), 
        .CK(clk), .Q(Red_StateRegOutput[13]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_14_ ( .D(Red_AddRoundKeyOutput[14]), 
        .CK(clk), .Q(Red_StateRegOutput[14]), .QN() );
  DFF_X1 Red_StateReg_s_current_state_reg_15_ ( .D(Red_AddRoundKeyOutput[15]), 
        .CK(clk), .Q(Red_StateRegOutput[15]), .QN() );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U8 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_0_n22), .A2(
        Red_SubCellInst_LFInst_0_LFInst_0_n21), .ZN(Red_Feedback[0]) );
  OR2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U7 ( .A1(PermutationOutput[0]), 
        .A2(Red_SubCellInst_LFInst_0_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n21) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_0_n19), .A2(
        Red_SubCellInst_LFInst_0_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U5 ( .A1(PermutationOutput[1]), 
        .A2(PermutationOutput[3]), .ZN(Red_SubCellInst_LFInst_0_LFInst_0_n20)
         );
  XNOR2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U4 ( .A(
        Red_SubCellInst_LFInst_0_LFInst_0_n18), .B(PermutationOutput[2]), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U3 ( .A1(
        Red_SubCellInst_LFInst_0_LFInst_0_n17), .A2(
        Red_SubCellInst_LFInst_0_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n18) );
  OR2_X1 Red_SubCellInst_LFInst_0_LFInst_0_U2 ( .A1(PermutationOutput[1]), 
        .A2(PermutationOutput[3]), .ZN(Red_SubCellInst_LFInst_0_LFInst_0_n16)
         );
  INV_X1 Red_SubCellInst_LFInst_0_LFInst_0_U1 ( .A(PermutationOutput[0]), .ZN(
        Red_SubCellInst_LFInst_0_LFInst_0_n17) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_0_n21), .A2(
        Red_SubCellInst_LFInst_1_LFInst_0_n20), .ZN(Red_Feedback[1]) );
  OR2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U6 ( .A1(PermutationOutput[4]), 
        .A2(Red_SubCellInst_LFInst_1_LFInst_0_n19), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_0_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U5 ( .A1(
        Red_SubCellInst_LFInst_1_LFInst_0_n18), .A2(
        Red_SubCellInst_LFInst_1_LFInst_0_n19), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_0_n21) );
  NAND2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U4 ( .A1(PermutationOutput[5]), 
        .A2(PermutationOutput[7]), .ZN(Red_SubCellInst_LFInst_1_LFInst_0_n19)
         );
  XNOR2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U3 ( .A(
        Red_SubCellInst_LFInst_1_LFInst_0_n17), .B(PermutationOutput[6]), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_0_n18) );
  OR2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U2 ( .A1(PermutationOutput[4]), 
        .A2(Red_SubCellInst_LFInst_1_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_1_LFInst_0_n17) );
  NOR2_X1 Red_SubCellInst_LFInst_1_LFInst_0_U1 ( .A1(PermutationOutput[7]), 
        .A2(PermutationOutput[5]), .ZN(Red_SubCellInst_LFInst_1_LFInst_0_n16)
         );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_0_n17), .A2(
        Red_SubCellInst_LFInst_2_LFInst_0_n21), .ZN(Red_Feedback[2]) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_2_LFInst_0_n20), .A2(
        Red_SubCellInst_LFInst_2_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_0_n21) );
  XOR2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U5 ( .A(PermutationOutput[10]), 
        .B(Red_SubCellInst_LFInst_2_LFInst_0_n19), .Z(
        Red_SubCellInst_LFInst_2_LFInst_0_n20) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U4 ( .A1(PermutationOutput[8]), 
        .A2(Red_SubCellInst_LFInst_2_LFInst_0_n18), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_0_n19) );
  NOR2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U3 ( .A1(PermutationOutput[11]), 
        .A2(PermutationOutput[9]), .ZN(Red_SubCellInst_LFInst_2_LFInst_0_n18)
         );
  OR2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U2 ( .A1(PermutationOutput[8]), 
        .A2(Red_SubCellInst_LFInst_2_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_2_LFInst_0_n17) );
  NAND2_X1 Red_SubCellInst_LFInst_2_LFInst_0_U1 ( .A1(PermutationOutput[11]), 
        .A2(PermutationOutput[9]), .ZN(Red_SubCellInst_LFInst_2_LFInst_0_n16)
         );
  AND2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U10 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_0_n22), .A2(
        Red_SubCellInst_LFInst_3_LFInst_0_n21), .ZN(Red_Feedback[3]) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U9 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_0_n20), .A2(
        Red_SubCellInst_LFInst_3_LFInst_0_n19), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_0_n21) );
  INV_X1 Red_SubCellInst_LFInst_3_LFInst_0_U8 ( .A(PermutationOutput[14]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_0_n18), .A2(PermutationOutput[14]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_0_n22) );
  XNOR2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U6 ( .A(
        Red_SubCellInst_LFInst_3_LFInst_0_n17), .B(
        Red_SubCellInst_LFInst_3_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_0_n18) );
  NOR2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U5 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_0_n16), .A2(
        Red_SubCellInst_LFInst_3_LFInst_0_n15), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_0_n17) );
  INV_X1 Red_SubCellInst_LFInst_3_LFInst_0_U4 ( .A(PermutationOutput[13]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_0_n15) );
  INV_X1 Red_SubCellInst_LFInst_3_LFInst_0_U3 ( .A(PermutationOutput[15]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_0_n16) );
  OR2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U2 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_0_n14), .A2(PermutationOutput[12]), 
        .ZN(Red_SubCellInst_LFInst_3_LFInst_0_n20) );
  AND2_X1 Red_SubCellInst_LFInst_3_LFInst_0_U1 ( .A1(
        Red_SubCellInst_LFInst_3_LFInst_0_n15), .A2(
        Red_SubCellInst_LFInst_3_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_3_LFInst_0_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U8 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_0_n22), .A2(
        Red_SubCellInst_LFInst_4_LFInst_0_n21), .ZN(Red_Feedback[4]) );
  OR2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U7 ( .A1(PermutationOutput[16]), 
        .A2(Red_SubCellInst_LFInst_4_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_0_n21) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_0_n19), .A2(
        Red_SubCellInst_LFInst_4_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_0_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U5 ( .A1(PermutationOutput[17]), 
        .A2(PermutationOutput[19]), .ZN(Red_SubCellInst_LFInst_4_LFInst_0_n20)
         );
  XNOR2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U4 ( .A(
        Red_SubCellInst_LFInst_4_LFInst_0_n18), .B(PermutationOutput[18]), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U3 ( .A1(
        Red_SubCellInst_LFInst_4_LFInst_0_n17), .A2(
        Red_SubCellInst_LFInst_4_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_4_LFInst_0_n18) );
  OR2_X1 Red_SubCellInst_LFInst_4_LFInst_0_U2 ( .A1(PermutationOutput[17]), 
        .A2(PermutationOutput[19]), .ZN(Red_SubCellInst_LFInst_4_LFInst_0_n16)
         );
  INV_X1 Red_SubCellInst_LFInst_4_LFInst_0_U1 ( .A(PermutationOutput[16]), 
        .ZN(Red_SubCellInst_LFInst_4_LFInst_0_n17) );
  XNOR2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U5 ( .A(
        Red_SubCellInst_LFInst_5_LFInst_0_n17), .B(
        Red_SubCellInst_LFInst_5_LFInst_0_n15), .ZN(Red_Feedback[5]) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U4 ( .A1(
        Red_SubCellInst_LFInst_5_LFInst_0_n16), .A2(PermutationOutput[22]), 
        .ZN(Red_SubCellInst_LFInst_5_LFInst_0_n17) );
  NAND2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U3 ( .A1(PermutationOutput[21]), 
        .A2(PermutationOutput[23]), .ZN(Red_SubCellInst_LFInst_5_LFInst_0_n16)
         );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U2 ( .A1(PermutationOutput[20]), 
        .A2(Red_SubCellInst_LFInst_5_LFInst_0_n14), .ZN(
        Red_SubCellInst_LFInst_5_LFInst_0_n15) );
  NOR2_X1 Red_SubCellInst_LFInst_5_LFInst_0_U1 ( .A1(PermutationOutput[23]), 
        .A2(PermutationOutput[21]), .ZN(Red_SubCellInst_LFInst_5_LFInst_0_n14)
         );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_0_n17), .A2(
        Red_SubCellInst_LFInst_6_LFInst_0_n21), .ZN(Red_Feedback[6]) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_6_LFInst_0_n20), .A2(
        Red_SubCellInst_LFInst_6_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_0_n21) );
  XOR2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U5 ( .A(PermutationOutput[26]), 
        .B(Red_SubCellInst_LFInst_6_LFInst_0_n19), .Z(
        Red_SubCellInst_LFInst_6_LFInst_0_n20) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U4 ( .A1(PermutationOutput[24]), 
        .A2(Red_SubCellInst_LFInst_6_LFInst_0_n18), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_0_n19) );
  NOR2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U3 ( .A1(PermutationOutput[27]), 
        .A2(PermutationOutput[25]), .ZN(Red_SubCellInst_LFInst_6_LFInst_0_n18)
         );
  OR2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U2 ( .A1(PermutationOutput[24]), 
        .A2(Red_SubCellInst_LFInst_6_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_6_LFInst_0_n17) );
  NAND2_X1 Red_SubCellInst_LFInst_6_LFInst_0_U1 ( .A1(PermutationOutput[27]), 
        .A2(PermutationOutput[25]), .ZN(Red_SubCellInst_LFInst_6_LFInst_0_n16)
         );
  AND2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U10 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_0_n22), .A2(
        Red_SubCellInst_LFInst_7_LFInst_0_n21), .ZN(Red_Feedback[7]) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U9 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_0_n20), .A2(
        Red_SubCellInst_LFInst_7_LFInst_0_n19), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_0_n21) );
  INV_X1 Red_SubCellInst_LFInst_7_LFInst_0_U8 ( .A(PermutationOutput[30]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_0_n18), .A2(PermutationOutput[30]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_0_n22) );
  XNOR2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U6 ( .A(
        Red_SubCellInst_LFInst_7_LFInst_0_n17), .B(
        Red_SubCellInst_LFInst_7_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_0_n18) );
  NOR2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U5 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_0_n16), .A2(
        Red_SubCellInst_LFInst_7_LFInst_0_n15), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_0_n17) );
  INV_X1 Red_SubCellInst_LFInst_7_LFInst_0_U4 ( .A(PermutationOutput[29]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_0_n15) );
  INV_X1 Red_SubCellInst_LFInst_7_LFInst_0_U3 ( .A(PermutationOutput[31]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_0_n16) );
  OR2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U2 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_0_n14), .A2(PermutationOutput[28]), 
        .ZN(Red_SubCellInst_LFInst_7_LFInst_0_n20) );
  AND2_X1 Red_SubCellInst_LFInst_7_LFInst_0_U1 ( .A1(
        Red_SubCellInst_LFInst_7_LFInst_0_n15), .A2(
        Red_SubCellInst_LFInst_7_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_7_LFInst_0_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_0_n21), .A2(
        Red_SubCellInst_LFInst_8_LFInst_0_n20), .ZN(Red_Feedback[8]) );
  OR2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U6 ( .A1(PermutationOutput[32]), 
        .A2(Red_SubCellInst_LFInst_8_LFInst_0_n19), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_0_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U5 ( .A1(PermutationOutput[33]), 
        .A2(PermutationOutput[35]), .ZN(Red_SubCellInst_LFInst_8_LFInst_0_n19)
         );
  NAND2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U4 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_0_n19), .A2(
        Red_SubCellInst_LFInst_8_LFInst_0_n18), .ZN(
        Red_SubCellInst_LFInst_8_LFInst_0_n21) );
  XOR2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U3 ( .A(PermutationOutput[34]), 
        .B(Red_SubCellInst_LFInst_8_LFInst_0_n17), .Z(
        Red_SubCellInst_LFInst_8_LFInst_0_n18) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U2 ( .A1(
        Red_SubCellInst_LFInst_8_LFInst_0_n16), .A2(PermutationOutput[32]), 
        .ZN(Red_SubCellInst_LFInst_8_LFInst_0_n17) );
  NOR2_X1 Red_SubCellInst_LFInst_8_LFInst_0_U1 ( .A1(PermutationOutput[33]), 
        .A2(PermutationOutput[35]), .ZN(Red_SubCellInst_LFInst_8_LFInst_0_n16)
         );
  AND2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U10 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_0_n22), .A2(
        Red_SubCellInst_LFInst_9_LFInst_0_n21), .ZN(Red_Feedback[9]) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U9 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_0_n20), .A2(
        Red_SubCellInst_LFInst_9_LFInst_0_n19), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_0_n21) );
  INV_X1 Red_SubCellInst_LFInst_9_LFInst_0_U8 ( .A(PermutationOutput[38]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_0_n18), .A2(PermutationOutput[38]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_0_n22) );
  XNOR2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U6 ( .A(
        Red_SubCellInst_LFInst_9_LFInst_0_n17), .B(
        Red_SubCellInst_LFInst_9_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_0_n18) );
  NOR2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U5 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_0_n16), .A2(
        Red_SubCellInst_LFInst_9_LFInst_0_n15), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_0_n17) );
  INV_X1 Red_SubCellInst_LFInst_9_LFInst_0_U4 ( .A(PermutationOutput[37]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_0_n15) );
  INV_X1 Red_SubCellInst_LFInst_9_LFInst_0_U3 ( .A(PermutationOutput[39]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_0_n16) );
  OR2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U2 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_0_n14), .A2(PermutationOutput[36]), 
        .ZN(Red_SubCellInst_LFInst_9_LFInst_0_n20) );
  AND2_X1 Red_SubCellInst_LFInst_9_LFInst_0_U1 ( .A1(
        Red_SubCellInst_LFInst_9_LFInst_0_n15), .A2(
        Red_SubCellInst_LFInst_9_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_9_LFInst_0_n14) );
  AND2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U10 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_0_n22), .A2(
        Red_SubCellInst_LFInst_10_LFInst_0_n21), .ZN(Red_Feedback[10]) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U9 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_0_n20), .A2(
        Red_SubCellInst_LFInst_10_LFInst_0_n19), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_0_n21) );
  INV_X1 Red_SubCellInst_LFInst_10_LFInst_0_U8 ( .A(PermutationOutput[42]), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_0_n18), .A2(PermutationOutput[42]), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n22) );
  XNOR2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U6 ( .A(
        Red_SubCellInst_LFInst_10_LFInst_0_n17), .B(
        Red_SubCellInst_LFInst_10_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_0_n18) );
  NOR2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U5 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_0_n16), .A2(
        Red_SubCellInst_LFInst_10_LFInst_0_n15), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_0_n17) );
  INV_X1 Red_SubCellInst_LFInst_10_LFInst_0_U4 ( .A(PermutationOutput[41]), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n15) );
  INV_X1 Red_SubCellInst_LFInst_10_LFInst_0_U3 ( .A(PermutationOutput[43]), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n16) );
  OR2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U2 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_0_n14), .A2(PermutationOutput[40]), 
        .ZN(Red_SubCellInst_LFInst_10_LFInst_0_n20) );
  AND2_X1 Red_SubCellInst_LFInst_10_LFInst_0_U1 ( .A1(
        Red_SubCellInst_LFInst_10_LFInst_0_n15), .A2(
        Red_SubCellInst_LFInst_10_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_10_LFInst_0_n14) );
  XNOR2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U5 ( .A(
        Red_SubCellInst_LFInst_11_LFInst_0_n17), .B(
        Red_SubCellInst_LFInst_11_LFInst_0_n15), .ZN(Red_Feedback[11]) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U4 ( .A1(
        Red_SubCellInst_LFInst_11_LFInst_0_n16), .A2(PermutationOutput[46]), 
        .ZN(Red_SubCellInst_LFInst_11_LFInst_0_n17) );
  NAND2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U3 ( .A1(PermutationOutput[45]), 
        .A2(PermutationOutput[47]), .ZN(Red_SubCellInst_LFInst_11_LFInst_0_n16) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U2 ( .A1(PermutationOutput[44]), 
        .A2(Red_SubCellInst_LFInst_11_LFInst_0_n14), .ZN(
        Red_SubCellInst_LFInst_11_LFInst_0_n15) );
  NOR2_X1 Red_SubCellInst_LFInst_11_LFInst_0_U1 ( .A1(PermutationOutput[47]), 
        .A2(PermutationOutput[45]), .ZN(Red_SubCellInst_LFInst_11_LFInst_0_n14) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U8 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_0_n22), .A2(
        Red_SubCellInst_LFInst_12_LFInst_0_n21), .ZN(Red_Feedback[12]) );
  OR2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U7 ( .A1(PermutationOutput[48]), 
        .A2(Red_SubCellInst_LFInst_12_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_0_n21) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_0_n19), .A2(
        Red_SubCellInst_LFInst_12_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_0_n22) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U5 ( .A1(PermutationOutput[49]), 
        .A2(PermutationOutput[51]), .ZN(Red_SubCellInst_LFInst_12_LFInst_0_n20) );
  XNOR2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U4 ( .A(
        Red_SubCellInst_LFInst_12_LFInst_0_n18), .B(PermutationOutput[50]), 
        .ZN(Red_SubCellInst_LFInst_12_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U3 ( .A1(
        Red_SubCellInst_LFInst_12_LFInst_0_n17), .A2(
        Red_SubCellInst_LFInst_12_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_12_LFInst_0_n18) );
  OR2_X1 Red_SubCellInst_LFInst_12_LFInst_0_U2 ( .A1(PermutationOutput[49]), 
        .A2(PermutationOutput[51]), .ZN(Red_SubCellInst_LFInst_12_LFInst_0_n16) );
  INV_X1 Red_SubCellInst_LFInst_12_LFInst_0_U1 ( .A(PermutationOutput[48]), 
        .ZN(Red_SubCellInst_LFInst_12_LFInst_0_n17) );
  INV_X1 Red_SubCellInst_LFInst_13_LFInst_0_U9 ( .A(PermutationOutput[52]), 
        .ZN(Red_SubCellInst_LFInst_13_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U8 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_0_n18), .A2(
        Red_SubCellInst_LFInst_13_LFInst_0_n17), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_0_n20) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U7 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_0_n18), .A2(
        Red_SubCellInst_LFInst_13_LFInst_0_n17), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_0_n21) );
  INV_X1 Red_SubCellInst_LFInst_13_LFInst_0_U6 ( .A(PermutationOutput[53]), 
        .ZN(Red_SubCellInst_LFInst_13_LFInst_0_n17) );
  INV_X1 Red_SubCellInst_LFInst_13_LFInst_0_U5 ( .A(PermutationOutput[55]), 
        .ZN(Red_SubCellInst_LFInst_13_LFInst_0_n18) );
  XNOR2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U4 ( .A(
        Red_SubCellInst_LFInst_13_LFInst_0_n16), .B(
        Red_SubCellInst_LFInst_13_LFInst_0_n14), .ZN(Red_Feedback[13]) );
  NOR2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U3 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_0_n15), .A2(
        Red_SubCellInst_LFInst_13_LFInst_0_n21), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_0_n16) );
  INV_X1 Red_SubCellInst_LFInst_13_LFInst_0_U2 ( .A(PermutationOutput[54]), 
        .ZN(Red_SubCellInst_LFInst_13_LFInst_0_n15) );
  NAND2_X1 Red_SubCellInst_LFInst_13_LFInst_0_U1 ( .A1(
        Red_SubCellInst_LFInst_13_LFInst_0_n19), .A2(
        Red_SubCellInst_LFInst_13_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_13_LFInst_0_n14) );
  OR2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U7 ( .A1(PermutationOutput[56]), 
        .A2(Red_SubCellInst_LFInst_14_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_0_n21) );
  NOR2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U6 ( .A1(PermutationOutput[59]), 
        .A2(PermutationOutput[57]), .ZN(Red_SubCellInst_LFInst_14_LFInst_0_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U5 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_0_n19), .A2(
        Red_SubCellInst_LFInst_14_LFInst_0_n17), .ZN(Red_Feedback[14]) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U4 ( .A1(
        Red_SubCellInst_LFInst_14_LFInst_0_n18), .A2(
        Red_SubCellInst_LFInst_14_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_0_n19) );
  XNOR2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U3 ( .A(PermutationOutput[58]), 
        .B(Red_SubCellInst_LFInst_14_LFInst_0_n21), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_0_n18) );
  OR2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U2 ( .A1(PermutationOutput[56]), 
        .A2(Red_SubCellInst_LFInst_14_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_14_LFInst_0_n17) );
  NAND2_X1 Red_SubCellInst_LFInst_14_LFInst_0_U1 ( .A1(PermutationOutput[57]), 
        .A2(PermutationOutput[59]), .ZN(Red_SubCellInst_LFInst_14_LFInst_0_n16) );
  AND2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U11 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_0_n23), .A2(
        Red_SubCellInst_LFInst_15_LFInst_0_n22), .ZN(Red_Feedback[15]) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U10 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_0_n21), .A2(
        Red_SubCellInst_LFInst_15_LFInst_0_n20), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_0_n22) );
  INV_X1 Red_SubCellInst_LFInst_15_LFInst_0_U9 ( .A(PermutationOutput[62]), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n20) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U8 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_0_n19), .A2(PermutationOutput[62]), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n23) );
  XNOR2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U7 ( .A(
        Red_SubCellInst_LFInst_15_LFInst_0_n18), .B(
        Red_SubCellInst_LFInst_15_LFInst_0_n21), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_0_n19) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U6 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_0_n17), .A2(
        Red_SubCellInst_LFInst_15_LFInst_0_n16), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_0_n21) );
  INV_X1 Red_SubCellInst_LFInst_15_LFInst_0_U5 ( .A(PermutationOutput[60]), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n16) );
  NAND2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U4 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_0_n15), .A2(
        Red_SubCellInst_LFInst_15_LFInst_0_n14), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_0_n17) );
  NOR2_X1 Red_SubCellInst_LFInst_15_LFInst_0_U3 ( .A1(
        Red_SubCellInst_LFInst_15_LFInst_0_n15), .A2(
        Red_SubCellInst_LFInst_15_LFInst_0_n14), .ZN(
        Red_SubCellInst_LFInst_15_LFInst_0_n18) );
  INV_X1 Red_SubCellInst_LFInst_15_LFInst_0_U2 ( .A(PermutationOutput[61]), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n14) );
  INV_X1 Red_SubCellInst_LFInst_15_LFInst_0_U1 ( .A(PermutationOutput[63]), 
        .ZN(Red_SubCellInst_LFInst_15_LFInst_0_n15) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_0_LFInst_0_n6), .B(Red_K0Inst_LFInst_0_LFInst_0_n5), 
        .ZN(Red_RoundKey[0]) );
  XNOR2_X1 Red_K0Inst_LFInst_0_LFInst_0_U2 ( .A(Key[2]), .B(Key[3]), .ZN(
        Red_K0Inst_LFInst_0_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_0_LFInst_0_U1 ( .A(Key[0]), .B(Key[1]), .Z(
        Red_K0Inst_LFInst_0_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_1_LFInst_0_n6), .B(Red_K0Inst_LFInst_1_LFInst_0_n5), 
        .ZN(Red_RoundKey[1]) );
  XNOR2_X1 Red_K0Inst_LFInst_1_LFInst_0_U2 ( .A(Key[6]), .B(Key[7]), .ZN(
        Red_K0Inst_LFInst_1_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_1_LFInst_0_U1 ( .A(Key[4]), .B(Key[5]), .Z(
        Red_K0Inst_LFInst_1_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_2_LFInst_0_n6), .B(Red_K0Inst_LFInst_2_LFInst_0_n5), 
        .ZN(Red_RoundKey[2]) );
  XNOR2_X1 Red_K0Inst_LFInst_2_LFInst_0_U2 ( .A(Key[10]), .B(Key[11]), .ZN(
        Red_K0Inst_LFInst_2_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_2_LFInst_0_U1 ( .A(Key[8]), .B(Key[9]), .Z(
        Red_K0Inst_LFInst_2_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_3_LFInst_0_n6), .B(Red_K0Inst_LFInst_3_LFInst_0_n5), 
        .ZN(Red_RoundKey[3]) );
  XNOR2_X1 Red_K0Inst_LFInst_3_LFInst_0_U2 ( .A(Key[14]), .B(Key[15]), .ZN(
        Red_K0Inst_LFInst_3_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_3_LFInst_0_U1 ( .A(Key[12]), .B(Key[13]), .Z(
        Red_K0Inst_LFInst_3_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_4_LFInst_0_n6), .B(Red_K0Inst_LFInst_4_LFInst_0_n5), 
        .ZN(Red_RoundKey[4]) );
  XNOR2_X1 Red_K0Inst_LFInst_4_LFInst_0_U2 ( .A(Key[18]), .B(Key[19]), .ZN(
        Red_K0Inst_LFInst_4_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_4_LFInst_0_U1 ( .A(Key[16]), .B(Key[17]), .Z(
        Red_K0Inst_LFInst_4_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_5_LFInst_0_n6), .B(Red_K0Inst_LFInst_5_LFInst_0_n5), 
        .ZN(Red_RoundKey[5]) );
  XNOR2_X1 Red_K0Inst_LFInst_5_LFInst_0_U2 ( .A(Key[22]), .B(Key[23]), .ZN(
        Red_K0Inst_LFInst_5_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_5_LFInst_0_U1 ( .A(Key[20]), .B(Key[21]), .Z(
        Red_K0Inst_LFInst_5_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_6_LFInst_0_n6), .B(Red_K0Inst_LFInst_6_LFInst_0_n5), 
        .ZN(Red_RoundKey[6]) );
  XNOR2_X1 Red_K0Inst_LFInst_6_LFInst_0_U2 ( .A(Key[26]), .B(Key[27]), .ZN(
        Red_K0Inst_LFInst_6_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_6_LFInst_0_U1 ( .A(Key[24]), .B(Key[25]), .Z(
        Red_K0Inst_LFInst_6_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_7_LFInst_0_n6), .B(Red_K0Inst_LFInst_7_LFInst_0_n5), 
        .ZN(Red_RoundKey[7]) );
  XNOR2_X1 Red_K0Inst_LFInst_7_LFInst_0_U2 ( .A(Key[30]), .B(Key[31]), .ZN(
        Red_K0Inst_LFInst_7_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_7_LFInst_0_U1 ( .A(Key[28]), .B(Key[29]), .Z(
        Red_K0Inst_LFInst_7_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_8_LFInst_0_n6), .B(Red_K0Inst_LFInst_8_LFInst_0_n5), 
        .ZN(Red_RoundKey[8]) );
  XNOR2_X1 Red_K0Inst_LFInst_8_LFInst_0_U2 ( .A(Key[34]), .B(Key[35]), .ZN(
        Red_K0Inst_LFInst_8_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_8_LFInst_0_U1 ( .A(Key[32]), .B(Key[33]), .Z(
        Red_K0Inst_LFInst_8_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_9_LFInst_0_n6), .B(Red_K0Inst_LFInst_9_LFInst_0_n5), 
        .ZN(Red_RoundKey[9]) );
  XNOR2_X1 Red_K0Inst_LFInst_9_LFInst_0_U2 ( .A(Key[38]), .B(Key[39]), .ZN(
        Red_K0Inst_LFInst_9_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_9_LFInst_0_U1 ( .A(Key[36]), .B(Key[37]), .Z(
        Red_K0Inst_LFInst_9_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_10_LFInst_0_n6), .B(Red_K0Inst_LFInst_10_LFInst_0_n5), .ZN(Red_RoundKey[10]) );
  XNOR2_X1 Red_K0Inst_LFInst_10_LFInst_0_U2 ( .A(Key[42]), .B(Key[43]), .ZN(
        Red_K0Inst_LFInst_10_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_10_LFInst_0_U1 ( .A(Key[40]), .B(Key[41]), .Z(
        Red_K0Inst_LFInst_10_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_11_LFInst_0_n6), .B(Red_K0Inst_LFInst_11_LFInst_0_n5), .ZN(Red_RoundKey[11]) );
  XNOR2_X1 Red_K0Inst_LFInst_11_LFInst_0_U2 ( .A(Key[46]), .B(Key[47]), .ZN(
        Red_K0Inst_LFInst_11_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_11_LFInst_0_U1 ( .A(Key[44]), .B(Key[45]), .Z(
        Red_K0Inst_LFInst_11_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_12_LFInst_0_n6), .B(Red_K0Inst_LFInst_12_LFInst_0_n5), .ZN(Red_RoundKey[12]) );
  XNOR2_X1 Red_K0Inst_LFInst_12_LFInst_0_U2 ( .A(Key[50]), .B(Key[51]), .ZN(
        Red_K0Inst_LFInst_12_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_12_LFInst_0_U1 ( .A(Key[48]), .B(Key[49]), .Z(
        Red_K0Inst_LFInst_12_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_13_LFInst_0_n6), .B(Red_K0Inst_LFInst_13_LFInst_0_n5), .ZN(Red_RoundKey[13]) );
  XNOR2_X1 Red_K0Inst_LFInst_13_LFInst_0_U2 ( .A(Key[54]), .B(Key[55]), .ZN(
        Red_K0Inst_LFInst_13_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_13_LFInst_0_U1 ( .A(Key[52]), .B(Key[53]), .Z(
        Red_K0Inst_LFInst_13_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_14_LFInst_0_n6), .B(Red_K0Inst_LFInst_14_LFInst_0_n5), .ZN(Red_RoundKey[14]) );
  XNOR2_X1 Red_K0Inst_LFInst_14_LFInst_0_U2 ( .A(Key[58]), .B(Key[59]), .ZN(
        Red_K0Inst_LFInst_14_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_14_LFInst_0_U1 ( .A(Key[56]), .B(Key[57]), .Z(
        Red_K0Inst_LFInst_14_LFInst_0_n6) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_0_U3 ( .A(
        Red_K0Inst_LFInst_15_LFInst_0_n6), .B(Red_K0Inst_LFInst_15_LFInst_0_n5), .ZN(Red_RoundKey[15]) );
  XNOR2_X1 Red_K0Inst_LFInst_15_LFInst_0_U2 ( .A(Key[62]), .B(Key[63]), .ZN(
        Red_K0Inst_LFInst_15_LFInst_0_n5) );
  XOR2_X1 Red_K0Inst_LFInst_15_LFInst_0_U1 ( .A(Key[60]), .B(Key[61]), .Z(
        Red_K0Inst_LFInst_15_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_0_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_0_LFInst_0_n5), .ZN(Red_SignaltoCheck[0]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_0_U2 ( .A(Output[2]), .B(Output[3]), 
        .ZN(Red_ToCheckInst_LFInst_0_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_0_LFInst_0_U1 ( .A(Output[0]), .B(Output[1]), 
        .Z(Red_ToCheckInst_LFInst_0_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_1_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_1_LFInst_0_n5), .ZN(Red_SignaltoCheck[1]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_0_U2 ( .A(Output[6]), .B(Output[7]), 
        .ZN(Red_ToCheckInst_LFInst_1_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_1_LFInst_0_U1 ( .A(Output[4]), .B(Output[5]), 
        .Z(Red_ToCheckInst_LFInst_1_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_2_LFInst_0_n5), .B(
        Red_ToCheckInst_LFInst_2_LFInst_0_n6), .ZN(Red_SignaltoCheck[2]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_0_U2 ( .A(Output[8]), .B(Output[9]), 
        .ZN(Red_ToCheckInst_LFInst_2_LFInst_0_n6) );
  XOR2_X1 Red_ToCheckInst_LFInst_2_LFInst_0_U1 ( .A(Output[11]), .B(Output[10]), .Z(Red_ToCheckInst_LFInst_2_LFInst_0_n5) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_3_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_3_LFInst_0_n5), .ZN(Red_SignaltoCheck[3]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_0_U2 ( .A(Output[14]), .B(
        Output[15]), .ZN(Red_ToCheckInst_LFInst_3_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_3_LFInst_0_U1 ( .A(Output[12]), .B(Output[13]), .Z(Red_ToCheckInst_LFInst_3_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_4_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_4_LFInst_0_n5), .ZN(Red_SignaltoCheck[4]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_0_U2 ( .A(Output[18]), .B(
        Output[19]), .ZN(Red_ToCheckInst_LFInst_4_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_4_LFInst_0_U1 ( .A(Output[16]), .B(Output[17]), .Z(Red_ToCheckInst_LFInst_4_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_5_LFInst_0_n5), .B(
        Red_ToCheckInst_LFInst_5_LFInst_0_n6), .ZN(Red_SignaltoCheck[5]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_0_U2 ( .A(Output[20]), .B(
        Output[21]), .ZN(Red_ToCheckInst_LFInst_5_LFInst_0_n6) );
  XOR2_X1 Red_ToCheckInst_LFInst_5_LFInst_0_U1 ( .A(Output[23]), .B(Output[22]), .Z(Red_ToCheckInst_LFInst_5_LFInst_0_n5) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_6_LFInst_0_n5), .B(
        Red_ToCheckInst_LFInst_6_LFInst_0_n6), .ZN(Red_SignaltoCheck[6]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_0_U2 ( .A(Output[24]), .B(
        Output[25]), .ZN(Red_ToCheckInst_LFInst_6_LFInst_0_n6) );
  XOR2_X1 Red_ToCheckInst_LFInst_6_LFInst_0_U1 ( .A(Output[27]), .B(Output[26]), .Z(Red_ToCheckInst_LFInst_6_LFInst_0_n5) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_7_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_7_LFInst_0_n5), .ZN(Red_SignaltoCheck[7]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_0_U2 ( .A(Output[30]), .B(
        Output[31]), .ZN(Red_ToCheckInst_LFInst_7_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_7_LFInst_0_U1 ( .A(Output[28]), .B(Output[29]), .Z(Red_ToCheckInst_LFInst_7_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_8_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_8_LFInst_0_n5), .ZN(Red_SignaltoCheck[8]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_0_U2 ( .A(Output[34]), .B(
        Output[35]), .ZN(Red_ToCheckInst_LFInst_8_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_8_LFInst_0_U1 ( .A(Output[32]), .B(Output[33]), .Z(Red_ToCheckInst_LFInst_8_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_9_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_9_LFInst_0_n5), .ZN(Red_SignaltoCheck[9]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_0_U2 ( .A(Output[38]), .B(
        Output[39]), .ZN(Red_ToCheckInst_LFInst_9_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_9_LFInst_0_U1 ( .A(Output[36]), .B(Output[37]), .Z(Red_ToCheckInst_LFInst_9_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_10_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_10_LFInst_0_n5), .ZN(Red_SignaltoCheck[10]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_0_U2 ( .A(Output[42]), .B(
        Output[43]), .ZN(Red_ToCheckInst_LFInst_10_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_10_LFInst_0_U1 ( .A(Output[40]), .B(
        Output[41]), .Z(Red_ToCheckInst_LFInst_10_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_11_LFInst_0_n5), .B(
        Red_ToCheckInst_LFInst_11_LFInst_0_n6), .ZN(Red_SignaltoCheck[11]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_0_U2 ( .A(Output[44]), .B(
        Output[45]), .ZN(Red_ToCheckInst_LFInst_11_LFInst_0_n6) );
  XOR2_X1 Red_ToCheckInst_LFInst_11_LFInst_0_U1 ( .A(Output[47]), .B(
        Output[46]), .Z(Red_ToCheckInst_LFInst_11_LFInst_0_n5) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_12_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_12_LFInst_0_n5), .ZN(Red_SignaltoCheck[12]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_0_U2 ( .A(Output[50]), .B(
        Output[51]), .ZN(Red_ToCheckInst_LFInst_12_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_12_LFInst_0_U1 ( .A(Output[48]), .B(
        Output[49]), .Z(Red_ToCheckInst_LFInst_12_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_13_LFInst_0_n5), .B(
        Red_ToCheckInst_LFInst_13_LFInst_0_n6), .ZN(Red_SignaltoCheck[13]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_0_U2 ( .A(Output[52]), .B(
        Output[53]), .ZN(Red_ToCheckInst_LFInst_13_LFInst_0_n6) );
  XOR2_X1 Red_ToCheckInst_LFInst_13_LFInst_0_U1 ( .A(Output[55]), .B(
        Output[54]), .Z(Red_ToCheckInst_LFInst_13_LFInst_0_n5) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_14_LFInst_0_n5), .B(
        Red_ToCheckInst_LFInst_14_LFInst_0_n6), .ZN(Red_SignaltoCheck[14]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_0_U2 ( .A(Output[56]), .B(
        Output[57]), .ZN(Red_ToCheckInst_LFInst_14_LFInst_0_n6) );
  XOR2_X1 Red_ToCheckInst_LFInst_14_LFInst_0_U1 ( .A(Output[59]), .B(
        Output[58]), .Z(Red_ToCheckInst_LFInst_14_LFInst_0_n5) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_15_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_15_LFInst_0_n5), .ZN(Red_SignaltoCheck[15]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_0_U2 ( .A(Output[62]), .B(
        Output[63]), .ZN(Red_ToCheckInst_LFInst_15_LFInst_0_n5) );
  XOR2_X1 Red_ToCheckInst_LFInst_15_LFInst_0_U1 ( .A(Output[60]), .B(
        Output[61]), .Z(Red_ToCheckInst_LFInst_15_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_16_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_16_LFInst_0_n5), .ZN(Red_SignaltoCheck[16]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_0_U2 ( .A(PermutationOutput[62]), 
        .B(PermutationOutput[63]), .ZN(Red_ToCheckInst_LFInst_16_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_16_LFInst_0_U1 ( .A(PermutationOutput[60]), 
        .B(PermutationOutput[61]), .Z(Red_ToCheckInst_LFInst_16_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_17_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_17_LFInst_0_n5), .ZN(Red_SignaltoCheck[17]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_0_U2 ( .A(PermutationOutput[50]), 
        .B(PermutationOutput[51]), .ZN(Red_ToCheckInst_LFInst_17_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_17_LFInst_0_U1 ( .A(PermutationOutput[48]), 
        .B(PermutationOutput[49]), .Z(Red_ToCheckInst_LFInst_17_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_18_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_18_LFInst_0_n5), .ZN(Red_SignaltoCheck[18]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_0_U2 ( .A(PermutationOutput[54]), 
        .B(PermutationOutput[55]), .ZN(Red_ToCheckInst_LFInst_18_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_18_LFInst_0_U1 ( .A(PermutationOutput[52]), 
        .B(PermutationOutput[53]), .Z(Red_ToCheckInst_LFInst_18_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_19_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_19_LFInst_0_n5), .ZN(Red_SignaltoCheck[19]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_0_U2 ( .A(PermutationOutput[58]), 
        .B(PermutationOutput[59]), .ZN(Red_ToCheckInst_LFInst_19_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_19_LFInst_0_U1 ( .A(PermutationOutput[56]), 
        .B(PermutationOutput[57]), .Z(Red_ToCheckInst_LFInst_19_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_20_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_20_LFInst_0_n5), .ZN(Red_SignaltoCheck[20]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_0_U2 ( .A(PermutationOutput[34]), 
        .B(PermutationOutput[35]), .ZN(Red_ToCheckInst_LFInst_20_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_20_LFInst_0_U1 ( .A(PermutationOutput[32]), 
        .B(PermutationOutput[33]), .Z(Red_ToCheckInst_LFInst_20_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_21_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_21_LFInst_0_n5), .ZN(Red_SignaltoCheck[21]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_0_U2 ( .A(PermutationOutput[46]), 
        .B(PermutationOutput[47]), .ZN(Red_ToCheckInst_LFInst_21_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_21_LFInst_0_U1 ( .A(PermutationOutput[44]), 
        .B(PermutationOutput[45]), .Z(Red_ToCheckInst_LFInst_21_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_22_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_22_LFInst_0_n5), .ZN(Red_SignaltoCheck[22]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_0_U2 ( .A(PermutationOutput[42]), 
        .B(PermutationOutput[43]), .ZN(Red_ToCheckInst_LFInst_22_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_22_LFInst_0_U1 ( .A(PermutationOutput[40]), 
        .B(PermutationOutput[41]), .Z(Red_ToCheckInst_LFInst_22_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_23_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_23_LFInst_0_n5), .ZN(Red_SignaltoCheck[23]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_0_U2 ( .A(PermutationOutput[38]), 
        .B(PermutationOutput[39]), .ZN(Red_ToCheckInst_LFInst_23_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_23_LFInst_0_U1 ( .A(PermutationOutput[36]), 
        .B(PermutationOutput[37]), .Z(Red_ToCheckInst_LFInst_23_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_24_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_24_LFInst_0_n5), .ZN(Red_SignaltoCheck[24]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_0_U2 ( .A(PermutationOutput[18]), 
        .B(PermutationOutput[19]), .ZN(Red_ToCheckInst_LFInst_24_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_24_LFInst_0_U1 ( .A(PermutationOutput[16]), 
        .B(PermutationOutput[17]), .Z(Red_ToCheckInst_LFInst_24_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_25_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_25_LFInst_0_n5), .ZN(Red_SignaltoCheck[25]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_0_U2 ( .A(PermutationOutput[30]), 
        .B(PermutationOutput[31]), .ZN(Red_ToCheckInst_LFInst_25_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_25_LFInst_0_U1 ( .A(PermutationOutput[28]), 
        .B(PermutationOutput[29]), .Z(Red_ToCheckInst_LFInst_25_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_26_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_26_LFInst_0_n5), .ZN(Red_SignaltoCheck[26]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_0_U2 ( .A(PermutationOutput[26]), 
        .B(PermutationOutput[27]), .ZN(Red_ToCheckInst_LFInst_26_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_26_LFInst_0_U1 ( .A(PermutationOutput[24]), 
        .B(PermutationOutput[25]), .Z(Red_ToCheckInst_LFInst_26_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_27_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_27_LFInst_0_n5), .ZN(Red_SignaltoCheck[27]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_0_U2 ( .A(PermutationOutput[22]), 
        .B(PermutationOutput[23]), .ZN(Red_ToCheckInst_LFInst_27_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_27_LFInst_0_U1 ( .A(PermutationOutput[20]), 
        .B(PermutationOutput[21]), .Z(Red_ToCheckInst_LFInst_27_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_28_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_28_LFInst_0_n5), .ZN(Red_SignaltoCheck[28]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_0_U2 ( .A(PermutationOutput[6]), 
        .B(PermutationOutput[7]), .ZN(Red_ToCheckInst_LFInst_28_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_28_LFInst_0_U1 ( .A(PermutationOutput[4]), 
        .B(PermutationOutput[5]), .Z(Red_ToCheckInst_LFInst_28_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_29_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_29_LFInst_0_n5), .ZN(Red_SignaltoCheck[29]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_0_U2 ( .A(PermutationOutput[10]), 
        .B(PermutationOutput[11]), .ZN(Red_ToCheckInst_LFInst_29_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_29_LFInst_0_U1 ( .A(PermutationOutput[8]), 
        .B(PermutationOutput[9]), .Z(Red_ToCheckInst_LFInst_29_LFInst_0_n6) );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_30_LFInst_0_n6), .B(
        Red_ToCheckInst_LFInst_30_LFInst_0_n5), .ZN(Red_SignaltoCheck[30]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_0_U2 ( .A(PermutationOutput[14]), 
        .B(PermutationOutput[15]), .ZN(Red_ToCheckInst_LFInst_30_LFInst_0_n5)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_30_LFInst_0_U1 ( .A(PermutationOutput[12]), 
        .B(PermutationOutput[13]), .Z(Red_ToCheckInst_LFInst_30_LFInst_0_n6)
         );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_0_U3 ( .A(
        Red_ToCheckInst_LFInst_31_LFInst_0_n5), .B(
        Red_ToCheckInst_LFInst_31_LFInst_0_n6), .ZN(Red_SignaltoCheck[31]) );
  XNOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_0_U2 ( .A(PermutationOutput[0]), 
        .B(PermutationOutput[1]), .ZN(Red_ToCheckInst_LFInst_31_LFInst_0_n6)
         );
  XOR2_X1 Red_ToCheckInst_LFInst_31_LFInst_0_U1 ( .A(PermutationOutput[3]), 
        .B(PermutationOutput[2]), .Z(Red_ToCheckInst_LFInst_31_LFInst_0_n5) );
  NOR2_X1 Check1_CheckInst_0_U63 ( .A1(Check1_CheckInst_0_n62), .A2(
        Check1_CheckInst_0_n61), .ZN(Error_0_) );
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
  XOR2_X1 Check1_CheckInst_0_U56 ( .A(Red_StateRegOutput[6]), .B(
        Red_SignaltoCheck[22]), .Z(Check1_CheckInst_0_n49) );
  XOR2_X1 Check1_CheckInst_0_U55 ( .A(Red_StateRegOutput[5]), .B(
        Red_SignaltoCheck[21]), .Z(Check1_CheckInst_0_n50) );
  NOR2_X1 Check1_CheckInst_0_U54 ( .A1(Check1_CheckInst_0_n48), .A2(
        Check1_CheckInst_0_n47), .ZN(Check1_CheckInst_0_n52) );
  XOR2_X1 Check1_CheckInst_0_U53 ( .A(Red_StateRegOutput[4]), .B(
        Red_SignaltoCheck[20]), .Z(Check1_CheckInst_0_n47) );
  XOR2_X1 Check1_CheckInst_0_U52 ( .A(Red_StateRegOutput[3]), .B(
        Red_SignaltoCheck[19]), .Z(Check1_CheckInst_0_n48) );
  NAND2_X1 Check1_CheckInst_0_U51 ( .A1(Check1_CheckInst_0_n46), .A2(
        Check1_CheckInst_0_n45), .ZN(Check1_CheckInst_0_n54) );
  XNOR2_X1 Check1_CheckInst_0_U50 ( .A(Red_StateRegOutput[2]), .B(
        Red_SignaltoCheck[18]), .ZN(Check1_CheckInst_0_n45) );
  XNOR2_X1 Check1_CheckInst_0_U49 ( .A(Red_StateRegOutput[1]), .B(
        Red_SignaltoCheck[17]), .ZN(Check1_CheckInst_0_n46) );
  NOR2_X1 Check1_CheckInst_0_U48 ( .A1(Check1_CheckInst_0_n44), .A2(
        Check1_CheckInst_0_n43), .ZN(Check1_CheckInst_0_n56) );
  XOR2_X1 Check1_CheckInst_0_U47 ( .A(Red_StateRegOutput[0]), .B(
        Red_SignaltoCheck[16]), .Z(Check1_CheckInst_0_n43) );
  XOR2_X1 Check1_CheckInst_0_U46 ( .A(Red_Feedback[15]), .B(
        Red_SignaltoCheck[15]), .Z(Check1_CheckInst_0_n44) );
  NAND2_X1 Check1_CheckInst_0_U45 ( .A1(Check1_CheckInst_0_n42), .A2(
        Check1_CheckInst_0_n41), .ZN(Check1_CheckInst_0_n58) );
  NOR2_X1 Check1_CheckInst_0_U44 ( .A1(Check1_CheckInst_0_n40), .A2(
        Check1_CheckInst_0_n39), .ZN(Check1_CheckInst_0_n41) );
  NAND2_X1 Check1_CheckInst_0_U43 ( .A1(Check1_CheckInst_0_n38), .A2(
        Check1_CheckInst_0_n37), .ZN(Check1_CheckInst_0_n39) );
  NOR2_X1 Check1_CheckInst_0_U42 ( .A1(Check1_CheckInst_0_n36), .A2(
        Check1_CheckInst_0_n35), .ZN(Check1_CheckInst_0_n37) );
  XOR2_X1 Check1_CheckInst_0_U41 ( .A(Red_StateRegOutput[14]), .B(
        Red_SignaltoCheck[30]), .Z(Check1_CheckInst_0_n35) );
  XOR2_X1 Check1_CheckInst_0_U40 ( .A(Red_StateRegOutput[13]), .B(
        Red_SignaltoCheck[29]), .Z(Check1_CheckInst_0_n36) );
  NOR2_X1 Check1_CheckInst_0_U39 ( .A1(Check1_CheckInst_0_n34), .A2(
        Check1_CheckInst_0_n33), .ZN(Check1_CheckInst_0_n38) );
  XOR2_X1 Check1_CheckInst_0_U38 ( .A(Red_StateRegOutput[12]), .B(
        Red_SignaltoCheck[28]), .Z(Check1_CheckInst_0_n33) );
  XOR2_X1 Check1_CheckInst_0_U37 ( .A(Red_StateRegOutput[11]), .B(
        Red_SignaltoCheck[27]), .Z(Check1_CheckInst_0_n34) );
  NAND2_X1 Check1_CheckInst_0_U36 ( .A1(Check1_CheckInst_0_n32), .A2(
        Check1_CheckInst_0_n31), .ZN(Check1_CheckInst_0_n40) );
  XNOR2_X1 Check1_CheckInst_0_U35 ( .A(Red_StateRegOutput[10]), .B(
        Red_SignaltoCheck[26]), .ZN(Check1_CheckInst_0_n31) );
  XNOR2_X1 Check1_CheckInst_0_U34 ( .A(Red_StateRegOutput[9]), .B(
        Red_SignaltoCheck[25]), .ZN(Check1_CheckInst_0_n32) );
  NOR2_X1 Check1_CheckInst_0_U33 ( .A1(Check1_CheckInst_0_n30), .A2(
        Check1_CheckInst_0_n29), .ZN(Check1_CheckInst_0_n42) );
  XOR2_X1 Check1_CheckInst_0_U32 ( .A(Red_StateRegOutput[8]), .B(
        Red_SignaltoCheck[24]), .Z(Check1_CheckInst_0_n29) );
  XOR2_X1 Check1_CheckInst_0_U31 ( .A(Red_StateRegOutput[7]), .B(
        Red_SignaltoCheck[23]), .Z(Check1_CheckInst_0_n30) );
  NOR2_X1 Check1_CheckInst_0_U30 ( .A1(Check1_CheckInst_0_n28), .A2(
        Check1_CheckInst_0_n27), .ZN(Check1_CheckInst_0_n60) );
  NAND2_X1 Check1_CheckInst_0_U29 ( .A1(Check1_CheckInst_0_n26), .A2(
        Check1_CheckInst_0_n25), .ZN(Check1_CheckInst_0_n27) );
  NOR2_X1 Check1_CheckInst_0_U28 ( .A1(Check1_CheckInst_0_n24), .A2(
        Check1_CheckInst_0_n23), .ZN(Check1_CheckInst_0_n25) );
  NAND2_X1 Check1_CheckInst_0_U27 ( .A1(Check1_CheckInst_0_n22), .A2(
        Check1_CheckInst_0_n21), .ZN(Check1_CheckInst_0_n23) );
  XNOR2_X1 Check1_CheckInst_0_U26 ( .A(Red_Feedback[10]), .B(
        Red_SignaltoCheck[10]), .ZN(Check1_CheckInst_0_n21) );
  XNOR2_X1 Check1_CheckInst_0_U25 ( .A(Red_Feedback[9]), .B(
        Red_SignaltoCheck[9]), .ZN(Check1_CheckInst_0_n22) );
  NAND2_X1 Check1_CheckInst_0_U24 ( .A1(Check1_CheckInst_0_n20), .A2(
        Check1_CheckInst_0_n19), .ZN(Check1_CheckInst_0_n24) );
  XNOR2_X1 Check1_CheckInst_0_U23 ( .A(Red_Feedback[8]), .B(
        Red_SignaltoCheck[8]), .ZN(Check1_CheckInst_0_n19) );
  XNOR2_X1 Check1_CheckInst_0_U22 ( .A(Red_Feedback[7]), .B(
        Red_SignaltoCheck[7]), .ZN(Check1_CheckInst_0_n20) );
  NAND2_X1 Check1_CheckInst_0_U21 ( .A1(Check1_CheckInst_0_n18), .A2(
        Check1_CheckInst_0_n17), .ZN(Check1_CheckInst_0_n28) );
  XNOR2_X1 Check1_CheckInst_0_U20 ( .A(Red_Feedback[12]), .B(
        Red_SignaltoCheck[12]), .ZN(Check1_CheckInst_0_n17) );
  NAND2_X1 Check1_CheckInst_0_U19 ( .A1(Check1_CheckInst_0_n16), .A2(
        Check1_CheckInst_0_n15), .ZN(Check1_CheckInst_0_n62) );
  NOR2_X1 Check1_CheckInst_0_U18 ( .A1(Check1_CheckInst_0_n14), .A2(
        Check1_CheckInst_0_n13), .ZN(Check1_CheckInst_0_n15) );
  NAND2_X1 Check1_CheckInst_0_U17 ( .A1(Check1_CheckInst_0_n12), .A2(
        Check1_CheckInst_0_n11), .ZN(Check1_CheckInst_0_n13) );
  NOR2_X1 Check1_CheckInst_0_U16 ( .A1(Check1_CheckInst_0_n10), .A2(
        Check1_CheckInst_0_n9), .ZN(Check1_CheckInst_0_n12) );
  XOR2_X1 Check1_CheckInst_0_U15 ( .A(Red_SignaltoCheck[1]), .B(
        Red_Feedback[1]), .Z(Check1_CheckInst_0_n9) );
  XOR2_X1 Check1_CheckInst_0_U14 ( .A(Red_SignaltoCheck[0]), .B(
        Red_Feedback[0]), .Z(Check1_CheckInst_0_n10) );
  NAND2_X1 Check1_CheckInst_0_U13 ( .A1(Check1_CheckInst_0_n8), .A2(
        Check1_CheckInst_0_n7), .ZN(Check1_CheckInst_0_n14) );
  NOR2_X1 Check1_CheckInst_0_U12 ( .A1(Check1_CheckInst_0_n6), .A2(
        Check1_CheckInst_0_n5), .ZN(Check1_CheckInst_0_n16) );
  XOR2_X1 Check1_CheckInst_0_U11 ( .A(Red_Feedback[4]), .B(
        Red_SignaltoCheck[4]), .Z(Check1_CheckInst_0_n5) );
  XOR2_X1 Check1_CheckInst_0_U10 ( .A(Red_Feedback[3]), .B(
        Red_SignaltoCheck[3]), .Z(Check1_CheckInst_0_n6) );
  NOR2_X1 Check1_CheckInst_0_U9 ( .A1(Check1_CheckInst_0_n3), .A2(
        Check1_CheckInst_0_n4), .ZN(Check1_CheckInst_0_n11) );
  XOR2_X1 Check1_CheckInst_0_U8 ( .A(Red_StateRegOutput[15]), .B(
        Red_SignaltoCheck[31]), .Z(Check1_CheckInst_0_n4) );
  XOR2_X1 Check1_CheckInst_0_U7 ( .A(Red_Feedback[2]), .B(Red_SignaltoCheck[2]), .Z(Check1_CheckInst_0_n3) );
  XNOR2_X1 Check1_CheckInst_0_U6 ( .A(Red_Feedback[5]), .B(
        Red_SignaltoCheck[5]), .ZN(Check1_CheckInst_0_n8) );
  XNOR2_X1 Check1_CheckInst_0_U5 ( .A(Red_Feedback[6]), .B(
        Red_SignaltoCheck[6]), .ZN(Check1_CheckInst_0_n7) );
  NOR2_X1 Check1_CheckInst_0_U4 ( .A1(Check1_CheckInst_0_n1), .A2(
        Check1_CheckInst_0_n2), .ZN(Check1_CheckInst_0_n26) );
  XOR2_X1 Check1_CheckInst_0_U3 ( .A(Red_Feedback[13]), .B(
        Red_SignaltoCheck[13]), .Z(Check1_CheckInst_0_n2) );
  XOR2_X1 Check1_CheckInst_0_U2 ( .A(Red_Feedback[14]), .B(
        Red_SignaltoCheck[14]), .Z(Check1_CheckInst_0_n1) );
  XNOR2_X1 Check1_CheckInst_0_U1 ( .A(Red_Feedback[11]), .B(
        Red_SignaltoCheck[11]), .ZN(Check1_CheckInst_0_n18) );
endmodule

