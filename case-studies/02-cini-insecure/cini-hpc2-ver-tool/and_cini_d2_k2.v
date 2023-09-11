/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Apr 21 09:54:53 2022
/////////////////////////////////////////////////////////////


module And_gate ( clock_0, clock_1, clock_2, clock_3, clock_4, io_a_s0_d0, 
        io_a_s0_d1, io_a_s0_d2, io_a_s0_d3, io_a_s0_d4, io_a_s1_d0, io_a_s1_d1, 
        io_a_s1_d2, io_a_s1_d3, io_a_s1_d4, io_a_s2_d0, io_a_s2_d1, io_a_s2_d2, 
        io_a_s2_d3, io_a_s2_d4, io_b_s0_d0, io_b_s0_d1, io_b_s0_d2, io_b_s0_d3, 
        io_b_s0_d4, io_b_s1_d0, io_b_s1_d1, io_b_s1_d2, io_b_s1_d3, io_b_s1_d4, 
        io_b_s2_d0, io_b_s2_d1, io_b_s2_d2, io_b_s2_d3, io_b_s2_d4, p_rand_0, 
        p_rand_1, p_rand_2, io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s0_d3, 
        io_c_s0_d4, io_c_s1_d0, io_c_s1_d1, io_c_s1_d2, io_c_s1_d3, io_c_s1_d4, 
        io_c_s2_d0, io_c_s2_d1, io_c_s2_d2, io_c_s2_d3, io_c_s2_d4 );
  input clock_0, clock_1, clock_2, clock_3, clock_4, io_a_s0_d0, io_a_s0_d1,
         io_a_s0_d2, io_a_s0_d3, io_a_s0_d4, io_a_s1_d0, io_a_s1_d1,
         io_a_s1_d2, io_a_s1_d3, io_a_s1_d4, io_a_s2_d0, io_a_s2_d1,
         io_a_s2_d2, io_a_s2_d3, io_a_s2_d4, io_b_s0_d0, io_b_s0_d1,
         io_b_s0_d2, io_b_s0_d3, io_b_s0_d4, io_b_s1_d0, io_b_s1_d1,
         io_b_s1_d2, io_b_s1_d3, io_b_s1_d4, io_b_s2_d0, io_b_s2_d1,
         io_b_s2_d2, io_b_s2_d3, io_b_s2_d4, p_rand_0, p_rand_1, p_rand_2;
  output io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s0_d3, io_c_s0_d4,
         io_c_s1_d0, io_c_s1_d1, io_c_s1_d2, io_c_s1_d3, io_c_s1_d4,
         io_c_s2_d0, io_c_s2_d1, io_c_s2_d2, io_c_s2_d3, io_c_s2_d4;
  wire   n_cini_module_0__xor_module_89_res,
         n_cini_module_0__xor_module_88_res,
         n_cini_module_0__reg_module_150_res,
         n_cini_module_0__and_module_75_res,
         n_cini_module_0__reg_module_149_res,
         n_cini_module_0__majority5_module_29_res,
         n_cini_module_0__reg_module_148_res,
         n_cini_module_0__and_module_74_res,
         n_cini_module_0__not_module_30_res,
         n_cini_module_0__reg_module_147_res,
         n_cini_module_0__xor_module_87_res,
         n_cini_module_0__reg_module_146_res,
         n_cini_module_0__and_module_73_res,
         n_cini_module_0__reg_module_145_res,
         n_cini_module_0__majority5_module_28_res,
         n_cini_module_0__reg_module_144_res,
         n_cini_module_0__and_module_72_res,
         n_cini_module_0__not_module_29_res,
         n_cini_module_0__reg_module_143_res,
         n_cini_module_0__reg_module_142_res,
         n_cini_module_0__and_module_71_res,
         n_cini_module_0__reg_module_141_res,
         n_cini_module_0__xor_module_85_res,
         n_cini_module_0__xor_module_84_res,
         n_cini_module_0__reg_module_140_res,
         n_cini_module_0__and_module_70_res,
         n_cini_module_0__reg_module_139_res,
         n_cini_module_0__majority5_module_27_res,
         n_cini_module_0__reg_module_138_res,
         n_cini_module_0__and_module_69_res,
         n_cini_module_0__not_module_28_res,
         n_cini_module_0__reg_module_137_res,
         n_cini_module_0__xor_module_83_res,
         n_cini_module_0__reg_module_136_res,
         n_cini_module_0__and_module_68_res,
         n_cini_module_0__reg_module_135_res,
         n_cini_module_0__majority5_module_26_res,
         n_cini_module_0__reg_module_134_res,
         n_cini_module_0__and_module_67_res,
         n_cini_module_0__not_module_27_res,
         n_cini_module_0__reg_module_133_res,
         n_cini_module_0__reg_module_132_res,
         n_cini_module_0__and_module_66_res,
         n_cini_module_0__reg_module_131_res,
         n_cini_module_0__xor_module_81_res,
         n_cini_module_0__xor_module_80_res,
         n_cini_module_0__reg_module_130_res,
         n_cini_module_0__and_module_65_res,
         n_cini_module_0__reg_module_129_res,
         n_cini_module_0__majority5_module_25_res,
         n_cini_module_0__reg_module_128_res,
         n_cini_module_0__and_module_64_res,
         n_cini_module_0__not_module_26_res,
         n_cini_module_0__reg_module_127_res,
         n_cini_module_0__xor_module_79_res,
         n_cini_module_0__reg_module_126_res,
         n_cini_module_0__and_module_63_res,
         n_cini_module_0__reg_module_125_res,
         n_cini_module_0__majority5_module_24_res,
         n_cini_module_0__reg_module_124_res,
         n_cini_module_0__and_module_62_res,
         n_cini_module_0__not_module_25_res,
         n_cini_module_0__reg_module_123_res,
         n_cini_module_0__reg_module_122_res,
         n_cini_module_0__and_module_61_res,
         n_cini_module_0__reg_module_121_res,
         n_cini_module_0__xor_module_77_res,
         n_cini_module_0__xor_module_76_res,
         n_cini_module_0__reg_module_120_res,
         n_cini_module_0__and_module_60_res,
         n_cini_module_0__reg_module_119_res,
         n_cini_module_0__majority5_module_23_res,
         n_cini_module_0__reg_module_118_res,
         n_cini_module_0__and_module_59_res,
         n_cini_module_0__not_module_24_res,
         n_cini_module_0__reg_module_117_res,
         n_cini_module_0__xor_module_75_res,
         n_cini_module_0__reg_module_116_res,
         n_cini_module_0__and_module_58_res,
         n_cini_module_0__reg_module_115_res,
         n_cini_module_0__majority5_module_22_res,
         n_cini_module_0__reg_module_114_res,
         n_cini_module_0__and_module_57_res,
         n_cini_module_0__not_module_23_res,
         n_cini_module_0__reg_module_113_res,
         n_cini_module_0__reg_module_112_res,
         n_cini_module_0__and_module_56_res,
         n_cini_module_0__reg_module_111_res,
         n_cini_module_0__xor_module_73_res,
         n_cini_module_0__xor_module_72_res,
         n_cini_module_0__reg_module_110_res,
         n_cini_module_0__and_module_55_res,
         n_cini_module_0__reg_module_109_res,
         n_cini_module_0__majority5_module_21_res,
         n_cini_module_0__reg_module_108_res,
         n_cini_module_0__and_module_54_res,
         n_cini_module_0__not_module_22_res,
         n_cini_module_0__reg_module_107_res,
         n_cini_module_0__xor_module_71_res,
         n_cini_module_0__reg_module_106_res,
         n_cini_module_0__and_module_53_res,
         n_cini_module_0__reg_module_105_res,
         n_cini_module_0__majority5_module_20_res,
         n_cini_module_0__reg_module_104_res,
         n_cini_module_0__and_module_52_res,
         n_cini_module_0__not_module_21_res,
         n_cini_module_0__reg_module_103_res,
         n_cini_module_0__reg_module_102_res,
         n_cini_module_0__and_module_51_res,
         n_cini_module_0__reg_module_101_res,
         n_cini_module_0__xor_module_69_res,
         n_cini_module_0__xor_module_68_res,
         n_cini_module_0__reg_module_100_res,
         n_cini_module_0__and_module_50_res,
         n_cini_module_0__reg_module_99_res,
         n_cini_module_0__majority5_module_19_res,
         n_cini_module_0__reg_module_98_res,
         n_cini_module_0__and_module_49_res,
         n_cini_module_0__not_module_20_res,
         n_cini_module_0__reg_module_97_res,
         n_cini_module_0__xor_module_67_res,
         n_cini_module_0__reg_module_96_res,
         n_cini_module_0__and_module_48_res,
         n_cini_module_0__reg_module_95_res,
         n_cini_module_0__majority5_module_18_res,
         n_cini_module_0__reg_module_94_res,
         n_cini_module_0__and_module_47_res,
         n_cini_module_0__not_module_19_res,
         n_cini_module_0__reg_module_93_res,
         n_cini_module_0__reg_module_92_res,
         n_cini_module_0__and_module_46_res,
         n_cini_module_0__reg_module_91_res,
         n_cini_module_0__xor_module_65_res,
         n_cini_module_0__xor_module_64_res,
         n_cini_module_0__reg_module_90_res,
         n_cini_module_0__and_module_45_res,
         n_cini_module_0__reg_module_89_res,
         n_cini_module_0__majority5_module_17_res,
         n_cini_module_0__reg_module_88_res,
         n_cini_module_0__and_module_44_res,
         n_cini_module_0__not_module_18_res,
         n_cini_module_0__reg_module_87_res,
         n_cini_module_0__xor_module_63_res,
         n_cini_module_0__reg_module_86_res,
         n_cini_module_0__and_module_43_res,
         n_cini_module_0__reg_module_85_res,
         n_cini_module_0__majority5_module_16_res,
         n_cini_module_0__reg_module_84_res,
         n_cini_module_0__and_module_42_res,
         n_cini_module_0__not_module_17_res,
         n_cini_module_0__reg_module_83_res,
         n_cini_module_0__reg_module_82_res,
         n_cini_module_0__and_module_41_res,
         n_cini_module_0__reg_module_81_res,
         n_cini_module_0__xor_module_61_res,
         n_cini_module_0__xor_module_60_res,
         n_cini_module_0__reg_module_80_res,
         n_cini_module_0__and_module_40_res,
         n_cini_module_0__reg_module_79_res,
         n_cini_module_0__majority5_module_15_res,
         n_cini_module_0__reg_module_78_res,
         n_cini_module_0__and_module_39_res,
         n_cini_module_0__not_module_16_res,
         n_cini_module_0__reg_module_77_res,
         n_cini_module_0__xor_module_59_res,
         n_cini_module_0__reg_module_76_res,
         n_cini_module_0__and_module_38_res,
         n_cini_module_0__reg_module_75_res,
         n_cini_module_0__majority5_module_14_res,
         n_cini_module_0__reg_module_74_res,
         n_cini_module_0__and_module_37_res,
         n_cini_module_0__not_module_15_res,
         n_cini_module_0__reg_module_73_res,
         n_cini_module_0__reg_module_72_res,
         n_cini_module_0__and_module_36_res,
         n_cini_module_0__reg_module_71_res,
         n_cini_module_0__xor_module_57_res,
         n_cini_module_0__xor_module_56_res,
         n_cini_module_0__reg_module_70_res,
         n_cini_module_0__and_module_35_res,
         n_cini_module_0__reg_module_69_res,
         n_cini_module_0__majority5_module_13_res,
         n_cini_module_0__reg_module_68_res,
         n_cini_module_0__and_module_34_res,
         n_cini_module_0__not_module_14_res,
         n_cini_module_0__reg_module_67_res,
         n_cini_module_0__xor_module_55_res,
         n_cini_module_0__reg_module_66_res,
         n_cini_module_0__and_module_33_res,
         n_cini_module_0__reg_module_65_res,
         n_cini_module_0__majority5_module_12_res,
         n_cini_module_0__reg_module_64_res,
         n_cini_module_0__and_module_32_res,
         n_cini_module_0__not_module_13_res,
         n_cini_module_0__reg_module_63_res,
         n_cini_module_0__reg_module_62_res,
         n_cini_module_0__and_module_31_res,
         n_cini_module_0__reg_module_61_res,
         n_cini_module_0__xor_module_53_res,
         n_cini_module_0__xor_module_52_res,
         n_cini_module_0__reg_module_60_res,
         n_cini_module_0__and_module_30_res,
         n_cini_module_0__reg_module_59_res,
         n_cini_module_0__majority5_module_11_res,
         n_cini_module_0__reg_module_58_res,
         n_cini_module_0__and_module_29_res,
         n_cini_module_0__not_module_12_res,
         n_cini_module_0__reg_module_57_res,
         n_cini_module_0__xor_module_51_res,
         n_cini_module_0__reg_module_56_res,
         n_cini_module_0__and_module_28_res,
         n_cini_module_0__reg_module_55_res,
         n_cini_module_0__majority5_module_10_res,
         n_cini_module_0__reg_module_54_res,
         n_cini_module_0__and_module_27_res,
         n_cini_module_0__not_module_11_res,
         n_cini_module_0__reg_module_53_res,
         n_cini_module_0__reg_module_52_res,
         n_cini_module_0__and_module_26_res,
         n_cini_module_0__reg_module_51_res,
         n_cini_module_0__xor_module_49_res,
         n_cini_module_0__xor_module_48_res,
         n_cini_module_0__reg_module_50_res,
         n_cini_module_0__and_module_25_res,
         n_cini_module_0__reg_module_49_res,
         n_cini_module_0__majority5_module_9_res,
         n_cini_module_0__reg_module_48_res,
         n_cini_module_0__and_module_24_res,
         n_cini_module_0__not_module_10_res,
         n_cini_module_0__reg_module_47_res,
         n_cini_module_0__xor_module_47_res,
         n_cini_module_0__reg_module_46_res,
         n_cini_module_0__and_module_23_res,
         n_cini_module_0__reg_module_45_res,
         n_cini_module_0__majority5_module_8_res,
         n_cini_module_0__reg_module_44_res,
         n_cini_module_0__and_module_22_res, n_cini_module_0__not_module_9_res,
         n_cini_module_0__reg_module_43_res,
         n_cini_module_0__reg_module_42_res,
         n_cini_module_0__and_module_21_res,
         n_cini_module_0__reg_module_41_res,
         n_cini_module_0__xor_module_45_res,
         n_cini_module_0__xor_module_44_res,
         n_cini_module_0__reg_module_40_res,
         n_cini_module_0__and_module_20_res,
         n_cini_module_0__reg_module_39_res,
         n_cini_module_0__majority5_module_7_res,
         n_cini_module_0__reg_module_38_res,
         n_cini_module_0__and_module_19_res, n_cini_module_0__not_module_8_res,
         n_cini_module_0__reg_module_37_res,
         n_cini_module_0__xor_module_43_res,
         n_cini_module_0__reg_module_36_res,
         n_cini_module_0__and_module_18_res,
         n_cini_module_0__reg_module_35_res,
         n_cini_module_0__majority5_module_6_res,
         n_cini_module_0__reg_module_34_res,
         n_cini_module_0__and_module_17_res, n_cini_module_0__not_module_7_res,
         n_cini_module_0__reg_module_33_res,
         n_cini_module_0__reg_module_32_res,
         n_cini_module_0__and_module_16_res,
         n_cini_module_0__reg_module_31_res,
         n_cini_module_0__xor_module_41_res,
         n_cini_module_0__xor_module_40_res,
         n_cini_module_0__reg_module_30_res,
         n_cini_module_0__and_module_15_res,
         n_cini_module_0__reg_module_29_res,
         n_cini_module_0__majority5_module_5_res,
         n_cini_module_0__reg_module_28_res,
         n_cini_module_0__and_module_14_res, n_cini_module_0__not_module_6_res,
         n_cini_module_0__reg_module_27_res,
         n_cini_module_0__xor_module_39_res,
         n_cini_module_0__reg_module_26_res,
         n_cini_module_0__and_module_13_res,
         n_cini_module_0__reg_module_25_res,
         n_cini_module_0__majority5_module_4_res,
         n_cini_module_0__reg_module_24_res,
         n_cini_module_0__and_module_12_res, n_cini_module_0__not_module_5_res,
         n_cini_module_0__reg_module_23_res,
         n_cini_module_0__reg_module_22_res,
         n_cini_module_0__and_module_11_res,
         n_cini_module_0__reg_module_21_res,
         n_cini_module_0__xor_module_37_res,
         n_cini_module_0__xor_module_36_res,
         n_cini_module_0__reg_module_20_res,
         n_cini_module_0__and_module_10_res,
         n_cini_module_0__reg_module_19_res,
         n_cini_module_0__majority5_module_3_res,
         n_cini_module_0__reg_module_18_res, n_cini_module_0__and_module_9_res,
         n_cini_module_0__not_module_4_res, n_cini_module_0__reg_module_17_res,
         n_cini_module_0__xor_module_35_res,
         n_cini_module_0__reg_module_16_res, n_cini_module_0__and_module_8_res,
         n_cini_module_0__reg_module_15_res,
         n_cini_module_0__majority5_module_2_res,
         n_cini_module_0__reg_module_14_res, n_cini_module_0__and_module_7_res,
         n_cini_module_0__not_module_3_res, n_cini_module_0__reg_module_13_res,
         n_cini_module_0__reg_module_12_res, n_cini_module_0__and_module_6_res,
         n_cini_module_0__reg_module_11_res,
         n_cini_module_0__xor_module_33_res,
         n_cini_module_0__xor_module_32_res,
         n_cini_module_0__reg_module_10_res, n_cini_module_0__and_module_5_res,
         n_cini_module_0__reg_module_9_res,
         n_cini_module_0__majority5_module_1_res,
         n_cini_module_0__reg_module_8_res, n_cini_module_0__and_module_4_res,
         n_cini_module_0__not_module_2_res, n_cini_module_0__reg_module_7_res,
         n_cini_module_0__xor_module_31_res, n_cini_module_0__reg_module_6_res,
         n_cini_module_0__and_module_3_res, n_cini_module_0__reg_module_5_res,
         n_cini_module_0__majority5_module_0_res,
         n_cini_module_0__reg_module_4_res, n_cini_module_0__and_module_2_res,
         n_cini_module_0__not_module_1_res, n_cini_module_0__reg_module_3_res,
         n_cini_module_0__reg_module_2_res, n_cini_module_0__and_module_1_res,
         n_cini_module_0__reg_module_1_res, n_cini_module_0__xor_module_30_res,
         n_cini_module_0__xor_module_29_res,
         n_cini_module_0__xor_module_28_res,
         n_cini_module_0__xor_module_27_res,
         n_cini_module_0__xor_module_26_res,
         n_cini_module_0__xor_module_25_res,
         n_cini_module_0__xor_module_24_res,
         n_cini_module_0__xor_module_23_res,
         n_cini_module_0__xor_module_22_res,
         n_cini_module_0__xor_module_21_res,
         n_cini_module_0__xor_module_20_res,
         n_cini_module_0__xor_module_19_res,
         n_cini_module_0__xor_module_18_res,
         n_cini_module_0__xor_module_17_res,
         n_cini_module_0__xor_module_16_res,
         n_cini_module_0__xor_module_15_res,
         n_cini_module_0__xor_module_14_res,
         n_cini_module_0__xor_module_13_res,
         n_cini_module_0__xor_module_12_res,
         n_cini_module_0__xor_module_11_res,
         n_cini_module_0__xor_module_10_res, n_cini_module_0__xor_module_9_res,
         n_cini_module_0__xor_module_8_res, n_cini_module_0__xor_module_7_res,
         n_cini_module_0__xor_module_6_res, n_cini_module_0__xor_module_5_res,
         n_cini_module_0__xor_module_4_res, n_cini_module_0__xor_module_3_res,
         n_cini_module_0__xor_module_2_res, n_cini_module_0__xor_module_1_res,
         n_cini_module_0__majority5_module_0_n18,
         n_cini_module_0__majority5_module_0_n17,
         n_cini_module_0__majority5_module_0_n16,
         n_cini_module_0__majority5_module_0_n15,
         n_cini_module_0__majority5_module_0_n14,
         n_cini_module_0__majority5_module_0_n13,
         n_cini_module_0__majority5_module_0_n12,
         n_cini_module_0__majority5_module_0_n11,
         n_cini_module_0__majority5_module_0_n10,
         n_cini_module_0__majority5_module_0_n9,
         n_cini_module_0__majority5_module_0_n8,
         n_cini_module_0__majority5_module_0_n7,
         n_cini_module_0__majority5_module_0_n6,
         n_cini_module_0__majority5_module_0_n5,
         n_cini_module_0__majority5_module_0_n4,
         n_cini_module_0__majority5_module_0_n3,
         n_cini_module_0__majority5_module_0_n2,
         n_cini_module_0__majority5_module_0_n1,
         n_cini_module_0__majority5_module_1_n18,
         n_cini_module_0__majority5_module_1_n17,
         n_cini_module_0__majority5_module_1_n16,
         n_cini_module_0__majority5_module_1_n15,
         n_cini_module_0__majority5_module_1_n14,
         n_cini_module_0__majority5_module_1_n13,
         n_cini_module_0__majority5_module_1_n12,
         n_cini_module_0__majority5_module_1_n11,
         n_cini_module_0__majority5_module_1_n10,
         n_cini_module_0__majority5_module_1_n9,
         n_cini_module_0__majority5_module_1_n8,
         n_cini_module_0__majority5_module_1_n7,
         n_cini_module_0__majority5_module_1_n6,
         n_cini_module_0__majority5_module_1_n5,
         n_cini_module_0__majority5_module_1_n4,
         n_cini_module_0__majority5_module_1_n3,
         n_cini_module_0__majority5_module_1_n2,
         n_cini_module_0__majority5_module_1_n1,
         n_cini_module_0__majority5_module_2_n18,
         n_cini_module_0__majority5_module_2_n17,
         n_cini_module_0__majority5_module_2_n16,
         n_cini_module_0__majority5_module_2_n15,
         n_cini_module_0__majority5_module_2_n14,
         n_cini_module_0__majority5_module_2_n13,
         n_cini_module_0__majority5_module_2_n12,
         n_cini_module_0__majority5_module_2_n11,
         n_cini_module_0__majority5_module_2_n10,
         n_cini_module_0__majority5_module_2_n9,
         n_cini_module_0__majority5_module_2_n8,
         n_cini_module_0__majority5_module_2_n7,
         n_cini_module_0__majority5_module_2_n6,
         n_cini_module_0__majority5_module_2_n5,
         n_cini_module_0__majority5_module_2_n4,
         n_cini_module_0__majority5_module_2_n3,
         n_cini_module_0__majority5_module_2_n2,
         n_cini_module_0__majority5_module_2_n1,
         n_cini_module_0__majority5_module_3_n18,
         n_cini_module_0__majority5_module_3_n17,
         n_cini_module_0__majority5_module_3_n16,
         n_cini_module_0__majority5_module_3_n15,
         n_cini_module_0__majority5_module_3_n14,
         n_cini_module_0__majority5_module_3_n13,
         n_cini_module_0__majority5_module_3_n12,
         n_cini_module_0__majority5_module_3_n11,
         n_cini_module_0__majority5_module_3_n10,
         n_cini_module_0__majority5_module_3_n9,
         n_cini_module_0__majority5_module_3_n8,
         n_cini_module_0__majority5_module_3_n7,
         n_cini_module_0__majority5_module_3_n6,
         n_cini_module_0__majority5_module_3_n5,
         n_cini_module_0__majority5_module_3_n4,
         n_cini_module_0__majority5_module_3_n3,
         n_cini_module_0__majority5_module_3_n2,
         n_cini_module_0__majority5_module_3_n1,
         n_cini_module_0__majority5_module_4_n18,
         n_cini_module_0__majority5_module_4_n17,
         n_cini_module_0__majority5_module_4_n16,
         n_cini_module_0__majority5_module_4_n15,
         n_cini_module_0__majority5_module_4_n14,
         n_cini_module_0__majority5_module_4_n13,
         n_cini_module_0__majority5_module_4_n12,
         n_cini_module_0__majority5_module_4_n11,
         n_cini_module_0__majority5_module_4_n10,
         n_cini_module_0__majority5_module_4_n9,
         n_cini_module_0__majority5_module_4_n8,
         n_cini_module_0__majority5_module_4_n7,
         n_cini_module_0__majority5_module_4_n6,
         n_cini_module_0__majority5_module_4_n5,
         n_cini_module_0__majority5_module_4_n4,
         n_cini_module_0__majority5_module_4_n3,
         n_cini_module_0__majority5_module_4_n2,
         n_cini_module_0__majority5_module_4_n1,
         n_cini_module_0__majority5_module_5_n18,
         n_cini_module_0__majority5_module_5_n17,
         n_cini_module_0__majority5_module_5_n16,
         n_cini_module_0__majority5_module_5_n15,
         n_cini_module_0__majority5_module_5_n14,
         n_cini_module_0__majority5_module_5_n13,
         n_cini_module_0__majority5_module_5_n12,
         n_cini_module_0__majority5_module_5_n11,
         n_cini_module_0__majority5_module_5_n10,
         n_cini_module_0__majority5_module_5_n9,
         n_cini_module_0__majority5_module_5_n8,
         n_cini_module_0__majority5_module_5_n7,
         n_cini_module_0__majority5_module_5_n6,
         n_cini_module_0__majority5_module_5_n5,
         n_cini_module_0__majority5_module_5_n4,
         n_cini_module_0__majority5_module_5_n3,
         n_cini_module_0__majority5_module_5_n2,
         n_cini_module_0__majority5_module_5_n1,
         n_cini_module_0__majority5_module_6_n18,
         n_cini_module_0__majority5_module_6_n17,
         n_cini_module_0__majority5_module_6_n16,
         n_cini_module_0__majority5_module_6_n15,
         n_cini_module_0__majority5_module_6_n14,
         n_cini_module_0__majority5_module_6_n13,
         n_cini_module_0__majority5_module_6_n12,
         n_cini_module_0__majority5_module_6_n11,
         n_cini_module_0__majority5_module_6_n10,
         n_cini_module_0__majority5_module_6_n9,
         n_cini_module_0__majority5_module_6_n8,
         n_cini_module_0__majority5_module_6_n7,
         n_cini_module_0__majority5_module_6_n6,
         n_cini_module_0__majority5_module_6_n5,
         n_cini_module_0__majority5_module_6_n4,
         n_cini_module_0__majority5_module_6_n3,
         n_cini_module_0__majority5_module_6_n2,
         n_cini_module_0__majority5_module_6_n1,
         n_cini_module_0__majority5_module_7_n18,
         n_cini_module_0__majority5_module_7_n17,
         n_cini_module_0__majority5_module_7_n16,
         n_cini_module_0__majority5_module_7_n15,
         n_cini_module_0__majority5_module_7_n14,
         n_cini_module_0__majority5_module_7_n13,
         n_cini_module_0__majority5_module_7_n12,
         n_cini_module_0__majority5_module_7_n11,
         n_cini_module_0__majority5_module_7_n10,
         n_cini_module_0__majority5_module_7_n9,
         n_cini_module_0__majority5_module_7_n8,
         n_cini_module_0__majority5_module_7_n7,
         n_cini_module_0__majority5_module_7_n6,
         n_cini_module_0__majority5_module_7_n5,
         n_cini_module_0__majority5_module_7_n4,
         n_cini_module_0__majority5_module_7_n3,
         n_cini_module_0__majority5_module_7_n2,
         n_cini_module_0__majority5_module_7_n1,
         n_cini_module_0__majority5_module_8_n18,
         n_cini_module_0__majority5_module_8_n17,
         n_cini_module_0__majority5_module_8_n16,
         n_cini_module_0__majority5_module_8_n15,
         n_cini_module_0__majority5_module_8_n14,
         n_cini_module_0__majority5_module_8_n13,
         n_cini_module_0__majority5_module_8_n12,
         n_cini_module_0__majority5_module_8_n11,
         n_cini_module_0__majority5_module_8_n10,
         n_cini_module_0__majority5_module_8_n9,
         n_cini_module_0__majority5_module_8_n8,
         n_cini_module_0__majority5_module_8_n7,
         n_cini_module_0__majority5_module_8_n6,
         n_cini_module_0__majority5_module_8_n5,
         n_cini_module_0__majority5_module_8_n4,
         n_cini_module_0__majority5_module_8_n3,
         n_cini_module_0__majority5_module_8_n2,
         n_cini_module_0__majority5_module_8_n1,
         n_cini_module_0__majority5_module_9_n18,
         n_cini_module_0__majority5_module_9_n17,
         n_cini_module_0__majority5_module_9_n16,
         n_cini_module_0__majority5_module_9_n15,
         n_cini_module_0__majority5_module_9_n14,
         n_cini_module_0__majority5_module_9_n13,
         n_cini_module_0__majority5_module_9_n12,
         n_cini_module_0__majority5_module_9_n11,
         n_cini_module_0__majority5_module_9_n10,
         n_cini_module_0__majority5_module_9_n9,
         n_cini_module_0__majority5_module_9_n8,
         n_cini_module_0__majority5_module_9_n7,
         n_cini_module_0__majority5_module_9_n6,
         n_cini_module_0__majority5_module_9_n5,
         n_cini_module_0__majority5_module_9_n4,
         n_cini_module_0__majority5_module_9_n3,
         n_cini_module_0__majority5_module_9_n2,
         n_cini_module_0__majority5_module_9_n1,
         n_cini_module_0__majority5_module_10_n18,
         n_cini_module_0__majority5_module_10_n17,
         n_cini_module_0__majority5_module_10_n16,
         n_cini_module_0__majority5_module_10_n15,
         n_cini_module_0__majority5_module_10_n14,
         n_cini_module_0__majority5_module_10_n13,
         n_cini_module_0__majority5_module_10_n12,
         n_cini_module_0__majority5_module_10_n11,
         n_cini_module_0__majority5_module_10_n10,
         n_cini_module_0__majority5_module_10_n9,
         n_cini_module_0__majority5_module_10_n8,
         n_cini_module_0__majority5_module_10_n7,
         n_cini_module_0__majority5_module_10_n6,
         n_cini_module_0__majority5_module_10_n5,
         n_cini_module_0__majority5_module_10_n4,
         n_cini_module_0__majority5_module_10_n3,
         n_cini_module_0__majority5_module_10_n2,
         n_cini_module_0__majority5_module_10_n1,
         n_cini_module_0__majority5_module_11_n18,
         n_cini_module_0__majority5_module_11_n17,
         n_cini_module_0__majority5_module_11_n16,
         n_cini_module_0__majority5_module_11_n15,
         n_cini_module_0__majority5_module_11_n14,
         n_cini_module_0__majority5_module_11_n13,
         n_cini_module_0__majority5_module_11_n12,
         n_cini_module_0__majority5_module_11_n11,
         n_cini_module_0__majority5_module_11_n10,
         n_cini_module_0__majority5_module_11_n9,
         n_cini_module_0__majority5_module_11_n8,
         n_cini_module_0__majority5_module_11_n7,
         n_cini_module_0__majority5_module_11_n6,
         n_cini_module_0__majority5_module_11_n5,
         n_cini_module_0__majority5_module_11_n4,
         n_cini_module_0__majority5_module_11_n3,
         n_cini_module_0__majority5_module_11_n2,
         n_cini_module_0__majority5_module_11_n1,
         n_cini_module_0__majority5_module_12_n18,
         n_cini_module_0__majority5_module_12_n17,
         n_cini_module_0__majority5_module_12_n16,
         n_cini_module_0__majority5_module_12_n15,
         n_cini_module_0__majority5_module_12_n14,
         n_cini_module_0__majority5_module_12_n13,
         n_cini_module_0__majority5_module_12_n12,
         n_cini_module_0__majority5_module_12_n11,
         n_cini_module_0__majority5_module_12_n10,
         n_cini_module_0__majority5_module_12_n9,
         n_cini_module_0__majority5_module_12_n8,
         n_cini_module_0__majority5_module_12_n7,
         n_cini_module_0__majority5_module_12_n6,
         n_cini_module_0__majority5_module_12_n5,
         n_cini_module_0__majority5_module_12_n4,
         n_cini_module_0__majority5_module_12_n3,
         n_cini_module_0__majority5_module_12_n2,
         n_cini_module_0__majority5_module_12_n1,
         n_cini_module_0__majority5_module_13_n18,
         n_cini_module_0__majority5_module_13_n17,
         n_cini_module_0__majority5_module_13_n16,
         n_cini_module_0__majority5_module_13_n15,
         n_cini_module_0__majority5_module_13_n14,
         n_cini_module_0__majority5_module_13_n13,
         n_cini_module_0__majority5_module_13_n12,
         n_cini_module_0__majority5_module_13_n11,
         n_cini_module_0__majority5_module_13_n10,
         n_cini_module_0__majority5_module_13_n9,
         n_cini_module_0__majority5_module_13_n8,
         n_cini_module_0__majority5_module_13_n7,
         n_cini_module_0__majority5_module_13_n6,
         n_cini_module_0__majority5_module_13_n5,
         n_cini_module_0__majority5_module_13_n4,
         n_cini_module_0__majority5_module_13_n3,
         n_cini_module_0__majority5_module_13_n2,
         n_cini_module_0__majority5_module_13_n1,
         n_cini_module_0__majority5_module_14_n18,
         n_cini_module_0__majority5_module_14_n17,
         n_cini_module_0__majority5_module_14_n16,
         n_cini_module_0__majority5_module_14_n15,
         n_cini_module_0__majority5_module_14_n14,
         n_cini_module_0__majority5_module_14_n13,
         n_cini_module_0__majority5_module_14_n12,
         n_cini_module_0__majority5_module_14_n11,
         n_cini_module_0__majority5_module_14_n10,
         n_cini_module_0__majority5_module_14_n9,
         n_cini_module_0__majority5_module_14_n8,
         n_cini_module_0__majority5_module_14_n7,
         n_cini_module_0__majority5_module_14_n6,
         n_cini_module_0__majority5_module_14_n5,
         n_cini_module_0__majority5_module_14_n4,
         n_cini_module_0__majority5_module_14_n3,
         n_cini_module_0__majority5_module_14_n2,
         n_cini_module_0__majority5_module_14_n1,
         n_cini_module_0__majority5_module_15_n18,
         n_cini_module_0__majority5_module_15_n17,
         n_cini_module_0__majority5_module_15_n16,
         n_cini_module_0__majority5_module_15_n15,
         n_cini_module_0__majority5_module_15_n14,
         n_cini_module_0__majority5_module_15_n13,
         n_cini_module_0__majority5_module_15_n12,
         n_cini_module_0__majority5_module_15_n11,
         n_cini_module_0__majority5_module_15_n10,
         n_cini_module_0__majority5_module_15_n9,
         n_cini_module_0__majority5_module_15_n8,
         n_cini_module_0__majority5_module_15_n7,
         n_cini_module_0__majority5_module_15_n6,
         n_cini_module_0__majority5_module_15_n5,
         n_cini_module_0__majority5_module_15_n4,
         n_cini_module_0__majority5_module_15_n3,
         n_cini_module_0__majority5_module_15_n2,
         n_cini_module_0__majority5_module_15_n1,
         n_cini_module_0__majority5_module_16_n18,
         n_cini_module_0__majority5_module_16_n17,
         n_cini_module_0__majority5_module_16_n16,
         n_cini_module_0__majority5_module_16_n15,
         n_cini_module_0__majority5_module_16_n14,
         n_cini_module_0__majority5_module_16_n13,
         n_cini_module_0__majority5_module_16_n12,
         n_cini_module_0__majority5_module_16_n11,
         n_cini_module_0__majority5_module_16_n10,
         n_cini_module_0__majority5_module_16_n9,
         n_cini_module_0__majority5_module_16_n8,
         n_cini_module_0__majority5_module_16_n7,
         n_cini_module_0__majority5_module_16_n6,
         n_cini_module_0__majority5_module_16_n5,
         n_cini_module_0__majority5_module_16_n4,
         n_cini_module_0__majority5_module_16_n3,
         n_cini_module_0__majority5_module_16_n2,
         n_cini_module_0__majority5_module_16_n1,
         n_cini_module_0__majority5_module_17_n18,
         n_cini_module_0__majority5_module_17_n17,
         n_cini_module_0__majority5_module_17_n16,
         n_cini_module_0__majority5_module_17_n15,
         n_cini_module_0__majority5_module_17_n14,
         n_cini_module_0__majority5_module_17_n13,
         n_cini_module_0__majority5_module_17_n12,
         n_cini_module_0__majority5_module_17_n11,
         n_cini_module_0__majority5_module_17_n10,
         n_cini_module_0__majority5_module_17_n9,
         n_cini_module_0__majority5_module_17_n8,
         n_cini_module_0__majority5_module_17_n7,
         n_cini_module_0__majority5_module_17_n6,
         n_cini_module_0__majority5_module_17_n5,
         n_cini_module_0__majority5_module_17_n4,
         n_cini_module_0__majority5_module_17_n3,
         n_cini_module_0__majority5_module_17_n2,
         n_cini_module_0__majority5_module_17_n1,
         n_cini_module_0__majority5_module_18_n18,
         n_cini_module_0__majority5_module_18_n17,
         n_cini_module_0__majority5_module_18_n16,
         n_cini_module_0__majority5_module_18_n15,
         n_cini_module_0__majority5_module_18_n14,
         n_cini_module_0__majority5_module_18_n13,
         n_cini_module_0__majority5_module_18_n12,
         n_cini_module_0__majority5_module_18_n11,
         n_cini_module_0__majority5_module_18_n10,
         n_cini_module_0__majority5_module_18_n9,
         n_cini_module_0__majority5_module_18_n8,
         n_cini_module_0__majority5_module_18_n7,
         n_cini_module_0__majority5_module_18_n6,
         n_cini_module_0__majority5_module_18_n5,
         n_cini_module_0__majority5_module_18_n4,
         n_cini_module_0__majority5_module_18_n3,
         n_cini_module_0__majority5_module_18_n2,
         n_cini_module_0__majority5_module_18_n1,
         n_cini_module_0__majority5_module_19_n18,
         n_cini_module_0__majority5_module_19_n17,
         n_cini_module_0__majority5_module_19_n16,
         n_cini_module_0__majority5_module_19_n15,
         n_cini_module_0__majority5_module_19_n14,
         n_cini_module_0__majority5_module_19_n13,
         n_cini_module_0__majority5_module_19_n12,
         n_cini_module_0__majority5_module_19_n11,
         n_cini_module_0__majority5_module_19_n10,
         n_cini_module_0__majority5_module_19_n9,
         n_cini_module_0__majority5_module_19_n8,
         n_cini_module_0__majority5_module_19_n7,
         n_cini_module_0__majority5_module_19_n6,
         n_cini_module_0__majority5_module_19_n5,
         n_cini_module_0__majority5_module_19_n4,
         n_cini_module_0__majority5_module_19_n3,
         n_cini_module_0__majority5_module_19_n2,
         n_cini_module_0__majority5_module_19_n1,
         n_cini_module_0__majority5_module_20_n18,
         n_cini_module_0__majority5_module_20_n17,
         n_cini_module_0__majority5_module_20_n16,
         n_cini_module_0__majority5_module_20_n15,
         n_cini_module_0__majority5_module_20_n14,
         n_cini_module_0__majority5_module_20_n13,
         n_cini_module_0__majority5_module_20_n12,
         n_cini_module_0__majority5_module_20_n11,
         n_cini_module_0__majority5_module_20_n10,
         n_cini_module_0__majority5_module_20_n9,
         n_cini_module_0__majority5_module_20_n8,
         n_cini_module_0__majority5_module_20_n7,
         n_cini_module_0__majority5_module_20_n6,
         n_cini_module_0__majority5_module_20_n5,
         n_cini_module_0__majority5_module_20_n4,
         n_cini_module_0__majority5_module_20_n3,
         n_cini_module_0__majority5_module_20_n2,
         n_cini_module_0__majority5_module_20_n1,
         n_cini_module_0__majority5_module_21_n18,
         n_cini_module_0__majority5_module_21_n17,
         n_cini_module_0__majority5_module_21_n16,
         n_cini_module_0__majority5_module_21_n15,
         n_cini_module_0__majority5_module_21_n14,
         n_cini_module_0__majority5_module_21_n13,
         n_cini_module_0__majority5_module_21_n12,
         n_cini_module_0__majority5_module_21_n11,
         n_cini_module_0__majority5_module_21_n10,
         n_cini_module_0__majority5_module_21_n9,
         n_cini_module_0__majority5_module_21_n8,
         n_cini_module_0__majority5_module_21_n7,
         n_cini_module_0__majority5_module_21_n6,
         n_cini_module_0__majority5_module_21_n5,
         n_cini_module_0__majority5_module_21_n4,
         n_cini_module_0__majority5_module_21_n3,
         n_cini_module_0__majority5_module_21_n2,
         n_cini_module_0__majority5_module_21_n1,
         n_cini_module_0__majority5_module_22_n18,
         n_cini_module_0__majority5_module_22_n17,
         n_cini_module_0__majority5_module_22_n16,
         n_cini_module_0__majority5_module_22_n15,
         n_cini_module_0__majority5_module_22_n14,
         n_cini_module_0__majority5_module_22_n13,
         n_cini_module_0__majority5_module_22_n12,
         n_cini_module_0__majority5_module_22_n11,
         n_cini_module_0__majority5_module_22_n10,
         n_cini_module_0__majority5_module_22_n9,
         n_cini_module_0__majority5_module_22_n8,
         n_cini_module_0__majority5_module_22_n7,
         n_cini_module_0__majority5_module_22_n6,
         n_cini_module_0__majority5_module_22_n5,
         n_cini_module_0__majority5_module_22_n4,
         n_cini_module_0__majority5_module_22_n3,
         n_cini_module_0__majority5_module_22_n2,
         n_cini_module_0__majority5_module_22_n1,
         n_cini_module_0__majority5_module_23_n18,
         n_cini_module_0__majority5_module_23_n17,
         n_cini_module_0__majority5_module_23_n16,
         n_cini_module_0__majority5_module_23_n15,
         n_cini_module_0__majority5_module_23_n14,
         n_cini_module_0__majority5_module_23_n13,
         n_cini_module_0__majority5_module_23_n12,
         n_cini_module_0__majority5_module_23_n11,
         n_cini_module_0__majority5_module_23_n10,
         n_cini_module_0__majority5_module_23_n9,
         n_cini_module_0__majority5_module_23_n8,
         n_cini_module_0__majority5_module_23_n7,
         n_cini_module_0__majority5_module_23_n6,
         n_cini_module_0__majority5_module_23_n5,
         n_cini_module_0__majority5_module_23_n4,
         n_cini_module_0__majority5_module_23_n3,
         n_cini_module_0__majority5_module_23_n2,
         n_cini_module_0__majority5_module_23_n1,
         n_cini_module_0__majority5_module_24_n18,
         n_cini_module_0__majority5_module_24_n17,
         n_cini_module_0__majority5_module_24_n16,
         n_cini_module_0__majority5_module_24_n15,
         n_cini_module_0__majority5_module_24_n14,
         n_cini_module_0__majority5_module_24_n13,
         n_cini_module_0__majority5_module_24_n12,
         n_cini_module_0__majority5_module_24_n11,
         n_cini_module_0__majority5_module_24_n10,
         n_cini_module_0__majority5_module_24_n9,
         n_cini_module_0__majority5_module_24_n8,
         n_cini_module_0__majority5_module_24_n7,
         n_cini_module_0__majority5_module_24_n6,
         n_cini_module_0__majority5_module_24_n5,
         n_cini_module_0__majority5_module_24_n4,
         n_cini_module_0__majority5_module_24_n3,
         n_cini_module_0__majority5_module_24_n2,
         n_cini_module_0__majority5_module_24_n1,
         n_cini_module_0__majority5_module_25_n18,
         n_cini_module_0__majority5_module_25_n17,
         n_cini_module_0__majority5_module_25_n16,
         n_cini_module_0__majority5_module_25_n15,
         n_cini_module_0__majority5_module_25_n14,
         n_cini_module_0__majority5_module_25_n13,
         n_cini_module_0__majority5_module_25_n12,
         n_cini_module_0__majority5_module_25_n11,
         n_cini_module_0__majority5_module_25_n10,
         n_cini_module_0__majority5_module_25_n9,
         n_cini_module_0__majority5_module_25_n8,
         n_cini_module_0__majority5_module_25_n7,
         n_cini_module_0__majority5_module_25_n6,
         n_cini_module_0__majority5_module_25_n5,
         n_cini_module_0__majority5_module_25_n4,
         n_cini_module_0__majority5_module_25_n3,
         n_cini_module_0__majority5_module_25_n2,
         n_cini_module_0__majority5_module_25_n1,
         n_cini_module_0__majority5_module_26_n18,
         n_cini_module_0__majority5_module_26_n17,
         n_cini_module_0__majority5_module_26_n16,
         n_cini_module_0__majority5_module_26_n15,
         n_cini_module_0__majority5_module_26_n14,
         n_cini_module_0__majority5_module_26_n13,
         n_cini_module_0__majority5_module_26_n12,
         n_cini_module_0__majority5_module_26_n11,
         n_cini_module_0__majority5_module_26_n10,
         n_cini_module_0__majority5_module_26_n9,
         n_cini_module_0__majority5_module_26_n8,
         n_cini_module_0__majority5_module_26_n7,
         n_cini_module_0__majority5_module_26_n6,
         n_cini_module_0__majority5_module_26_n5,
         n_cini_module_0__majority5_module_26_n4,
         n_cini_module_0__majority5_module_26_n3,
         n_cini_module_0__majority5_module_26_n2,
         n_cini_module_0__majority5_module_26_n1,
         n_cini_module_0__majority5_module_27_n18,
         n_cini_module_0__majority5_module_27_n17,
         n_cini_module_0__majority5_module_27_n16,
         n_cini_module_0__majority5_module_27_n15,
         n_cini_module_0__majority5_module_27_n14,
         n_cini_module_0__majority5_module_27_n13,
         n_cini_module_0__majority5_module_27_n12,
         n_cini_module_0__majority5_module_27_n11,
         n_cini_module_0__majority5_module_27_n10,
         n_cini_module_0__majority5_module_27_n9,
         n_cini_module_0__majority5_module_27_n8,
         n_cini_module_0__majority5_module_27_n7,
         n_cini_module_0__majority5_module_27_n6,
         n_cini_module_0__majority5_module_27_n5,
         n_cini_module_0__majority5_module_27_n4,
         n_cini_module_0__majority5_module_27_n3,
         n_cini_module_0__majority5_module_27_n2,
         n_cini_module_0__majority5_module_27_n1,
         n_cini_module_0__majority5_module_28_n18,
         n_cini_module_0__majority5_module_28_n17,
         n_cini_module_0__majority5_module_28_n16,
         n_cini_module_0__majority5_module_28_n15,
         n_cini_module_0__majority5_module_28_n14,
         n_cini_module_0__majority5_module_28_n13,
         n_cini_module_0__majority5_module_28_n12,
         n_cini_module_0__majority5_module_28_n11,
         n_cini_module_0__majority5_module_28_n10,
         n_cini_module_0__majority5_module_28_n9,
         n_cini_module_0__majority5_module_28_n8,
         n_cini_module_0__majority5_module_28_n7,
         n_cini_module_0__majority5_module_28_n6,
         n_cini_module_0__majority5_module_28_n5,
         n_cini_module_0__majority5_module_28_n4,
         n_cini_module_0__majority5_module_28_n3,
         n_cini_module_0__majority5_module_28_n2,
         n_cini_module_0__majority5_module_28_n1,
         n_cini_module_0__majority5_module_29_n18,
         n_cini_module_0__majority5_module_29_n17,
         n_cini_module_0__majority5_module_29_n16,
         n_cini_module_0__majority5_module_29_n15,
         n_cini_module_0__majority5_module_29_n14,
         n_cini_module_0__majority5_module_29_n13,
         n_cini_module_0__majority5_module_29_n12,
         n_cini_module_0__majority5_module_29_n11,
         n_cini_module_0__majority5_module_29_n10,
         n_cini_module_0__majority5_module_29_n9,
         n_cini_module_0__majority5_module_29_n8,
         n_cini_module_0__majority5_module_29_n7,
         n_cini_module_0__majority5_module_29_n6,
         n_cini_module_0__majority5_module_29_n5,
         n_cini_module_0__majority5_module_29_n4,
         n_cini_module_0__majority5_module_29_n3,
         n_cini_module_0__majority5_module_29_n2,
         n_cini_module_0__majority5_module_29_n1;

  XOR2_X1 u_cini_module_0__xor_module_1_U1 ( .A(p_rand_0), .B(io_b_s1_d0), .Z(
        n_cini_module_0__xor_module_1_res) );
  XOR2_X1 u_cini_module_0__xor_module_2_U1 ( .A(p_rand_1), .B(io_b_s2_d0), .Z(
        n_cini_module_0__xor_module_2_res) );
  XOR2_X1 u_cini_module_0__xor_module_3_U1 ( .A(p_rand_0), .B(io_b_s0_d0), .Z(
        n_cini_module_0__xor_module_3_res) );
  XOR2_X1 u_cini_module_0__xor_module_4_U1 ( .A(p_rand_2), .B(io_b_s2_d0), .Z(
        n_cini_module_0__xor_module_4_res) );
  XOR2_X1 u_cini_module_0__xor_module_5_U1 ( .A(p_rand_1), .B(io_b_s0_d0), .Z(
        n_cini_module_0__xor_module_5_res) );
  XOR2_X1 u_cini_module_0__xor_module_6_U1 ( .A(p_rand_2), .B(io_b_s1_d0), .Z(
        n_cini_module_0__xor_module_6_res) );
  XOR2_X2 u_cini_module_0__xor_module_7_U1 ( .A(p_rand_0), .B(io_b_s1_d1), .Z(
        n_cini_module_0__xor_module_7_res) );
  XOR2_X2 u_cini_module_0__xor_module_8_U1 ( .A(p_rand_1), .B(io_b_s2_d1), .Z(
        n_cini_module_0__xor_module_8_res) );
  XOR2_X2 u_cini_module_0__xor_module_9_U1 ( .A(p_rand_0), .B(io_b_s0_d1), .Z(
        n_cini_module_0__xor_module_9_res) );
  XOR2_X2 u_cini_module_0__xor_module_10_U1 ( .A(p_rand_2), .B(io_b_s2_d1), 
        .Z(n_cini_module_0__xor_module_10_res) );
  XOR2_X2 u_cini_module_0__xor_module_11_U1 ( .A(p_rand_1), .B(io_b_s0_d1), 
        .Z(n_cini_module_0__xor_module_11_res) );
  XOR2_X2 u_cini_module_0__xor_module_12_U1 ( .A(p_rand_2), .B(io_b_s1_d1), 
        .Z(n_cini_module_0__xor_module_12_res) );
  XOR2_X1 u_cini_module_0__xor_module_13_U1 ( .A(p_rand_0), .B(io_b_s1_d2), 
        .Z(n_cini_module_0__xor_module_13_res) );
  XOR2_X1 u_cini_module_0__xor_module_14_U1 ( .A(p_rand_1), .B(io_b_s2_d2), 
        .Z(n_cini_module_0__xor_module_14_res) );
  XOR2_X1 u_cini_module_0__xor_module_15_U1 ( .A(p_rand_0), .B(io_b_s0_d2), 
        .Z(n_cini_module_0__xor_module_15_res) );
  XOR2_X1 u_cini_module_0__xor_module_16_U1 ( .A(p_rand_2), .B(io_b_s2_d2), 
        .Z(n_cini_module_0__xor_module_16_res) );
  XOR2_X1 u_cini_module_0__xor_module_17_U1 ( .A(p_rand_1), .B(io_b_s0_d2), 
        .Z(n_cini_module_0__xor_module_17_res) );
  XOR2_X1 u_cini_module_0__xor_module_18_U1 ( .A(p_rand_2), .B(io_b_s1_d2), 
        .Z(n_cini_module_0__xor_module_18_res) );
  XOR2_X1 u_cini_module_0__xor_module_19_U1 ( .A(p_rand_0), .B(io_b_s1_d3), 
        .Z(n_cini_module_0__xor_module_19_res) );
  XOR2_X1 u_cini_module_0__xor_module_20_U1 ( .A(p_rand_1), .B(io_b_s2_d3), 
        .Z(n_cini_module_0__xor_module_20_res) );
  XOR2_X1 u_cini_module_0__xor_module_21_U1 ( .A(p_rand_0), .B(io_b_s0_d3), 
        .Z(n_cini_module_0__xor_module_21_res) );
  XOR2_X1 u_cini_module_0__xor_module_22_U1 ( .A(p_rand_2), .B(io_b_s2_d3), 
        .Z(n_cini_module_0__xor_module_22_res) );
  XOR2_X1 u_cini_module_0__xor_module_23_U1 ( .A(p_rand_1), .B(io_b_s0_d3), 
        .Z(n_cini_module_0__xor_module_23_res) );
  XOR2_X1 u_cini_module_0__xor_module_24_U1 ( .A(p_rand_2), .B(io_b_s1_d3), 
        .Z(n_cini_module_0__xor_module_24_res) );
  XOR2_X2 u_cini_module_0__xor_module_25_U1 ( .A(p_rand_0), .B(io_b_s1_d4), 
        .Z(n_cini_module_0__xor_module_25_res) );
  XOR2_X2 u_cini_module_0__xor_module_26_U1 ( .A(p_rand_1), .B(io_b_s2_d4), 
        .Z(n_cini_module_0__xor_module_26_res) );
  XOR2_X2 u_cini_module_0__xor_module_27_U1 ( .A(p_rand_0), .B(io_b_s0_d4), 
        .Z(n_cini_module_0__xor_module_27_res) );
  XOR2_X2 u_cini_module_0__xor_module_28_U1 ( .A(p_rand_2), .B(io_b_s2_d4), 
        .Z(n_cini_module_0__xor_module_28_res) );
  XOR2_X2 u_cini_module_0__xor_module_29_U1 ( .A(p_rand_1), .B(io_b_s0_d4), 
        .Z(n_cini_module_0__xor_module_29_res) );
  XOR2_X2 u_cini_module_0__xor_module_30_U1 ( .A(p_rand_2), .B(io_b_s1_d4), 
        .Z(n_cini_module_0__xor_module_30_res) );
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
  NOR2_X1 u_cini_module_0__majority5_module_0_U19 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_0_n18) );
  INV_X1 u_cini_module_0__majority5_module_0_U18 ( .A(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority5_module_0_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U17 ( .A1(
        n_cini_module_0__majority5_module_0_n18), .A2(
        n_cini_module_0__majority5_module_0_n16), .ZN(
        n_cini_module_0__majority5_module_0_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U16 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_0_n5) );
  INV_X1 u_cini_module_0__majority5_module_0_U15 ( .A(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_0_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U14 ( .A1(
        n_cini_module_0__majority5_module_0_n5), .A2(
        n_cini_module_0__majority5_module_0_n6), .ZN(
        n_cini_module_0__majority5_module_0_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_0_U13 ( .A1(
        n_cini_module_0__majority5_module_0_n17), .A2(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_0_n10) );
  INV_X1 u_cini_module_0__majority5_module_0_U12 ( .A(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_0_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_0_U11 ( .A1(
        n_cini_module_0__majority5_module_0_n16), .A2(
        n_cini_module_0__majority5_module_0_n7), .ZN(
        n_cini_module_0__majority5_module_0_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U10 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__majority5_module_0_n15), .ZN(
        n_cini_module_0__majority5_module_0_n13) );
  INV_X1 u_cini_module_0__majority5_module_0_U9 ( .A(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_0_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U8 ( .A1(
        n_cini_module_0__majority5_module_0_n13), .A2(
        n_cini_module_0__majority5_module_0_n14), .ZN(
        n_cini_module_0__majority5_module_0_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_0_U7 ( .A1(
        n_cini_module_0__majority5_module_0_n12), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority5_module_0_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_0_U6 ( .A1(
        n_cini_module_0__majority5_module_0_n10), .A2(
        n_cini_module_0__majority5_module_0_n11), .ZN(
        n_cini_module_0__majority5_module_0_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U5 ( .A1(
        n_cini_module_0__majority5_module_0_n8), .A2(
        n_cini_module_0__majority5_module_0_n9), .ZN(
        n_cini_module_0__majority5_module_0_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U4 ( .A1(
        n_cini_module_0__majority5_module_0_n6), .A2(
        n_cini_module_0__majority5_module_0_n7), .ZN(
        n_cini_module_0__majority5_module_0_n3) );
  INV_X1 u_cini_module_0__majority5_module_0_U3 ( .A(
        n_cini_module_0__majority5_module_0_n5), .ZN(
        n_cini_module_0__majority5_module_0_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U2 ( .A1(
        n_cini_module_0__majority5_module_0_n3), .A2(
        n_cini_module_0__majority5_module_0_n4), .ZN(
        n_cini_module_0__majority5_module_0_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_0_U1 ( .A1(
        n_cini_module_0__majority5_module_0_n1), .A2(
        n_cini_module_0__majority5_module_0_n2), .ZN(
        n_cini_module_0__majority5_module_0_res) );
  DFF_X1 u_cini_module_0__reg_module_5__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_0_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_5_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_3_U1 ( .A1(
        n_cini_module_0__reg_module_5_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_6__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_3_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_6_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_31_U1 ( .A(
        n_cini_module_0__reg_module_4_res), .B(
        n_cini_module_0__reg_module_6_res), .Z(
        n_cini_module_0__xor_module_31_res) );
  DFF_X1 u_cini_module_0__reg_module_7__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), 
        .CK(clock_0), .Q(n_cini_module_0__reg_module_7_res), .QN() );
  INV_X1 u_cini_module_0__not_module_2_U1 ( .A(io_a_s0_d0), .ZN(
        n_cini_module_0__not_module_2_res) );
  AND2_X1 u_cini_module_0__and_module_4_U1 ( .A1(
        n_cini_module_0__not_module_2_res), .A2(
        n_cini_module_0__reg_module_7_res), .ZN(
        n_cini_module_0__and_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_8__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_8_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_1_U19 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_1_n18) );
  INV_X1 u_cini_module_0__majority5_module_1_U18 ( .A(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority5_module_1_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U17 ( .A1(
        n_cini_module_0__majority5_module_1_n18), .A2(
        n_cini_module_0__majority5_module_1_n16), .ZN(
        n_cini_module_0__majority5_module_1_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U16 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_1_n5) );
  INV_X1 u_cini_module_0__majority5_module_1_U15 ( .A(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_1_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U14 ( .A1(
        n_cini_module_0__majority5_module_1_n5), .A2(
        n_cini_module_0__majority5_module_1_n6), .ZN(
        n_cini_module_0__majority5_module_1_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_1_U13 ( .A1(
        n_cini_module_0__majority5_module_1_n17), .A2(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_1_n10) );
  INV_X1 u_cini_module_0__majority5_module_1_U12 ( .A(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_1_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_1_U11 ( .A1(
        n_cini_module_0__majority5_module_1_n16), .A2(
        n_cini_module_0__majority5_module_1_n7), .ZN(
        n_cini_module_0__majority5_module_1_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U10 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__majority5_module_1_n15), .ZN(
        n_cini_module_0__majority5_module_1_n13) );
  INV_X1 u_cini_module_0__majority5_module_1_U9 ( .A(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_1_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U8 ( .A1(
        n_cini_module_0__majority5_module_1_n13), .A2(
        n_cini_module_0__majority5_module_1_n14), .ZN(
        n_cini_module_0__majority5_module_1_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_1_U7 ( .A1(
        n_cini_module_0__majority5_module_1_n12), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority5_module_1_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_1_U6 ( .A1(
        n_cini_module_0__majority5_module_1_n10), .A2(
        n_cini_module_0__majority5_module_1_n11), .ZN(
        n_cini_module_0__majority5_module_1_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U5 ( .A1(
        n_cini_module_0__majority5_module_1_n8), .A2(
        n_cini_module_0__majority5_module_1_n9), .ZN(
        n_cini_module_0__majority5_module_1_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U4 ( .A1(
        n_cini_module_0__majority5_module_1_n6), .A2(
        n_cini_module_0__majority5_module_1_n7), .ZN(
        n_cini_module_0__majority5_module_1_n3) );
  INV_X1 u_cini_module_0__majority5_module_1_U3 ( .A(
        n_cini_module_0__majority5_module_1_n5), .ZN(
        n_cini_module_0__majority5_module_1_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U2 ( .A1(
        n_cini_module_0__majority5_module_1_n3), .A2(
        n_cini_module_0__majority5_module_1_n4), .ZN(
        n_cini_module_0__majority5_module_1_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_1_U1 ( .A1(
        n_cini_module_0__majority5_module_1_n1), .A2(
        n_cini_module_0__majority5_module_1_n2), .ZN(
        n_cini_module_0__majority5_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_9__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_9_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_5_U1 ( .A1(
        n_cini_module_0__reg_module_9_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_10__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_5_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_10_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_32_U1 ( .A(
        n_cini_module_0__reg_module_8_res), .B(
        n_cini_module_0__reg_module_10_res), .Z(
        n_cini_module_0__xor_module_32_res) );
  XOR2_X1 u_cini_module_0__xor_module_33_U1 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__xor_module_32_res), .Z(
        n_cini_module_0__xor_module_33_res) );
  XOR2_X1 u_cini_module_0__xor_module_34_U1 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
        n_cini_module_0__reg_module_2_res), .Z(io_c_s0_d0) );
  DFF_X1 u_cini_module_0__reg_module_11__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_11_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_6_U1 ( .A1(
        n_cini_module_0__reg_module_11_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_12__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_6_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_12_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_13__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_0), .Q(n_cini_module_0__reg_module_13_res), .QN() );
  INV_X1 u_cini_module_0__not_module_3_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_3_res) );
  AND2_X1 u_cini_module_0__and_module_7_U1 ( .A1(
        n_cini_module_0__not_module_3_res), .A2(
        n_cini_module_0__reg_module_13_res), .ZN(
        n_cini_module_0__and_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_14__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_7_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_14_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_2_U19 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_2_n18) );
  INV_X1 u_cini_module_0__majority5_module_2_U18 ( .A(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority5_module_2_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U17 ( .A1(
        n_cini_module_0__majority5_module_2_n18), .A2(
        n_cini_module_0__majority5_module_2_n16), .ZN(
        n_cini_module_0__majority5_module_2_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U16 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_2_n5) );
  INV_X1 u_cini_module_0__majority5_module_2_U15 ( .A(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_2_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U14 ( .A1(
        n_cini_module_0__majority5_module_2_n5), .A2(
        n_cini_module_0__majority5_module_2_n6), .ZN(
        n_cini_module_0__majority5_module_2_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_2_U13 ( .A1(
        n_cini_module_0__majority5_module_2_n17), .A2(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_2_n10) );
  INV_X1 u_cini_module_0__majority5_module_2_U12 ( .A(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_2_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_2_U11 ( .A1(
        n_cini_module_0__majority5_module_2_n16), .A2(
        n_cini_module_0__majority5_module_2_n7), .ZN(
        n_cini_module_0__majority5_module_2_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U10 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__majority5_module_2_n15), .ZN(
        n_cini_module_0__majority5_module_2_n13) );
  INV_X1 u_cini_module_0__majority5_module_2_U9 ( .A(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_2_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U8 ( .A1(
        n_cini_module_0__majority5_module_2_n13), .A2(
        n_cini_module_0__majority5_module_2_n14), .ZN(
        n_cini_module_0__majority5_module_2_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_2_U7 ( .A1(
        n_cini_module_0__majority5_module_2_n12), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority5_module_2_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_2_U6 ( .A1(
        n_cini_module_0__majority5_module_2_n10), .A2(
        n_cini_module_0__majority5_module_2_n11), .ZN(
        n_cini_module_0__majority5_module_2_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U5 ( .A1(
        n_cini_module_0__majority5_module_2_n8), .A2(
        n_cini_module_0__majority5_module_2_n9), .ZN(
        n_cini_module_0__majority5_module_2_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U4 ( .A1(
        n_cini_module_0__majority5_module_2_n6), .A2(
        n_cini_module_0__majority5_module_2_n7), .ZN(
        n_cini_module_0__majority5_module_2_n3) );
  INV_X1 u_cini_module_0__majority5_module_2_U3 ( .A(
        n_cini_module_0__majority5_module_2_n5), .ZN(
        n_cini_module_0__majority5_module_2_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U2 ( .A1(
        n_cini_module_0__majority5_module_2_n3), .A2(
        n_cini_module_0__majority5_module_2_n4), .ZN(
        n_cini_module_0__majority5_module_2_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_2_U1 ( .A1(
        n_cini_module_0__majority5_module_2_n1), .A2(
        n_cini_module_0__majority5_module_2_n2), .ZN(
        n_cini_module_0__majority5_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_15__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_2_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_15_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_8_U1 ( .A1(
        n_cini_module_0__reg_module_15_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_16__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_8_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_16_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_35_U1 ( .A(
        n_cini_module_0__reg_module_14_res), .B(
        n_cini_module_0__reg_module_16_res), .Z(
        n_cini_module_0__xor_module_35_res) );
  DFF_X1 u_cini_module_0__reg_module_17__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_0), .Q(n_cini_module_0__reg_module_17_res), .QN() );
  INV_X1 u_cini_module_0__not_module_4_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_4_res) );
  AND2_X1 u_cini_module_0__and_module_9_U1 ( .A1(
        n_cini_module_0__not_module_4_res), .A2(
        n_cini_module_0__reg_module_17_res), .ZN(
        n_cini_module_0__and_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_18__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_9_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_18_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_3_U19 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_3_n18) );
  INV_X1 u_cini_module_0__majority5_module_3_U18 ( .A(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority5_module_3_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U17 ( .A1(
        n_cini_module_0__majority5_module_3_n18), .A2(
        n_cini_module_0__majority5_module_3_n16), .ZN(
        n_cini_module_0__majority5_module_3_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U16 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_3_n5) );
  INV_X1 u_cini_module_0__majority5_module_3_U15 ( .A(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_3_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U14 ( .A1(
        n_cini_module_0__majority5_module_3_n5), .A2(
        n_cini_module_0__majority5_module_3_n6), .ZN(
        n_cini_module_0__majority5_module_3_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_3_U13 ( .A1(
        n_cini_module_0__majority5_module_3_n17), .A2(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_3_n10) );
  INV_X1 u_cini_module_0__majority5_module_3_U12 ( .A(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_3_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_3_U11 ( .A1(
        n_cini_module_0__majority5_module_3_n16), .A2(
        n_cini_module_0__majority5_module_3_n7), .ZN(
        n_cini_module_0__majority5_module_3_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U10 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__majority5_module_3_n15), .ZN(
        n_cini_module_0__majority5_module_3_n13) );
  INV_X1 u_cini_module_0__majority5_module_3_U9 ( .A(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_3_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U8 ( .A1(
        n_cini_module_0__majority5_module_3_n13), .A2(
        n_cini_module_0__majority5_module_3_n14), .ZN(
        n_cini_module_0__majority5_module_3_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_3_U7 ( .A1(
        n_cini_module_0__majority5_module_3_n12), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority5_module_3_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_3_U6 ( .A1(
        n_cini_module_0__majority5_module_3_n10), .A2(
        n_cini_module_0__majority5_module_3_n11), .ZN(
        n_cini_module_0__majority5_module_3_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U5 ( .A1(
        n_cini_module_0__majority5_module_3_n8), .A2(
        n_cini_module_0__majority5_module_3_n9), .ZN(
        n_cini_module_0__majority5_module_3_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U4 ( .A1(
        n_cini_module_0__majority5_module_3_n6), .A2(
        n_cini_module_0__majority5_module_3_n7), .ZN(
        n_cini_module_0__majority5_module_3_n3) );
  INV_X1 u_cini_module_0__majority5_module_3_U3 ( .A(
        n_cini_module_0__majority5_module_3_n5), .ZN(
        n_cini_module_0__majority5_module_3_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U2 ( .A1(
        n_cini_module_0__majority5_module_3_n3), .A2(
        n_cini_module_0__majority5_module_3_n4), .ZN(
        n_cini_module_0__majority5_module_3_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_3_U1 ( .A1(
        n_cini_module_0__majority5_module_3_n1), .A2(
        n_cini_module_0__majority5_module_3_n2), .ZN(
        n_cini_module_0__majority5_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_19__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_3_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_19_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_10_U1 ( .A1(
        n_cini_module_0__reg_module_19_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_20__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_10_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_20_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_36_U1 ( .A(
        n_cini_module_0__reg_module_18_res), .B(
        n_cini_module_0__reg_module_20_res), .Z(
        n_cini_module_0__xor_module_36_res) );
  XOR2_X1 u_cini_module_0__xor_module_37_U1 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__xor_module_36_res), .Z(
        n_cini_module_0__xor_module_37_res) );
  XOR2_X1 u_cini_module_0__xor_module_38_U1 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__reg_module_12_res), .Z(io_c_s1_d0) );
  DFF_X1 u_cini_module_0__reg_module_21__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_21_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_11_U1 ( .A1(
        n_cini_module_0__reg_module_21_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_22__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_11_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_22_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_23__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_0), .Q(n_cini_module_0__reg_module_23_res), .QN() );
  INV_X1 u_cini_module_0__not_module_5_U1 ( .A(io_a_s2_d0), .ZN(
        n_cini_module_0__not_module_5_res) );
  AND2_X1 u_cini_module_0__and_module_12_U1 ( .A1(
        n_cini_module_0__not_module_5_res), .A2(
        n_cini_module_0__reg_module_23_res), .ZN(
        n_cini_module_0__and_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_24__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_12_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_24_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_4_U19 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_4_n18) );
  INV_X1 u_cini_module_0__majority5_module_4_U18 ( .A(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority5_module_4_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U17 ( .A1(
        n_cini_module_0__majority5_module_4_n18), .A2(
        n_cini_module_0__majority5_module_4_n16), .ZN(
        n_cini_module_0__majority5_module_4_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U16 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_4_n5) );
  INV_X1 u_cini_module_0__majority5_module_4_U15 ( .A(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_4_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U14 ( .A1(
        n_cini_module_0__majority5_module_4_n5), .A2(
        n_cini_module_0__majority5_module_4_n6), .ZN(
        n_cini_module_0__majority5_module_4_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_4_U13 ( .A1(
        n_cini_module_0__majority5_module_4_n17), .A2(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_4_n10) );
  INV_X1 u_cini_module_0__majority5_module_4_U12 ( .A(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_4_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_4_U11 ( .A1(
        n_cini_module_0__majority5_module_4_n16), .A2(
        n_cini_module_0__majority5_module_4_n7), .ZN(
        n_cini_module_0__majority5_module_4_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U10 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority5_module_4_n15), .ZN(
        n_cini_module_0__majority5_module_4_n13) );
  INV_X1 u_cini_module_0__majority5_module_4_U9 ( .A(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_4_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U8 ( .A1(
        n_cini_module_0__majority5_module_4_n13), .A2(
        n_cini_module_0__majority5_module_4_n14), .ZN(
        n_cini_module_0__majority5_module_4_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_4_U7 ( .A1(
        n_cini_module_0__majority5_module_4_n12), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority5_module_4_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_4_U6 ( .A1(
        n_cini_module_0__majority5_module_4_n10), .A2(
        n_cini_module_0__majority5_module_4_n11), .ZN(
        n_cini_module_0__majority5_module_4_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U5 ( .A1(
        n_cini_module_0__majority5_module_4_n8), .A2(
        n_cini_module_0__majority5_module_4_n9), .ZN(
        n_cini_module_0__majority5_module_4_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U4 ( .A1(
        n_cini_module_0__majority5_module_4_n6), .A2(
        n_cini_module_0__majority5_module_4_n7), .ZN(
        n_cini_module_0__majority5_module_4_n3) );
  INV_X1 u_cini_module_0__majority5_module_4_U3 ( .A(
        n_cini_module_0__majority5_module_4_n5), .ZN(
        n_cini_module_0__majority5_module_4_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U2 ( .A1(
        n_cini_module_0__majority5_module_4_n3), .A2(
        n_cini_module_0__majority5_module_4_n4), .ZN(
        n_cini_module_0__majority5_module_4_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_4_U1 ( .A1(
        n_cini_module_0__majority5_module_4_n1), .A2(
        n_cini_module_0__majority5_module_4_n2), .ZN(
        n_cini_module_0__majority5_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_25__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_4_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_25_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_13_U1 ( .A1(
        n_cini_module_0__reg_module_25_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_26__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_13_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_26_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_39_U1 ( .A(
        n_cini_module_0__reg_module_24_res), .B(
        n_cini_module_0__reg_module_26_res), .Z(
        n_cini_module_0__xor_module_39_res) );
  DFF_X1 u_cini_module_0__reg_module_27__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_0), .Q(n_cini_module_0__reg_module_27_res), .QN() );
  INV_X1 u_cini_module_0__not_module_6_U1 ( .A(io_a_s2_d0), .ZN(
        n_cini_module_0__not_module_6_res) );
  AND2_X1 u_cini_module_0__and_module_14_U1 ( .A1(
        n_cini_module_0__not_module_6_res), .A2(
        n_cini_module_0__reg_module_27_res), .ZN(
        n_cini_module_0__and_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_28__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_14_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_28_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_5_U19 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_5_n18) );
  INV_X1 u_cini_module_0__majority5_module_5_U18 ( .A(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority5_module_5_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U17 ( .A1(
        n_cini_module_0__majority5_module_5_n18), .A2(
        n_cini_module_0__majority5_module_5_n16), .ZN(
        n_cini_module_0__majority5_module_5_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U16 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_5_n5) );
  INV_X1 u_cini_module_0__majority5_module_5_U15 ( .A(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_5_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U14 ( .A1(
        n_cini_module_0__majority5_module_5_n5), .A2(
        n_cini_module_0__majority5_module_5_n6), .ZN(
        n_cini_module_0__majority5_module_5_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_5_U13 ( .A1(
        n_cini_module_0__majority5_module_5_n17), .A2(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_5_n10) );
  INV_X1 u_cini_module_0__majority5_module_5_U12 ( .A(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_5_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_5_U11 ( .A1(
        n_cini_module_0__majority5_module_5_n16), .A2(
        n_cini_module_0__majority5_module_5_n7), .ZN(
        n_cini_module_0__majority5_module_5_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U10 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority5_module_5_n15), .ZN(
        n_cini_module_0__majority5_module_5_n13) );
  INV_X1 u_cini_module_0__majority5_module_5_U9 ( .A(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_5_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U8 ( .A1(
        n_cini_module_0__majority5_module_5_n13), .A2(
        n_cini_module_0__majority5_module_5_n14), .ZN(
        n_cini_module_0__majority5_module_5_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_5_U7 ( .A1(
        n_cini_module_0__majority5_module_5_n12), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority5_module_5_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_5_U6 ( .A1(
        n_cini_module_0__majority5_module_5_n10), .A2(
        n_cini_module_0__majority5_module_5_n11), .ZN(
        n_cini_module_0__majority5_module_5_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U5 ( .A1(
        n_cini_module_0__majority5_module_5_n8), .A2(
        n_cini_module_0__majority5_module_5_n9), .ZN(
        n_cini_module_0__majority5_module_5_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U4 ( .A1(
        n_cini_module_0__majority5_module_5_n6), .A2(
        n_cini_module_0__majority5_module_5_n7), .ZN(
        n_cini_module_0__majority5_module_5_n3) );
  INV_X1 u_cini_module_0__majority5_module_5_U3 ( .A(
        n_cini_module_0__majority5_module_5_n5), .ZN(
        n_cini_module_0__majority5_module_5_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U2 ( .A1(
        n_cini_module_0__majority5_module_5_n3), .A2(
        n_cini_module_0__majority5_module_5_n4), .ZN(
        n_cini_module_0__majority5_module_5_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_5_U1 ( .A1(
        n_cini_module_0__majority5_module_5_n1), .A2(
        n_cini_module_0__majority5_module_5_n2), .ZN(
        n_cini_module_0__majority5_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_29__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_5_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_29_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_15_U1 ( .A1(
        n_cini_module_0__reg_module_29_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_30__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_15_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_30_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_40_U1 ( .A(
        n_cini_module_0__reg_module_28_res), .B(
        n_cini_module_0__reg_module_30_res), .Z(
        n_cini_module_0__xor_module_40_res) );
  XOR2_X1 u_cini_module_0__xor_module_41_U1 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_40_res), .Z(
        n_cini_module_0__xor_module_41_res) );
  XOR2_X1 u_cini_module_0__xor_module_42_U1 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__reg_module_22_res), .Z(io_c_s2_d0) );
  DFF_X1 u_cini_module_0__reg_module_31__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_31_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_16_U1 ( .A1(
        n_cini_module_0__reg_module_31_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_16_res) );
  DFF_X1 u_cini_module_0__reg_module_32__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_16_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_32_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_33__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_1), .Q(n_cini_module_0__reg_module_33_res), .QN() );
  INV_X1 u_cini_module_0__not_module_7_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_7_res) );
  AND2_X1 u_cini_module_0__and_module_17_U1 ( .A1(
        n_cini_module_0__not_module_7_res), .A2(
        n_cini_module_0__reg_module_33_res), .ZN(
        n_cini_module_0__and_module_17_res) );
  DFF_X1 u_cini_module_0__reg_module_34__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_17_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_34_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_6_U19 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_6_n18) );
  INV_X1 u_cini_module_0__majority5_module_6_U18 ( .A(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority5_module_6_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U17 ( .A1(
        n_cini_module_0__majority5_module_6_n18), .A2(
        n_cini_module_0__majority5_module_6_n16), .ZN(
        n_cini_module_0__majority5_module_6_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U16 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_6_n5) );
  INV_X1 u_cini_module_0__majority5_module_6_U15 ( .A(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_6_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U14 ( .A1(
        n_cini_module_0__majority5_module_6_n5), .A2(
        n_cini_module_0__majority5_module_6_n6), .ZN(
        n_cini_module_0__majority5_module_6_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_6_U13 ( .A1(
        n_cini_module_0__majority5_module_6_n17), .A2(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_6_n10) );
  INV_X1 u_cini_module_0__majority5_module_6_U12 ( .A(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_6_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_6_U11 ( .A1(
        n_cini_module_0__majority5_module_6_n16), .A2(
        n_cini_module_0__majority5_module_6_n7), .ZN(
        n_cini_module_0__majority5_module_6_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U10 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__majority5_module_6_n15), .ZN(
        n_cini_module_0__majority5_module_6_n13) );
  INV_X1 u_cini_module_0__majority5_module_6_U9 ( .A(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_6_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U8 ( .A1(
        n_cini_module_0__majority5_module_6_n13), .A2(
        n_cini_module_0__majority5_module_6_n14), .ZN(
        n_cini_module_0__majority5_module_6_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_6_U7 ( .A1(
        n_cini_module_0__majority5_module_6_n12), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority5_module_6_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_6_U6 ( .A1(
        n_cini_module_0__majority5_module_6_n10), .A2(
        n_cini_module_0__majority5_module_6_n11), .ZN(
        n_cini_module_0__majority5_module_6_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U5 ( .A1(
        n_cini_module_0__majority5_module_6_n8), .A2(
        n_cini_module_0__majority5_module_6_n9), .ZN(
        n_cini_module_0__majority5_module_6_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U4 ( .A1(
        n_cini_module_0__majority5_module_6_n6), .A2(
        n_cini_module_0__majority5_module_6_n7), .ZN(
        n_cini_module_0__majority5_module_6_n3) );
  INV_X1 u_cini_module_0__majority5_module_6_U3 ( .A(
        n_cini_module_0__majority5_module_6_n5), .ZN(
        n_cini_module_0__majority5_module_6_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U2 ( .A1(
        n_cini_module_0__majority5_module_6_n3), .A2(
        n_cini_module_0__majority5_module_6_n4), .ZN(
        n_cini_module_0__majority5_module_6_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_6_U1 ( .A1(
        n_cini_module_0__majority5_module_6_n1), .A2(
        n_cini_module_0__majority5_module_6_n2), .ZN(
        n_cini_module_0__majority5_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_35__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_6_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_35_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_18_U1 ( .A1(
        n_cini_module_0__reg_module_35_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_36__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_18_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_36_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_43_U1 ( .A(
        n_cini_module_0__reg_module_34_res), .B(
        n_cini_module_0__reg_module_36_res), .Z(
        n_cini_module_0__xor_module_43_res) );
  DFF_X1 u_cini_module_0__reg_module_37__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_1), .Q(n_cini_module_0__reg_module_37_res), .QN() );
  INV_X1 u_cini_module_0__not_module_8_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_8_res) );
  AND2_X1 u_cini_module_0__and_module_19_U1 ( .A1(
        n_cini_module_0__not_module_8_res), .A2(
        n_cini_module_0__reg_module_37_res), .ZN(
        n_cini_module_0__and_module_19_res) );
  DFF_X1 u_cini_module_0__reg_module_38__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_19_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_38_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_7_U19 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_7_n18) );
  INV_X1 u_cini_module_0__majority5_module_7_U18 ( .A(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority5_module_7_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U17 ( .A1(
        n_cini_module_0__majority5_module_7_n18), .A2(
        n_cini_module_0__majority5_module_7_n16), .ZN(
        n_cini_module_0__majority5_module_7_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U16 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_7_n5) );
  INV_X1 u_cini_module_0__majority5_module_7_U15 ( .A(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_7_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U14 ( .A1(
        n_cini_module_0__majority5_module_7_n5), .A2(
        n_cini_module_0__majority5_module_7_n6), .ZN(
        n_cini_module_0__majority5_module_7_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_7_U13 ( .A1(
        n_cini_module_0__majority5_module_7_n17), .A2(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_7_n10) );
  INV_X1 u_cini_module_0__majority5_module_7_U12 ( .A(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_7_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_7_U11 ( .A1(
        n_cini_module_0__majority5_module_7_n16), .A2(
        n_cini_module_0__majority5_module_7_n7), .ZN(
        n_cini_module_0__majority5_module_7_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U10 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__majority5_module_7_n15), .ZN(
        n_cini_module_0__majority5_module_7_n13) );
  INV_X1 u_cini_module_0__majority5_module_7_U9 ( .A(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_7_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U8 ( .A1(
        n_cini_module_0__majority5_module_7_n13), .A2(
        n_cini_module_0__majority5_module_7_n14), .ZN(
        n_cini_module_0__majority5_module_7_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_7_U7 ( .A1(
        n_cini_module_0__majority5_module_7_n12), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority5_module_7_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_7_U6 ( .A1(
        n_cini_module_0__majority5_module_7_n10), .A2(
        n_cini_module_0__majority5_module_7_n11), .ZN(
        n_cini_module_0__majority5_module_7_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U5 ( .A1(
        n_cini_module_0__majority5_module_7_n8), .A2(
        n_cini_module_0__majority5_module_7_n9), .ZN(
        n_cini_module_0__majority5_module_7_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U4 ( .A1(
        n_cini_module_0__majority5_module_7_n6), .A2(
        n_cini_module_0__majority5_module_7_n7), .ZN(
        n_cini_module_0__majority5_module_7_n3) );
  INV_X1 u_cini_module_0__majority5_module_7_U3 ( .A(
        n_cini_module_0__majority5_module_7_n5), .ZN(
        n_cini_module_0__majority5_module_7_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U2 ( .A1(
        n_cini_module_0__majority5_module_7_n3), .A2(
        n_cini_module_0__majority5_module_7_n4), .ZN(
        n_cini_module_0__majority5_module_7_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_7_U1 ( .A1(
        n_cini_module_0__majority5_module_7_n1), .A2(
        n_cini_module_0__majority5_module_7_n2), .ZN(
        n_cini_module_0__majority5_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_39__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_7_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_39_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_20_U1 ( .A1(
        n_cini_module_0__reg_module_39_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_20_res) );
  DFF_X1 u_cini_module_0__reg_module_40__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_20_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_40_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_44_U1 ( .A(
        n_cini_module_0__reg_module_38_res), .B(
        n_cini_module_0__reg_module_40_res), .Z(
        n_cini_module_0__xor_module_44_res) );
  XOR2_X1 u_cini_module_0__xor_module_45_U1 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_44_res), .Z(
        n_cini_module_0__xor_module_45_res) );
  XOR2_X1 u_cini_module_0__xor_module_46_U1 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__reg_module_32_res), .Z(io_c_s0_d1) );
  DFF_X1 u_cini_module_0__reg_module_41__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_41_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_21_U1 ( .A1(
        n_cini_module_0__reg_module_41_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_21_res) );
  DFF_X1 u_cini_module_0__reg_module_42__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_21_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_42_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_43__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_1), .Q(n_cini_module_0__reg_module_43_res), .QN() );
  INV_X1 u_cini_module_0__not_module_9_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_9_res) );
  AND2_X1 u_cini_module_0__and_module_22_U1 ( .A1(
        n_cini_module_0__not_module_9_res), .A2(
        n_cini_module_0__reg_module_43_res), .ZN(
        n_cini_module_0__and_module_22_res) );
  DFF_X1 u_cini_module_0__reg_module_44__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_22_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_44_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_8_U19 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_8_n18) );
  INV_X1 u_cini_module_0__majority5_module_8_U18 ( .A(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority5_module_8_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U17 ( .A1(
        n_cini_module_0__majority5_module_8_n18), .A2(
        n_cini_module_0__majority5_module_8_n16), .ZN(
        n_cini_module_0__majority5_module_8_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U16 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_8_n5) );
  INV_X1 u_cini_module_0__majority5_module_8_U15 ( .A(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_8_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U14 ( .A1(
        n_cini_module_0__majority5_module_8_n5), .A2(
        n_cini_module_0__majority5_module_8_n6), .ZN(
        n_cini_module_0__majority5_module_8_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_8_U13 ( .A1(
        n_cini_module_0__majority5_module_8_n17), .A2(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_8_n10) );
  INV_X1 u_cini_module_0__majority5_module_8_U12 ( .A(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_8_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_8_U11 ( .A1(
        n_cini_module_0__majority5_module_8_n16), .A2(
        n_cini_module_0__majority5_module_8_n7), .ZN(
        n_cini_module_0__majority5_module_8_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U10 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__majority5_module_8_n15), .ZN(
        n_cini_module_0__majority5_module_8_n13) );
  INV_X1 u_cini_module_0__majority5_module_8_U9 ( .A(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_8_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U8 ( .A1(
        n_cini_module_0__majority5_module_8_n13), .A2(
        n_cini_module_0__majority5_module_8_n14), .ZN(
        n_cini_module_0__majority5_module_8_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_8_U7 ( .A1(
        n_cini_module_0__majority5_module_8_n12), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority5_module_8_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_8_U6 ( .A1(
        n_cini_module_0__majority5_module_8_n10), .A2(
        n_cini_module_0__majority5_module_8_n11), .ZN(
        n_cini_module_0__majority5_module_8_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U5 ( .A1(
        n_cini_module_0__majority5_module_8_n8), .A2(
        n_cini_module_0__majority5_module_8_n9), .ZN(
        n_cini_module_0__majority5_module_8_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U4 ( .A1(
        n_cini_module_0__majority5_module_8_n6), .A2(
        n_cini_module_0__majority5_module_8_n7), .ZN(
        n_cini_module_0__majority5_module_8_n3) );
  INV_X1 u_cini_module_0__majority5_module_8_U3 ( .A(
        n_cini_module_0__majority5_module_8_n5), .ZN(
        n_cini_module_0__majority5_module_8_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U2 ( .A1(
        n_cini_module_0__majority5_module_8_n3), .A2(
        n_cini_module_0__majority5_module_8_n4), .ZN(
        n_cini_module_0__majority5_module_8_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_8_U1 ( .A1(
        n_cini_module_0__majority5_module_8_n1), .A2(
        n_cini_module_0__majority5_module_8_n2), .ZN(
        n_cini_module_0__majority5_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_45__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_8_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_45_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_23_U1 ( .A1(
        n_cini_module_0__reg_module_45_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_23_res) );
  DFF_X1 u_cini_module_0__reg_module_46__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_23_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_46_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_47_U1 ( .A(
        n_cini_module_0__reg_module_44_res), .B(
        n_cini_module_0__reg_module_46_res), .Z(
        n_cini_module_0__xor_module_47_res) );
  DFF_X1 u_cini_module_0__reg_module_47__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_1), .Q(n_cini_module_0__reg_module_47_res), .QN() );
  INV_X1 u_cini_module_0__not_module_10_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_10_res) );
  AND2_X1 u_cini_module_0__and_module_24_U1 ( .A1(
        n_cini_module_0__not_module_10_res), .A2(
        n_cini_module_0__reg_module_47_res), .ZN(
        n_cini_module_0__and_module_24_res) );
  DFF_X1 u_cini_module_0__reg_module_48__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_24_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_48_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_9_U19 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_9_n18) );
  INV_X1 u_cini_module_0__majority5_module_9_U18 ( .A(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority5_module_9_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U17 ( .A1(
        n_cini_module_0__majority5_module_9_n18), .A2(
        n_cini_module_0__majority5_module_9_n16), .ZN(
        n_cini_module_0__majority5_module_9_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U16 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_9_n5) );
  INV_X1 u_cini_module_0__majority5_module_9_U15 ( .A(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_9_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U14 ( .A1(
        n_cini_module_0__majority5_module_9_n5), .A2(
        n_cini_module_0__majority5_module_9_n6), .ZN(
        n_cini_module_0__majority5_module_9_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_9_U13 ( .A1(
        n_cini_module_0__majority5_module_9_n17), .A2(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_9_n10) );
  INV_X1 u_cini_module_0__majority5_module_9_U12 ( .A(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_9_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_9_U11 ( .A1(
        n_cini_module_0__majority5_module_9_n16), .A2(
        n_cini_module_0__majority5_module_9_n7), .ZN(
        n_cini_module_0__majority5_module_9_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U10 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__majority5_module_9_n15), .ZN(
        n_cini_module_0__majority5_module_9_n13) );
  INV_X1 u_cini_module_0__majority5_module_9_U9 ( .A(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_9_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U8 ( .A1(
        n_cini_module_0__majority5_module_9_n13), .A2(
        n_cini_module_0__majority5_module_9_n14), .ZN(
        n_cini_module_0__majority5_module_9_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_9_U7 ( .A1(
        n_cini_module_0__majority5_module_9_n12), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority5_module_9_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_9_U6 ( .A1(
        n_cini_module_0__majority5_module_9_n10), .A2(
        n_cini_module_0__majority5_module_9_n11), .ZN(
        n_cini_module_0__majority5_module_9_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U5 ( .A1(
        n_cini_module_0__majority5_module_9_n8), .A2(
        n_cini_module_0__majority5_module_9_n9), .ZN(
        n_cini_module_0__majority5_module_9_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U4 ( .A1(
        n_cini_module_0__majority5_module_9_n6), .A2(
        n_cini_module_0__majority5_module_9_n7), .ZN(
        n_cini_module_0__majority5_module_9_n3) );
  INV_X1 u_cini_module_0__majority5_module_9_U3 ( .A(
        n_cini_module_0__majority5_module_9_n5), .ZN(
        n_cini_module_0__majority5_module_9_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U2 ( .A1(
        n_cini_module_0__majority5_module_9_n3), .A2(
        n_cini_module_0__majority5_module_9_n4), .ZN(
        n_cini_module_0__majority5_module_9_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_9_U1 ( .A1(
        n_cini_module_0__majority5_module_9_n1), .A2(
        n_cini_module_0__majority5_module_9_n2), .ZN(
        n_cini_module_0__majority5_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_49__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_9_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_49_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_25_U1 ( .A1(
        n_cini_module_0__reg_module_49_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_25_res) );
  DFF_X1 u_cini_module_0__reg_module_50__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_25_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_50_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_48_U1 ( .A(
        n_cini_module_0__reg_module_48_res), .B(
        n_cini_module_0__reg_module_50_res), .Z(
        n_cini_module_0__xor_module_48_res) );
  XOR2_X1 u_cini_module_0__xor_module_49_U1 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_48_res), .Z(
        n_cini_module_0__xor_module_49_res) );
  XOR2_X1 u_cini_module_0__xor_module_50_U1 ( .A(
        n_cini_module_0__xor_module_49_res), .B(
        n_cini_module_0__reg_module_42_res), .Z(io_c_s1_d1) );
  DFF_X1 u_cini_module_0__reg_module_51__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_51_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_26_U1 ( .A1(
        n_cini_module_0__reg_module_51_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_26_res) );
  DFF_X1 u_cini_module_0__reg_module_52__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_26_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_52_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_53__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_1), .Q(n_cini_module_0__reg_module_53_res), .QN() );
  INV_X1 u_cini_module_0__not_module_11_U1 ( .A(io_a_s2_d1), .ZN(
        n_cini_module_0__not_module_11_res) );
  AND2_X1 u_cini_module_0__and_module_27_U1 ( .A1(
        n_cini_module_0__not_module_11_res), .A2(
        n_cini_module_0__reg_module_53_res), .ZN(
        n_cini_module_0__and_module_27_res) );
  DFF_X1 u_cini_module_0__reg_module_54__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_27_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_54_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_10_U19 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_10_n18) );
  INV_X1 u_cini_module_0__majority5_module_10_U18 ( .A(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority5_module_10_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U17 ( .A1(
        n_cini_module_0__majority5_module_10_n18), .A2(
        n_cini_module_0__majority5_module_10_n16), .ZN(
        n_cini_module_0__majority5_module_10_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U16 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_10_n5) );
  INV_X1 u_cini_module_0__majority5_module_10_U15 ( .A(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_10_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U14 ( .A1(
        n_cini_module_0__majority5_module_10_n5), .A2(
        n_cini_module_0__majority5_module_10_n6), .ZN(
        n_cini_module_0__majority5_module_10_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_10_U13 ( .A1(
        n_cini_module_0__majority5_module_10_n17), .A2(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_10_n10) );
  INV_X1 u_cini_module_0__majority5_module_10_U12 ( .A(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_10_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_10_U11 ( .A1(
        n_cini_module_0__majority5_module_10_n16), .A2(
        n_cini_module_0__majority5_module_10_n7), .ZN(
        n_cini_module_0__majority5_module_10_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U10 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority5_module_10_n15), .ZN(
        n_cini_module_0__majority5_module_10_n13) );
  INV_X1 u_cini_module_0__majority5_module_10_U9 ( .A(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_10_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U8 ( .A1(
        n_cini_module_0__majority5_module_10_n13), .A2(
        n_cini_module_0__majority5_module_10_n14), .ZN(
        n_cini_module_0__majority5_module_10_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_10_U7 ( .A1(
        n_cini_module_0__majority5_module_10_n12), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority5_module_10_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_10_U6 ( .A1(
        n_cini_module_0__majority5_module_10_n10), .A2(
        n_cini_module_0__majority5_module_10_n11), .ZN(
        n_cini_module_0__majority5_module_10_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U5 ( .A1(
        n_cini_module_0__majority5_module_10_n8), .A2(
        n_cini_module_0__majority5_module_10_n9), .ZN(
        n_cini_module_0__majority5_module_10_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U4 ( .A1(
        n_cini_module_0__majority5_module_10_n6), .A2(
        n_cini_module_0__majority5_module_10_n7), .ZN(
        n_cini_module_0__majority5_module_10_n3) );
  INV_X1 u_cini_module_0__majority5_module_10_U3 ( .A(
        n_cini_module_0__majority5_module_10_n5), .ZN(
        n_cini_module_0__majority5_module_10_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U2 ( .A1(
        n_cini_module_0__majority5_module_10_n3), .A2(
        n_cini_module_0__majority5_module_10_n4), .ZN(
        n_cini_module_0__majority5_module_10_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_10_U1 ( .A1(
        n_cini_module_0__majority5_module_10_n1), .A2(
        n_cini_module_0__majority5_module_10_n2), .ZN(
        n_cini_module_0__majority5_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_55__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_10_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_55_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_28_U1 ( .A1(
        n_cini_module_0__reg_module_55_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_28_res) );
  DFF_X1 u_cini_module_0__reg_module_56__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_28_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_56_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_51_U1 ( .A(
        n_cini_module_0__reg_module_54_res), .B(
        n_cini_module_0__reg_module_56_res), .Z(
        n_cini_module_0__xor_module_51_res) );
  DFF_X1 u_cini_module_0__reg_module_57__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_1), .Q(n_cini_module_0__reg_module_57_res), .QN() );
  INV_X1 u_cini_module_0__not_module_12_U1 ( .A(io_a_s2_d1), .ZN(
        n_cini_module_0__not_module_12_res) );
  AND2_X1 u_cini_module_0__and_module_29_U1 ( .A1(
        n_cini_module_0__not_module_12_res), .A2(
        n_cini_module_0__reg_module_57_res), .ZN(
        n_cini_module_0__and_module_29_res) );
  DFF_X1 u_cini_module_0__reg_module_58__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_29_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_58_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_11_U19 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_11_n18) );
  INV_X1 u_cini_module_0__majority5_module_11_U18 ( .A(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority5_module_11_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U17 ( .A1(
        n_cini_module_0__majority5_module_11_n18), .A2(
        n_cini_module_0__majority5_module_11_n16), .ZN(
        n_cini_module_0__majority5_module_11_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U16 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_11_n5) );
  INV_X1 u_cini_module_0__majority5_module_11_U15 ( .A(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_11_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U14 ( .A1(
        n_cini_module_0__majority5_module_11_n5), .A2(
        n_cini_module_0__majority5_module_11_n6), .ZN(
        n_cini_module_0__majority5_module_11_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_11_U13 ( .A1(
        n_cini_module_0__majority5_module_11_n17), .A2(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_11_n10) );
  INV_X1 u_cini_module_0__majority5_module_11_U12 ( .A(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_11_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_11_U11 ( .A1(
        n_cini_module_0__majority5_module_11_n16), .A2(
        n_cini_module_0__majority5_module_11_n7), .ZN(
        n_cini_module_0__majority5_module_11_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U10 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority5_module_11_n15), .ZN(
        n_cini_module_0__majority5_module_11_n13) );
  INV_X1 u_cini_module_0__majority5_module_11_U9 ( .A(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_11_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U8 ( .A1(
        n_cini_module_0__majority5_module_11_n13), .A2(
        n_cini_module_0__majority5_module_11_n14), .ZN(
        n_cini_module_0__majority5_module_11_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_11_U7 ( .A1(
        n_cini_module_0__majority5_module_11_n12), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority5_module_11_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_11_U6 ( .A1(
        n_cini_module_0__majority5_module_11_n10), .A2(
        n_cini_module_0__majority5_module_11_n11), .ZN(
        n_cini_module_0__majority5_module_11_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U5 ( .A1(
        n_cini_module_0__majority5_module_11_n8), .A2(
        n_cini_module_0__majority5_module_11_n9), .ZN(
        n_cini_module_0__majority5_module_11_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U4 ( .A1(
        n_cini_module_0__majority5_module_11_n6), .A2(
        n_cini_module_0__majority5_module_11_n7), .ZN(
        n_cini_module_0__majority5_module_11_n3) );
  INV_X1 u_cini_module_0__majority5_module_11_U3 ( .A(
        n_cini_module_0__majority5_module_11_n5), .ZN(
        n_cini_module_0__majority5_module_11_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U2 ( .A1(
        n_cini_module_0__majority5_module_11_n3), .A2(
        n_cini_module_0__majority5_module_11_n4), .ZN(
        n_cini_module_0__majority5_module_11_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_11_U1 ( .A1(
        n_cini_module_0__majority5_module_11_n1), .A2(
        n_cini_module_0__majority5_module_11_n2), .ZN(
        n_cini_module_0__majority5_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_59__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_11_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_59_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_30_U1 ( .A1(
        n_cini_module_0__reg_module_59_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_30_res) );
  DFF_X1 u_cini_module_0__reg_module_60__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_30_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_60_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_52_U1 ( .A(
        n_cini_module_0__reg_module_58_res), .B(
        n_cini_module_0__reg_module_60_res), .Z(
        n_cini_module_0__xor_module_52_res) );
  XOR2_X1 u_cini_module_0__xor_module_53_U1 ( .A(
        n_cini_module_0__xor_module_51_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__xor_module_53_res) );
  XOR2_X1 u_cini_module_0__xor_module_54_U1 ( .A(
        n_cini_module_0__xor_module_53_res), .B(
        n_cini_module_0__reg_module_52_res), .Z(io_c_s2_d1) );
  DFF_X1 u_cini_module_0__reg_module_61__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_61_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_31_U1 ( .A1(
        n_cini_module_0__reg_module_61_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_31_res) );
  DFF_X1 u_cini_module_0__reg_module_62__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_31_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_62_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_63__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_2), .Q(n_cini_module_0__reg_module_63_res), .QN() );
  INV_X1 u_cini_module_0__not_module_13_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_13_res) );
  AND2_X1 u_cini_module_0__and_module_32_U1 ( .A1(
        n_cini_module_0__not_module_13_res), .A2(
        n_cini_module_0__reg_module_63_res), .ZN(
        n_cini_module_0__and_module_32_res) );
  DFF_X1 u_cini_module_0__reg_module_64__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_32_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_64_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_12_U19 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_12_n18) );
  INV_X1 u_cini_module_0__majority5_module_12_U18 ( .A(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority5_module_12_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U17 ( .A1(
        n_cini_module_0__majority5_module_12_n18), .A2(
        n_cini_module_0__majority5_module_12_n16), .ZN(
        n_cini_module_0__majority5_module_12_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U16 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_12_n5) );
  INV_X1 u_cini_module_0__majority5_module_12_U15 ( .A(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_12_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U14 ( .A1(
        n_cini_module_0__majority5_module_12_n5), .A2(
        n_cini_module_0__majority5_module_12_n6), .ZN(
        n_cini_module_0__majority5_module_12_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_12_U13 ( .A1(
        n_cini_module_0__majority5_module_12_n17), .A2(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_12_n10) );
  INV_X1 u_cini_module_0__majority5_module_12_U12 ( .A(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_12_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_12_U11 ( .A1(
        n_cini_module_0__majority5_module_12_n16), .A2(
        n_cini_module_0__majority5_module_12_n7), .ZN(
        n_cini_module_0__majority5_module_12_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U10 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__majority5_module_12_n15), .ZN(
        n_cini_module_0__majority5_module_12_n13) );
  INV_X1 u_cini_module_0__majority5_module_12_U9 ( .A(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_12_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U8 ( .A1(
        n_cini_module_0__majority5_module_12_n13), .A2(
        n_cini_module_0__majority5_module_12_n14), .ZN(
        n_cini_module_0__majority5_module_12_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_12_U7 ( .A1(
        n_cini_module_0__majority5_module_12_n12), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority5_module_12_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_12_U6 ( .A1(
        n_cini_module_0__majority5_module_12_n10), .A2(
        n_cini_module_0__majority5_module_12_n11), .ZN(
        n_cini_module_0__majority5_module_12_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U5 ( .A1(
        n_cini_module_0__majority5_module_12_n8), .A2(
        n_cini_module_0__majority5_module_12_n9), .ZN(
        n_cini_module_0__majority5_module_12_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U4 ( .A1(
        n_cini_module_0__majority5_module_12_n6), .A2(
        n_cini_module_0__majority5_module_12_n7), .ZN(
        n_cini_module_0__majority5_module_12_n3) );
  INV_X1 u_cini_module_0__majority5_module_12_U3 ( .A(
        n_cini_module_0__majority5_module_12_n5), .ZN(
        n_cini_module_0__majority5_module_12_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U2 ( .A1(
        n_cini_module_0__majority5_module_12_n3), .A2(
        n_cini_module_0__majority5_module_12_n4), .ZN(
        n_cini_module_0__majority5_module_12_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_12_U1 ( .A1(
        n_cini_module_0__majority5_module_12_n1), .A2(
        n_cini_module_0__majority5_module_12_n2), .ZN(
        n_cini_module_0__majority5_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_65__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_12_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_65_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_33_U1 ( .A1(
        n_cini_module_0__reg_module_65_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_33_res) );
  DFF_X1 u_cini_module_0__reg_module_66__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_33_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_66_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_55_U1 ( .A(
        n_cini_module_0__reg_module_64_res), .B(
        n_cini_module_0__reg_module_66_res), .Z(
        n_cini_module_0__xor_module_55_res) );
  DFF_X1 u_cini_module_0__reg_module_67__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_2), .Q(n_cini_module_0__reg_module_67_res), .QN() );
  INV_X1 u_cini_module_0__not_module_14_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_14_res) );
  AND2_X1 u_cini_module_0__and_module_34_U1 ( .A1(
        n_cini_module_0__not_module_14_res), .A2(
        n_cini_module_0__reg_module_67_res), .ZN(
        n_cini_module_0__and_module_34_res) );
  DFF_X1 u_cini_module_0__reg_module_68__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_34_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_68_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_13_U19 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_13_n18) );
  INV_X1 u_cini_module_0__majority5_module_13_U18 ( .A(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority5_module_13_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U17 ( .A1(
        n_cini_module_0__majority5_module_13_n18), .A2(
        n_cini_module_0__majority5_module_13_n16), .ZN(
        n_cini_module_0__majority5_module_13_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U16 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_13_n5) );
  INV_X1 u_cini_module_0__majority5_module_13_U15 ( .A(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_13_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U14 ( .A1(
        n_cini_module_0__majority5_module_13_n5), .A2(
        n_cini_module_0__majority5_module_13_n6), .ZN(
        n_cini_module_0__majority5_module_13_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_13_U13 ( .A1(
        n_cini_module_0__majority5_module_13_n17), .A2(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_13_n10) );
  INV_X1 u_cini_module_0__majority5_module_13_U12 ( .A(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_13_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_13_U11 ( .A1(
        n_cini_module_0__majority5_module_13_n16), .A2(
        n_cini_module_0__majority5_module_13_n7), .ZN(
        n_cini_module_0__majority5_module_13_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U10 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__majority5_module_13_n15), .ZN(
        n_cini_module_0__majority5_module_13_n13) );
  INV_X1 u_cini_module_0__majority5_module_13_U9 ( .A(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_13_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U8 ( .A1(
        n_cini_module_0__majority5_module_13_n13), .A2(
        n_cini_module_0__majority5_module_13_n14), .ZN(
        n_cini_module_0__majority5_module_13_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_13_U7 ( .A1(
        n_cini_module_0__majority5_module_13_n12), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority5_module_13_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_13_U6 ( .A1(
        n_cini_module_0__majority5_module_13_n10), .A2(
        n_cini_module_0__majority5_module_13_n11), .ZN(
        n_cini_module_0__majority5_module_13_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U5 ( .A1(
        n_cini_module_0__majority5_module_13_n8), .A2(
        n_cini_module_0__majority5_module_13_n9), .ZN(
        n_cini_module_0__majority5_module_13_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U4 ( .A1(
        n_cini_module_0__majority5_module_13_n6), .A2(
        n_cini_module_0__majority5_module_13_n7), .ZN(
        n_cini_module_0__majority5_module_13_n3) );
  INV_X1 u_cini_module_0__majority5_module_13_U3 ( .A(
        n_cini_module_0__majority5_module_13_n5), .ZN(
        n_cini_module_0__majority5_module_13_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U2 ( .A1(
        n_cini_module_0__majority5_module_13_n3), .A2(
        n_cini_module_0__majority5_module_13_n4), .ZN(
        n_cini_module_0__majority5_module_13_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_13_U1 ( .A1(
        n_cini_module_0__majority5_module_13_n1), .A2(
        n_cini_module_0__majority5_module_13_n2), .ZN(
        n_cini_module_0__majority5_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_69__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_13_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_69_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_35_U1 ( .A1(
        n_cini_module_0__reg_module_69_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_35_res) );
  DFF_X1 u_cini_module_0__reg_module_70__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_35_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_70_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_56_U1 ( .A(
        n_cini_module_0__reg_module_68_res), .B(
        n_cini_module_0__reg_module_70_res), .Z(
        n_cini_module_0__xor_module_56_res) );
  XOR2_X1 u_cini_module_0__xor_module_57_U1 ( .A(
        n_cini_module_0__xor_module_55_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__xor_module_57_res) );
  XOR2_X1 u_cini_module_0__xor_module_58_U1 ( .A(
        n_cini_module_0__xor_module_57_res), .B(
        n_cini_module_0__reg_module_62_res), .Z(io_c_s0_d2) );
  DFF_X1 u_cini_module_0__reg_module_71__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_71_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_36_U1 ( .A1(
        n_cini_module_0__reg_module_71_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_36_res) );
  DFF_X1 u_cini_module_0__reg_module_72__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_36_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_72_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_73__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_2), .Q(n_cini_module_0__reg_module_73_res), .QN() );
  INV_X1 u_cini_module_0__not_module_15_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_15_res) );
  AND2_X1 u_cini_module_0__and_module_37_U1 ( .A1(
        n_cini_module_0__not_module_15_res), .A2(
        n_cini_module_0__reg_module_73_res), .ZN(
        n_cini_module_0__and_module_37_res) );
  DFF_X1 u_cini_module_0__reg_module_74__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_37_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_74_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_14_U19 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_14_n18) );
  INV_X1 u_cini_module_0__majority5_module_14_U18 ( .A(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority5_module_14_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U17 ( .A1(
        n_cini_module_0__majority5_module_14_n18), .A2(
        n_cini_module_0__majority5_module_14_n16), .ZN(
        n_cini_module_0__majority5_module_14_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U16 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_14_n5) );
  INV_X1 u_cini_module_0__majority5_module_14_U15 ( .A(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_14_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U14 ( .A1(
        n_cini_module_0__majority5_module_14_n5), .A2(
        n_cini_module_0__majority5_module_14_n6), .ZN(
        n_cini_module_0__majority5_module_14_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_14_U13 ( .A1(
        n_cini_module_0__majority5_module_14_n17), .A2(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_14_n10) );
  INV_X1 u_cini_module_0__majority5_module_14_U12 ( .A(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_14_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_14_U11 ( .A1(
        n_cini_module_0__majority5_module_14_n16), .A2(
        n_cini_module_0__majority5_module_14_n7), .ZN(
        n_cini_module_0__majority5_module_14_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U10 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__majority5_module_14_n15), .ZN(
        n_cini_module_0__majority5_module_14_n13) );
  INV_X1 u_cini_module_0__majority5_module_14_U9 ( .A(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_14_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U8 ( .A1(
        n_cini_module_0__majority5_module_14_n13), .A2(
        n_cini_module_0__majority5_module_14_n14), .ZN(
        n_cini_module_0__majority5_module_14_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_14_U7 ( .A1(
        n_cini_module_0__majority5_module_14_n12), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority5_module_14_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_14_U6 ( .A1(
        n_cini_module_0__majority5_module_14_n10), .A2(
        n_cini_module_0__majority5_module_14_n11), .ZN(
        n_cini_module_0__majority5_module_14_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U5 ( .A1(
        n_cini_module_0__majority5_module_14_n8), .A2(
        n_cini_module_0__majority5_module_14_n9), .ZN(
        n_cini_module_0__majority5_module_14_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U4 ( .A1(
        n_cini_module_0__majority5_module_14_n6), .A2(
        n_cini_module_0__majority5_module_14_n7), .ZN(
        n_cini_module_0__majority5_module_14_n3) );
  INV_X1 u_cini_module_0__majority5_module_14_U3 ( .A(
        n_cini_module_0__majority5_module_14_n5), .ZN(
        n_cini_module_0__majority5_module_14_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U2 ( .A1(
        n_cini_module_0__majority5_module_14_n3), .A2(
        n_cini_module_0__majority5_module_14_n4), .ZN(
        n_cini_module_0__majority5_module_14_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_14_U1 ( .A1(
        n_cini_module_0__majority5_module_14_n1), .A2(
        n_cini_module_0__majority5_module_14_n2), .ZN(
        n_cini_module_0__majority5_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_75__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_14_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_75_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_38_U1 ( .A1(
        n_cini_module_0__reg_module_75_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_38_res) );
  DFF_X1 u_cini_module_0__reg_module_76__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_38_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_76_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_59_U1 ( .A(
        n_cini_module_0__reg_module_74_res), .B(
        n_cini_module_0__reg_module_76_res), .Z(
        n_cini_module_0__xor_module_59_res) );
  DFF_X1 u_cini_module_0__reg_module_77__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_2), .Q(n_cini_module_0__reg_module_77_res), .QN() );
  INV_X1 u_cini_module_0__not_module_16_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_16_res) );
  AND2_X1 u_cini_module_0__and_module_39_U1 ( .A1(
        n_cini_module_0__not_module_16_res), .A2(
        n_cini_module_0__reg_module_77_res), .ZN(
        n_cini_module_0__and_module_39_res) );
  DFF_X1 u_cini_module_0__reg_module_78__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_39_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_78_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_15_U19 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_15_n18) );
  INV_X1 u_cini_module_0__majority5_module_15_U18 ( .A(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority5_module_15_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U17 ( .A1(
        n_cini_module_0__majority5_module_15_n18), .A2(
        n_cini_module_0__majority5_module_15_n16), .ZN(
        n_cini_module_0__majority5_module_15_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U16 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_15_n5) );
  INV_X1 u_cini_module_0__majority5_module_15_U15 ( .A(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_15_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U14 ( .A1(
        n_cini_module_0__majority5_module_15_n5), .A2(
        n_cini_module_0__majority5_module_15_n6), .ZN(
        n_cini_module_0__majority5_module_15_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_15_U13 ( .A1(
        n_cini_module_0__majority5_module_15_n17), .A2(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_15_n10) );
  INV_X1 u_cini_module_0__majority5_module_15_U12 ( .A(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_15_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_15_U11 ( .A1(
        n_cini_module_0__majority5_module_15_n16), .A2(
        n_cini_module_0__majority5_module_15_n7), .ZN(
        n_cini_module_0__majority5_module_15_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U10 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__majority5_module_15_n15), .ZN(
        n_cini_module_0__majority5_module_15_n13) );
  INV_X1 u_cini_module_0__majority5_module_15_U9 ( .A(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_15_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U8 ( .A1(
        n_cini_module_0__majority5_module_15_n13), .A2(
        n_cini_module_0__majority5_module_15_n14), .ZN(
        n_cini_module_0__majority5_module_15_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_15_U7 ( .A1(
        n_cini_module_0__majority5_module_15_n12), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority5_module_15_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_15_U6 ( .A1(
        n_cini_module_0__majority5_module_15_n10), .A2(
        n_cini_module_0__majority5_module_15_n11), .ZN(
        n_cini_module_0__majority5_module_15_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U5 ( .A1(
        n_cini_module_0__majority5_module_15_n8), .A2(
        n_cini_module_0__majority5_module_15_n9), .ZN(
        n_cini_module_0__majority5_module_15_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U4 ( .A1(
        n_cini_module_0__majority5_module_15_n6), .A2(
        n_cini_module_0__majority5_module_15_n7), .ZN(
        n_cini_module_0__majority5_module_15_n3) );
  INV_X1 u_cini_module_0__majority5_module_15_U3 ( .A(
        n_cini_module_0__majority5_module_15_n5), .ZN(
        n_cini_module_0__majority5_module_15_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U2 ( .A1(
        n_cini_module_0__majority5_module_15_n3), .A2(
        n_cini_module_0__majority5_module_15_n4), .ZN(
        n_cini_module_0__majority5_module_15_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_15_U1 ( .A1(
        n_cini_module_0__majority5_module_15_n1), .A2(
        n_cini_module_0__majority5_module_15_n2), .ZN(
        n_cini_module_0__majority5_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_79__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_15_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_79_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_40_U1 ( .A1(
        n_cini_module_0__reg_module_79_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_40_res) );
  DFF_X1 u_cini_module_0__reg_module_80__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_40_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_80_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_60_U1 ( .A(
        n_cini_module_0__reg_module_78_res), .B(
        n_cini_module_0__reg_module_80_res), .Z(
        n_cini_module_0__xor_module_60_res) );
  XOR2_X1 u_cini_module_0__xor_module_61_U1 ( .A(
        n_cini_module_0__xor_module_59_res), .B(
        n_cini_module_0__xor_module_60_res), .Z(
        n_cini_module_0__xor_module_61_res) );
  XOR2_X1 u_cini_module_0__xor_module_62_U1 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__reg_module_72_res), .Z(io_c_s1_d2) );
  DFF_X1 u_cini_module_0__reg_module_81__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_81_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_41_U1 ( .A1(
        n_cini_module_0__reg_module_81_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_41_res) );
  DFF_X1 u_cini_module_0__reg_module_82__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_41_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_82_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_83__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_2), .Q(n_cini_module_0__reg_module_83_res), .QN() );
  INV_X1 u_cini_module_0__not_module_17_U1 ( .A(io_a_s2_d2), .ZN(
        n_cini_module_0__not_module_17_res) );
  AND2_X1 u_cini_module_0__and_module_42_U1 ( .A1(
        n_cini_module_0__not_module_17_res), .A2(
        n_cini_module_0__reg_module_83_res), .ZN(
        n_cini_module_0__and_module_42_res) );
  DFF_X1 u_cini_module_0__reg_module_84__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_42_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_84_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_16_U19 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_16_n18) );
  INV_X1 u_cini_module_0__majority5_module_16_U18 ( .A(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority5_module_16_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U17 ( .A1(
        n_cini_module_0__majority5_module_16_n18), .A2(
        n_cini_module_0__majority5_module_16_n16), .ZN(
        n_cini_module_0__majority5_module_16_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U16 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_16_n5) );
  INV_X1 u_cini_module_0__majority5_module_16_U15 ( .A(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_16_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U14 ( .A1(
        n_cini_module_0__majority5_module_16_n5), .A2(
        n_cini_module_0__majority5_module_16_n6), .ZN(
        n_cini_module_0__majority5_module_16_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_16_U13 ( .A1(
        n_cini_module_0__majority5_module_16_n17), .A2(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_16_n10) );
  INV_X1 u_cini_module_0__majority5_module_16_U12 ( .A(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_16_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_16_U11 ( .A1(
        n_cini_module_0__majority5_module_16_n16), .A2(
        n_cini_module_0__majority5_module_16_n7), .ZN(
        n_cini_module_0__majority5_module_16_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U10 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority5_module_16_n15), .ZN(
        n_cini_module_0__majority5_module_16_n13) );
  INV_X1 u_cini_module_0__majority5_module_16_U9 ( .A(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_16_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U8 ( .A1(
        n_cini_module_0__majority5_module_16_n13), .A2(
        n_cini_module_0__majority5_module_16_n14), .ZN(
        n_cini_module_0__majority5_module_16_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_16_U7 ( .A1(
        n_cini_module_0__majority5_module_16_n12), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority5_module_16_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_16_U6 ( .A1(
        n_cini_module_0__majority5_module_16_n10), .A2(
        n_cini_module_0__majority5_module_16_n11), .ZN(
        n_cini_module_0__majority5_module_16_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U5 ( .A1(
        n_cini_module_0__majority5_module_16_n8), .A2(
        n_cini_module_0__majority5_module_16_n9), .ZN(
        n_cini_module_0__majority5_module_16_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U4 ( .A1(
        n_cini_module_0__majority5_module_16_n6), .A2(
        n_cini_module_0__majority5_module_16_n7), .ZN(
        n_cini_module_0__majority5_module_16_n3) );
  INV_X1 u_cini_module_0__majority5_module_16_U3 ( .A(
        n_cini_module_0__majority5_module_16_n5), .ZN(
        n_cini_module_0__majority5_module_16_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U2 ( .A1(
        n_cini_module_0__majority5_module_16_n3), .A2(
        n_cini_module_0__majority5_module_16_n4), .ZN(
        n_cini_module_0__majority5_module_16_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_16_U1 ( .A1(
        n_cini_module_0__majority5_module_16_n1), .A2(
        n_cini_module_0__majority5_module_16_n2), .ZN(
        n_cini_module_0__majority5_module_16_res) );
  DFF_X1 u_cini_module_0__reg_module_85__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_16_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_85_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_43_U1 ( .A1(
        n_cini_module_0__reg_module_85_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_43_res) );
  DFF_X1 u_cini_module_0__reg_module_86__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_43_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_86_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_63_U1 ( .A(
        n_cini_module_0__reg_module_84_res), .B(
        n_cini_module_0__reg_module_86_res), .Z(
        n_cini_module_0__xor_module_63_res) );
  DFF_X1 u_cini_module_0__reg_module_87__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_2), .Q(n_cini_module_0__reg_module_87_res), .QN() );
  INV_X1 u_cini_module_0__not_module_18_U1 ( .A(io_a_s2_d2), .ZN(
        n_cini_module_0__not_module_18_res) );
  AND2_X1 u_cini_module_0__and_module_44_U1 ( .A1(
        n_cini_module_0__not_module_18_res), .A2(
        n_cini_module_0__reg_module_87_res), .ZN(
        n_cini_module_0__and_module_44_res) );
  DFF_X1 u_cini_module_0__reg_module_88__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_44_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_88_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_17_U19 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_17_n18) );
  INV_X1 u_cini_module_0__majority5_module_17_U18 ( .A(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority5_module_17_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U17 ( .A1(
        n_cini_module_0__majority5_module_17_n18), .A2(
        n_cini_module_0__majority5_module_17_n16), .ZN(
        n_cini_module_0__majority5_module_17_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U16 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_17_n5) );
  INV_X1 u_cini_module_0__majority5_module_17_U15 ( .A(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_17_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U14 ( .A1(
        n_cini_module_0__majority5_module_17_n5), .A2(
        n_cini_module_0__majority5_module_17_n6), .ZN(
        n_cini_module_0__majority5_module_17_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_17_U13 ( .A1(
        n_cini_module_0__majority5_module_17_n17), .A2(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_17_n10) );
  INV_X1 u_cini_module_0__majority5_module_17_U12 ( .A(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_17_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_17_U11 ( .A1(
        n_cini_module_0__majority5_module_17_n16), .A2(
        n_cini_module_0__majority5_module_17_n7), .ZN(
        n_cini_module_0__majority5_module_17_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U10 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority5_module_17_n15), .ZN(
        n_cini_module_0__majority5_module_17_n13) );
  INV_X1 u_cini_module_0__majority5_module_17_U9 ( .A(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_17_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U8 ( .A1(
        n_cini_module_0__majority5_module_17_n13), .A2(
        n_cini_module_0__majority5_module_17_n14), .ZN(
        n_cini_module_0__majority5_module_17_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_17_U7 ( .A1(
        n_cini_module_0__majority5_module_17_n12), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority5_module_17_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_17_U6 ( .A1(
        n_cini_module_0__majority5_module_17_n10), .A2(
        n_cini_module_0__majority5_module_17_n11), .ZN(
        n_cini_module_0__majority5_module_17_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U5 ( .A1(
        n_cini_module_0__majority5_module_17_n8), .A2(
        n_cini_module_0__majority5_module_17_n9), .ZN(
        n_cini_module_0__majority5_module_17_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U4 ( .A1(
        n_cini_module_0__majority5_module_17_n6), .A2(
        n_cini_module_0__majority5_module_17_n7), .ZN(
        n_cini_module_0__majority5_module_17_n3) );
  INV_X1 u_cini_module_0__majority5_module_17_U3 ( .A(
        n_cini_module_0__majority5_module_17_n5), .ZN(
        n_cini_module_0__majority5_module_17_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U2 ( .A1(
        n_cini_module_0__majority5_module_17_n3), .A2(
        n_cini_module_0__majority5_module_17_n4), .ZN(
        n_cini_module_0__majority5_module_17_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_17_U1 ( .A1(
        n_cini_module_0__majority5_module_17_n1), .A2(
        n_cini_module_0__majority5_module_17_n2), .ZN(
        n_cini_module_0__majority5_module_17_res) );
  DFF_X1 u_cini_module_0__reg_module_89__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_17_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_89_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_45_U1 ( .A1(
        n_cini_module_0__reg_module_89_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_45_res) );
  DFF_X1 u_cini_module_0__reg_module_90__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_45_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_90_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_64_U1 ( .A(
        n_cini_module_0__reg_module_88_res), .B(
        n_cini_module_0__reg_module_90_res), .Z(
        n_cini_module_0__xor_module_64_res) );
  XOR2_X1 u_cini_module_0__xor_module_65_U1 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__xor_module_64_res), .Z(
        n_cini_module_0__xor_module_65_res) );
  XOR2_X1 u_cini_module_0__xor_module_66_U1 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__reg_module_82_res), .Z(io_c_s2_d2) );
  DFF_X1 u_cini_module_0__reg_module_91__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_91_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_46_U1 ( .A1(
        n_cini_module_0__reg_module_91_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_46_res) );
  DFF_X1 u_cini_module_0__reg_module_92__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_46_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_92_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_93__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_3), .Q(n_cini_module_0__reg_module_93_res), .QN() );
  INV_X1 u_cini_module_0__not_module_19_U1 ( .A(io_a_s0_d3), .ZN(
        n_cini_module_0__not_module_19_res) );
  AND2_X1 u_cini_module_0__and_module_47_U1 ( .A1(
        n_cini_module_0__not_module_19_res), .A2(
        n_cini_module_0__reg_module_93_res), .ZN(
        n_cini_module_0__and_module_47_res) );
  DFF_X1 u_cini_module_0__reg_module_94__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_47_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_94_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_18_U19 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_18_n18) );
  INV_X1 u_cini_module_0__majority5_module_18_U18 ( .A(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority5_module_18_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U17 ( .A1(
        n_cini_module_0__majority5_module_18_n18), .A2(
        n_cini_module_0__majority5_module_18_n16), .ZN(
        n_cini_module_0__majority5_module_18_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U16 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_18_n5) );
  INV_X1 u_cini_module_0__majority5_module_18_U15 ( .A(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_18_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U14 ( .A1(
        n_cini_module_0__majority5_module_18_n5), .A2(
        n_cini_module_0__majority5_module_18_n6), .ZN(
        n_cini_module_0__majority5_module_18_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_18_U13 ( .A1(
        n_cini_module_0__majority5_module_18_n17), .A2(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_18_n10) );
  INV_X1 u_cini_module_0__majority5_module_18_U12 ( .A(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_18_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_18_U11 ( .A1(
        n_cini_module_0__majority5_module_18_n16), .A2(
        n_cini_module_0__majority5_module_18_n7), .ZN(
        n_cini_module_0__majority5_module_18_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U10 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__majority5_module_18_n15), .ZN(
        n_cini_module_0__majority5_module_18_n13) );
  INV_X1 u_cini_module_0__majority5_module_18_U9 ( .A(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_18_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U8 ( .A1(
        n_cini_module_0__majority5_module_18_n13), .A2(
        n_cini_module_0__majority5_module_18_n14), .ZN(
        n_cini_module_0__majority5_module_18_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_18_U7 ( .A1(
        n_cini_module_0__majority5_module_18_n12), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority5_module_18_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_18_U6 ( .A1(
        n_cini_module_0__majority5_module_18_n10), .A2(
        n_cini_module_0__majority5_module_18_n11), .ZN(
        n_cini_module_0__majority5_module_18_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U5 ( .A1(
        n_cini_module_0__majority5_module_18_n8), .A2(
        n_cini_module_0__majority5_module_18_n9), .ZN(
        n_cini_module_0__majority5_module_18_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U4 ( .A1(
        n_cini_module_0__majority5_module_18_n6), .A2(
        n_cini_module_0__majority5_module_18_n7), .ZN(
        n_cini_module_0__majority5_module_18_n3) );
  INV_X1 u_cini_module_0__majority5_module_18_U3 ( .A(
        n_cini_module_0__majority5_module_18_n5), .ZN(
        n_cini_module_0__majority5_module_18_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U2 ( .A1(
        n_cini_module_0__majority5_module_18_n3), .A2(
        n_cini_module_0__majority5_module_18_n4), .ZN(
        n_cini_module_0__majority5_module_18_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_18_U1 ( .A1(
        n_cini_module_0__majority5_module_18_n1), .A2(
        n_cini_module_0__majority5_module_18_n2), .ZN(
        n_cini_module_0__majority5_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_95__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_18_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_95_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_48_U1 ( .A1(
        n_cini_module_0__reg_module_95_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_48_res) );
  DFF_X1 u_cini_module_0__reg_module_96__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_48_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_96_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_67_U1 ( .A(
        n_cini_module_0__reg_module_94_res), .B(
        n_cini_module_0__reg_module_96_res), .Z(
        n_cini_module_0__xor_module_67_res) );
  DFF_X1 u_cini_module_0__reg_module_97__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_3), .Q(n_cini_module_0__reg_module_97_res), .QN() );
  INV_X1 u_cini_module_0__not_module_20_U1 ( .A(io_a_s0_d3), .ZN(
        n_cini_module_0__not_module_20_res) );
  AND2_X1 u_cini_module_0__and_module_49_U1 ( .A1(
        n_cini_module_0__not_module_20_res), .A2(
        n_cini_module_0__reg_module_97_res), .ZN(
        n_cini_module_0__and_module_49_res) );
  DFF_X1 u_cini_module_0__reg_module_98__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_49_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_98_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_19_U19 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_19_n18) );
  INV_X1 u_cini_module_0__majority5_module_19_U18 ( .A(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority5_module_19_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U17 ( .A1(
        n_cini_module_0__majority5_module_19_n18), .A2(
        n_cini_module_0__majority5_module_19_n16), .ZN(
        n_cini_module_0__majority5_module_19_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U16 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_19_n5) );
  INV_X1 u_cini_module_0__majority5_module_19_U15 ( .A(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_19_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U14 ( .A1(
        n_cini_module_0__majority5_module_19_n5), .A2(
        n_cini_module_0__majority5_module_19_n6), .ZN(
        n_cini_module_0__majority5_module_19_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_19_U13 ( .A1(
        n_cini_module_0__majority5_module_19_n17), .A2(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_19_n10) );
  INV_X1 u_cini_module_0__majority5_module_19_U12 ( .A(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_19_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_19_U11 ( .A1(
        n_cini_module_0__majority5_module_19_n16), .A2(
        n_cini_module_0__majority5_module_19_n7), .ZN(
        n_cini_module_0__majority5_module_19_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U10 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__majority5_module_19_n15), .ZN(
        n_cini_module_0__majority5_module_19_n13) );
  INV_X1 u_cini_module_0__majority5_module_19_U9 ( .A(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_19_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U8 ( .A1(
        n_cini_module_0__majority5_module_19_n13), .A2(
        n_cini_module_0__majority5_module_19_n14), .ZN(
        n_cini_module_0__majority5_module_19_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_19_U7 ( .A1(
        n_cini_module_0__majority5_module_19_n12), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority5_module_19_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_19_U6 ( .A1(
        n_cini_module_0__majority5_module_19_n10), .A2(
        n_cini_module_0__majority5_module_19_n11), .ZN(
        n_cini_module_0__majority5_module_19_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U5 ( .A1(
        n_cini_module_0__majority5_module_19_n8), .A2(
        n_cini_module_0__majority5_module_19_n9), .ZN(
        n_cini_module_0__majority5_module_19_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U4 ( .A1(
        n_cini_module_0__majority5_module_19_n6), .A2(
        n_cini_module_0__majority5_module_19_n7), .ZN(
        n_cini_module_0__majority5_module_19_n3) );
  INV_X1 u_cini_module_0__majority5_module_19_U3 ( .A(
        n_cini_module_0__majority5_module_19_n5), .ZN(
        n_cini_module_0__majority5_module_19_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U2 ( .A1(
        n_cini_module_0__majority5_module_19_n3), .A2(
        n_cini_module_0__majority5_module_19_n4), .ZN(
        n_cini_module_0__majority5_module_19_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_19_U1 ( .A1(
        n_cini_module_0__majority5_module_19_n1), .A2(
        n_cini_module_0__majority5_module_19_n2), .ZN(
        n_cini_module_0__majority5_module_19_res) );
  DFF_X1 u_cini_module_0__reg_module_99__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_19_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_99_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_50_U1 ( .A1(
        n_cini_module_0__reg_module_99_res), .A2(io_a_s0_d3), .ZN(
        n_cini_module_0__and_module_50_res) );
  DFF_X1 u_cini_module_0__reg_module_100__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_50_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_100_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_68_U1 ( .A(
        n_cini_module_0__reg_module_98_res), .B(
        n_cini_module_0__reg_module_100_res), .Z(
        n_cini_module_0__xor_module_68_res) );
  XOR2_X1 u_cini_module_0__xor_module_69_U1 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__xor_module_68_res), .Z(
        n_cini_module_0__xor_module_69_res) );
  XOR2_X1 u_cini_module_0__xor_module_70_U1 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__reg_module_92_res), .Z(io_c_s0_d3) );
  DFF_X1 u_cini_module_0__reg_module_101__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_101_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_51_U1 ( .A1(
        n_cini_module_0__reg_module_101_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_51_res) );
  DFF_X1 u_cini_module_0__reg_module_102__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_51_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_102_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_103__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_3), .Q(n_cini_module_0__reg_module_103_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_21_U1 ( .A(io_a_s1_d3), .ZN(
        n_cini_module_0__not_module_21_res) );
  AND2_X1 u_cini_module_0__and_module_52_U1 ( .A1(
        n_cini_module_0__not_module_21_res), .A2(
        n_cini_module_0__reg_module_103_res), .ZN(
        n_cini_module_0__and_module_52_res) );
  DFF_X1 u_cini_module_0__reg_module_104__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_52_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_104_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_20_U19 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_20_n18) );
  INV_X1 u_cini_module_0__majority5_module_20_U18 ( .A(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority5_module_20_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U17 ( .A1(
        n_cini_module_0__majority5_module_20_n18), .A2(
        n_cini_module_0__majority5_module_20_n16), .ZN(
        n_cini_module_0__majority5_module_20_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U16 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_20_n5) );
  INV_X1 u_cini_module_0__majority5_module_20_U15 ( .A(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_20_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U14 ( .A1(
        n_cini_module_0__majority5_module_20_n5), .A2(
        n_cini_module_0__majority5_module_20_n6), .ZN(
        n_cini_module_0__majority5_module_20_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_20_U13 ( .A1(
        n_cini_module_0__majority5_module_20_n17), .A2(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_20_n10) );
  INV_X1 u_cini_module_0__majority5_module_20_U12 ( .A(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_20_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_20_U11 ( .A1(
        n_cini_module_0__majority5_module_20_n16), .A2(
        n_cini_module_0__majority5_module_20_n7), .ZN(
        n_cini_module_0__majority5_module_20_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U10 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__majority5_module_20_n15), .ZN(
        n_cini_module_0__majority5_module_20_n13) );
  INV_X1 u_cini_module_0__majority5_module_20_U9 ( .A(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_20_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U8 ( .A1(
        n_cini_module_0__majority5_module_20_n13), .A2(
        n_cini_module_0__majority5_module_20_n14), .ZN(
        n_cini_module_0__majority5_module_20_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_20_U7 ( .A1(
        n_cini_module_0__majority5_module_20_n12), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority5_module_20_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_20_U6 ( .A1(
        n_cini_module_0__majority5_module_20_n10), .A2(
        n_cini_module_0__majority5_module_20_n11), .ZN(
        n_cini_module_0__majority5_module_20_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U5 ( .A1(
        n_cini_module_0__majority5_module_20_n8), .A2(
        n_cini_module_0__majority5_module_20_n9), .ZN(
        n_cini_module_0__majority5_module_20_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U4 ( .A1(
        n_cini_module_0__majority5_module_20_n6), .A2(
        n_cini_module_0__majority5_module_20_n7), .ZN(
        n_cini_module_0__majority5_module_20_n3) );
  INV_X1 u_cini_module_0__majority5_module_20_U3 ( .A(
        n_cini_module_0__majority5_module_20_n5), .ZN(
        n_cini_module_0__majority5_module_20_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U2 ( .A1(
        n_cini_module_0__majority5_module_20_n3), .A2(
        n_cini_module_0__majority5_module_20_n4), .ZN(
        n_cini_module_0__majority5_module_20_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_20_U1 ( .A1(
        n_cini_module_0__majority5_module_20_n1), .A2(
        n_cini_module_0__majority5_module_20_n2), .ZN(
        n_cini_module_0__majority5_module_20_res) );
  DFF_X1 u_cini_module_0__reg_module_105__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_20_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_105_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_53_U1 ( .A1(
        n_cini_module_0__reg_module_105_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_53_res) );
  DFF_X1 u_cini_module_0__reg_module_106__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_53_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_106_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_71_U1 ( .A(
        n_cini_module_0__reg_module_104_res), .B(
        n_cini_module_0__reg_module_106_res), .Z(
        n_cini_module_0__xor_module_71_res) );
  DFF_X1 u_cini_module_0__reg_module_107__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_3), .Q(n_cini_module_0__reg_module_107_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_22_U1 ( .A(io_a_s1_d3), .ZN(
        n_cini_module_0__not_module_22_res) );
  AND2_X1 u_cini_module_0__and_module_54_U1 ( .A1(
        n_cini_module_0__not_module_22_res), .A2(
        n_cini_module_0__reg_module_107_res), .ZN(
        n_cini_module_0__and_module_54_res) );
  DFF_X1 u_cini_module_0__reg_module_108__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_54_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_108_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_21_U19 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_21_n18) );
  INV_X1 u_cini_module_0__majority5_module_21_U18 ( .A(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority5_module_21_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U17 ( .A1(
        n_cini_module_0__majority5_module_21_n18), .A2(
        n_cini_module_0__majority5_module_21_n16), .ZN(
        n_cini_module_0__majority5_module_21_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U16 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_21_n5) );
  INV_X1 u_cini_module_0__majority5_module_21_U15 ( .A(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_21_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U14 ( .A1(
        n_cini_module_0__majority5_module_21_n5), .A2(
        n_cini_module_0__majority5_module_21_n6), .ZN(
        n_cini_module_0__majority5_module_21_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_21_U13 ( .A1(
        n_cini_module_0__majority5_module_21_n17), .A2(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_21_n10) );
  INV_X1 u_cini_module_0__majority5_module_21_U12 ( .A(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_21_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_21_U11 ( .A1(
        n_cini_module_0__majority5_module_21_n16), .A2(
        n_cini_module_0__majority5_module_21_n7), .ZN(
        n_cini_module_0__majority5_module_21_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U10 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__majority5_module_21_n15), .ZN(
        n_cini_module_0__majority5_module_21_n13) );
  INV_X1 u_cini_module_0__majority5_module_21_U9 ( .A(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_21_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U8 ( .A1(
        n_cini_module_0__majority5_module_21_n13), .A2(
        n_cini_module_0__majority5_module_21_n14), .ZN(
        n_cini_module_0__majority5_module_21_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_21_U7 ( .A1(
        n_cini_module_0__majority5_module_21_n12), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority5_module_21_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_21_U6 ( .A1(
        n_cini_module_0__majority5_module_21_n10), .A2(
        n_cini_module_0__majority5_module_21_n11), .ZN(
        n_cini_module_0__majority5_module_21_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U5 ( .A1(
        n_cini_module_0__majority5_module_21_n8), .A2(
        n_cini_module_0__majority5_module_21_n9), .ZN(
        n_cini_module_0__majority5_module_21_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U4 ( .A1(
        n_cini_module_0__majority5_module_21_n6), .A2(
        n_cini_module_0__majority5_module_21_n7), .ZN(
        n_cini_module_0__majority5_module_21_n3) );
  INV_X1 u_cini_module_0__majority5_module_21_U3 ( .A(
        n_cini_module_0__majority5_module_21_n5), .ZN(
        n_cini_module_0__majority5_module_21_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U2 ( .A1(
        n_cini_module_0__majority5_module_21_n3), .A2(
        n_cini_module_0__majority5_module_21_n4), .ZN(
        n_cini_module_0__majority5_module_21_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_21_U1 ( .A1(
        n_cini_module_0__majority5_module_21_n1), .A2(
        n_cini_module_0__majority5_module_21_n2), .ZN(
        n_cini_module_0__majority5_module_21_res) );
  DFF_X1 u_cini_module_0__reg_module_109__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_21_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_109_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_55_U1 ( .A1(
        n_cini_module_0__reg_module_109_res), .A2(io_a_s1_d3), .ZN(
        n_cini_module_0__and_module_55_res) );
  DFF_X1 u_cini_module_0__reg_module_110__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_55_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_110_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_72_U1 ( .A(
        n_cini_module_0__reg_module_108_res), .B(
        n_cini_module_0__reg_module_110_res), .Z(
        n_cini_module_0__xor_module_72_res) );
  XOR2_X1 u_cini_module_0__xor_module_73_U1 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__xor_module_72_res), .Z(
        n_cini_module_0__xor_module_73_res) );
  XOR2_X1 u_cini_module_0__xor_module_74_U1 ( .A(
        n_cini_module_0__xor_module_73_res), .B(
        n_cini_module_0__reg_module_102_res), .Z(io_c_s1_d3) );
  DFF_X1 u_cini_module_0__reg_module_111__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d3), .CK(clock_3), .Q(n_cini_module_0__reg_module_111_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_56_U1 ( .A1(
        n_cini_module_0__reg_module_111_res), .A2(io_a_s2_d3), .ZN(
        n_cini_module_0__and_module_56_res) );
  DFF_X1 u_cini_module_0__reg_module_112__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_56_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_112_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_113__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_3), .Q(n_cini_module_0__reg_module_113_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_23_U1 ( .A(io_a_s2_d3), .ZN(
        n_cini_module_0__not_module_23_res) );
  AND2_X1 u_cini_module_0__and_module_57_U1 ( .A1(
        n_cini_module_0__not_module_23_res), .A2(
        n_cini_module_0__reg_module_113_res), .ZN(
        n_cini_module_0__and_module_57_res) );
  DFF_X1 u_cini_module_0__reg_module_114__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_57_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_114_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_22_U19 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_22_n18) );
  INV_X1 u_cini_module_0__majority5_module_22_U18 ( .A(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority5_module_22_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U17 ( .A1(
        n_cini_module_0__majority5_module_22_n18), .A2(
        n_cini_module_0__majority5_module_22_n16), .ZN(
        n_cini_module_0__majority5_module_22_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U16 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_22_n5) );
  INV_X1 u_cini_module_0__majority5_module_22_U15 ( .A(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_22_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U14 ( .A1(
        n_cini_module_0__majority5_module_22_n5), .A2(
        n_cini_module_0__majority5_module_22_n6), .ZN(
        n_cini_module_0__majority5_module_22_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_22_U13 ( .A1(
        n_cini_module_0__majority5_module_22_n17), .A2(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_22_n10) );
  INV_X1 u_cini_module_0__majority5_module_22_U12 ( .A(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_22_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_22_U11 ( .A1(
        n_cini_module_0__majority5_module_22_n16), .A2(
        n_cini_module_0__majority5_module_22_n7), .ZN(
        n_cini_module_0__majority5_module_22_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U10 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority5_module_22_n15), .ZN(
        n_cini_module_0__majority5_module_22_n13) );
  INV_X1 u_cini_module_0__majority5_module_22_U9 ( .A(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_22_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U8 ( .A1(
        n_cini_module_0__majority5_module_22_n13), .A2(
        n_cini_module_0__majority5_module_22_n14), .ZN(
        n_cini_module_0__majority5_module_22_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_22_U7 ( .A1(
        n_cini_module_0__majority5_module_22_n12), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority5_module_22_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_22_U6 ( .A1(
        n_cini_module_0__majority5_module_22_n10), .A2(
        n_cini_module_0__majority5_module_22_n11), .ZN(
        n_cini_module_0__majority5_module_22_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U5 ( .A1(
        n_cini_module_0__majority5_module_22_n8), .A2(
        n_cini_module_0__majority5_module_22_n9), .ZN(
        n_cini_module_0__majority5_module_22_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U4 ( .A1(
        n_cini_module_0__majority5_module_22_n6), .A2(
        n_cini_module_0__majority5_module_22_n7), .ZN(
        n_cini_module_0__majority5_module_22_n3) );
  INV_X1 u_cini_module_0__majority5_module_22_U3 ( .A(
        n_cini_module_0__majority5_module_22_n5), .ZN(
        n_cini_module_0__majority5_module_22_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U2 ( .A1(
        n_cini_module_0__majority5_module_22_n3), .A2(
        n_cini_module_0__majority5_module_22_n4), .ZN(
        n_cini_module_0__majority5_module_22_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_22_U1 ( .A1(
        n_cini_module_0__majority5_module_22_n1), .A2(
        n_cini_module_0__majority5_module_22_n2), .ZN(
        n_cini_module_0__majority5_module_22_res) );
  DFF_X1 u_cini_module_0__reg_module_115__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_22_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_115_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_58_U1 ( .A1(
        n_cini_module_0__reg_module_115_res), .A2(io_a_s2_d3), .ZN(
        n_cini_module_0__and_module_58_res) );
  DFF_X1 u_cini_module_0__reg_module_116__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_58_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_116_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_75_U1 ( .A(
        n_cini_module_0__reg_module_114_res), .B(
        n_cini_module_0__reg_module_116_res), .Z(
        n_cini_module_0__xor_module_75_res) );
  DFF_X1 u_cini_module_0__reg_module_117__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_3), .Q(n_cini_module_0__reg_module_117_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_24_U1 ( .A(io_a_s2_d3), .ZN(
        n_cini_module_0__not_module_24_res) );
  AND2_X1 u_cini_module_0__and_module_59_U1 ( .A1(
        n_cini_module_0__not_module_24_res), .A2(
        n_cini_module_0__reg_module_117_res), .ZN(
        n_cini_module_0__and_module_59_res) );
  DFF_X1 u_cini_module_0__reg_module_118__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_59_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_118_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_23_U19 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_23_n18) );
  INV_X1 u_cini_module_0__majority5_module_23_U18 ( .A(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority5_module_23_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U17 ( .A1(
        n_cini_module_0__majority5_module_23_n18), .A2(
        n_cini_module_0__majority5_module_23_n16), .ZN(
        n_cini_module_0__majority5_module_23_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U16 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_23_n5) );
  INV_X1 u_cini_module_0__majority5_module_23_U15 ( .A(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_23_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U14 ( .A1(
        n_cini_module_0__majority5_module_23_n5), .A2(
        n_cini_module_0__majority5_module_23_n6), .ZN(
        n_cini_module_0__majority5_module_23_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_23_U13 ( .A1(
        n_cini_module_0__majority5_module_23_n17), .A2(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_23_n10) );
  INV_X1 u_cini_module_0__majority5_module_23_U12 ( .A(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_23_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_23_U11 ( .A1(
        n_cini_module_0__majority5_module_23_n16), .A2(
        n_cini_module_0__majority5_module_23_n7), .ZN(
        n_cini_module_0__majority5_module_23_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U10 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority5_module_23_n15), .ZN(
        n_cini_module_0__majority5_module_23_n13) );
  INV_X1 u_cini_module_0__majority5_module_23_U9 ( .A(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_23_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U8 ( .A1(
        n_cini_module_0__majority5_module_23_n13), .A2(
        n_cini_module_0__majority5_module_23_n14), .ZN(
        n_cini_module_0__majority5_module_23_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_23_U7 ( .A1(
        n_cini_module_0__majority5_module_23_n12), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority5_module_23_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_23_U6 ( .A1(
        n_cini_module_0__majority5_module_23_n10), .A2(
        n_cini_module_0__majority5_module_23_n11), .ZN(
        n_cini_module_0__majority5_module_23_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U5 ( .A1(
        n_cini_module_0__majority5_module_23_n8), .A2(
        n_cini_module_0__majority5_module_23_n9), .ZN(
        n_cini_module_0__majority5_module_23_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U4 ( .A1(
        n_cini_module_0__majority5_module_23_n6), .A2(
        n_cini_module_0__majority5_module_23_n7), .ZN(
        n_cini_module_0__majority5_module_23_n3) );
  INV_X1 u_cini_module_0__majority5_module_23_U3 ( .A(
        n_cini_module_0__majority5_module_23_n5), .ZN(
        n_cini_module_0__majority5_module_23_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U2 ( .A1(
        n_cini_module_0__majority5_module_23_n3), .A2(
        n_cini_module_0__majority5_module_23_n4), .ZN(
        n_cini_module_0__majority5_module_23_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_23_U1 ( .A1(
        n_cini_module_0__majority5_module_23_n1), .A2(
        n_cini_module_0__majority5_module_23_n2), .ZN(
        n_cini_module_0__majority5_module_23_res) );
  DFF_X1 u_cini_module_0__reg_module_119__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_23_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_119_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_60_U1 ( .A1(
        n_cini_module_0__reg_module_119_res), .A2(io_a_s2_d3), .ZN(
        n_cini_module_0__and_module_60_res) );
  DFF_X1 u_cini_module_0__reg_module_120__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_60_res), .CK(clock_3), .Q(
        n_cini_module_0__reg_module_120_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_76_U1 ( .A(
        n_cini_module_0__reg_module_118_res), .B(
        n_cini_module_0__reg_module_120_res), .Z(
        n_cini_module_0__xor_module_76_res) );
  XOR2_X1 u_cini_module_0__xor_module_77_U1 ( .A(
        n_cini_module_0__xor_module_75_res), .B(
        n_cini_module_0__xor_module_76_res), .Z(
        n_cini_module_0__xor_module_77_res) );
  XOR2_X1 u_cini_module_0__xor_module_78_U1 ( .A(
        n_cini_module_0__xor_module_77_res), .B(
        n_cini_module_0__reg_module_112_res), .Z(io_c_s2_d3) );
  DFF_X1 u_cini_module_0__reg_module_121__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_121_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_61_U1 ( .A1(
        n_cini_module_0__reg_module_121_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_61_res) );
  DFF_X1 u_cini_module_0__reg_module_122__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_61_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_122_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_123__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_4), .Q(n_cini_module_0__reg_module_123_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_25_U1 ( .A(io_a_s0_d4), .ZN(
        n_cini_module_0__not_module_25_res) );
  AND2_X1 u_cini_module_0__and_module_62_U1 ( .A1(
        n_cini_module_0__not_module_25_res), .A2(
        n_cini_module_0__reg_module_123_res), .ZN(
        n_cini_module_0__and_module_62_res) );
  DFF_X1 u_cini_module_0__reg_module_124__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_62_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_124_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_24_U19 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_24_n18) );
  INV_X1 u_cini_module_0__majority5_module_24_U18 ( .A(
        n_cini_module_0__xor_module_13_res), .ZN(
        n_cini_module_0__majority5_module_24_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U17 ( .A1(
        n_cini_module_0__majority5_module_24_n18), .A2(
        n_cini_module_0__majority5_module_24_n16), .ZN(
        n_cini_module_0__majority5_module_24_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U16 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_24_n5) );
  INV_X1 u_cini_module_0__majority5_module_24_U15 ( .A(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority5_module_24_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U14 ( .A1(
        n_cini_module_0__majority5_module_24_n5), .A2(
        n_cini_module_0__majority5_module_24_n6), .ZN(
        n_cini_module_0__majority5_module_24_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_24_U13 ( .A1(
        n_cini_module_0__majority5_module_24_n17), .A2(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_24_n10) );
  INV_X1 u_cini_module_0__majority5_module_24_U12 ( .A(
        n_cini_module_0__xor_module_25_res), .ZN(
        n_cini_module_0__majority5_module_24_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_24_U11 ( .A1(
        n_cini_module_0__majority5_module_24_n16), .A2(
        n_cini_module_0__majority5_module_24_n7), .ZN(
        n_cini_module_0__majority5_module_24_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U10 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__majority5_module_24_n15), .ZN(
        n_cini_module_0__majority5_module_24_n13) );
  INV_X1 u_cini_module_0__majority5_module_24_U9 ( .A(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority5_module_24_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U8 ( .A1(
        n_cini_module_0__majority5_module_24_n13), .A2(
        n_cini_module_0__majority5_module_24_n14), .ZN(
        n_cini_module_0__majority5_module_24_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_24_U7 ( .A1(
        n_cini_module_0__majority5_module_24_n12), .A2(
        n_cini_module_0__xor_module_19_res), .ZN(
        n_cini_module_0__majority5_module_24_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_24_U6 ( .A1(
        n_cini_module_0__majority5_module_24_n10), .A2(
        n_cini_module_0__majority5_module_24_n11), .ZN(
        n_cini_module_0__majority5_module_24_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U5 ( .A1(
        n_cini_module_0__majority5_module_24_n8), .A2(
        n_cini_module_0__majority5_module_24_n9), .ZN(
        n_cini_module_0__majority5_module_24_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U4 ( .A1(
        n_cini_module_0__majority5_module_24_n6), .A2(
        n_cini_module_0__majority5_module_24_n7), .ZN(
        n_cini_module_0__majority5_module_24_n3) );
  INV_X1 u_cini_module_0__majority5_module_24_U3 ( .A(
        n_cini_module_0__majority5_module_24_n5), .ZN(
        n_cini_module_0__majority5_module_24_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U2 ( .A1(
        n_cini_module_0__majority5_module_24_n3), .A2(
        n_cini_module_0__majority5_module_24_n4), .ZN(
        n_cini_module_0__majority5_module_24_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_24_U1 ( .A1(
        n_cini_module_0__majority5_module_24_n1), .A2(
        n_cini_module_0__majority5_module_24_n2), .ZN(
        n_cini_module_0__majority5_module_24_res) );
  DFF_X1 u_cini_module_0__reg_module_125__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_24_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_125_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_63_U1 ( .A1(
        n_cini_module_0__reg_module_125_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_63_res) );
  DFF_X1 u_cini_module_0__reg_module_126__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_63_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_126_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_79_U1 ( .A(
        n_cini_module_0__reg_module_124_res), .B(
        n_cini_module_0__reg_module_126_res), .Z(
        n_cini_module_0__xor_module_79_res) );
  DFF_X1 u_cini_module_0__reg_module_127__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_4), .Q(n_cini_module_0__reg_module_127_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_26_U1 ( .A(io_a_s0_d4), .ZN(
        n_cini_module_0__not_module_26_res) );
  AND2_X1 u_cini_module_0__and_module_64_U1 ( .A1(
        n_cini_module_0__not_module_26_res), .A2(
        n_cini_module_0__reg_module_127_res), .ZN(
        n_cini_module_0__and_module_64_res) );
  DFF_X1 u_cini_module_0__reg_module_128__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_64_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_128_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_25_U19 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_25_n18) );
  INV_X1 u_cini_module_0__majority5_module_25_U18 ( .A(
        n_cini_module_0__xor_module_14_res), .ZN(
        n_cini_module_0__majority5_module_25_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U17 ( .A1(
        n_cini_module_0__majority5_module_25_n18), .A2(
        n_cini_module_0__majority5_module_25_n16), .ZN(
        n_cini_module_0__majority5_module_25_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U16 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_25_n5) );
  INV_X1 u_cini_module_0__majority5_module_25_U15 ( .A(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority5_module_25_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U14 ( .A1(
        n_cini_module_0__majority5_module_25_n5), .A2(
        n_cini_module_0__majority5_module_25_n6), .ZN(
        n_cini_module_0__majority5_module_25_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_25_U13 ( .A1(
        n_cini_module_0__majority5_module_25_n17), .A2(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_25_n10) );
  INV_X1 u_cini_module_0__majority5_module_25_U12 ( .A(
        n_cini_module_0__xor_module_26_res), .ZN(
        n_cini_module_0__majority5_module_25_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_25_U11 ( .A1(
        n_cini_module_0__majority5_module_25_n16), .A2(
        n_cini_module_0__majority5_module_25_n7), .ZN(
        n_cini_module_0__majority5_module_25_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U10 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__majority5_module_25_n15), .ZN(
        n_cini_module_0__majority5_module_25_n13) );
  INV_X1 u_cini_module_0__majority5_module_25_U9 ( .A(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority5_module_25_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U8 ( .A1(
        n_cini_module_0__majority5_module_25_n13), .A2(
        n_cini_module_0__majority5_module_25_n14), .ZN(
        n_cini_module_0__majority5_module_25_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_25_U7 ( .A1(
        n_cini_module_0__majority5_module_25_n12), .A2(
        n_cini_module_0__xor_module_20_res), .ZN(
        n_cini_module_0__majority5_module_25_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_25_U6 ( .A1(
        n_cini_module_0__majority5_module_25_n10), .A2(
        n_cini_module_0__majority5_module_25_n11), .ZN(
        n_cini_module_0__majority5_module_25_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U5 ( .A1(
        n_cini_module_0__majority5_module_25_n8), .A2(
        n_cini_module_0__majority5_module_25_n9), .ZN(
        n_cini_module_0__majority5_module_25_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U4 ( .A1(
        n_cini_module_0__majority5_module_25_n6), .A2(
        n_cini_module_0__majority5_module_25_n7), .ZN(
        n_cini_module_0__majority5_module_25_n3) );
  INV_X1 u_cini_module_0__majority5_module_25_U3 ( .A(
        n_cini_module_0__majority5_module_25_n5), .ZN(
        n_cini_module_0__majority5_module_25_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U2 ( .A1(
        n_cini_module_0__majority5_module_25_n3), .A2(
        n_cini_module_0__majority5_module_25_n4), .ZN(
        n_cini_module_0__majority5_module_25_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_25_U1 ( .A1(
        n_cini_module_0__majority5_module_25_n1), .A2(
        n_cini_module_0__majority5_module_25_n2), .ZN(
        n_cini_module_0__majority5_module_25_res) );
  DFF_X1 u_cini_module_0__reg_module_129__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_25_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_129_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_65_U1 ( .A1(
        n_cini_module_0__reg_module_129_res), .A2(io_a_s0_d4), .ZN(
        n_cini_module_0__and_module_65_res) );
  DFF_X1 u_cini_module_0__reg_module_130__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_65_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_130_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_80_U1 ( .A(
        n_cini_module_0__reg_module_128_res), .B(
        n_cini_module_0__reg_module_130_res), .Z(
        n_cini_module_0__xor_module_80_res) );
  XOR2_X1 u_cini_module_0__xor_module_81_U1 ( .A(
        n_cini_module_0__xor_module_79_res), .B(
        n_cini_module_0__xor_module_80_res), .Z(
        n_cini_module_0__xor_module_81_res) );
  XOR2_X1 u_cini_module_0__xor_module_82_U1 ( .A(
        n_cini_module_0__xor_module_81_res), .B(
        n_cini_module_0__reg_module_122_res), .Z(io_c_s0_d4) );
  DFF_X1 u_cini_module_0__reg_module_131__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_131_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_66_U1 ( .A1(
        n_cini_module_0__reg_module_131_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_66_res) );
  DFF_X1 u_cini_module_0__reg_module_132__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_66_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_132_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_133__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_4), .Q(n_cini_module_0__reg_module_133_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_27_U1 ( .A(io_a_s1_d4), .ZN(
        n_cini_module_0__not_module_27_res) );
  AND2_X1 u_cini_module_0__and_module_67_U1 ( .A1(
        n_cini_module_0__not_module_27_res), .A2(
        n_cini_module_0__reg_module_133_res), .ZN(
        n_cini_module_0__and_module_67_res) );
  DFF_X1 u_cini_module_0__reg_module_134__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_67_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_134_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_26_U19 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_26_n18) );
  INV_X1 u_cini_module_0__majority5_module_26_U18 ( .A(
        n_cini_module_0__xor_module_15_res), .ZN(
        n_cini_module_0__majority5_module_26_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U17 ( .A1(
        n_cini_module_0__majority5_module_26_n18), .A2(
        n_cini_module_0__majority5_module_26_n16), .ZN(
        n_cini_module_0__majority5_module_26_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U16 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_26_n5) );
  INV_X1 u_cini_module_0__majority5_module_26_U15 ( .A(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority5_module_26_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U14 ( .A1(
        n_cini_module_0__majority5_module_26_n5), .A2(
        n_cini_module_0__majority5_module_26_n6), .ZN(
        n_cini_module_0__majority5_module_26_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_26_U13 ( .A1(
        n_cini_module_0__majority5_module_26_n17), .A2(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_26_n10) );
  INV_X1 u_cini_module_0__majority5_module_26_U12 ( .A(
        n_cini_module_0__xor_module_27_res), .ZN(
        n_cini_module_0__majority5_module_26_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_26_U11 ( .A1(
        n_cini_module_0__majority5_module_26_n16), .A2(
        n_cini_module_0__majority5_module_26_n7), .ZN(
        n_cini_module_0__majority5_module_26_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U10 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__majority5_module_26_n15), .ZN(
        n_cini_module_0__majority5_module_26_n13) );
  INV_X1 u_cini_module_0__majority5_module_26_U9 ( .A(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority5_module_26_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U8 ( .A1(
        n_cini_module_0__majority5_module_26_n13), .A2(
        n_cini_module_0__majority5_module_26_n14), .ZN(
        n_cini_module_0__majority5_module_26_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_26_U7 ( .A1(
        n_cini_module_0__majority5_module_26_n12), .A2(
        n_cini_module_0__xor_module_21_res), .ZN(
        n_cini_module_0__majority5_module_26_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_26_U6 ( .A1(
        n_cini_module_0__majority5_module_26_n10), .A2(
        n_cini_module_0__majority5_module_26_n11), .ZN(
        n_cini_module_0__majority5_module_26_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U5 ( .A1(
        n_cini_module_0__majority5_module_26_n8), .A2(
        n_cini_module_0__majority5_module_26_n9), .ZN(
        n_cini_module_0__majority5_module_26_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U4 ( .A1(
        n_cini_module_0__majority5_module_26_n6), .A2(
        n_cini_module_0__majority5_module_26_n7), .ZN(
        n_cini_module_0__majority5_module_26_n3) );
  INV_X1 u_cini_module_0__majority5_module_26_U3 ( .A(
        n_cini_module_0__majority5_module_26_n5), .ZN(
        n_cini_module_0__majority5_module_26_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U2 ( .A1(
        n_cini_module_0__majority5_module_26_n3), .A2(
        n_cini_module_0__majority5_module_26_n4), .ZN(
        n_cini_module_0__majority5_module_26_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_26_U1 ( .A1(
        n_cini_module_0__majority5_module_26_n1), .A2(
        n_cini_module_0__majority5_module_26_n2), .ZN(
        n_cini_module_0__majority5_module_26_res) );
  DFF_X1 u_cini_module_0__reg_module_135__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_26_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_135_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_68_U1 ( .A1(
        n_cini_module_0__reg_module_135_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_68_res) );
  DFF_X1 u_cini_module_0__reg_module_136__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_68_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_136_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_83_U1 ( .A(
        n_cini_module_0__reg_module_134_res), .B(
        n_cini_module_0__reg_module_136_res), .Z(
        n_cini_module_0__xor_module_83_res) );
  DFF_X1 u_cini_module_0__reg_module_137__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_4), .Q(n_cini_module_0__reg_module_137_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_28_U1 ( .A(io_a_s1_d4), .ZN(
        n_cini_module_0__not_module_28_res) );
  AND2_X1 u_cini_module_0__and_module_69_U1 ( .A1(
        n_cini_module_0__not_module_28_res), .A2(
        n_cini_module_0__reg_module_137_res), .ZN(
        n_cini_module_0__and_module_69_res) );
  DFF_X1 u_cini_module_0__reg_module_138__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_69_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_138_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_27_U19 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_27_n18) );
  INV_X1 u_cini_module_0__majority5_module_27_U18 ( .A(
        n_cini_module_0__xor_module_16_res), .ZN(
        n_cini_module_0__majority5_module_27_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U17 ( .A1(
        n_cini_module_0__majority5_module_27_n18), .A2(
        n_cini_module_0__majority5_module_27_n16), .ZN(
        n_cini_module_0__majority5_module_27_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U16 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_27_n5) );
  INV_X1 u_cini_module_0__majority5_module_27_U15 ( .A(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority5_module_27_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U14 ( .A1(
        n_cini_module_0__majority5_module_27_n5), .A2(
        n_cini_module_0__majority5_module_27_n6), .ZN(
        n_cini_module_0__majority5_module_27_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_27_U13 ( .A1(
        n_cini_module_0__majority5_module_27_n17), .A2(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_27_n10) );
  INV_X1 u_cini_module_0__majority5_module_27_U12 ( .A(
        n_cini_module_0__xor_module_28_res), .ZN(
        n_cini_module_0__majority5_module_27_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_27_U11 ( .A1(
        n_cini_module_0__majority5_module_27_n16), .A2(
        n_cini_module_0__majority5_module_27_n7), .ZN(
        n_cini_module_0__majority5_module_27_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U10 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__majority5_module_27_n15), .ZN(
        n_cini_module_0__majority5_module_27_n13) );
  INV_X1 u_cini_module_0__majority5_module_27_U9 ( .A(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority5_module_27_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U8 ( .A1(
        n_cini_module_0__majority5_module_27_n13), .A2(
        n_cini_module_0__majority5_module_27_n14), .ZN(
        n_cini_module_0__majority5_module_27_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_27_U7 ( .A1(
        n_cini_module_0__majority5_module_27_n12), .A2(
        n_cini_module_0__xor_module_22_res), .ZN(
        n_cini_module_0__majority5_module_27_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_27_U6 ( .A1(
        n_cini_module_0__majority5_module_27_n10), .A2(
        n_cini_module_0__majority5_module_27_n11), .ZN(
        n_cini_module_0__majority5_module_27_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U5 ( .A1(
        n_cini_module_0__majority5_module_27_n8), .A2(
        n_cini_module_0__majority5_module_27_n9), .ZN(
        n_cini_module_0__majority5_module_27_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U4 ( .A1(
        n_cini_module_0__majority5_module_27_n6), .A2(
        n_cini_module_0__majority5_module_27_n7), .ZN(
        n_cini_module_0__majority5_module_27_n3) );
  INV_X1 u_cini_module_0__majority5_module_27_U3 ( .A(
        n_cini_module_0__majority5_module_27_n5), .ZN(
        n_cini_module_0__majority5_module_27_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U2 ( .A1(
        n_cini_module_0__majority5_module_27_n3), .A2(
        n_cini_module_0__majority5_module_27_n4), .ZN(
        n_cini_module_0__majority5_module_27_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_27_U1 ( .A1(
        n_cini_module_0__majority5_module_27_n1), .A2(
        n_cini_module_0__majority5_module_27_n2), .ZN(
        n_cini_module_0__majority5_module_27_res) );
  DFF_X1 u_cini_module_0__reg_module_139__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_27_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_139_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_70_U1 ( .A1(
        n_cini_module_0__reg_module_139_res), .A2(io_a_s1_d4), .ZN(
        n_cini_module_0__and_module_70_res) );
  DFF_X1 u_cini_module_0__reg_module_140__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_70_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_140_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_84_U1 ( .A(
        n_cini_module_0__reg_module_138_res), .B(
        n_cini_module_0__reg_module_140_res), .Z(
        n_cini_module_0__xor_module_84_res) );
  XOR2_X1 u_cini_module_0__xor_module_85_U1 ( .A(
        n_cini_module_0__xor_module_83_res), .B(
        n_cini_module_0__xor_module_84_res), .Z(
        n_cini_module_0__xor_module_85_res) );
  XOR2_X1 u_cini_module_0__xor_module_86_U1 ( .A(
        n_cini_module_0__xor_module_85_res), .B(
        n_cini_module_0__reg_module_132_res), .Z(io_c_s1_d4) );
  DFF_X1 u_cini_module_0__reg_module_141__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d4), .CK(clock_4), .Q(n_cini_module_0__reg_module_141_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_71_U1 ( .A1(
        n_cini_module_0__reg_module_141_res), .A2(io_a_s2_d4), .ZN(
        n_cini_module_0__and_module_71_res) );
  DFF_X1 u_cini_module_0__reg_module_142__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_71_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_142_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_143__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_4), .Q(n_cini_module_0__reg_module_143_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_29_U1 ( .A(io_a_s2_d4), .ZN(
        n_cini_module_0__not_module_29_res) );
  AND2_X1 u_cini_module_0__and_module_72_U1 ( .A1(
        n_cini_module_0__not_module_29_res), .A2(
        n_cini_module_0__reg_module_143_res), .ZN(
        n_cini_module_0__and_module_72_res) );
  DFF_X1 u_cini_module_0__reg_module_144__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_72_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_144_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_28_U19 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_28_n18) );
  INV_X1 u_cini_module_0__majority5_module_28_U18 ( .A(
        n_cini_module_0__xor_module_17_res), .ZN(
        n_cini_module_0__majority5_module_28_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U17 ( .A1(
        n_cini_module_0__majority5_module_28_n18), .A2(
        n_cini_module_0__majority5_module_28_n16), .ZN(
        n_cini_module_0__majority5_module_28_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U16 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_28_n5) );
  INV_X1 u_cini_module_0__majority5_module_28_U15 ( .A(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority5_module_28_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U14 ( .A1(
        n_cini_module_0__majority5_module_28_n5), .A2(
        n_cini_module_0__majority5_module_28_n6), .ZN(
        n_cini_module_0__majority5_module_28_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_28_U13 ( .A1(
        n_cini_module_0__majority5_module_28_n17), .A2(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_28_n10) );
  INV_X1 u_cini_module_0__majority5_module_28_U12 ( .A(
        n_cini_module_0__xor_module_29_res), .ZN(
        n_cini_module_0__majority5_module_28_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_28_U11 ( .A1(
        n_cini_module_0__majority5_module_28_n16), .A2(
        n_cini_module_0__majority5_module_28_n7), .ZN(
        n_cini_module_0__majority5_module_28_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U10 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__majority5_module_28_n15), .ZN(
        n_cini_module_0__majority5_module_28_n13) );
  INV_X1 u_cini_module_0__majority5_module_28_U9 ( .A(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority5_module_28_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U8 ( .A1(
        n_cini_module_0__majority5_module_28_n13), .A2(
        n_cini_module_0__majority5_module_28_n14), .ZN(
        n_cini_module_0__majority5_module_28_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_28_U7 ( .A1(
        n_cini_module_0__majority5_module_28_n12), .A2(
        n_cini_module_0__xor_module_23_res), .ZN(
        n_cini_module_0__majority5_module_28_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_28_U6 ( .A1(
        n_cini_module_0__majority5_module_28_n10), .A2(
        n_cini_module_0__majority5_module_28_n11), .ZN(
        n_cini_module_0__majority5_module_28_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U5 ( .A1(
        n_cini_module_0__majority5_module_28_n8), .A2(
        n_cini_module_0__majority5_module_28_n9), .ZN(
        n_cini_module_0__majority5_module_28_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U4 ( .A1(
        n_cini_module_0__majority5_module_28_n6), .A2(
        n_cini_module_0__majority5_module_28_n7), .ZN(
        n_cini_module_0__majority5_module_28_n3) );
  INV_X1 u_cini_module_0__majority5_module_28_U3 ( .A(
        n_cini_module_0__majority5_module_28_n5), .ZN(
        n_cini_module_0__majority5_module_28_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U2 ( .A1(
        n_cini_module_0__majority5_module_28_n3), .A2(
        n_cini_module_0__majority5_module_28_n4), .ZN(
        n_cini_module_0__majority5_module_28_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_28_U1 ( .A1(
        n_cini_module_0__majority5_module_28_n1), .A2(
        n_cini_module_0__majority5_module_28_n2), .ZN(
        n_cini_module_0__majority5_module_28_res) );
  DFF_X1 u_cini_module_0__reg_module_145__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_28_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_145_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_73_U1 ( .A1(
        n_cini_module_0__reg_module_145_res), .A2(io_a_s2_d4), .ZN(
        n_cini_module_0__and_module_73_res) );
  DFF_X1 u_cini_module_0__reg_module_146__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_73_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_146_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_87_U1 ( .A(
        n_cini_module_0__reg_module_144_res), .B(
        n_cini_module_0__reg_module_146_res), .Z(
        n_cini_module_0__xor_module_87_res) );
  DFF_X1 u_cini_module_0__reg_module_147__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_4), .Q(n_cini_module_0__reg_module_147_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_30_U1 ( .A(io_a_s2_d4), .ZN(
        n_cini_module_0__not_module_30_res) );
  AND2_X1 u_cini_module_0__and_module_74_U1 ( .A1(
        n_cini_module_0__not_module_30_res), .A2(
        n_cini_module_0__reg_module_147_res), .ZN(
        n_cini_module_0__and_module_74_res) );
  DFF_X1 u_cini_module_0__reg_module_148__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_74_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_148_res), .QN() );
  NOR2_X1 u_cini_module_0__majority5_module_29_U19 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_29_n18) );
  INV_X1 u_cini_module_0__majority5_module_29_U18 ( .A(
        n_cini_module_0__xor_module_18_res), .ZN(
        n_cini_module_0__majority5_module_29_n16) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U17 ( .A1(
        n_cini_module_0__majority5_module_29_n18), .A2(
        n_cini_module_0__majority5_module_29_n16), .ZN(
        n_cini_module_0__majority5_module_29_n8) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U16 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_29_n5) );
  INV_X1 u_cini_module_0__majority5_module_29_U15 ( .A(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority5_module_29_n6) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U14 ( .A1(
        n_cini_module_0__majority5_module_29_n5), .A2(
        n_cini_module_0__majority5_module_29_n6), .ZN(
        n_cini_module_0__majority5_module_29_n17) );
  NAND2_X1 u_cini_module_0__majority5_module_29_U13 ( .A1(
        n_cini_module_0__majority5_module_29_n17), .A2(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_29_n10) );
  INV_X1 u_cini_module_0__majority5_module_29_U12 ( .A(
        n_cini_module_0__xor_module_30_res), .ZN(
        n_cini_module_0__majority5_module_29_n7) );
  NAND2_X1 u_cini_module_0__majority5_module_29_U11 ( .A1(
        n_cini_module_0__majority5_module_29_n16), .A2(
        n_cini_module_0__majority5_module_29_n7), .ZN(
        n_cini_module_0__majority5_module_29_n15) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U10 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__majority5_module_29_n15), .ZN(
        n_cini_module_0__majority5_module_29_n13) );
  INV_X1 u_cini_module_0__majority5_module_29_U9 ( .A(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority5_module_29_n14) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U8 ( .A1(
        n_cini_module_0__majority5_module_29_n13), .A2(
        n_cini_module_0__majority5_module_29_n14), .ZN(
        n_cini_module_0__majority5_module_29_n12) );
  NAND2_X1 u_cini_module_0__majority5_module_29_U7 ( .A1(
        n_cini_module_0__majority5_module_29_n12), .A2(
        n_cini_module_0__xor_module_24_res), .ZN(
        n_cini_module_0__majority5_module_29_n11) );
  NAND2_X1 u_cini_module_0__majority5_module_29_U6 ( .A1(
        n_cini_module_0__majority5_module_29_n10), .A2(
        n_cini_module_0__majority5_module_29_n11), .ZN(
        n_cini_module_0__majority5_module_29_n9) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U5 ( .A1(
        n_cini_module_0__majority5_module_29_n8), .A2(
        n_cini_module_0__majority5_module_29_n9), .ZN(
        n_cini_module_0__majority5_module_29_n1) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U4 ( .A1(
        n_cini_module_0__majority5_module_29_n6), .A2(
        n_cini_module_0__majority5_module_29_n7), .ZN(
        n_cini_module_0__majority5_module_29_n3) );
  INV_X1 u_cini_module_0__majority5_module_29_U3 ( .A(
        n_cini_module_0__majority5_module_29_n5), .ZN(
        n_cini_module_0__majority5_module_29_n4) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U2 ( .A1(
        n_cini_module_0__majority5_module_29_n3), .A2(
        n_cini_module_0__majority5_module_29_n4), .ZN(
        n_cini_module_0__majority5_module_29_n2) );
  NOR2_X1 u_cini_module_0__majority5_module_29_U1 ( .A1(
        n_cini_module_0__majority5_module_29_n1), .A2(
        n_cini_module_0__majority5_module_29_n2), .ZN(
        n_cini_module_0__majority5_module_29_res) );
  DFF_X1 u_cini_module_0__reg_module_149__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority5_module_29_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_149_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_75_U1 ( .A1(
        n_cini_module_0__reg_module_149_res), .A2(io_a_s2_d4), .ZN(
        n_cini_module_0__and_module_75_res) );
  DFF_X1 u_cini_module_0__reg_module_150__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_75_res), .CK(clock_4), .Q(
        n_cini_module_0__reg_module_150_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_88_U1 ( .A(
        n_cini_module_0__reg_module_148_res), .B(
        n_cini_module_0__reg_module_150_res), .Z(
        n_cini_module_0__xor_module_88_res) );
  XOR2_X1 u_cini_module_0__xor_module_89_U1 ( .A(
        n_cini_module_0__xor_module_87_res), .B(
        n_cini_module_0__xor_module_88_res), .Z(
        n_cini_module_0__xor_module_89_res) );
  XOR2_X1 u_cini_module_0__xor_module_90_U1 ( .A(
        n_cini_module_0__xor_module_89_res), .B(
        n_cini_module_0__reg_module_142_res), .Z(io_c_s2_d4) );
endmodule

