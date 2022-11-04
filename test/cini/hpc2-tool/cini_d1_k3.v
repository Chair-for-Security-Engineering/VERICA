/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Apr 21 09:54:06 2022
/////////////////////////////////////////////////////////////


module And_gate ( clock_0, clock_1, clock_2, clock_3, clock_4, clock_5, 
        clock_6, io_a_s0_d0, io_a_s0_d1, io_a_s0_d2, io_a_s0_d3, io_a_s0_d4, 
        io_a_s0_d5, io_a_s0_d6, io_a_s1_d0, io_a_s1_d1, io_a_s1_d2, io_a_s1_d3, 
        io_a_s1_d4, io_a_s1_d5, io_a_s1_d6, io_b_s0_d0, io_b_s0_d1, io_b_s0_d2, 
        io_b_s0_d3, io_b_s0_d4, io_b_s0_d5, io_b_s0_d6, io_b_s1_d0, io_b_s1_d1, 
        io_b_s1_d2, io_b_s1_d3, io_b_s1_d4, io_b_s1_d5, io_b_s1_d6, p_rand_0, 
        io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s0_d3, io_c_s0_d4, io_c_s0_d5, 
        io_c_s0_d6, io_c_s1_d0, io_c_s1_d1, io_c_s1_d2, io_c_s1_d3, io_c_s1_d4, 
        io_c_s1_d5, io_c_s1_d6 );
  input clock_0, clock_1, clock_2, clock_3, clock_4, clock_5, clock_6,
         io_a_s0_d0, io_a_s0_d1, io_a_s0_d2, io_a_s0_d3, io_a_s0_d4,
         io_a_s0_d5, io_a_s0_d6, io_a_s1_d0, io_a_s1_d1, io_a_s1_d2,
         io_a_s1_d3, io_a_s1_d4, io_a_s1_d5, io_a_s1_d6, io_b_s0_d0,
         io_b_s0_d1, io_b_s0_d2, io_b_s0_d3, io_b_s0_d4, io_b_s0_d5,
         io_b_s0_d6, io_b_s1_d0, io_b_s1_d1, io_b_s1_d2, io_b_s1_d3,
         io_b_s1_d4, io_b_s1_d5, io_b_s1_d6, p_rand_0;
  output io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s0_d3, io_c_s0_d4,
         io_c_s0_d5, io_c_s0_d6, io_c_s1_d0, io_c_s1_d1, io_c_s1_d2,
         io_c_s1_d3, io_c_s1_d4, io_c_s1_d5, io_c_s1_d6;
  wire   n_cini_module_0__xor_module_41_res,
         n_cini_module_0__reg_module_84_res,
         n_cini_module_0__and_module_42_res,
         n_cini_module_0__reg_module_83_res,
         n_cini_module_0__majority7_module_13_res,
         n_cini_module_0__reg_module_82_res,
         n_cini_module_0__and_module_41_res,
         n_cini_module_0__not_module_14_res,
         n_cini_module_0__reg_module_81_res,
         n_cini_module_0__reg_module_80_res,
         n_cini_module_0__and_module_40_res,
         n_cini_module_0__reg_module_79_res,
         n_cini_module_0__xor_module_39_res,
         n_cini_module_0__reg_module_78_res,
         n_cini_module_0__and_module_39_res,
         n_cini_module_0__reg_module_77_res,
         n_cini_module_0__majority7_module_12_res,
         n_cini_module_0__reg_module_76_res,
         n_cini_module_0__and_module_38_res,
         n_cini_module_0__not_module_13_res,
         n_cini_module_0__reg_module_75_res,
         n_cini_module_0__reg_module_74_res,
         n_cini_module_0__and_module_37_res,
         n_cini_module_0__reg_module_73_res,
         n_cini_module_0__xor_module_37_res,
         n_cini_module_0__reg_module_72_res,
         n_cini_module_0__and_module_36_res,
         n_cini_module_0__reg_module_71_res,
         n_cini_module_0__majority7_module_11_res,
         n_cini_module_0__reg_module_70_res,
         n_cini_module_0__and_module_35_res,
         n_cini_module_0__not_module_12_res,
         n_cini_module_0__reg_module_69_res,
         n_cini_module_0__reg_module_68_res,
         n_cini_module_0__and_module_34_res,
         n_cini_module_0__reg_module_67_res,
         n_cini_module_0__xor_module_35_res,
         n_cini_module_0__reg_module_66_res,
         n_cini_module_0__and_module_33_res,
         n_cini_module_0__reg_module_65_res,
         n_cini_module_0__majority7_module_10_res,
         n_cini_module_0__reg_module_64_res,
         n_cini_module_0__and_module_32_res,
         n_cini_module_0__not_module_11_res,
         n_cini_module_0__reg_module_63_res,
         n_cini_module_0__reg_module_62_res,
         n_cini_module_0__and_module_31_res,
         n_cini_module_0__reg_module_61_res,
         n_cini_module_0__xor_module_33_res,
         n_cini_module_0__reg_module_60_res,
         n_cini_module_0__and_module_30_res,
         n_cini_module_0__reg_module_59_res,
         n_cini_module_0__majority7_module_9_res,
         n_cini_module_0__reg_module_58_res,
         n_cini_module_0__and_module_29_res,
         n_cini_module_0__not_module_10_res,
         n_cini_module_0__reg_module_57_res,
         n_cini_module_0__reg_module_56_res,
         n_cini_module_0__and_module_28_res,
         n_cini_module_0__reg_module_55_res,
         n_cini_module_0__xor_module_31_res,
         n_cini_module_0__reg_module_54_res,
         n_cini_module_0__and_module_27_res,
         n_cini_module_0__reg_module_53_res,
         n_cini_module_0__majority7_module_8_res,
         n_cini_module_0__reg_module_52_res,
         n_cini_module_0__and_module_26_res, n_cini_module_0__not_module_9_res,
         n_cini_module_0__reg_module_51_res,
         n_cini_module_0__reg_module_50_res,
         n_cini_module_0__and_module_25_res,
         n_cini_module_0__reg_module_49_res,
         n_cini_module_0__xor_module_29_res,
         n_cini_module_0__reg_module_48_res,
         n_cini_module_0__and_module_24_res,
         n_cini_module_0__reg_module_47_res,
         n_cini_module_0__majority7_module_7_res,
         n_cini_module_0__reg_module_46_res,
         n_cini_module_0__and_module_23_res, n_cini_module_0__not_module_8_res,
         n_cini_module_0__reg_module_45_res,
         n_cini_module_0__reg_module_44_res,
         n_cini_module_0__and_module_22_res,
         n_cini_module_0__reg_module_43_res,
         n_cini_module_0__xor_module_27_res,
         n_cini_module_0__reg_module_42_res,
         n_cini_module_0__and_module_21_res,
         n_cini_module_0__reg_module_41_res,
         n_cini_module_0__majority7_module_6_res,
         n_cini_module_0__reg_module_40_res,
         n_cini_module_0__and_module_20_res, n_cini_module_0__not_module_7_res,
         n_cini_module_0__reg_module_39_res,
         n_cini_module_0__reg_module_38_res,
         n_cini_module_0__and_module_19_res,
         n_cini_module_0__reg_module_37_res,
         n_cini_module_0__xor_module_25_res,
         n_cini_module_0__reg_module_36_res,
         n_cini_module_0__and_module_18_res,
         n_cini_module_0__reg_module_35_res,
         n_cini_module_0__majority7_module_5_res,
         n_cini_module_0__reg_module_34_res,
         n_cini_module_0__and_module_17_res, n_cini_module_0__not_module_6_res,
         n_cini_module_0__reg_module_33_res,
         n_cini_module_0__reg_module_32_res,
         n_cini_module_0__and_module_16_res,
         n_cini_module_0__reg_module_31_res,
         n_cini_module_0__xor_module_23_res,
         n_cini_module_0__reg_module_30_res,
         n_cini_module_0__and_module_15_res,
         n_cini_module_0__reg_module_29_res,
         n_cini_module_0__majority7_module_4_res,
         n_cini_module_0__reg_module_28_res,
         n_cini_module_0__and_module_14_res, n_cini_module_0__not_module_5_res,
         n_cini_module_0__reg_module_27_res,
         n_cini_module_0__reg_module_26_res,
         n_cini_module_0__and_module_13_res,
         n_cini_module_0__reg_module_25_res,
         n_cini_module_0__xor_module_21_res,
         n_cini_module_0__reg_module_24_res,
         n_cini_module_0__and_module_12_res,
         n_cini_module_0__reg_module_23_res,
         n_cini_module_0__majority7_module_3_res,
         n_cini_module_0__reg_module_22_res,
         n_cini_module_0__and_module_11_res, n_cini_module_0__not_module_4_res,
         n_cini_module_0__reg_module_21_res,
         n_cini_module_0__reg_module_20_res,
         n_cini_module_0__and_module_10_res,
         n_cini_module_0__reg_module_19_res,
         n_cini_module_0__xor_module_19_res,
         n_cini_module_0__reg_module_18_res, n_cini_module_0__and_module_9_res,
         n_cini_module_0__reg_module_17_res,
         n_cini_module_0__majority7_module_2_res,
         n_cini_module_0__reg_module_16_res, n_cini_module_0__and_module_8_res,
         n_cini_module_0__not_module_3_res, n_cini_module_0__reg_module_15_res,
         n_cini_module_0__reg_module_14_res, n_cini_module_0__and_module_7_res,
         n_cini_module_0__reg_module_13_res,
         n_cini_module_0__xor_module_17_res,
         n_cini_module_0__reg_module_12_res, n_cini_module_0__and_module_6_res,
         n_cini_module_0__reg_module_11_res,
         n_cini_module_0__majority7_module_1_res,
         n_cini_module_0__reg_module_10_res, n_cini_module_0__and_module_5_res,
         n_cini_module_0__not_module_2_res, n_cini_module_0__reg_module_9_res,
         n_cini_module_0__reg_module_8_res, n_cini_module_0__and_module_4_res,
         n_cini_module_0__reg_module_7_res, n_cini_module_0__xor_module_15_res,
         n_cini_module_0__reg_module_6_res, n_cini_module_0__and_module_3_res,
         n_cini_module_0__reg_module_5_res,
         n_cini_module_0__majority7_module_0_res,
         n_cini_module_0__reg_module_4_res, n_cini_module_0__and_module_2_res,
         n_cini_module_0__not_module_1_res, n_cini_module_0__reg_module_3_res,
         n_cini_module_0__reg_module_2_res, n_cini_module_0__and_module_1_res,
         n_cini_module_0__reg_module_1_res, n_cini_module_0__xor_module_14_res,
         n_cini_module_0__xor_module_13_res,
         n_cini_module_0__xor_module_12_res,
         n_cini_module_0__xor_module_11_res,
         n_cini_module_0__xor_module_10_res, n_cini_module_0__xor_module_9_res,
         n_cini_module_0__xor_module_8_res, n_cini_module_0__xor_module_7_res,
         n_cini_module_0__xor_module_6_res, n_cini_module_0__xor_module_5_res,
         n_cini_module_0__xor_module_4_res, n_cini_module_0__xor_module_3_res,
         n_cini_module_0__xor_module_2_res, n_cini_module_0__xor_module_1_res,
         n_cini_module_0__majority7_module_0_n17,
         n_cini_module_0__majority7_module_0_n16,
         n_cini_module_0__majority7_module_0_n15,
         n_cini_module_0__majority7_module_0_n14,
         n_cini_module_0__majority7_module_0_n13,
         n_cini_module_0__majority7_module_0_n12,
         n_cini_module_0__majority7_module_0_n11,
         n_cini_module_0__majority7_module_0_n10,
         n_cini_module_0__majority7_module_0_n9,
         n_cini_module_0__majority7_module_0_n8,
         n_cini_module_0__majority7_module_0_n7,
         n_cini_module_0__majority7_module_0_n6,
         n_cini_module_0__majority7_module_0_n5,
         n_cini_module_0__majority7_module_0_n4,
         n_cini_module_0__majority7_module_0_n3,
         n_cini_module_0__majority7_module_0_n2,
         n_cini_module_0__majority7_module_0_n1,
         n_cini_module_0__majority7_module_1_n17,
         n_cini_module_0__majority7_module_1_n16,
         n_cini_module_0__majority7_module_1_n15,
         n_cini_module_0__majority7_module_1_n14,
         n_cini_module_0__majority7_module_1_n13,
         n_cini_module_0__majority7_module_1_n12,
         n_cini_module_0__majority7_module_1_n11,
         n_cini_module_0__majority7_module_1_n10,
         n_cini_module_0__majority7_module_1_n9,
         n_cini_module_0__majority7_module_1_n8,
         n_cini_module_0__majority7_module_1_n7,
         n_cini_module_0__majority7_module_1_n6,
         n_cini_module_0__majority7_module_1_n5,
         n_cini_module_0__majority7_module_1_n4,
         n_cini_module_0__majority7_module_1_n3,
         n_cini_module_0__majority7_module_1_n2,
         n_cini_module_0__majority7_module_1_n1,
         n_cini_module_0__majority7_module_2_n17,
         n_cini_module_0__majority7_module_2_n16,
         n_cini_module_0__majority7_module_2_n15,
         n_cini_module_0__majority7_module_2_n14,
         n_cini_module_0__majority7_module_2_n13,
         n_cini_module_0__majority7_module_2_n12,
         n_cini_module_0__majority7_module_2_n11,
         n_cini_module_0__majority7_module_2_n10,
         n_cini_module_0__majority7_module_2_n9,
         n_cini_module_0__majority7_module_2_n8,
         n_cini_module_0__majority7_module_2_n7,
         n_cini_module_0__majority7_module_2_n6,
         n_cini_module_0__majority7_module_2_n5,
         n_cini_module_0__majority7_module_2_n4,
         n_cini_module_0__majority7_module_2_n3,
         n_cini_module_0__majority7_module_2_n2,
         n_cini_module_0__majority7_module_2_n1,
         n_cini_module_0__majority7_module_3_n17,
         n_cini_module_0__majority7_module_3_n16,
         n_cini_module_0__majority7_module_3_n15,
         n_cini_module_0__majority7_module_3_n14,
         n_cini_module_0__majority7_module_3_n13,
         n_cini_module_0__majority7_module_3_n12,
         n_cini_module_0__majority7_module_3_n11,
         n_cini_module_0__majority7_module_3_n10,
         n_cini_module_0__majority7_module_3_n9,
         n_cini_module_0__majority7_module_3_n8,
         n_cini_module_0__majority7_module_3_n7,
         n_cini_module_0__majority7_module_3_n6,
         n_cini_module_0__majority7_module_3_n5,
         n_cini_module_0__majority7_module_3_n4,
         n_cini_module_0__majority7_module_3_n3,
         n_cini_module_0__majority7_module_3_n2,
         n_cini_module_0__majority7_module_3_n1,
         n_cini_module_0__majority7_module_4_n17,
         n_cini_module_0__majority7_module_4_n16,
         n_cini_module_0__majority7_module_4_n15,
         n_cini_module_0__majority7_module_4_n14,
         n_cini_module_0__majority7_module_4_n13,
         n_cini_module_0__majority7_module_4_n12,
         n_cini_module_0__majority7_module_4_n11,
         n_cini_module_0__majority7_module_4_n10,
         n_cini_module_0__majority7_module_4_n9,
         n_cini_module_0__majority7_module_4_n8,
         n_cini_module_0__majority7_module_4_n7,
         n_cini_module_0__majority7_module_4_n6,
         n_cini_module_0__majority7_module_4_n5,
         n_cini_module_0__majority7_module_4_n4,
         n_cini_module_0__majority7_module_4_n3,
         n_cini_module_0__majority7_module_4_n2,
         n_cini_module_0__majority7_module_4_n1,
         n_cini_module_0__majority7_module_5_n17,
         n_cini_module_0__majority7_module_5_n16,
         n_cini_module_0__majority7_module_5_n15,
         n_cini_module_0__majority7_module_5_n14,
         n_cini_module_0__majority7_module_5_n13,
         n_cini_module_0__majority7_module_5_n12,
         n_cini_module_0__majority7_module_5_n11,
         n_cini_module_0__majority7_module_5_n10,
         n_cini_module_0__majority7_module_5_n9,
         n_cini_module_0__majority7_module_5_n8,
         n_cini_module_0__majority7_module_5_n7,
         n_cini_module_0__majority7_module_5_n6,
         n_cini_module_0__majority7_module_5_n5,
         n_cini_module_0__majority7_module_5_n4,
         n_cini_module_0__majority7_module_5_n3,
         n_cini_module_0__majority7_module_5_n2,
         n_cini_module_0__majority7_module_5_n1,
         n_cini_module_0__majority7_module_6_n17,
         n_cini_module_0__majority7_module_6_n16,
         n_cini_module_0__majority7_module_6_n15,
         n_cini_module_0__majority7_module_6_n14,
         n_cini_module_0__majority7_module_6_n13,
         n_cini_module_0__majority7_module_6_n12,
         n_cini_module_0__majority7_module_6_n11,
         n_cini_module_0__majority7_module_6_n10,
         n_cini_module_0__majority7_module_6_n9,
         n_cini_module_0__majority7_module_6_n8,
         n_cini_module_0__majority7_module_6_n7,
         n_cini_module_0__majority7_module_6_n6,
         n_cini_module_0__majority7_module_6_n5,
         n_cini_module_0__majority7_module_6_n4,
         n_cini_module_0__majority7_module_6_n3,
         n_cini_module_0__majority7_module_6_n2,
         n_cini_module_0__majority7_module_6_n1,
         n_cini_module_0__majority7_module_7_n17,
         n_cini_module_0__majority7_module_7_n16,
         n_cini_module_0__majority7_module_7_n15,
         n_cini_module_0__majority7_module_7_n14,
         n_cini_module_0__majority7_module_7_n13,
         n_cini_module_0__majority7_module_7_n12,
         n_cini_module_0__majority7_module_7_n11,
         n_cini_module_0__majority7_module_7_n10,
         n_cini_module_0__majority7_module_7_n9,
         n_cini_module_0__majority7_module_7_n8,
         n_cini_module_0__majority7_module_7_n7,
         n_cini_module_0__majority7_module_7_n6,
         n_cini_module_0__majority7_module_7_n5,
         n_cini_module_0__majority7_module_7_n4,
         n_cini_module_0__majority7_module_7_n3,
         n_cini_module_0__majority7_module_7_n2,
         n_cini_module_0__majority7_module_7_n1,
         n_cini_module_0__majority7_module_8_n17,
         n_cini_module_0__majority7_module_8_n16,
         n_cini_module_0__majority7_module_8_n15,
         n_cini_module_0__majority7_module_8_n14,
         n_cini_module_0__majority7_module_8_n13,
         n_cini_module_0__majority7_module_8_n12,
         n_cini_module_0__majority7_module_8_n11,
         n_cini_module_0__majority7_module_8_n10,
         n_cini_module_0__majority7_module_8_n9,
         n_cini_module_0__majority7_module_8_n8,
         n_cini_module_0__majority7_module_8_n7,
         n_cini_module_0__majority7_module_8_n6,
         n_cini_module_0__majority7_module_8_n5,
         n_cini_module_0__majority7_module_8_n4,
         n_cini_module_0__majority7_module_8_n3,
         n_cini_module_0__majority7_module_8_n2,
         n_cini_module_0__majority7_module_8_n1,
         n_cini_module_0__majority7_module_9_n17,
         n_cini_module_0__majority7_module_9_n16,
         n_cini_module_0__majority7_module_9_n15,
         n_cini_module_0__majority7_module_9_n14,
         n_cini_module_0__majority7_module_9_n13,
         n_cini_module_0__majority7_module_9_n12,
         n_cini_module_0__majority7_module_9_n11,
         n_cini_module_0__majority7_module_9_n10,
         n_cini_module_0__majority7_module_9_n9,
         n_cini_module_0__majority7_module_9_n8,
         n_cini_module_0__majority7_module_9_n7,
         n_cini_module_0__majority7_module_9_n6,
         n_cini_module_0__majority7_module_9_n5,
         n_cini_module_0__majority7_module_9_n4,
         n_cini_module_0__majority7_module_9_n3,
         n_cini_module_0__majority7_module_9_n2,
         n_cini_module_0__majority7_module_9_n1,
         n_cini_module_0__majority7_module_10_n17,
         n_cini_module_0__majority7_module_10_n16,
         n_cini_module_0__majority7_module_10_n15,
         n_cini_module_0__majority7_module_10_n14,
         n_cini_module_0__majority7_module_10_n13,
         n_cini_module_0__majority7_module_10_n12,
         n_cini_module_0__majority7_module_10_n11,
         n_cini_module_0__majority7_module_10_n10,
         n_cini_module_0__majority7_module_10_n9,
         n_cini_module_0__majority7_module_10_n8,
         n_cini_module_0__majority7_module_10_n7,
         n_cini_module_0__majority7_module_10_n6,
         n_cini_module_0__majority7_module_10_n5,
         n_cini_module_0__majority7_module_10_n4,
         n_cini_module_0__majority7_module_10_n3,
         n_cini_module_0__majority7_module_10_n2,
         n_cini_module_0__majority7_module_10_n1,
         n_cini_module_0__majority7_module_11_n17,
         n_cini_module_0__majority7_module_11_n16,
         n_cini_module_0__majority7_module_11_n15,
         n_cini_module_0__majority7_module_11_n14,
         n_cini_module_0__majority7_module_11_n13,
         n_cini_module_0__majority7_module_11_n12,
         n_cini_module_0__majority7_module_11_n11,
         n_cini_module_0__majority7_module_11_n10,
         n_cini_module_0__majority7_module_11_n9,
         n_cini_module_0__majority7_module_11_n8,
         n_cini_module_0__majority7_module_11_n7,
         n_cini_module_0__majority7_module_11_n6,
         n_cini_module_0__majority7_module_11_n5,
         n_cini_module_0__majority7_module_11_n4,
         n_cini_module_0__majority7_module_11_n3,
         n_cini_module_0__majority7_module_11_n2,
         n_cini_module_0__majority7_module_11_n1,
         n_cini_module_0__majority7_module_12_n17,
         n_cini_module_0__majority7_module_12_n16,
         n_cini_module_0__majority7_module_12_n15,
         n_cini_module_0__majority7_module_12_n14,
         n_cini_module_0__majority7_module_12_n13,
         n_cini_module_0__majority7_module_12_n12,
         n_cini_module_0__majority7_module_12_n11,
         n_cini_module_0__majority7_module_12_n10,
         n_cini_module_0__majority7_module_12_n9,
         n_cini_module_0__majority7_module_12_n8,
         n_cini_module_0__majority7_module_12_n7,
         n_cini_module_0__majority7_module_12_n6,
         n_cini_module_0__majority7_module_12_n5,
         n_cini_module_0__majority7_module_12_n4,
         n_cini_module_0__majority7_module_12_n3,
         n_cini_module_0__majority7_module_12_n2,
         n_cini_module_0__majority7_module_12_n1,
         n_cini_module_0__majority7_module_13_n17,
         n_cini_module_0__majority7_module_13_n16,
         n_cini_module_0__majority7_module_13_n15,
         n_cini_module_0__majority7_module_13_n14,
         n_cini_module_0__majority7_module_13_n13,
         n_cini_module_0__majority7_module_13_n12,
         n_cini_module_0__majority7_module_13_n11,
         n_cini_module_0__majority7_module_13_n10,
         n_cini_module_0__majority7_module_13_n9,
         n_cini_module_0__majority7_module_13_n8,
         n_cini_module_0__majority7_module_13_n7,
         n_cini_module_0__majority7_module_13_n6,
         n_cini_module_0__majority7_module_13_n5,
         n_cini_module_0__majority7_module_13_n4,
         n_cini_module_0__majority7_module_13_n3,
         n_cini_module_0__majority7_module_13_n2,
         n_cini_module_0__majority7_module_13_n1;

  XOR2_X2 u_cini_module_0__xor_module_1_U1 ( .A(p_rand_0), .B(io_b_s1_d0), .Z(
        n_cini_module_0__xor_module_1_res) );
  XOR2_X2 u_cini_module_0__xor_module_2_U1 ( .A(p_rand_0), .B(io_b_s0_d0), .Z(
        n_cini_module_0__xor_module_2_res) );
  XOR2_X2 u_cini_module_0__xor_module_3_U1 ( .A(p_rand_0), .B(io_b_s1_d1), .Z(
        n_cini_module_0__xor_module_3_res) );
  XOR2_X2 u_cini_module_0__xor_module_4_U1 ( .A(p_rand_0), .B(io_b_s0_d1), .Z(
        n_cini_module_0__xor_module_4_res) );
  XOR2_X2 u_cini_module_0__xor_module_5_U1 ( .A(p_rand_0), .B(io_b_s1_d2), .Z(
        n_cini_module_0__xor_module_5_res) );
  XOR2_X2 u_cini_module_0__xor_module_6_U1 ( .A(p_rand_0), .B(io_b_s0_d2), .Z(
        n_cini_module_0__xor_module_6_res) );
  XOR2_X2 u_cini_module_0__xor_module_7_U1 ( .A(p_rand_0), .B(io_b_s1_d3), .Z(
        n_cini_module_0__xor_module_7_res) );
  XOR2_X2 u_cini_module_0__xor_module_8_U1 ( .A(p_rand_0), .B(io_b_s0_d3), .Z(
        n_cini_module_0__xor_module_8_res) );
  XOR2_X2 u_cini_module_0__xor_module_9_U1 ( .A(p_rand_0), .B(io_b_s1_d4), .Z(
        n_cini_module_0__xor_module_9_res) );
  XOR2_X2 u_cini_module_0__xor_module_10_U1 ( .A(p_rand_0), .B(io_b_s0_d4), 
        .Z(n_cini_module_0__xor_module_10_res) );
  XOR2_X2 u_cini_module_0__xor_module_11_U1 ( .A(p_rand_0), .B(io_b_s1_d5), 
        .Z(n_cini_module_0__xor_module_11_res) );
  XOR2_X2 u_cini_module_0__xor_module_12_U1 ( .A(p_rand_0), .B(io_b_s0_d5), 
        .Z(n_cini_module_0__xor_module_12_res) );
  XOR2_X2 u_cini_module_0__xor_module_13_U1 ( .A(p_rand_0), .B(io_b_s1_d6), 
        .Z(n_cini_module_0__xor_module_13_res) );
  XOR2_X2 u_cini_module_0__xor_module_14_U1 ( .A(p_rand_0), .B(io_b_s0_d6), 
        .Z(n_cini_module_0__xor_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_1__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_1_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_1_U1 ( .A1(
        n_cini_module_0__reg_module_1_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_2__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_2_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_3__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), 
        .CK(clock_0), .Q(n_cini_module_0__reg_module_3_res), .QN() );
  INV_X1 u_cini_module_0__not_module_1_U1 ( .A(io_a_s0_d0), .ZN(
        n_cini_module_0__not_module_1_res) );
  AND2_X1 u_cini_module_0__and_module_2_U1 ( .A1(
        n_cini_module_0__not_module_1_res), .A2(
        n_cini_module_0__reg_module_3_res), .ZN(
        n_cini_module_0__and_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_4__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_2_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_4_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_0_U18 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority7_module_0_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_0_U17 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_9_res), .Z(
        n_cini_module_0__majority7_module_0_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U16 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority7_module_0_n10), .ZN(
        n_cini_module_0__majority7_module_0_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U15 ( .A1(
        n_cini_module_0__majority7_module_0_n16), .A2(
        n_cini_module_0__majority7_module_0_n17), .ZN(
        n_cini_module_0__majority7_module_0_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority7_module_0_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_0_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_3_res), .Z(
        n_cini_module_0__majority7_module_0_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U12 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority7_module_0_n11), .ZN(
        n_cini_module_0__majority7_module_0_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U11 ( .A1(
        n_cini_module_0__majority7_module_0_n14), .A2(
        n_cini_module_0__majority7_module_0_n15), .ZN(
        n_cini_module_0__majority7_module_0_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U10 ( .A1(
        n_cini_module_0__majority7_module_0_n13), .A2(
        n_cini_module_0__majority7_module_0_n12), .ZN(
        n_cini_module_0__majority7_module_0_n1) );
  OR2_X1 u_cini_module_0__majority7_module_0_U9 ( .A1(
        n_cini_module_0__majority7_module_0_n12), .A2(
        n_cini_module_0__majority7_module_0_n13), .ZN(
        n_cini_module_0__majority7_module_0_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_0_U8 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__majority7_module_0_n11), .Z(
        n_cini_module_0__majority7_module_0_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U7 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority7_module_0_n9), .ZN(
        n_cini_module_0__majority7_module_0_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_0_U6 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__majority7_module_0_n10), .Z(
        n_cini_module_0__majority7_module_0_n7) );
  OR2_X1 u_cini_module_0__majority7_module_0_U5 ( .A1(
        n_cini_module_0__majority7_module_0_n9), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_0_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U4 ( .A1(
        n_cini_module_0__majority7_module_0_n7), .A2(
        n_cini_module_0__majority7_module_0_n8), .ZN(
        n_cini_module_0__majority7_module_0_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U3 ( .A1(
        n_cini_module_0__majority7_module_0_n5), .A2(
        n_cini_module_0__majority7_module_0_n6), .ZN(
        n_cini_module_0__majority7_module_0_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U2 ( .A1(
        n_cini_module_0__majority7_module_0_n3), .A2(
        n_cini_module_0__majority7_module_0_n4), .ZN(
        n_cini_module_0__majority7_module_0_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_0_U1 ( .A1(
        n_cini_module_0__majority7_module_0_n1), .A2(
        n_cini_module_0__majority7_module_0_n2), .ZN(
        n_cini_module_0__majority7_module_0_res) );
  DFF_X1 u_cini_module_0__reg_module_5__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_0_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_5_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_3_U1 ( .A1(
        n_cini_module_0__reg_module_5_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_6__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_3_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_6_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_15_U1 ( .A(
        n_cini_module_0__reg_module_4_res), .B(
        n_cini_module_0__reg_module_6_res), .Z(
        n_cini_module_0__xor_module_15_res) );
  XOR2_X1 u_cini_module_0__xor_module_16_U1 ( .A(
        n_cini_module_0__xor_module_15_res), .B(
        n_cini_module_0__reg_module_2_res), .Z(io_c_s0_d0) );
  DFF_X1 u_cini_module_0__reg_module_7__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_7_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_4_U1 ( .A1(
        n_cini_module_0__reg_module_7_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_8__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_8_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_9__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), 
        .CK(clock_0), .Q(n_cini_module_0__reg_module_9_res), .QN() );
  INV_X1 u_cini_module_0__not_module_2_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_2_res) );
  AND2_X1 u_cini_module_0__and_module_5_U1 ( .A1(
        n_cini_module_0__not_module_2_res), .A2(
        n_cini_module_0__reg_module_9_res), .ZN(
        n_cini_module_0__and_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_10__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_5_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_10_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_1_U18 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority7_module_1_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_1_U17 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_10_res), .Z(
        n_cini_module_0__majority7_module_1_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U16 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority7_module_1_n10), .ZN(
        n_cini_module_0__majority7_module_1_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U15 ( .A1(
        n_cini_module_0__majority7_module_1_n16), .A2(
        n_cini_module_0__majority7_module_1_n17), .ZN(
        n_cini_module_0__majority7_module_1_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority7_module_1_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_1_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_4_res), .Z(
        n_cini_module_0__majority7_module_1_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U12 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority7_module_1_n11), .ZN(
        n_cini_module_0__majority7_module_1_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U11 ( .A1(
        n_cini_module_0__majority7_module_1_n14), .A2(
        n_cini_module_0__majority7_module_1_n15), .ZN(
        n_cini_module_0__majority7_module_1_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U10 ( .A1(
        n_cini_module_0__majority7_module_1_n13), .A2(
        n_cini_module_0__majority7_module_1_n12), .ZN(
        n_cini_module_0__majority7_module_1_n1) );
  OR2_X1 u_cini_module_0__majority7_module_1_U9 ( .A1(
        n_cini_module_0__majority7_module_1_n12), .A2(
        n_cini_module_0__majority7_module_1_n13), .ZN(
        n_cini_module_0__majority7_module_1_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_1_U8 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__majority7_module_1_n11), .Z(
        n_cini_module_0__majority7_module_1_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U7 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority7_module_1_n9), .ZN(
        n_cini_module_0__majority7_module_1_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_1_U6 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__majority7_module_1_n10), .Z(
        n_cini_module_0__majority7_module_1_n7) );
  OR2_X1 u_cini_module_0__majority7_module_1_U5 ( .A1(
        n_cini_module_0__majority7_module_1_n9), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_1_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U4 ( .A1(
        n_cini_module_0__majority7_module_1_n7), .A2(
        n_cini_module_0__majority7_module_1_n8), .ZN(
        n_cini_module_0__majority7_module_1_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U3 ( .A1(
        n_cini_module_0__majority7_module_1_n5), .A2(
        n_cini_module_0__majority7_module_1_n6), .ZN(
        n_cini_module_0__majority7_module_1_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U2 ( .A1(
        n_cini_module_0__majority7_module_1_n3), .A2(
        n_cini_module_0__majority7_module_1_n4), .ZN(
        n_cini_module_0__majority7_module_1_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_1_U1 ( .A1(
        n_cini_module_0__majority7_module_1_n1), .A2(
        n_cini_module_0__majority7_module_1_n2), .ZN(
        n_cini_module_0__majority7_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_11__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_11_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_6_U1 ( .A1(
        n_cini_module_0__reg_module_11_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_12__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_6_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_12_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_17_U1 ( .A(
        n_cini_module_0__reg_module_10_res), .B(
        n_cini_module_0__reg_module_12_res), .Z(
        n_cini_module_0__xor_module_17_res) );
  XOR2_X1 u_cini_module_0__xor_module_18_U1 ( .A(
        n_cini_module_0__xor_module_17_res), .B(
        n_cini_module_0__reg_module_8_res), .Z(io_c_s1_d0) );
  DFF_X1 u_cini_module_0__reg_module_13__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_13_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_7_U1 ( .A1(
        n_cini_module_0__reg_module_13_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_14__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_7_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_14_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_15__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_1), .Q(n_cini_module_0__reg_module_15_res), .QN() );
  INV_X1 u_cini_module_0__not_module_3_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_3_res) );
  AND2_X1 u_cini_module_0__and_module_8_U1 ( .A1(
        n_cini_module_0__not_module_3_res), .A2(
        n_cini_module_0__reg_module_15_res), .ZN(
        n_cini_module_0__and_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_16__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_8_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_16_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_2_U18 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority7_module_2_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_2_U17 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_9_res), .Z(
        n_cini_module_0__majority7_module_2_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U16 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority7_module_2_n10), .ZN(
        n_cini_module_0__majority7_module_2_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U15 ( .A1(
        n_cini_module_0__majority7_module_2_n16), .A2(
        n_cini_module_0__majority7_module_2_n17), .ZN(
        n_cini_module_0__majority7_module_2_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority7_module_2_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_2_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_3_res), .Z(
        n_cini_module_0__majority7_module_2_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U12 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority7_module_2_n11), .ZN(
        n_cini_module_0__majority7_module_2_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U11 ( .A1(
        n_cini_module_0__majority7_module_2_n14), .A2(
        n_cini_module_0__majority7_module_2_n15), .ZN(
        n_cini_module_0__majority7_module_2_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U10 ( .A1(
        n_cini_module_0__majority7_module_2_n13), .A2(
        n_cini_module_0__majority7_module_2_n12), .ZN(
        n_cini_module_0__majority7_module_2_n1) );
  OR2_X1 u_cini_module_0__majority7_module_2_U9 ( .A1(
        n_cini_module_0__majority7_module_2_n12), .A2(
        n_cini_module_0__majority7_module_2_n13), .ZN(
        n_cini_module_0__majority7_module_2_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_2_U8 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__majority7_module_2_n11), .Z(
        n_cini_module_0__majority7_module_2_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U7 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority7_module_2_n9), .ZN(
        n_cini_module_0__majority7_module_2_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_2_U6 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__majority7_module_2_n10), .Z(
        n_cini_module_0__majority7_module_2_n7) );
  OR2_X1 u_cini_module_0__majority7_module_2_U5 ( .A1(
        n_cini_module_0__majority7_module_2_n9), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_2_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U4 ( .A1(
        n_cini_module_0__majority7_module_2_n7), .A2(
        n_cini_module_0__majority7_module_2_n8), .ZN(
        n_cini_module_0__majority7_module_2_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U3 ( .A1(
        n_cini_module_0__majority7_module_2_n5), .A2(
        n_cini_module_0__majority7_module_2_n6), .ZN(
        n_cini_module_0__majority7_module_2_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U2 ( .A1(
        n_cini_module_0__majority7_module_2_n3), .A2(
        n_cini_module_0__majority7_module_2_n4), .ZN(
        n_cini_module_0__majority7_module_2_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_2_U1 ( .A1(
        n_cini_module_0__majority7_module_2_n1), .A2(
        n_cini_module_0__majority7_module_2_n2), .ZN(
        n_cini_module_0__majority7_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_17__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_2_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_17_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_9_U1 ( .A1(
        n_cini_module_0__reg_module_17_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_18__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_9_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_18_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_19_U1 ( .A(
        n_cini_module_0__reg_module_16_res), .B(
        n_cini_module_0__reg_module_18_res), .Z(
        n_cini_module_0__xor_module_19_res) );
  XOR2_X1 u_cini_module_0__xor_module_20_U1 ( .A(
        n_cini_module_0__xor_module_19_res), .B(
        n_cini_module_0__reg_module_14_res), .Z(io_c_s0_d1) );
  DFF_X1 u_cini_module_0__reg_module_19__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_19_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_10_U1 ( .A1(
        n_cini_module_0__reg_module_19_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_20__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_10_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_20_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_21__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_1), .Q(n_cini_module_0__reg_module_21_res), .QN() );
  INV_X1 u_cini_module_0__not_module_4_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_4_res) );
  AND2_X1 u_cini_module_0__and_module_11_U1 ( .A1(
        n_cini_module_0__not_module_4_res), .A2(
        n_cini_module_0__reg_module_21_res), .ZN(
        n_cini_module_0__and_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_22__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_11_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_22_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_3_U18 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority7_module_3_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_3_U17 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_10_res), .Z(
        n_cini_module_0__majority7_module_3_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U16 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority7_module_3_n10), .ZN(
        n_cini_module_0__majority7_module_3_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U15 ( .A1(
        n_cini_module_0__majority7_module_3_n16), .A2(
        n_cini_module_0__majority7_module_3_n17), .ZN(
        n_cini_module_0__majority7_module_3_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority7_module_3_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_3_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_4_res), .Z(
        n_cini_module_0__majority7_module_3_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U12 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority7_module_3_n11), .ZN(
        n_cini_module_0__majority7_module_3_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U11 ( .A1(
        n_cini_module_0__majority7_module_3_n14), .A2(
        n_cini_module_0__majority7_module_3_n15), .ZN(
        n_cini_module_0__majority7_module_3_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U10 ( .A1(
        n_cini_module_0__majority7_module_3_n13), .A2(
        n_cini_module_0__majority7_module_3_n12), .ZN(
        n_cini_module_0__majority7_module_3_n1) );
  OR2_X1 u_cini_module_0__majority7_module_3_U9 ( .A1(
        n_cini_module_0__majority7_module_3_n12), .A2(
        n_cini_module_0__majority7_module_3_n13), .ZN(
        n_cini_module_0__majority7_module_3_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_3_U8 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__majority7_module_3_n11), .Z(
        n_cini_module_0__majority7_module_3_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U7 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority7_module_3_n9), .ZN(
        n_cini_module_0__majority7_module_3_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_3_U6 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__majority7_module_3_n10), .Z(
        n_cini_module_0__majority7_module_3_n7) );
  OR2_X1 u_cini_module_0__majority7_module_3_U5 ( .A1(
        n_cini_module_0__majority7_module_3_n9), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_3_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U4 ( .A1(
        n_cini_module_0__majority7_module_3_n7), .A2(
        n_cini_module_0__majority7_module_3_n8), .ZN(
        n_cini_module_0__majority7_module_3_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U3 ( .A1(
        n_cini_module_0__majority7_module_3_n5), .A2(
        n_cini_module_0__majority7_module_3_n6), .ZN(
        n_cini_module_0__majority7_module_3_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U2 ( .A1(
        n_cini_module_0__majority7_module_3_n3), .A2(
        n_cini_module_0__majority7_module_3_n4), .ZN(
        n_cini_module_0__majority7_module_3_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_3_U1 ( .A1(
        n_cini_module_0__majority7_module_3_n1), .A2(
        n_cini_module_0__majority7_module_3_n2), .ZN(
        n_cini_module_0__majority7_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_23__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_3_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_23_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_12_U1 ( .A1(
        n_cini_module_0__reg_module_23_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_24__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_12_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_24_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_21_U1 ( .A(
        n_cini_module_0__reg_module_22_res), .B(
        n_cini_module_0__reg_module_24_res), .Z(
        n_cini_module_0__xor_module_21_res) );
  XOR2_X1 u_cini_module_0__xor_module_22_U1 ( .A(
        n_cini_module_0__xor_module_21_res), .B(
        n_cini_module_0__reg_module_20_res), .Z(io_c_s1_d1) );
  DFF_X1 u_cini_module_0__reg_module_25__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_25_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_13_U1 ( .A1(
        n_cini_module_0__reg_module_25_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_26__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_13_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_26_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_27__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_2), .Q(n_cini_module_0__reg_module_27_res), .QN() );
  INV_X1 u_cini_module_0__not_module_5_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_5_res) );
  AND2_X1 u_cini_module_0__and_module_14_U1 ( .A1(
        n_cini_module_0__not_module_5_res), .A2(
        n_cini_module_0__reg_module_27_res), .ZN(
        n_cini_module_0__and_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_28__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_14_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_28_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_4_U18 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority7_module_4_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_4_U17 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_9_res), .Z(
        n_cini_module_0__majority7_module_4_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U16 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority7_module_4_n10), .ZN(
        n_cini_module_0__majority7_module_4_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U15 ( .A1(
        n_cini_module_0__majority7_module_4_n16), .A2(
        n_cini_module_0__majority7_module_4_n17), .ZN(
        n_cini_module_0__majority7_module_4_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority7_module_4_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_4_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_3_res), .Z(
        n_cini_module_0__majority7_module_4_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U12 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority7_module_4_n11), .ZN(
        n_cini_module_0__majority7_module_4_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U11 ( .A1(
        n_cini_module_0__majority7_module_4_n14), .A2(
        n_cini_module_0__majority7_module_4_n15), .ZN(
        n_cini_module_0__majority7_module_4_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U10 ( .A1(
        n_cini_module_0__majority7_module_4_n13), .A2(
        n_cini_module_0__majority7_module_4_n12), .ZN(
        n_cini_module_0__majority7_module_4_n1) );
  OR2_X1 u_cini_module_0__majority7_module_4_U9 ( .A1(
        n_cini_module_0__majority7_module_4_n12), .A2(
        n_cini_module_0__majority7_module_4_n13), .ZN(
        n_cini_module_0__majority7_module_4_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_4_U8 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__majority7_module_4_n11), .Z(
        n_cini_module_0__majority7_module_4_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U7 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority7_module_4_n9), .ZN(
        n_cini_module_0__majority7_module_4_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_4_U6 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__majority7_module_4_n10), .Z(
        n_cini_module_0__majority7_module_4_n7) );
  OR2_X1 u_cini_module_0__majority7_module_4_U5 ( .A1(
        n_cini_module_0__majority7_module_4_n9), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_4_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U4 ( .A1(
        n_cini_module_0__majority7_module_4_n7), .A2(
        n_cini_module_0__majority7_module_4_n8), .ZN(
        n_cini_module_0__majority7_module_4_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U3 ( .A1(
        n_cini_module_0__majority7_module_4_n5), .A2(
        n_cini_module_0__majority7_module_4_n6), .ZN(
        n_cini_module_0__majority7_module_4_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U2 ( .A1(
        n_cini_module_0__majority7_module_4_n3), .A2(
        n_cini_module_0__majority7_module_4_n4), .ZN(
        n_cini_module_0__majority7_module_4_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_4_U1 ( .A1(
        n_cini_module_0__majority7_module_4_n1), .A2(
        n_cini_module_0__majority7_module_4_n2), .ZN(
        n_cini_module_0__majority7_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_29__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_4_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_29_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_15_U1 ( .A1(
        n_cini_module_0__reg_module_29_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_30__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_15_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_30_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_23_U1 ( .A(
        n_cini_module_0__reg_module_28_res), .B(
        n_cini_module_0__reg_module_30_res), .Z(
        n_cini_module_0__xor_module_23_res) );
  XOR2_X1 u_cini_module_0__xor_module_24_U1 ( .A(
        n_cini_module_0__xor_module_23_res), .B(
        n_cini_module_0__reg_module_26_res), .Z(io_c_s0_d2) );
  DFF_X1 u_cini_module_0__reg_module_31__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_31_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_16_U1 ( .A1(
        n_cini_module_0__reg_module_31_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_16_res) );
  DFF_X1 u_cini_module_0__reg_module_32__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_16_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_32_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_33__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_2), .Q(n_cini_module_0__reg_module_33_res), .QN() );
  INV_X1 u_cini_module_0__not_module_6_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_6_res) );
  AND2_X1 u_cini_module_0__and_module_17_U1 ( .A1(
        n_cini_module_0__not_module_6_res), .A2(
        n_cini_module_0__reg_module_33_res), .ZN(
        n_cini_module_0__and_module_17_res) );
  DFF_X1 u_cini_module_0__reg_module_34__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_17_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_34_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_5_U18 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority7_module_5_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_5_U17 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_10_res), .Z(
        n_cini_module_0__majority7_module_5_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U16 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority7_module_5_n10), .ZN(
        n_cini_module_0__majority7_module_5_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U15 ( .A1(
        n_cini_module_0__majority7_module_5_n16), .A2(
        n_cini_module_0__majority7_module_5_n17), .ZN(
        n_cini_module_0__majority7_module_5_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority7_module_5_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_5_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_4_res), .Z(
        n_cini_module_0__majority7_module_5_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U12 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority7_module_5_n11), .ZN(
        n_cini_module_0__majority7_module_5_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U11 ( .A1(
        n_cini_module_0__majority7_module_5_n14), .A2(
        n_cini_module_0__majority7_module_5_n15), .ZN(
        n_cini_module_0__majority7_module_5_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U10 ( .A1(
        n_cini_module_0__majority7_module_5_n13), .A2(
        n_cini_module_0__majority7_module_5_n12), .ZN(
        n_cini_module_0__majority7_module_5_n1) );
  OR2_X1 u_cini_module_0__majority7_module_5_U9 ( .A1(
        n_cini_module_0__majority7_module_5_n12), .A2(
        n_cini_module_0__majority7_module_5_n13), .ZN(
        n_cini_module_0__majority7_module_5_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_5_U8 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__majority7_module_5_n11), .Z(
        n_cini_module_0__majority7_module_5_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U7 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority7_module_5_n9), .ZN(
        n_cini_module_0__majority7_module_5_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_5_U6 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__majority7_module_5_n10), .Z(
        n_cini_module_0__majority7_module_5_n7) );
  OR2_X1 u_cini_module_0__majority7_module_5_U5 ( .A1(
        n_cini_module_0__majority7_module_5_n9), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_5_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U4 ( .A1(
        n_cini_module_0__majority7_module_5_n7), .A2(
        n_cini_module_0__majority7_module_5_n8), .ZN(
        n_cini_module_0__majority7_module_5_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U3 ( .A1(
        n_cini_module_0__majority7_module_5_n5), .A2(
        n_cini_module_0__majority7_module_5_n6), .ZN(
        n_cini_module_0__majority7_module_5_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U2 ( .A1(
        n_cini_module_0__majority7_module_5_n3), .A2(
        n_cini_module_0__majority7_module_5_n4), .ZN(
        n_cini_module_0__majority7_module_5_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_5_U1 ( .A1(
        n_cini_module_0__majority7_module_5_n1), .A2(
        n_cini_module_0__majority7_module_5_n2), .ZN(
        n_cini_module_0__majority7_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_35__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_5_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_35_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_18_U1 ( .A1(
        n_cini_module_0__reg_module_35_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_36__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_18_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_36_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_25_U1 ( .A(
        n_cini_module_0__reg_module_34_res), .B(
        n_cini_module_0__reg_module_36_res), .Z(
        n_cini_module_0__xor_module_25_res) );
  XOR2_X1 u_cini_module_0__xor_module_26_U1 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
        n_cini_module_0__reg_module_32_res), .Z(io_c_s1_d2) );
  DFF_X1 u_cini_module_0__reg_module_37__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_37_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_19_U1 ( .A1(
        n_cini_module_0__reg_module_37_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_19_res) );
  DFF_X1 u_cini_module_0__reg_module_38__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_19_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_38_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_39__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_3), .Q(n_cini_module_0__reg_module_39_res), .QN() );
  INV_X1 u_cini_module_0__not_module_7_U1 ( .A(io_a_s0_d3), .ZN(
        n_cini_module_0__not_module_7_res) );
  AND2_X1 u_cini_module_0__and_module_20_U1 ( .A1(
        n_cini_module_0__not_module_7_res), .A2(
        n_cini_module_0__reg_module_39_res), .ZN(
        n_cini_module_0__and_module_20_res) );
  DFF_X1 u_cini_module_0__reg_module_40__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_20_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_40_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_6_U18 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority7_module_6_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_6_U17 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_9_res), .Z(
        n_cini_module_0__majority7_module_6_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U16 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority7_module_6_n10), .ZN(
        n_cini_module_0__majority7_module_6_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U15 ( .A1(
        n_cini_module_0__majority7_module_6_n16), .A2(
        n_cini_module_0__majority7_module_6_n17), .ZN(
        n_cini_module_0__majority7_module_6_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority7_module_6_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_6_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_3_res), .Z(
        n_cini_module_0__majority7_module_6_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U12 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority7_module_6_n11), .ZN(
        n_cini_module_0__majority7_module_6_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U11 ( .A1(
        n_cini_module_0__majority7_module_6_n14), .A2(
        n_cini_module_0__majority7_module_6_n15), .ZN(
        n_cini_module_0__majority7_module_6_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U10 ( .A1(
        n_cini_module_0__majority7_module_6_n13), .A2(
        n_cini_module_0__majority7_module_6_n12), .ZN(
        n_cini_module_0__majority7_module_6_n1) );
  OR2_X1 u_cini_module_0__majority7_module_6_U9 ( .A1(
        n_cini_module_0__majority7_module_6_n12), .A2(
        n_cini_module_0__majority7_module_6_n13), .ZN(
        n_cini_module_0__majority7_module_6_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_6_U8 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__majority7_module_6_n11), .Z(
        n_cini_module_0__majority7_module_6_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U7 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority7_module_6_n9), .ZN(
        n_cini_module_0__majority7_module_6_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_6_U6 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__majority7_module_6_n10), .Z(
        n_cini_module_0__majority7_module_6_n7) );
  OR2_X1 u_cini_module_0__majority7_module_6_U5 ( .A1(
        n_cini_module_0__majority7_module_6_n9), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_6_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U4 ( .A1(
        n_cini_module_0__majority7_module_6_n7), .A2(
        n_cini_module_0__majority7_module_6_n8), .ZN(
        n_cini_module_0__majority7_module_6_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U3 ( .A1(
        n_cini_module_0__majority7_module_6_n5), .A2(
        n_cini_module_0__majority7_module_6_n6), .ZN(
        n_cini_module_0__majority7_module_6_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U2 ( .A1(
        n_cini_module_0__majority7_module_6_n3), .A2(
        n_cini_module_0__majority7_module_6_n4), .ZN(
        n_cini_module_0__majority7_module_6_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_6_U1 ( .A1(
        n_cini_module_0__majority7_module_6_n1), .A2(
        n_cini_module_0__majority7_module_6_n2), .ZN(
        n_cini_module_0__majority7_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_41__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_6_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_41_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_21_U1 ( .A1(
        n_cini_module_0__reg_module_41_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_21_res) );
  DFF_X1 u_cini_module_0__reg_module_42__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_21_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_42_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_27_U1 ( .A(
        n_cini_module_0__reg_module_40_res), .B(
        n_cini_module_0__reg_module_42_res), .Z(
        n_cini_module_0__xor_module_27_res) );
  XOR2_X1 u_cini_module_0__xor_module_28_U1 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__reg_module_38_res), .Z(io_c_s0_d3) );
  DFF_X1 u_cini_module_0__reg_module_43__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_43_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_22_U1 ( .A1(
        n_cini_module_0__reg_module_43_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_22_res) );
  DFF_X1 u_cini_module_0__reg_module_44__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_22_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_44_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_45__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_3), .Q(n_cini_module_0__reg_module_45_res), .QN() );
  INV_X1 u_cini_module_0__not_module_8_U1 ( .A(io_a_s1_d3), .ZN(
        n_cini_module_0__not_module_8_res) );
  AND2_X1 u_cini_module_0__and_module_23_U1 ( .A1(
        n_cini_module_0__not_module_8_res), .A2(
        n_cini_module_0__reg_module_45_res), .ZN(
        n_cini_module_0__and_module_23_res) );
  DFF_X1 u_cini_module_0__reg_module_46__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_23_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_46_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_7_U18 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority7_module_7_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_7_U17 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_10_res), .Z(
        n_cini_module_0__majority7_module_7_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U16 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority7_module_7_n10), .ZN(
        n_cini_module_0__majority7_module_7_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U15 ( .A1(
        n_cini_module_0__majority7_module_7_n16), .A2(
        n_cini_module_0__majority7_module_7_n17), .ZN(
        n_cini_module_0__majority7_module_7_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority7_module_7_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_7_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_4_res), .Z(
        n_cini_module_0__majority7_module_7_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U12 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority7_module_7_n11), .ZN(
        n_cini_module_0__majority7_module_7_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U11 ( .A1(
        n_cini_module_0__majority7_module_7_n14), .A2(
        n_cini_module_0__majority7_module_7_n15), .ZN(
        n_cini_module_0__majority7_module_7_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U10 ( .A1(
        n_cini_module_0__majority7_module_7_n13), .A2(
        n_cini_module_0__majority7_module_7_n12), .ZN(
        n_cini_module_0__majority7_module_7_n1) );
  OR2_X1 u_cini_module_0__majority7_module_7_U9 ( .A1(
        n_cini_module_0__majority7_module_7_n12), .A2(
        n_cini_module_0__majority7_module_7_n13), .ZN(
        n_cini_module_0__majority7_module_7_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_7_U8 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__majority7_module_7_n11), .Z(
        n_cini_module_0__majority7_module_7_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U7 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority7_module_7_n9), .ZN(
        n_cini_module_0__majority7_module_7_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_7_U6 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__majority7_module_7_n10), .Z(
        n_cini_module_0__majority7_module_7_n7) );
  OR2_X1 u_cini_module_0__majority7_module_7_U5 ( .A1(
        n_cini_module_0__majority7_module_7_n9), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_7_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U4 ( .A1(
        n_cini_module_0__majority7_module_7_n7), .A2(
        n_cini_module_0__majority7_module_7_n8), .ZN(
        n_cini_module_0__majority7_module_7_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U3 ( .A1(
        n_cini_module_0__majority7_module_7_n5), .A2(
        n_cini_module_0__majority7_module_7_n6), .ZN(
        n_cini_module_0__majority7_module_7_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U2 ( .A1(
        n_cini_module_0__majority7_module_7_n3), .A2(
        n_cini_module_0__majority7_module_7_n4), .ZN(
        n_cini_module_0__majority7_module_7_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_7_U1 ( .A1(
        n_cini_module_0__majority7_module_7_n1), .A2(
        n_cini_module_0__majority7_module_7_n2), .ZN(
        n_cini_module_0__majority7_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_47__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_7_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_47_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_24_U1 ( .A1(
        n_cini_module_0__reg_module_47_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_24_res) );
  DFF_X1 u_cini_module_0__reg_module_48__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_24_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_48_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_29_U1 ( .A(
        n_cini_module_0__reg_module_46_res), .B(
        n_cini_module_0__reg_module_48_res), .Z(
        n_cini_module_0__xor_module_29_res) );
  XOR2_X1 u_cini_module_0__xor_module_30_U1 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
        n_cini_module_0__reg_module_44_res), .Z(io_c_s1_d3) );
  DFF_X1 u_cini_module_0__reg_module_49__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_49_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_25_U1 ( .A1(
        n_cini_module_0__reg_module_49_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_25_res) );
  DFF_X1 u_cini_module_0__reg_module_50__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_25_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_50_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_51__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_4), .Q(n_cini_module_0__reg_module_51_res), .QN() );
  INV_X1 u_cini_module_0__not_module_9_U1 ( .A(io_a_s0_d4), .ZN(
        n_cini_module_0__not_module_9_res) );
  AND2_X1 u_cini_module_0__and_module_26_U1 ( .A1(
        n_cini_module_0__not_module_9_res), .A2(
        n_cini_module_0__reg_module_51_res), .ZN(
        n_cini_module_0__and_module_26_res) );
  DFF_X1 u_cini_module_0__reg_module_52__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_26_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_52_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_8_U18 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority7_module_8_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_8_U17 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_9_res), .Z(
        n_cini_module_0__majority7_module_8_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U16 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority7_module_8_n10), .ZN(
        n_cini_module_0__majority7_module_8_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U15 ( .A1(
        n_cini_module_0__majority7_module_8_n16), .A2(
        n_cini_module_0__majority7_module_8_n17), .ZN(
        n_cini_module_0__majority7_module_8_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority7_module_8_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_8_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_3_res), .Z(
        n_cini_module_0__majority7_module_8_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U12 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority7_module_8_n11), .ZN(
        n_cini_module_0__majority7_module_8_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U11 ( .A1(
        n_cini_module_0__majority7_module_8_n14), .A2(
        n_cini_module_0__majority7_module_8_n15), .ZN(
        n_cini_module_0__majority7_module_8_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U10 ( .A1(
        n_cini_module_0__majority7_module_8_n13), .A2(
        n_cini_module_0__majority7_module_8_n12), .ZN(
        n_cini_module_0__majority7_module_8_n1) );
  OR2_X1 u_cini_module_0__majority7_module_8_U9 ( .A1(
        n_cini_module_0__majority7_module_8_n12), .A2(
        n_cini_module_0__majority7_module_8_n13), .ZN(
        n_cini_module_0__majority7_module_8_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_8_U8 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__majority7_module_8_n11), .Z(
        n_cini_module_0__majority7_module_8_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U7 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority7_module_8_n9), .ZN(
        n_cini_module_0__majority7_module_8_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_8_U6 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__majority7_module_8_n10), .Z(
        n_cini_module_0__majority7_module_8_n7) );
  OR2_X1 u_cini_module_0__majority7_module_8_U5 ( .A1(
        n_cini_module_0__majority7_module_8_n9), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_8_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U4 ( .A1(
        n_cini_module_0__majority7_module_8_n7), .A2(
        n_cini_module_0__majority7_module_8_n8), .ZN(
        n_cini_module_0__majority7_module_8_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U3 ( .A1(
        n_cini_module_0__majority7_module_8_n5), .A2(
        n_cini_module_0__majority7_module_8_n6), .ZN(
        n_cini_module_0__majority7_module_8_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U2 ( .A1(
        n_cini_module_0__majority7_module_8_n3), .A2(
        n_cini_module_0__majority7_module_8_n4), .ZN(
        n_cini_module_0__majority7_module_8_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_8_U1 ( .A1(
        n_cini_module_0__majority7_module_8_n1), .A2(
        n_cini_module_0__majority7_module_8_n2), .ZN(
        n_cini_module_0__majority7_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_53__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_8_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_53_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_27_U1 ( .A1(
        n_cini_module_0__reg_module_53_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_27_res) );
  DFF_X1 u_cini_module_0__reg_module_54__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_27_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_54_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_31_U1 ( .A(
        n_cini_module_0__reg_module_52_res), .B(
        n_cini_module_0__reg_module_54_res), .Z(
        n_cini_module_0__xor_module_31_res) );
  XOR2_X1 u_cini_module_0__xor_module_32_U1 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__reg_module_50_res), .Z(io_c_s0_d4) );
  DFF_X1 u_cini_module_0__reg_module_55__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_55_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_28_U1 ( .A1(
        n_cini_module_0__reg_module_55_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_28_res) );
  DFF_X1 u_cini_module_0__reg_module_56__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_28_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_56_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_57__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_4), .Q(n_cini_module_0__reg_module_57_res), .QN() );
  INV_X1 u_cini_module_0__not_module_10_U1 ( .A(io_a_s1_d4), .ZN(
        n_cini_module_0__not_module_10_res) );
  AND2_X1 u_cini_module_0__and_module_29_U1 ( .A1(
        n_cini_module_0__not_module_10_res), .A2(
        n_cini_module_0__reg_module_57_res), .ZN(
        n_cini_module_0__and_module_29_res) );
  DFF_X1 u_cini_module_0__reg_module_58__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_29_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_58_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_9_U18 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority7_module_9_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_9_U17 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_10_res), .Z(
        n_cini_module_0__majority7_module_9_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U16 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority7_module_9_n10), .ZN(
        n_cini_module_0__majority7_module_9_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U15 ( .A1(
        n_cini_module_0__majority7_module_9_n16), .A2(
        n_cini_module_0__majority7_module_9_n17), .ZN(
        n_cini_module_0__majority7_module_9_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority7_module_9_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_9_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_4_res), .Z(
        n_cini_module_0__majority7_module_9_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U12 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority7_module_9_n11), .ZN(
        n_cini_module_0__majority7_module_9_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U11 ( .A1(
        n_cini_module_0__majority7_module_9_n14), .A2(
        n_cini_module_0__majority7_module_9_n15), .ZN(
        n_cini_module_0__majority7_module_9_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U10 ( .A1(
        n_cini_module_0__majority7_module_9_n13), .A2(
        n_cini_module_0__majority7_module_9_n12), .ZN(
        n_cini_module_0__majority7_module_9_n1) );
  OR2_X1 u_cini_module_0__majority7_module_9_U9 ( .A1(
        n_cini_module_0__majority7_module_9_n12), .A2(
        n_cini_module_0__majority7_module_9_n13), .ZN(
        n_cini_module_0__majority7_module_9_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_9_U8 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__majority7_module_9_n11), .Z(
        n_cini_module_0__majority7_module_9_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U7 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority7_module_9_n9), .ZN(
        n_cini_module_0__majority7_module_9_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_9_U6 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__majority7_module_9_n10), .Z(
        n_cini_module_0__majority7_module_9_n7) );
  OR2_X1 u_cini_module_0__majority7_module_9_U5 ( .A1(
        n_cini_module_0__majority7_module_9_n9), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_9_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U4 ( .A1(
        n_cini_module_0__majority7_module_9_n7), .A2(
        n_cini_module_0__majority7_module_9_n8), .ZN(
        n_cini_module_0__majority7_module_9_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U3 ( .A1(
        n_cini_module_0__majority7_module_9_n5), .A2(
        n_cini_module_0__majority7_module_9_n6), .ZN(
        n_cini_module_0__majority7_module_9_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U2 ( .A1(
        n_cini_module_0__majority7_module_9_n3), .A2(
        n_cini_module_0__majority7_module_9_n4), .ZN(
        n_cini_module_0__majority7_module_9_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_9_U1 ( .A1(
        n_cini_module_0__majority7_module_9_n1), .A2(
        n_cini_module_0__majority7_module_9_n2), .ZN(
        n_cini_module_0__majority7_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_59__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_9_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_59_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_30_U1 ( .A1(
        n_cini_module_0__reg_module_59_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_30_res) );
  DFF_X1 u_cini_module_0__reg_module_60__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_30_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_60_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_33_U1 ( .A(
        n_cini_module_0__reg_module_58_res), .B(
        n_cini_module_0__reg_module_60_res), .Z(
        n_cini_module_0__xor_module_33_res) );
  XOR2_X1 u_cini_module_0__xor_module_34_U1 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__reg_module_56_res), .Z(io_c_s1_d4) );
  DFF_X1 u_cini_module_0__reg_module_61__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d5), .CK(clock_5), .Q(n_cini_module_0__reg_module_61_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_31_U1 ( .A1(
        n_cini_module_0__reg_module_61_res), .A2(io_a_s0_d5), .ZN(
        n_cini_module_0__and_module_31_res) );
  DFF_X1 u_cini_module_0__reg_module_62__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_31_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_62_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_63__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_5), .Q(n_cini_module_0__reg_module_63_res), .QN() );
  INV_X1 u_cini_module_0__not_module_11_U1 ( .A(io_a_s0_d5), .ZN(
        n_cini_module_0__not_module_11_res) );
  AND2_X1 u_cini_module_0__and_module_32_U1 ( .A1(
        n_cini_module_0__not_module_11_res), .A2(
        n_cini_module_0__reg_module_63_res), .ZN(
        n_cini_module_0__and_module_32_res) );
  DFF_X1 u_cini_module_0__reg_module_64__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_32_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_64_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_10_U18 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority7_module_10_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_10_U17 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_9_res), .Z(
        n_cini_module_0__majority7_module_10_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U16 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority7_module_10_n10), .ZN(
        n_cini_module_0__majority7_module_10_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U15 ( .A1(
        n_cini_module_0__majority7_module_10_n16), .A2(
        n_cini_module_0__majority7_module_10_n17), .ZN(
        n_cini_module_0__majority7_module_10_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority7_module_10_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_10_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_3_res), .Z(
        n_cini_module_0__majority7_module_10_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U12 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority7_module_10_n11), .ZN(
        n_cini_module_0__majority7_module_10_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U11 ( .A1(
        n_cini_module_0__majority7_module_10_n14), .A2(
        n_cini_module_0__majority7_module_10_n15), .ZN(
        n_cini_module_0__majority7_module_10_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U10 ( .A1(
        n_cini_module_0__majority7_module_10_n13), .A2(
        n_cini_module_0__majority7_module_10_n12), .ZN(
        n_cini_module_0__majority7_module_10_n1) );
  OR2_X1 u_cini_module_0__majority7_module_10_U9 ( .A1(
        n_cini_module_0__majority7_module_10_n12), .A2(
        n_cini_module_0__majority7_module_10_n13), .ZN(
        n_cini_module_0__majority7_module_10_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_10_U8 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__majority7_module_10_n11), .Z(
        n_cini_module_0__majority7_module_10_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U7 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority7_module_10_n9), .ZN(
        n_cini_module_0__majority7_module_10_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_10_U6 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__majority7_module_10_n10), .Z(
        n_cini_module_0__majority7_module_10_n7) );
  OR2_X1 u_cini_module_0__majority7_module_10_U5 ( .A1(
        n_cini_module_0__majority7_module_10_n9), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_10_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U4 ( .A1(
        n_cini_module_0__majority7_module_10_n7), .A2(
        n_cini_module_0__majority7_module_10_n8), .ZN(
        n_cini_module_0__majority7_module_10_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U3 ( .A1(
        n_cini_module_0__majority7_module_10_n5), .A2(
        n_cini_module_0__majority7_module_10_n6), .ZN(
        n_cini_module_0__majority7_module_10_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U2 ( .A1(
        n_cini_module_0__majority7_module_10_n3), .A2(
        n_cini_module_0__majority7_module_10_n4), .ZN(
        n_cini_module_0__majority7_module_10_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_10_U1 ( .A1(
        n_cini_module_0__majority7_module_10_n1), .A2(
        n_cini_module_0__majority7_module_10_n2), .ZN(
        n_cini_module_0__majority7_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_65__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_10_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_65_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_33_U1 ( .A1(
        n_cini_module_0__reg_module_65_res), .A2(io_a_s0_d5), .ZN(
        n_cini_module_0__and_module_33_res) );
  DFF_X1 u_cini_module_0__reg_module_66__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_33_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_66_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_35_U1 ( .A(
        n_cini_module_0__reg_module_64_res), .B(
        n_cini_module_0__reg_module_66_res), .Z(
        n_cini_module_0__xor_module_35_res) );
  XOR2_X1 u_cini_module_0__xor_module_36_U1 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__reg_module_62_res), .Z(io_c_s0_d5) );
  DFF_X1 u_cini_module_0__reg_module_67__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d5), .CK(clock_5), .Q(n_cini_module_0__reg_module_67_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_34_U1 ( .A1(
        n_cini_module_0__reg_module_67_res), .A2(io_a_s1_d5), .ZN(
        n_cini_module_0__and_module_34_res) );
  DFF_X1 u_cini_module_0__reg_module_68__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_34_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_68_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_69__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_5), .Q(n_cini_module_0__reg_module_69_res), .QN() );
  INV_X1 u_cini_module_0__not_module_12_U1 ( .A(io_a_s1_d5), .ZN(
        n_cini_module_0__not_module_12_res) );
  AND2_X1 u_cini_module_0__and_module_35_U1 ( .A1(
        n_cini_module_0__not_module_12_res), .A2(
        n_cini_module_0__reg_module_69_res), .ZN(
        n_cini_module_0__and_module_35_res) );
  DFF_X1 u_cini_module_0__reg_module_70__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_35_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_70_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_11_U18 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority7_module_11_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_11_U17 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_10_res), .Z(
        n_cini_module_0__majority7_module_11_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U16 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority7_module_11_n10), .ZN(
        n_cini_module_0__majority7_module_11_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U15 ( .A1(
        n_cini_module_0__majority7_module_11_n16), .A2(
        n_cini_module_0__majority7_module_11_n17), .ZN(
        n_cini_module_0__majority7_module_11_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority7_module_11_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_11_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_4_res), .Z(
        n_cini_module_0__majority7_module_11_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U12 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority7_module_11_n11), .ZN(
        n_cini_module_0__majority7_module_11_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U11 ( .A1(
        n_cini_module_0__majority7_module_11_n14), .A2(
        n_cini_module_0__majority7_module_11_n15), .ZN(
        n_cini_module_0__majority7_module_11_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U10 ( .A1(
        n_cini_module_0__majority7_module_11_n13), .A2(
        n_cini_module_0__majority7_module_11_n12), .ZN(
        n_cini_module_0__majority7_module_11_n1) );
  OR2_X1 u_cini_module_0__majority7_module_11_U9 ( .A1(
        n_cini_module_0__majority7_module_11_n12), .A2(
        n_cini_module_0__majority7_module_11_n13), .ZN(
        n_cini_module_0__majority7_module_11_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_11_U8 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__majority7_module_11_n11), .Z(
        n_cini_module_0__majority7_module_11_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U7 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority7_module_11_n9), .ZN(
        n_cini_module_0__majority7_module_11_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_11_U6 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__majority7_module_11_n10), .Z(
        n_cini_module_0__majority7_module_11_n7) );
  OR2_X1 u_cini_module_0__majority7_module_11_U5 ( .A1(
        n_cini_module_0__majority7_module_11_n9), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_11_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U4 ( .A1(
        n_cini_module_0__majority7_module_11_n7), .A2(
        n_cini_module_0__majority7_module_11_n8), .ZN(
        n_cini_module_0__majority7_module_11_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U3 ( .A1(
        n_cini_module_0__majority7_module_11_n5), .A2(
        n_cini_module_0__majority7_module_11_n6), .ZN(
        n_cini_module_0__majority7_module_11_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U2 ( .A1(
        n_cini_module_0__majority7_module_11_n3), .A2(
        n_cini_module_0__majority7_module_11_n4), .ZN(
        n_cini_module_0__majority7_module_11_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_11_U1 ( .A1(
        n_cini_module_0__majority7_module_11_n1), .A2(
        n_cini_module_0__majority7_module_11_n2), .ZN(
        n_cini_module_0__majority7_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_71__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_11_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_71_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_36_U1 ( .A1(
        n_cini_module_0__reg_module_71_res), .A2(io_a_s1_d5), .ZN(
        n_cini_module_0__and_module_36_res) );
  DFF_X1 u_cini_module_0__reg_module_72__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_36_res), .CK(clock_5), .Q(
        n_cini_module_0__reg_module_72_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_37_U1 ( .A(
        n_cini_module_0__reg_module_70_res), .B(
        n_cini_module_0__reg_module_72_res), .Z(
        n_cini_module_0__xor_module_37_res) );
  XOR2_X1 u_cini_module_0__xor_module_38_U1 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__reg_module_68_res), .Z(io_c_s1_d5) );
  DFF_X1 u_cini_module_0__reg_module_73__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d6), .CK(clock_6), .Q(n_cini_module_0__reg_module_73_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_37_U1 ( .A1(
        n_cini_module_0__reg_module_73_res), .A2(io_a_s0_d6), .ZN(
        n_cini_module_0__and_module_37_res) );
  DFF_X1 u_cini_module_0__reg_module_74__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_37_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_74_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_75__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_6), .Q(n_cini_module_0__reg_module_75_res), .QN() );
  INV_X1 u_cini_module_0__not_module_13_U1 ( .A(io_a_s0_d6), .ZN(
        n_cini_module_0__not_module_13_res) );
  AND2_X1 u_cini_module_0__and_module_38_U1 ( .A1(
        n_cini_module_0__not_module_13_res), .A2(
        n_cini_module_0__reg_module_75_res), .ZN(
        n_cini_module_0__and_module_38_res) );
  DFF_X1 u_cini_module_0__reg_module_76__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_38_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_76_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_12_U18 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority7_module_12_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_12_U17 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
        n_cini_module_0__xor_module_9_res), .Z(
        n_cini_module_0__majority7_module_12_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U16 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority7_module_12_n10), .ZN(
        n_cini_module_0__majority7_module_12_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U15 ( .A1(
        n_cini_module_0__majority7_module_12_n16), .A2(
        n_cini_module_0__majority7_module_12_n17), .ZN(
        n_cini_module_0__majority7_module_12_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U14 ( .A1(
        n_cini_module_0__xor_module_1_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority7_module_12_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_12_U13 ( .A(
        n_cini_module_0__xor_module_1_res), .B(
        n_cini_module_0__xor_module_3_res), .Z(
        n_cini_module_0__majority7_module_12_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U12 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority7_module_12_n11), .ZN(
        n_cini_module_0__majority7_module_12_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U11 ( .A1(
        n_cini_module_0__majority7_module_12_n14), .A2(
        n_cini_module_0__majority7_module_12_n15), .ZN(
        n_cini_module_0__majority7_module_12_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U10 ( .A1(
        n_cini_module_0__majority7_module_12_n13), .A2(
        n_cini_module_0__majority7_module_12_n12), .ZN(
        n_cini_module_0__majority7_module_12_n1) );
  OR2_X1 u_cini_module_0__majority7_module_12_U9 ( .A1(
        n_cini_module_0__majority7_module_12_n12), .A2(
        n_cini_module_0__majority7_module_12_n13), .ZN(
        n_cini_module_0__majority7_module_12_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_12_U8 ( .A(
        n_cini_module_0__xor_module_5_res), .B(
        n_cini_module_0__majority7_module_12_n11), .Z(
        n_cini_module_0__majority7_module_12_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U7 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority7_module_12_n9), .ZN(
        n_cini_module_0__majority7_module_12_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_12_U6 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
        n_cini_module_0__majority7_module_12_n10), .Z(
        n_cini_module_0__majority7_module_12_n7) );
  OR2_X1 u_cini_module_0__majority7_module_12_U5 ( .A1(
        n_cini_module_0__majority7_module_12_n9), .A2(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority7_module_12_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U4 ( .A1(
        n_cini_module_0__majority7_module_12_n7), .A2(
        n_cini_module_0__majority7_module_12_n8), .ZN(
        n_cini_module_0__majority7_module_12_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U3 ( .A1(
        n_cini_module_0__majority7_module_12_n5), .A2(
        n_cini_module_0__majority7_module_12_n6), .ZN(
        n_cini_module_0__majority7_module_12_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U2 ( .A1(
        n_cini_module_0__majority7_module_12_n3), .A2(
        n_cini_module_0__majority7_module_12_n4), .ZN(
        n_cini_module_0__majority7_module_12_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_12_U1 ( .A1(
        n_cini_module_0__majority7_module_12_n1), .A2(
        n_cini_module_0__majority7_module_12_n2), .ZN(
        n_cini_module_0__majority7_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_77__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_12_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_77_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_39_U1 ( .A1(
        n_cini_module_0__reg_module_77_res), .A2(io_a_s0_d6), .ZN(
        n_cini_module_0__and_module_39_res) );
  DFF_X1 u_cini_module_0__reg_module_78__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_39_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_78_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_39_U1 ( .A(
        n_cini_module_0__reg_module_76_res), .B(
        n_cini_module_0__reg_module_78_res), .Z(
        n_cini_module_0__xor_module_39_res) );
  XOR2_X1 u_cini_module_0__xor_module_40_U1 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__reg_module_74_res), .Z(io_c_s0_d6) );
  DFF_X1 u_cini_module_0__reg_module_79__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d6), .CK(clock_6), .Q(n_cini_module_0__reg_module_79_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_40_U1 ( .A1(
        n_cini_module_0__reg_module_79_res), .A2(io_a_s1_d6), .ZN(
        n_cini_module_0__and_module_40_res) );
  DFF_X1 u_cini_module_0__reg_module_80__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_40_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_80_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_81__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_6), .Q(n_cini_module_0__reg_module_81_res), .QN() );
  INV_X1 u_cini_module_0__not_module_14_U1 ( .A(io_a_s1_d6), .ZN(
        n_cini_module_0__not_module_14_res) );
  AND2_X1 u_cini_module_0__and_module_41_U1 ( .A1(
        n_cini_module_0__not_module_14_res), .A2(
        n_cini_module_0__reg_module_81_res), .ZN(
        n_cini_module_0__and_module_41_res) );
  DFF_X1 u_cini_module_0__reg_module_82__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_41_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_82_res), .QN() );
  NAND2_X1 u_cini_module_0__majority7_module_13_U18 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority7_module_13_n16) );
  XOR2_X1 u_cini_module_0__majority7_module_13_U17 ( .A(
        n_cini_module_0__xor_module_8_res), .B(
        n_cini_module_0__xor_module_10_res), .Z(
        n_cini_module_0__majority7_module_13_n10) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U16 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority7_module_13_n10), .ZN(
        n_cini_module_0__majority7_module_13_n17) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U15 ( .A1(
        n_cini_module_0__majority7_module_13_n16), .A2(
        n_cini_module_0__majority7_module_13_n17), .ZN(
        n_cini_module_0__majority7_module_13_n13) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U14 ( .A1(
        n_cini_module_0__xor_module_2_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority7_module_13_n14) );
  XOR2_X1 u_cini_module_0__majority7_module_13_U13 ( .A(
        n_cini_module_0__xor_module_2_res), .B(
        n_cini_module_0__xor_module_4_res), .Z(
        n_cini_module_0__majority7_module_13_n11) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U12 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority7_module_13_n11), .ZN(
        n_cini_module_0__majority7_module_13_n15) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U11 ( .A1(
        n_cini_module_0__majority7_module_13_n14), .A2(
        n_cini_module_0__majority7_module_13_n15), .ZN(
        n_cini_module_0__majority7_module_13_n12) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U10 ( .A1(
        n_cini_module_0__majority7_module_13_n13), .A2(
        n_cini_module_0__majority7_module_13_n12), .ZN(
        n_cini_module_0__majority7_module_13_n1) );
  OR2_X1 u_cini_module_0__majority7_module_13_U9 ( .A1(
        n_cini_module_0__majority7_module_13_n12), .A2(
        n_cini_module_0__majority7_module_13_n13), .ZN(
        n_cini_module_0__majority7_module_13_n3) );
  XOR2_X1 u_cini_module_0__majority7_module_13_U8 ( .A(
        n_cini_module_0__xor_module_6_res), .B(
        n_cini_module_0__majority7_module_13_n11), .Z(
        n_cini_module_0__majority7_module_13_n9) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U7 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority7_module_13_n9), .ZN(
        n_cini_module_0__majority7_module_13_n5) );
  XOR2_X1 u_cini_module_0__majority7_module_13_U6 ( .A(
        n_cini_module_0__xor_module_12_res), .B(
        n_cini_module_0__majority7_module_13_n10), .Z(
        n_cini_module_0__majority7_module_13_n7) );
  OR2_X1 u_cini_module_0__majority7_module_13_U5 ( .A1(
        n_cini_module_0__majority7_module_13_n9), .A2(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority7_module_13_n8) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U4 ( .A1(
        n_cini_module_0__majority7_module_13_n7), .A2(
        n_cini_module_0__majority7_module_13_n8), .ZN(
        n_cini_module_0__majority7_module_13_n6) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U3 ( .A1(
        n_cini_module_0__majority7_module_13_n5), .A2(
        n_cini_module_0__majority7_module_13_n6), .ZN(
        n_cini_module_0__majority7_module_13_n4) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U2 ( .A1(
        n_cini_module_0__majority7_module_13_n3), .A2(
        n_cini_module_0__majority7_module_13_n4), .ZN(
        n_cini_module_0__majority7_module_13_n2) );
  NAND2_X1 u_cini_module_0__majority7_module_13_U1 ( .A1(
        n_cini_module_0__majority7_module_13_n1), .A2(
        n_cini_module_0__majority7_module_13_n2), .ZN(
        n_cini_module_0__majority7_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_83__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority7_module_13_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_83_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_42_U1 ( .A1(
        n_cini_module_0__reg_module_83_res), .A2(io_a_s1_d6), .ZN(
        n_cini_module_0__and_module_42_res) );
  DFF_X1 u_cini_module_0__reg_module_84__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_42_res), .CK(clock_6), .Q(
        n_cini_module_0__reg_module_84_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_41_U1 ( .A(
        n_cini_module_0__reg_module_82_res), .B(
        n_cini_module_0__reg_module_84_res), .Z(
        n_cini_module_0__xor_module_41_res) );
  XOR2_X1 u_cini_module_0__xor_module_42_U1 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__reg_module_80_res), .Z(io_c_s1_d6) );
endmodule

