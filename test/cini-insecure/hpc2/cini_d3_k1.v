/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Apr 21 09:55:46 2022
/////////////////////////////////////////////////////////////


module And_gate ( clock_0, clock_1, clock_2, io_a_s0_d0, io_a_s0_d1, 
        io_a_s0_d2, io_a_s1_d0, io_a_s1_d1, io_a_s1_d2, io_a_s2_d0, io_a_s2_d1, 
        io_a_s2_d2, io_a_s3_d0, io_a_s3_d1, io_a_s3_d2, io_b_s0_d0, io_b_s0_d1, 
        io_b_s0_d2, io_b_s1_d0, io_b_s1_d1, io_b_s1_d2, io_b_s2_d0, io_b_s2_d1, 
        io_b_s2_d2, io_b_s3_d0, io_b_s3_d1, io_b_s3_d2, p_rand_0, p_rand_1, 
        p_rand_2, p_rand_3, p_rand_4, p_rand_5, io_c_s0_d0, io_c_s0_d1, 
        io_c_s0_d2, io_c_s1_d0, io_c_s1_d1, io_c_s1_d2, io_c_s2_d0, io_c_s2_d1, 
        io_c_s2_d2, io_c_s3_d0, io_c_s3_d1, io_c_s3_d2 );
  input clock_0, clock_1, clock_2, io_a_s0_d0, io_a_s0_d1, io_a_s0_d2,
         io_a_s1_d0, io_a_s1_d1, io_a_s1_d2, io_a_s2_d0, io_a_s2_d1,
         io_a_s2_d2, io_a_s3_d0, io_a_s3_d1, io_a_s3_d2, io_b_s0_d0,
         io_b_s0_d1, io_b_s0_d2, io_b_s1_d0, io_b_s1_d1, io_b_s1_d2,
         io_b_s2_d0, io_b_s2_d1, io_b_s2_d2, io_b_s3_d0, io_b_s3_d1,
         io_b_s3_d2, p_rand_0, p_rand_1, p_rand_2, p_rand_3, p_rand_4,
         p_rand_5;
  output io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s1_d0, io_c_s1_d1,
         io_c_s1_d2, io_c_s2_d0, io_c_s2_d1, io_c_s2_d2, io_c_s3_d0,
         io_c_s3_d1, io_c_s3_d2;
  wire   n_cini_module_0__xor_module_107_res,
         n_cini_module_0__xor_module_106_res,
         n_cini_module_0__reg_module_168_res,
         n_cini_module_0__and_module_84_res,
         n_cini_module_0__reg_module_167_res,
         n_cini_module_0__majority3_module_35_res,
         n_cini_module_0__reg_module_166_res,
         n_cini_module_0__and_module_83_res,
         n_cini_module_0__not_module_36_res,
         n_cini_module_0__reg_module_165_res,
         n_cini_module_0__xor_module_105_res,
         n_cini_module_0__xor_module_104_res,
         n_cini_module_0__reg_module_164_res,
         n_cini_module_0__and_module_82_res,
         n_cini_module_0__reg_module_163_res,
         n_cini_module_0__majority3_module_34_res,
         n_cini_module_0__reg_module_162_res,
         n_cini_module_0__and_module_81_res,
         n_cini_module_0__not_module_35_res,
         n_cini_module_0__reg_module_161_res,
         n_cini_module_0__xor_module_103_res,
         n_cini_module_0__reg_module_160_res,
         n_cini_module_0__and_module_80_res,
         n_cini_module_0__reg_module_159_res,
         n_cini_module_0__majority3_module_33_res,
         n_cini_module_0__reg_module_158_res,
         n_cini_module_0__and_module_79_res,
         n_cini_module_0__not_module_34_res,
         n_cini_module_0__reg_module_157_res,
         n_cini_module_0__reg_module_156_res,
         n_cini_module_0__and_module_78_res,
         n_cini_module_0__reg_module_155_res,
         n_cini_module_0__xor_module_101_res,
         n_cini_module_0__xor_module_100_res,
         n_cini_module_0__reg_module_154_res,
         n_cini_module_0__and_module_77_res,
         n_cini_module_0__reg_module_153_res,
         n_cini_module_0__majority3_module_32_res,
         n_cini_module_0__reg_module_152_res,
         n_cini_module_0__and_module_76_res,
         n_cini_module_0__not_module_33_res,
         n_cini_module_0__reg_module_151_res,
         n_cini_module_0__xor_module_99_res,
         n_cini_module_0__xor_module_98_res,
         n_cini_module_0__reg_module_150_res,
         n_cini_module_0__and_module_75_res,
         n_cini_module_0__reg_module_149_res,
         n_cini_module_0__majority3_module_31_res,
         n_cini_module_0__reg_module_148_res,
         n_cini_module_0__and_module_74_res,
         n_cini_module_0__not_module_32_res,
         n_cini_module_0__reg_module_147_res,
         n_cini_module_0__xor_module_97_res,
         n_cini_module_0__reg_module_146_res,
         n_cini_module_0__and_module_73_res,
         n_cini_module_0__reg_module_145_res,
         n_cini_module_0__majority3_module_30_res,
         n_cini_module_0__reg_module_144_res,
         n_cini_module_0__and_module_72_res,
         n_cini_module_0__not_module_31_res,
         n_cini_module_0__reg_module_143_res,
         n_cini_module_0__reg_module_142_res,
         n_cini_module_0__and_module_71_res,
         n_cini_module_0__reg_module_141_res,
         n_cini_module_0__xor_module_95_res,
         n_cini_module_0__xor_module_94_res,
         n_cini_module_0__reg_module_140_res,
         n_cini_module_0__and_module_70_res,
         n_cini_module_0__reg_module_139_res,
         n_cini_module_0__majority3_module_29_res,
         n_cini_module_0__reg_module_138_res,
         n_cini_module_0__and_module_69_res,
         n_cini_module_0__not_module_30_res,
         n_cini_module_0__reg_module_137_res,
         n_cini_module_0__xor_module_93_res,
         n_cini_module_0__xor_module_92_res,
         n_cini_module_0__reg_module_136_res,
         n_cini_module_0__and_module_68_res,
         n_cini_module_0__reg_module_135_res,
         n_cini_module_0__majority3_module_28_res,
         n_cini_module_0__reg_module_134_res,
         n_cini_module_0__and_module_67_res,
         n_cini_module_0__not_module_29_res,
         n_cini_module_0__reg_module_133_res,
         n_cini_module_0__xor_module_91_res,
         n_cini_module_0__reg_module_132_res,
         n_cini_module_0__and_module_66_res,
         n_cini_module_0__reg_module_131_res,
         n_cini_module_0__majority3_module_27_res,
         n_cini_module_0__reg_module_130_res,
         n_cini_module_0__and_module_65_res,
         n_cini_module_0__not_module_28_res,
         n_cini_module_0__reg_module_129_res,
         n_cini_module_0__reg_module_128_res,
         n_cini_module_0__and_module_64_res,
         n_cini_module_0__reg_module_127_res,
         n_cini_module_0__xor_module_89_res,
         n_cini_module_0__xor_module_88_res,
         n_cini_module_0__reg_module_126_res,
         n_cini_module_0__and_module_63_res,
         n_cini_module_0__reg_module_125_res,
         n_cini_module_0__majority3_module_26_res,
         n_cini_module_0__reg_module_124_res,
         n_cini_module_0__and_module_62_res,
         n_cini_module_0__not_module_27_res,
         n_cini_module_0__reg_module_123_res,
         n_cini_module_0__xor_module_87_res,
         n_cini_module_0__xor_module_86_res,
         n_cini_module_0__reg_module_122_res,
         n_cini_module_0__and_module_61_res,
         n_cini_module_0__reg_module_121_res,
         n_cini_module_0__majority3_module_25_res,
         n_cini_module_0__reg_module_120_res,
         n_cini_module_0__and_module_60_res,
         n_cini_module_0__not_module_26_res,
         n_cini_module_0__reg_module_119_res,
         n_cini_module_0__xor_module_85_res,
         n_cini_module_0__reg_module_118_res,
         n_cini_module_0__and_module_59_res,
         n_cini_module_0__reg_module_117_res,
         n_cini_module_0__majority3_module_24_res,
         n_cini_module_0__reg_module_116_res,
         n_cini_module_0__and_module_58_res,
         n_cini_module_0__not_module_25_res,
         n_cini_module_0__reg_module_115_res,
         n_cini_module_0__reg_module_114_res,
         n_cini_module_0__and_module_57_res,
         n_cini_module_0__reg_module_113_res,
         n_cini_module_0__xor_module_83_res,
         n_cini_module_0__xor_module_82_res,
         n_cini_module_0__reg_module_112_res,
         n_cini_module_0__and_module_56_res,
         n_cini_module_0__reg_module_111_res,
         n_cini_module_0__majority3_module_23_res,
         n_cini_module_0__reg_module_110_res,
         n_cini_module_0__and_module_55_res,
         n_cini_module_0__not_module_24_res,
         n_cini_module_0__reg_module_109_res,
         n_cini_module_0__xor_module_81_res,
         n_cini_module_0__xor_module_80_res,
         n_cini_module_0__reg_module_108_res,
         n_cini_module_0__and_module_54_res,
         n_cini_module_0__reg_module_107_res,
         n_cini_module_0__majority3_module_22_res,
         n_cini_module_0__reg_module_106_res,
         n_cini_module_0__and_module_53_res,
         n_cini_module_0__not_module_23_res,
         n_cini_module_0__reg_module_105_res,
         n_cini_module_0__xor_module_79_res,
         n_cini_module_0__reg_module_104_res,
         n_cini_module_0__and_module_52_res,
         n_cini_module_0__reg_module_103_res,
         n_cini_module_0__majority3_module_21_res,
         n_cini_module_0__reg_module_102_res,
         n_cini_module_0__and_module_51_res,
         n_cini_module_0__not_module_22_res,
         n_cini_module_0__reg_module_101_res,
         n_cini_module_0__reg_module_100_res,
         n_cini_module_0__and_module_50_res,
         n_cini_module_0__reg_module_99_res,
         n_cini_module_0__xor_module_77_res,
         n_cini_module_0__xor_module_76_res,
         n_cini_module_0__reg_module_98_res,
         n_cini_module_0__and_module_49_res,
         n_cini_module_0__reg_module_97_res,
         n_cini_module_0__majority3_module_20_res,
         n_cini_module_0__reg_module_96_res,
         n_cini_module_0__and_module_48_res,
         n_cini_module_0__not_module_21_res,
         n_cini_module_0__reg_module_95_res,
         n_cini_module_0__xor_module_75_res,
         n_cini_module_0__xor_module_74_res,
         n_cini_module_0__reg_module_94_res,
         n_cini_module_0__and_module_47_res,
         n_cini_module_0__reg_module_93_res,
         n_cini_module_0__majority3_module_19_res,
         n_cini_module_0__reg_module_92_res,
         n_cini_module_0__and_module_46_res,
         n_cini_module_0__not_module_20_res,
         n_cini_module_0__reg_module_91_res,
         n_cini_module_0__xor_module_73_res,
         n_cini_module_0__reg_module_90_res,
         n_cini_module_0__and_module_45_res,
         n_cini_module_0__reg_module_89_res,
         n_cini_module_0__majority3_module_18_res,
         n_cini_module_0__reg_module_88_res,
         n_cini_module_0__and_module_44_res,
         n_cini_module_0__not_module_19_res,
         n_cini_module_0__reg_module_87_res,
         n_cini_module_0__reg_module_86_res,
         n_cini_module_0__and_module_43_res,
         n_cini_module_0__reg_module_85_res,
         n_cini_module_0__xor_module_71_res,
         n_cini_module_0__xor_module_70_res,
         n_cini_module_0__reg_module_84_res,
         n_cini_module_0__and_module_42_res,
         n_cini_module_0__reg_module_83_res,
         n_cini_module_0__majority3_module_17_res,
         n_cini_module_0__reg_module_82_res,
         n_cini_module_0__and_module_41_res,
         n_cini_module_0__not_module_18_res,
         n_cini_module_0__reg_module_81_res,
         n_cini_module_0__xor_module_69_res,
         n_cini_module_0__xor_module_68_res,
         n_cini_module_0__reg_module_80_res,
         n_cini_module_0__and_module_40_res,
         n_cini_module_0__reg_module_79_res,
         n_cini_module_0__majority3_module_16_res,
         n_cini_module_0__reg_module_78_res,
         n_cini_module_0__and_module_39_res,
         n_cini_module_0__not_module_17_res,
         n_cini_module_0__reg_module_77_res,
         n_cini_module_0__xor_module_67_res,
         n_cini_module_0__reg_module_76_res,
         n_cini_module_0__and_module_38_res,
         n_cini_module_0__reg_module_75_res,
         n_cini_module_0__majority3_module_15_res,
         n_cini_module_0__reg_module_74_res,
         n_cini_module_0__and_module_37_res,
         n_cini_module_0__not_module_16_res,
         n_cini_module_0__reg_module_73_res,
         n_cini_module_0__reg_module_72_res,
         n_cini_module_0__and_module_36_res,
         n_cini_module_0__reg_module_71_res,
         n_cini_module_0__xor_module_65_res,
         n_cini_module_0__xor_module_64_res,
         n_cini_module_0__reg_module_70_res,
         n_cini_module_0__and_module_35_res,
         n_cini_module_0__reg_module_69_res,
         n_cini_module_0__majority3_module_14_res,
         n_cini_module_0__reg_module_68_res,
         n_cini_module_0__and_module_34_res,
         n_cini_module_0__not_module_15_res,
         n_cini_module_0__reg_module_67_res,
         n_cini_module_0__xor_module_63_res,
         n_cini_module_0__xor_module_62_res,
         n_cini_module_0__reg_module_66_res,
         n_cini_module_0__and_module_33_res,
         n_cini_module_0__reg_module_65_res,
         n_cini_module_0__majority3_module_13_res,
         n_cini_module_0__reg_module_64_res,
         n_cini_module_0__and_module_32_res,
         n_cini_module_0__not_module_14_res,
         n_cini_module_0__reg_module_63_res,
         n_cini_module_0__xor_module_61_res,
         n_cini_module_0__reg_module_62_res,
         n_cini_module_0__and_module_31_res,
         n_cini_module_0__reg_module_61_res,
         n_cini_module_0__majority3_module_12_res,
         n_cini_module_0__reg_module_60_res,
         n_cini_module_0__and_module_30_res,
         n_cini_module_0__not_module_13_res,
         n_cini_module_0__reg_module_59_res,
         n_cini_module_0__reg_module_58_res,
         n_cini_module_0__and_module_29_res,
         n_cini_module_0__reg_module_57_res,
         n_cini_module_0__xor_module_59_res,
         n_cini_module_0__xor_module_58_res,
         n_cini_module_0__reg_module_56_res,
         n_cini_module_0__and_module_28_res,
         n_cini_module_0__reg_module_55_res,
         n_cini_module_0__majority3_module_11_res,
         n_cini_module_0__reg_module_54_res,
         n_cini_module_0__and_module_27_res,
         n_cini_module_0__not_module_12_res,
         n_cini_module_0__reg_module_53_res,
         n_cini_module_0__xor_module_57_res,
         n_cini_module_0__xor_module_56_res,
         n_cini_module_0__reg_module_52_res,
         n_cini_module_0__and_module_26_res,
         n_cini_module_0__reg_module_51_res,
         n_cini_module_0__majority3_module_10_res,
         n_cini_module_0__reg_module_50_res,
         n_cini_module_0__and_module_25_res,
         n_cini_module_0__not_module_11_res,
         n_cini_module_0__reg_module_49_res,
         n_cini_module_0__xor_module_55_res,
         n_cini_module_0__reg_module_48_res,
         n_cini_module_0__and_module_24_res,
         n_cini_module_0__reg_module_47_res,
         n_cini_module_0__majority3_module_9_res,
         n_cini_module_0__reg_module_46_res,
         n_cini_module_0__and_module_23_res,
         n_cini_module_0__not_module_10_res,
         n_cini_module_0__reg_module_45_res,
         n_cini_module_0__reg_module_44_res,
         n_cini_module_0__and_module_22_res,
         n_cini_module_0__reg_module_43_res,
         n_cini_module_0__xor_module_53_res,
         n_cini_module_0__xor_module_52_res,
         n_cini_module_0__reg_module_42_res,
         n_cini_module_0__and_module_21_res,
         n_cini_module_0__reg_module_41_res,
         n_cini_module_0__majority3_module_8_res,
         n_cini_module_0__reg_module_40_res,
         n_cini_module_0__and_module_20_res, n_cini_module_0__not_module_9_res,
         n_cini_module_0__reg_module_39_res,
         n_cini_module_0__xor_module_51_res,
         n_cini_module_0__xor_module_50_res,
         n_cini_module_0__reg_module_38_res,
         n_cini_module_0__and_module_19_res,
         n_cini_module_0__reg_module_37_res,
         n_cini_module_0__majority3_module_7_res,
         n_cini_module_0__reg_module_36_res,
         n_cini_module_0__and_module_18_res, n_cini_module_0__not_module_8_res,
         n_cini_module_0__reg_module_35_res,
         n_cini_module_0__xor_module_49_res,
         n_cini_module_0__reg_module_34_res,
         n_cini_module_0__and_module_17_res,
         n_cini_module_0__reg_module_33_res,
         n_cini_module_0__majority3_module_6_res,
         n_cini_module_0__reg_module_32_res,
         n_cini_module_0__and_module_16_res, n_cini_module_0__not_module_7_res,
         n_cini_module_0__reg_module_31_res,
         n_cini_module_0__reg_module_30_res,
         n_cini_module_0__and_module_15_res,
         n_cini_module_0__reg_module_29_res,
         n_cini_module_0__xor_module_47_res,
         n_cini_module_0__xor_module_46_res,
         n_cini_module_0__reg_module_28_res,
         n_cini_module_0__and_module_14_res,
         n_cini_module_0__reg_module_27_res,
         n_cini_module_0__majority3_module_5_res,
         n_cini_module_0__reg_module_26_res,
         n_cini_module_0__and_module_13_res, n_cini_module_0__not_module_6_res,
         n_cini_module_0__reg_module_25_res,
         n_cini_module_0__xor_module_45_res,
         n_cini_module_0__xor_module_44_res,
         n_cini_module_0__reg_module_24_res,
         n_cini_module_0__and_module_12_res,
         n_cini_module_0__reg_module_23_res,
         n_cini_module_0__majority3_module_4_res,
         n_cini_module_0__reg_module_22_res,
         n_cini_module_0__and_module_11_res, n_cini_module_0__not_module_5_res,
         n_cini_module_0__reg_module_21_res,
         n_cini_module_0__xor_module_43_res,
         n_cini_module_0__reg_module_20_res,
         n_cini_module_0__and_module_10_res,
         n_cini_module_0__reg_module_19_res,
         n_cini_module_0__majority3_module_3_res,
         n_cini_module_0__reg_module_18_res, n_cini_module_0__and_module_9_res,
         n_cini_module_0__not_module_4_res, n_cini_module_0__reg_module_17_res,
         n_cini_module_0__reg_module_16_res, n_cini_module_0__and_module_8_res,
         n_cini_module_0__reg_module_15_res,
         n_cini_module_0__xor_module_41_res,
         n_cini_module_0__xor_module_40_res,
         n_cini_module_0__reg_module_14_res, n_cini_module_0__and_module_7_res,
         n_cini_module_0__reg_module_13_res,
         n_cini_module_0__majority3_module_2_res,
         n_cini_module_0__reg_module_12_res, n_cini_module_0__and_module_6_res,
         n_cini_module_0__not_module_3_res, n_cini_module_0__reg_module_11_res,
         n_cini_module_0__xor_module_39_res,
         n_cini_module_0__xor_module_38_res,
         n_cini_module_0__reg_module_10_res, n_cini_module_0__and_module_5_res,
         n_cini_module_0__reg_module_9_res,
         n_cini_module_0__majority3_module_1_res,
         n_cini_module_0__reg_module_8_res, n_cini_module_0__and_module_4_res,
         n_cini_module_0__not_module_2_res, n_cini_module_0__reg_module_7_res,
         n_cini_module_0__xor_module_37_res, n_cini_module_0__reg_module_6_res,
         n_cini_module_0__and_module_3_res, n_cini_module_0__reg_module_5_res,
         n_cini_module_0__majority3_module_0_res,
         n_cini_module_0__reg_module_4_res, n_cini_module_0__and_module_2_res,
         n_cini_module_0__not_module_1_res, n_cini_module_0__reg_module_3_res,
         n_cini_module_0__reg_module_2_res, n_cini_module_0__and_module_1_res,
         n_cini_module_0__reg_module_1_res, n_cini_module_0__xor_module_36_res,
         n_cini_module_0__xor_module_35_res,
         n_cini_module_0__xor_module_34_res,
         n_cini_module_0__xor_module_33_res,
         n_cini_module_0__xor_module_32_res,
         n_cini_module_0__xor_module_31_res,
         n_cini_module_0__xor_module_30_res,
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
         n_cini_module_0__majority3_module_0_n3,
         n_cini_module_0__majority3_module_0_n2,
         n_cini_module_0__majority3_module_0_n1,
         n_cini_module_0__majority3_module_1_n3,
         n_cini_module_0__majority3_module_1_n2,
         n_cini_module_0__majority3_module_1_n1,
         n_cini_module_0__majority3_module_2_n3,
         n_cini_module_0__majority3_module_2_n2,
         n_cini_module_0__majority3_module_2_n1,
         n_cini_module_0__majority3_module_3_n3,
         n_cini_module_0__majority3_module_3_n2,
         n_cini_module_0__majority3_module_3_n1,
         n_cini_module_0__majority3_module_4_n3,
         n_cini_module_0__majority3_module_4_n2,
         n_cini_module_0__majority3_module_4_n1,
         n_cini_module_0__majority3_module_5_n3,
         n_cini_module_0__majority3_module_5_n2,
         n_cini_module_0__majority3_module_5_n1,
         n_cini_module_0__majority3_module_6_n3,
         n_cini_module_0__majority3_module_6_n2,
         n_cini_module_0__majority3_module_6_n1,
         n_cini_module_0__majority3_module_7_n3,
         n_cini_module_0__majority3_module_7_n2,
         n_cini_module_0__majority3_module_7_n1,
         n_cini_module_0__majority3_module_8_n3,
         n_cini_module_0__majority3_module_8_n2,
         n_cini_module_0__majority3_module_8_n1,
         n_cini_module_0__majority3_module_9_n3,
         n_cini_module_0__majority3_module_9_n2,
         n_cini_module_0__majority3_module_9_n1,
         n_cini_module_0__majority3_module_10_n3,
         n_cini_module_0__majority3_module_10_n2,
         n_cini_module_0__majority3_module_10_n1,
         n_cini_module_0__majority3_module_11_n3,
         n_cini_module_0__majority3_module_11_n2,
         n_cini_module_0__majority3_module_11_n1,
         n_cini_module_0__majority3_module_12_n3,
         n_cini_module_0__majority3_module_12_n2,
         n_cini_module_0__majority3_module_12_n1,
         n_cini_module_0__majority3_module_13_n3,
         n_cini_module_0__majority3_module_13_n2,
         n_cini_module_0__majority3_module_13_n1,
         n_cini_module_0__majority3_module_14_n3,
         n_cini_module_0__majority3_module_14_n2,
         n_cini_module_0__majority3_module_14_n1,
         n_cini_module_0__majority3_module_15_n3,
         n_cini_module_0__majority3_module_15_n2,
         n_cini_module_0__majority3_module_15_n1,
         n_cini_module_0__majority3_module_16_n3,
         n_cini_module_0__majority3_module_16_n2,
         n_cini_module_0__majority3_module_16_n1,
         n_cini_module_0__majority3_module_17_n3,
         n_cini_module_0__majority3_module_17_n2,
         n_cini_module_0__majority3_module_17_n1,
         n_cini_module_0__majority3_module_18_n3,
         n_cini_module_0__majority3_module_18_n2,
         n_cini_module_0__majority3_module_18_n1,
         n_cini_module_0__majority3_module_19_n3,
         n_cini_module_0__majority3_module_19_n2,
         n_cini_module_0__majority3_module_19_n1,
         n_cini_module_0__majority3_module_20_n3,
         n_cini_module_0__majority3_module_20_n2,
         n_cini_module_0__majority3_module_20_n1,
         n_cini_module_0__majority3_module_21_n3,
         n_cini_module_0__majority3_module_21_n2,
         n_cini_module_0__majority3_module_21_n1,
         n_cini_module_0__majority3_module_22_n3,
         n_cini_module_0__majority3_module_22_n2,
         n_cini_module_0__majority3_module_22_n1,
         n_cini_module_0__majority3_module_23_n3,
         n_cini_module_0__majority3_module_23_n2,
         n_cini_module_0__majority3_module_23_n1,
         n_cini_module_0__majority3_module_24_n3,
         n_cini_module_0__majority3_module_24_n2,
         n_cini_module_0__majority3_module_24_n1,
         n_cini_module_0__majority3_module_25_n3,
         n_cini_module_0__majority3_module_25_n2,
         n_cini_module_0__majority3_module_25_n1,
         n_cini_module_0__majority3_module_26_n3,
         n_cini_module_0__majority3_module_26_n2,
         n_cini_module_0__majority3_module_26_n1,
         n_cini_module_0__majority3_module_27_n3,
         n_cini_module_0__majority3_module_27_n2,
         n_cini_module_0__majority3_module_27_n1,
         n_cini_module_0__majority3_module_28_n3,
         n_cini_module_0__majority3_module_28_n2,
         n_cini_module_0__majority3_module_28_n1,
         n_cini_module_0__majority3_module_29_n3,
         n_cini_module_0__majority3_module_29_n2,
         n_cini_module_0__majority3_module_29_n1,
         n_cini_module_0__majority3_module_30_n3,
         n_cini_module_0__majority3_module_30_n2,
         n_cini_module_0__majority3_module_30_n1,
         n_cini_module_0__majority3_module_31_n3,
         n_cini_module_0__majority3_module_31_n2,
         n_cini_module_0__majority3_module_31_n1,
         n_cini_module_0__majority3_module_32_n3,
         n_cini_module_0__majority3_module_32_n2,
         n_cini_module_0__majority3_module_32_n1,
         n_cini_module_0__majority3_module_33_n3,
         n_cini_module_0__majority3_module_33_n2,
         n_cini_module_0__majority3_module_33_n1,
         n_cini_module_0__majority3_module_34_n3,
         n_cini_module_0__majority3_module_34_n2,
         n_cini_module_0__majority3_module_34_n1,
         n_cini_module_0__majority3_module_35_n3,
         n_cini_module_0__majority3_module_35_n2,
         n_cini_module_0__majority3_module_35_n1;

  XOR2_X1 u_cini_module_0__xor_module_1_U1 ( .A(p_rand_0), .B(io_b_s1_d0), .Z(
        n_cini_module_0__xor_module_1_res) );
  XOR2_X1 u_cini_module_0__xor_module_2_U1 ( .A(p_rand_1), .B(io_b_s2_d0), .Z(
        n_cini_module_0__xor_module_2_res) );
  XOR2_X1 u_cini_module_0__xor_module_3_U1 ( .A(p_rand_2), .B(io_b_s3_d0), .Z(
        n_cini_module_0__xor_module_3_res) );
  XOR2_X1 u_cini_module_0__xor_module_4_U1 ( .A(p_rand_0), .B(io_b_s0_d0), .Z(
        n_cini_module_0__xor_module_4_res) );
  XOR2_X1 u_cini_module_0__xor_module_5_U1 ( .A(p_rand_3), .B(io_b_s2_d0), .Z(
        n_cini_module_0__xor_module_5_res) );
  XOR2_X1 u_cini_module_0__xor_module_6_U1 ( .A(p_rand_4), .B(io_b_s3_d0), .Z(
        n_cini_module_0__xor_module_6_res) );
  XOR2_X1 u_cini_module_0__xor_module_7_U1 ( .A(p_rand_1), .B(io_b_s0_d0), .Z(
        n_cini_module_0__xor_module_7_res) );
  XOR2_X1 u_cini_module_0__xor_module_8_U1 ( .A(p_rand_3), .B(io_b_s1_d0), .Z(
        n_cini_module_0__xor_module_8_res) );
  XOR2_X1 u_cini_module_0__xor_module_9_U1 ( .A(p_rand_5), .B(io_b_s3_d0), .Z(
        n_cini_module_0__xor_module_9_res) );
  XOR2_X1 u_cini_module_0__xor_module_10_U1 ( .A(p_rand_2), .B(io_b_s0_d0), 
        .Z(n_cini_module_0__xor_module_10_res) );
  XOR2_X1 u_cini_module_0__xor_module_11_U1 ( .A(p_rand_4), .B(io_b_s1_d0), 
        .Z(n_cini_module_0__xor_module_11_res) );
  XOR2_X1 u_cini_module_0__xor_module_12_U1 ( .A(p_rand_5), .B(io_b_s2_d0), 
        .Z(n_cini_module_0__xor_module_12_res) );
  XOR2_X1 u_cini_module_0__xor_module_13_U1 ( .A(p_rand_0), .B(io_b_s1_d1), 
        .Z(n_cini_module_0__xor_module_13_res) );
  XOR2_X1 u_cini_module_0__xor_module_14_U1 ( .A(p_rand_1), .B(io_b_s2_d1), 
        .Z(n_cini_module_0__xor_module_14_res) );
  XOR2_X1 u_cini_module_0__xor_module_15_U1 ( .A(p_rand_2), .B(io_b_s3_d1), 
        .Z(n_cini_module_0__xor_module_15_res) );
  XOR2_X1 u_cini_module_0__xor_module_16_U1 ( .A(p_rand_0), .B(io_b_s0_d1), 
        .Z(n_cini_module_0__xor_module_16_res) );
  XOR2_X1 u_cini_module_0__xor_module_17_U1 ( .A(p_rand_3), .B(io_b_s2_d1), 
        .Z(n_cini_module_0__xor_module_17_res) );
  XOR2_X1 u_cini_module_0__xor_module_18_U1 ( .A(p_rand_4), .B(io_b_s3_d1), 
        .Z(n_cini_module_0__xor_module_18_res) );
  XOR2_X1 u_cini_module_0__xor_module_19_U1 ( .A(p_rand_1), .B(io_b_s0_d1), 
        .Z(n_cini_module_0__xor_module_19_res) );
  XOR2_X1 u_cini_module_0__xor_module_20_U1 ( .A(p_rand_3), .B(io_b_s1_d1), 
        .Z(n_cini_module_0__xor_module_20_res) );
  XOR2_X1 u_cini_module_0__xor_module_21_U1 ( .A(p_rand_5), .B(io_b_s3_d1), 
        .Z(n_cini_module_0__xor_module_21_res) );
  XOR2_X1 u_cini_module_0__xor_module_22_U1 ( .A(p_rand_2), .B(io_b_s0_d1), 
        .Z(n_cini_module_0__xor_module_22_res) );
  XOR2_X1 u_cini_module_0__xor_module_23_U1 ( .A(p_rand_4), .B(io_b_s1_d1), 
        .Z(n_cini_module_0__xor_module_23_res) );
  XOR2_X1 u_cini_module_0__xor_module_24_U1 ( .A(p_rand_5), .B(io_b_s2_d1), 
        .Z(n_cini_module_0__xor_module_24_res) );
  XOR2_X1 u_cini_module_0__xor_module_25_U1 ( .A(p_rand_0), .B(io_b_s1_d2), 
        .Z(n_cini_module_0__xor_module_25_res) );
  XOR2_X1 u_cini_module_0__xor_module_26_U1 ( .A(p_rand_1), .B(io_b_s2_d2), 
        .Z(n_cini_module_0__xor_module_26_res) );
  XOR2_X1 u_cini_module_0__xor_module_27_U1 ( .A(p_rand_2), .B(io_b_s3_d2), 
        .Z(n_cini_module_0__xor_module_27_res) );
  XOR2_X1 u_cini_module_0__xor_module_28_U1 ( .A(p_rand_0), .B(io_b_s0_d2), 
        .Z(n_cini_module_0__xor_module_28_res) );
  XOR2_X1 u_cini_module_0__xor_module_29_U1 ( .A(p_rand_3), .B(io_b_s2_d2), 
        .Z(n_cini_module_0__xor_module_29_res) );
  XOR2_X1 u_cini_module_0__xor_module_30_U1 ( .A(p_rand_4), .B(io_b_s3_d2), 
        .Z(n_cini_module_0__xor_module_30_res) );
  XOR2_X1 u_cini_module_0__xor_module_31_U1 ( .A(p_rand_1), .B(io_b_s0_d2), 
        .Z(n_cini_module_0__xor_module_31_res) );
  XOR2_X1 u_cini_module_0__xor_module_32_U1 ( .A(p_rand_3), .B(io_b_s1_d2), 
        .Z(n_cini_module_0__xor_module_32_res) );
  XOR2_X1 u_cini_module_0__xor_module_33_U1 ( .A(p_rand_5), .B(io_b_s3_d2), 
        .Z(n_cini_module_0__xor_module_33_res) );
  XOR2_X1 u_cini_module_0__xor_module_34_U1 ( .A(p_rand_2), .B(io_b_s0_d2), 
        .Z(n_cini_module_0__xor_module_34_res) );
  XOR2_X1 u_cini_module_0__xor_module_35_U1 ( .A(p_rand_4), .B(io_b_s1_d2), 
        .Z(n_cini_module_0__xor_module_35_res) );
  XOR2_X1 u_cini_module_0__xor_module_36_U1 ( .A(p_rand_5), .B(io_b_s2_d2), 
        .Z(n_cini_module_0__xor_module_36_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_0_U4 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_0_n1) );
  OR2_X1 u_cini_module_0__majority3_module_0_U3 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_0_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_0_U2 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority3_module_0_n3), .ZN(
        n_cini_module_0__majority3_module_0_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_0_U1 ( .A1(
        n_cini_module_0__majority3_module_0_n1), .A2(
        n_cini_module_0__majority3_module_0_n2), .ZN(
        n_cini_module_0__majority3_module_0_res) );
  DFF_X1 u_cini_module_0__reg_module_5__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_0_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_5_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_3_U1 ( .A1(
        n_cini_module_0__reg_module_5_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_6__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_3_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_6_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_37_U1 ( .A(
        n_cini_module_0__reg_module_4_res), .B(
        n_cini_module_0__reg_module_6_res), .Z(
        n_cini_module_0__xor_module_37_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_1_U4 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_1_n1) );
  OR2_X1 u_cini_module_0__majority3_module_1_U3 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_1_U2 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority3_module_1_n3), .ZN(
        n_cini_module_0__majority3_module_1_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_1_U1 ( .A1(
        n_cini_module_0__majority3_module_1_n1), .A2(
        n_cini_module_0__majority3_module_1_n2), .ZN(
        n_cini_module_0__majority3_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_9__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_9_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_5_U1 ( .A1(
        n_cini_module_0__reg_module_9_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_10__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_5_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_10_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_38_U1 ( .A(
        n_cini_module_0__reg_module_8_res), .B(
        n_cini_module_0__reg_module_10_res), .Z(
        n_cini_module_0__xor_module_38_res) );
  XOR2_X1 u_cini_module_0__xor_module_39_U1 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
        n_cini_module_0__xor_module_38_res), .Z(
        n_cini_module_0__xor_module_39_res) );
  DFF_X1 u_cini_module_0__reg_module_11__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_0), .Q(n_cini_module_0__reg_module_11_res), .QN() );
  INV_X1 u_cini_module_0__not_module_3_U1 ( .A(io_a_s0_d0), .ZN(
        n_cini_module_0__not_module_3_res) );
  AND2_X1 u_cini_module_0__and_module_6_U1 ( .A1(
        n_cini_module_0__not_module_3_res), .A2(
        n_cini_module_0__reg_module_11_res), .ZN(
        n_cini_module_0__and_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_12__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_6_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_12_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_2_U4 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_2_n1) );
  OR2_X1 u_cini_module_0__majority3_module_2_U3 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_2_U2 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority3_module_2_n3), .ZN(
        n_cini_module_0__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_2_U1 ( .A1(
        n_cini_module_0__majority3_module_2_n1), .A2(
        n_cini_module_0__majority3_module_2_n2), .ZN(
        n_cini_module_0__majority3_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_13__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_2_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_13_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_7_U1 ( .A1(
        n_cini_module_0__reg_module_13_res), .A2(io_a_s0_d0), .ZN(
        n_cini_module_0__and_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_14__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_7_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_14_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_40_U1 ( .A(
        n_cini_module_0__reg_module_12_res), .B(
        n_cini_module_0__reg_module_14_res), .Z(
        n_cini_module_0__xor_module_40_res) );
  XOR2_X1 u_cini_module_0__xor_module_41_U1 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_40_res), .Z(
        n_cini_module_0__xor_module_41_res) );
  XOR2_X1 u_cini_module_0__xor_module_42_U1 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
        n_cini_module_0__reg_module_2_res), .Z(io_c_s0_d0) );
  DFF_X1 u_cini_module_0__reg_module_15__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_15_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_8_U1 ( .A1(
        n_cini_module_0__reg_module_15_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_16__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_8_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_16_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_17__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_0), .Q(n_cini_module_0__reg_module_17_res), .QN() );
  INV_X1 u_cini_module_0__not_module_4_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_4_res) );
  AND2_X1 u_cini_module_0__and_module_9_U1 ( .A1(
        n_cini_module_0__not_module_4_res), .A2(
        n_cini_module_0__reg_module_17_res), .ZN(
        n_cini_module_0__and_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_18__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_9_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_18_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_3_U4 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_3_n1) );
  OR2_X1 u_cini_module_0__majority3_module_3_U3 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_3_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_3_U2 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority3_module_3_n3), .ZN(
        n_cini_module_0__majority3_module_3_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_3_U1 ( .A1(
        n_cini_module_0__majority3_module_3_n1), .A2(
        n_cini_module_0__majority3_module_3_n2), .ZN(
        n_cini_module_0__majority3_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_19__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_3_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_19_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_10_U1 ( .A1(
        n_cini_module_0__reg_module_19_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_20__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_10_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_20_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_43_U1 ( .A(
        n_cini_module_0__reg_module_18_res), .B(
        n_cini_module_0__reg_module_20_res), .Z(
        n_cini_module_0__xor_module_43_res) );
  DFF_X1 u_cini_module_0__reg_module_21__hpc_correct_b_s0_d0_reg ( .D(p_rand_3), .CK(clock_0), .Q(n_cini_module_0__reg_module_21_res), .QN() );
  INV_X1 u_cini_module_0__not_module_5_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_5_res) );
  AND2_X1 u_cini_module_0__and_module_11_U1 ( .A1(
        n_cini_module_0__not_module_5_res), .A2(
        n_cini_module_0__reg_module_21_res), .ZN(
        n_cini_module_0__and_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_22__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_11_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_22_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_4_U4 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_4_n1) );
  OR2_X1 u_cini_module_0__majority3_module_4_U3 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_4_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_4_U2 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority3_module_4_n3), .ZN(
        n_cini_module_0__majority3_module_4_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_4_U1 ( .A1(
        n_cini_module_0__majority3_module_4_n1), .A2(
        n_cini_module_0__majority3_module_4_n2), .ZN(
        n_cini_module_0__majority3_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_23__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_4_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_23_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_12_U1 ( .A1(
        n_cini_module_0__reg_module_23_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_24__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_12_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_24_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_44_U1 ( .A(
        n_cini_module_0__reg_module_22_res), .B(
        n_cini_module_0__reg_module_24_res), .Z(
        n_cini_module_0__xor_module_44_res) );
  XOR2_X1 u_cini_module_0__xor_module_45_U1 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_44_res), .Z(
        n_cini_module_0__xor_module_45_res) );
  DFF_X1 u_cini_module_0__reg_module_25__hpc_correct_b_s0_d0_reg ( .D(p_rand_4), .CK(clock_0), .Q(n_cini_module_0__reg_module_25_res), .QN() );
  INV_X1 u_cini_module_0__not_module_6_U1 ( .A(io_a_s1_d0), .ZN(
        n_cini_module_0__not_module_6_res) );
  AND2_X1 u_cini_module_0__and_module_13_U1 ( .A1(
        n_cini_module_0__not_module_6_res), .A2(
        n_cini_module_0__reg_module_25_res), .ZN(
        n_cini_module_0__and_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_26__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_13_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_26_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_5_U4 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_5_n1) );
  OR2_X1 u_cini_module_0__majority3_module_5_U3 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_5_U2 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority3_module_5_n3), .ZN(
        n_cini_module_0__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_5_U1 ( .A1(
        n_cini_module_0__majority3_module_5_n1), .A2(
        n_cini_module_0__majority3_module_5_n2), .ZN(
        n_cini_module_0__majority3_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_27__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_5_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_27_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_14_U1 ( .A1(
        n_cini_module_0__reg_module_27_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_28__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_14_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_28_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_46_U1 ( .A(
        n_cini_module_0__reg_module_26_res), .B(
        n_cini_module_0__reg_module_28_res), .Z(
        n_cini_module_0__xor_module_46_res) );
  XOR2_X1 u_cini_module_0__xor_module_47_U1 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
        n_cini_module_0__xor_module_46_res), .Z(
        n_cini_module_0__xor_module_47_res) );
  XOR2_X1 u_cini_module_0__xor_module_48_U1 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__reg_module_16_res), .Z(io_c_s1_d0) );
  DFF_X1 u_cini_module_0__reg_module_29__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_29_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_15_U1 ( .A1(
        n_cini_module_0__reg_module_29_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_30__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_15_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_30_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_31__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_0), .Q(n_cini_module_0__reg_module_31_res), .QN() );
  INV_X1 u_cini_module_0__not_module_7_U1 ( .A(io_a_s2_d0), .ZN(
        n_cini_module_0__not_module_7_res) );
  AND2_X1 u_cini_module_0__and_module_16_U1 ( .A1(
        n_cini_module_0__not_module_7_res), .A2(
        n_cini_module_0__reg_module_31_res), .ZN(
        n_cini_module_0__and_module_16_res) );
  DFF_X1 u_cini_module_0__reg_module_32__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_16_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_32_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_6_U4 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority3_module_6_n1) );
  OR2_X1 u_cini_module_0__majority3_module_6_U3 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority3_module_6_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_6_U2 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority3_module_6_n3), .ZN(
        n_cini_module_0__majority3_module_6_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_6_U1 ( .A1(
        n_cini_module_0__majority3_module_6_n1), .A2(
        n_cini_module_0__majority3_module_6_n2), .ZN(
        n_cini_module_0__majority3_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_33__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_6_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_33_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_17_U1 ( .A1(
        n_cini_module_0__reg_module_33_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_17_res) );
  DFF_X1 u_cini_module_0__reg_module_34__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_17_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_34_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_49_U1 ( .A(
        n_cini_module_0__reg_module_32_res), .B(
        n_cini_module_0__reg_module_34_res), .Z(
        n_cini_module_0__xor_module_49_res) );
  DFF_X1 u_cini_module_0__reg_module_35__hpc_correct_b_s0_d0_reg ( .D(p_rand_3), .CK(clock_0), .Q(n_cini_module_0__reg_module_35_res), .QN() );
  INV_X1 u_cini_module_0__not_module_8_U1 ( .A(io_a_s2_d0), .ZN(
        n_cini_module_0__not_module_8_res) );
  AND2_X1 u_cini_module_0__and_module_18_U1 ( .A1(
        n_cini_module_0__not_module_8_res), .A2(
        n_cini_module_0__reg_module_35_res), .ZN(
        n_cini_module_0__and_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_36__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_18_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_36_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_7_U4 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority3_module_7_n1) );
  OR2_X1 u_cini_module_0__majority3_module_7_U3 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority3_module_7_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_7_U2 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority3_module_7_n3), .ZN(
        n_cini_module_0__majority3_module_7_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_7_U1 ( .A1(
        n_cini_module_0__majority3_module_7_n1), .A2(
        n_cini_module_0__majority3_module_7_n2), .ZN(
        n_cini_module_0__majority3_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_37__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_7_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_37_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_19_U1 ( .A1(
        n_cini_module_0__reg_module_37_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_19_res) );
  DFF_X1 u_cini_module_0__reg_module_38__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_19_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_38_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_50_U1 ( .A(
        n_cini_module_0__reg_module_36_res), .B(
        n_cini_module_0__reg_module_38_res), .Z(
        n_cini_module_0__xor_module_50_res) );
  XOR2_X1 u_cini_module_0__xor_module_51_U1 ( .A(
        n_cini_module_0__xor_module_49_res), .B(
        n_cini_module_0__xor_module_50_res), .Z(
        n_cini_module_0__xor_module_51_res) );
  DFF_X1 u_cini_module_0__reg_module_39__hpc_correct_b_s0_d0_reg ( .D(p_rand_5), .CK(clock_0), .Q(n_cini_module_0__reg_module_39_res), .QN() );
  INV_X1 u_cini_module_0__not_module_9_U1 ( .A(io_a_s2_d0), .ZN(
        n_cini_module_0__not_module_9_res) );
  AND2_X1 u_cini_module_0__and_module_20_U1 ( .A1(
        n_cini_module_0__not_module_9_res), .A2(
        n_cini_module_0__reg_module_39_res), .ZN(
        n_cini_module_0__and_module_20_res) );
  DFF_X1 u_cini_module_0__reg_module_40__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_20_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_40_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_8_U4 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority3_module_8_n1) );
  OR2_X1 u_cini_module_0__majority3_module_8_U3 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority3_module_8_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_8_U2 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority3_module_8_n3), .ZN(
        n_cini_module_0__majority3_module_8_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_8_U1 ( .A1(
        n_cini_module_0__majority3_module_8_n1), .A2(
        n_cini_module_0__majority3_module_8_n2), .ZN(
        n_cini_module_0__majority3_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_41__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_8_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_41_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_21_U1 ( .A1(
        n_cini_module_0__reg_module_41_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_21_res) );
  DFF_X1 u_cini_module_0__reg_module_42__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_21_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_42_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_52_U1 ( .A(
        n_cini_module_0__reg_module_40_res), .B(
        n_cini_module_0__reg_module_42_res), .Z(
        n_cini_module_0__xor_module_52_res) );
  XOR2_X1 u_cini_module_0__xor_module_53_U1 ( .A(
        n_cini_module_0__xor_module_51_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__xor_module_53_res) );
  XOR2_X1 u_cini_module_0__xor_module_54_U1 ( .A(
        n_cini_module_0__xor_module_53_res), .B(
        n_cini_module_0__reg_module_30_res), .Z(io_c_s2_d0) );
  DFF_X1 u_cini_module_0__reg_module_43__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d0), .CK(clock_0), .Q(n_cini_module_0__reg_module_43_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_22_U1 ( .A1(
        n_cini_module_0__reg_module_43_res), .A2(io_a_s3_d0), .ZN(
        n_cini_module_0__and_module_22_res) );
  DFF_X1 u_cini_module_0__reg_module_44__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_22_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_44_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_45__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_0), .Q(n_cini_module_0__reg_module_45_res), .QN() );
  INV_X1 u_cini_module_0__not_module_10_U1 ( .A(io_a_s3_d0), .ZN(
        n_cini_module_0__not_module_10_res) );
  AND2_X1 u_cini_module_0__and_module_23_U1 ( .A1(
        n_cini_module_0__not_module_10_res), .A2(
        n_cini_module_0__reg_module_45_res), .ZN(
        n_cini_module_0__and_module_23_res) );
  DFF_X1 u_cini_module_0__reg_module_46__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_23_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_46_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_9_U4 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority3_module_9_n1) );
  OR2_X1 u_cini_module_0__majority3_module_9_U3 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority3_module_9_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_9_U2 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority3_module_9_n3), .ZN(
        n_cini_module_0__majority3_module_9_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_9_U1 ( .A1(
        n_cini_module_0__majority3_module_9_n1), .A2(
        n_cini_module_0__majority3_module_9_n2), .ZN(
        n_cini_module_0__majority3_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_47__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_9_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_47_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_24_U1 ( .A1(
        n_cini_module_0__reg_module_47_res), .A2(io_a_s3_d0), .ZN(
        n_cini_module_0__and_module_24_res) );
  DFF_X1 u_cini_module_0__reg_module_48__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_24_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_48_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_55_U1 ( .A(
        n_cini_module_0__reg_module_46_res), .B(
        n_cini_module_0__reg_module_48_res), .Z(
        n_cini_module_0__xor_module_55_res) );
  DFF_X1 u_cini_module_0__reg_module_49__hpc_correct_b_s0_d0_reg ( .D(p_rand_4), .CK(clock_0), .Q(n_cini_module_0__reg_module_49_res), .QN() );
  INV_X1 u_cini_module_0__not_module_11_U1 ( .A(io_a_s3_d0), .ZN(
        n_cini_module_0__not_module_11_res) );
  AND2_X1 u_cini_module_0__and_module_25_U1 ( .A1(
        n_cini_module_0__not_module_11_res), .A2(
        n_cini_module_0__reg_module_49_res), .ZN(
        n_cini_module_0__and_module_25_res) );
  DFF_X1 u_cini_module_0__reg_module_50__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_25_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_50_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_10_U4 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority3_module_10_n1) );
  OR2_X1 u_cini_module_0__majority3_module_10_U3 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority3_module_10_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_10_U2 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority3_module_10_n3), .ZN(
        n_cini_module_0__majority3_module_10_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_10_U1 ( .A1(
        n_cini_module_0__majority3_module_10_n1), .A2(
        n_cini_module_0__majority3_module_10_n2), .ZN(
        n_cini_module_0__majority3_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_51__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_10_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_51_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_26_U1 ( .A1(
        n_cini_module_0__reg_module_51_res), .A2(io_a_s3_d0), .ZN(
        n_cini_module_0__and_module_26_res) );
  DFF_X1 u_cini_module_0__reg_module_52__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_26_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_52_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_56_U1 ( .A(
        n_cini_module_0__reg_module_50_res), .B(
        n_cini_module_0__reg_module_52_res), .Z(
        n_cini_module_0__xor_module_56_res) );
  XOR2_X1 u_cini_module_0__xor_module_57_U1 ( .A(
        n_cini_module_0__xor_module_55_res), .B(
        n_cini_module_0__xor_module_56_res), .Z(
        n_cini_module_0__xor_module_57_res) );
  DFF_X1 u_cini_module_0__reg_module_53__hpc_correct_b_s0_d0_reg ( .D(p_rand_5), .CK(clock_0), .Q(n_cini_module_0__reg_module_53_res), .QN() );
  INV_X1 u_cini_module_0__not_module_12_U1 ( .A(io_a_s3_d0), .ZN(
        n_cini_module_0__not_module_12_res) );
  AND2_X1 u_cini_module_0__and_module_27_U1 ( .A1(
        n_cini_module_0__not_module_12_res), .A2(
        n_cini_module_0__reg_module_53_res), .ZN(
        n_cini_module_0__and_module_27_res) );
  DFF_X1 u_cini_module_0__reg_module_54__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_27_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_54_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_11_U4 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority3_module_11_n1) );
  OR2_X1 u_cini_module_0__majority3_module_11_U3 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority3_module_11_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_11_U2 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority3_module_11_n3), .ZN(
        n_cini_module_0__majority3_module_11_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_11_U1 ( .A1(
        n_cini_module_0__majority3_module_11_n1), .A2(
        n_cini_module_0__majority3_module_11_n2), .ZN(
        n_cini_module_0__majority3_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_55__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_11_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_55_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_28_U1 ( .A1(
        n_cini_module_0__reg_module_55_res), .A2(io_a_s3_d0), .ZN(
        n_cini_module_0__and_module_28_res) );
  DFF_X1 u_cini_module_0__reg_module_56__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_28_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_56_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_58_U1 ( .A(
        n_cini_module_0__reg_module_54_res), .B(
        n_cini_module_0__reg_module_56_res), .Z(
        n_cini_module_0__xor_module_58_res) );
  XOR2_X1 u_cini_module_0__xor_module_59_U1 ( .A(
        n_cini_module_0__xor_module_57_res), .B(
        n_cini_module_0__xor_module_58_res), .Z(
        n_cini_module_0__xor_module_59_res) );
  XOR2_X1 u_cini_module_0__xor_module_60_U1 ( .A(
        n_cini_module_0__xor_module_59_res), .B(
        n_cini_module_0__reg_module_44_res), .Z(io_c_s3_d0) );
  DFF_X1 u_cini_module_0__reg_module_57__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_57_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_29_U1 ( .A1(
        n_cini_module_0__reg_module_57_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_29_res) );
  DFF_X1 u_cini_module_0__reg_module_58__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_29_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_58_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_59__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_1), .Q(n_cini_module_0__reg_module_59_res), .QN() );
  INV_X1 u_cini_module_0__not_module_13_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_13_res) );
  AND2_X1 u_cini_module_0__and_module_30_U1 ( .A1(
        n_cini_module_0__not_module_13_res), .A2(
        n_cini_module_0__reg_module_59_res), .ZN(
        n_cini_module_0__and_module_30_res) );
  DFF_X1 u_cini_module_0__reg_module_60__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_30_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_60_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_12_U4 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_12_n1) );
  OR2_X1 u_cini_module_0__majority3_module_12_U3 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_12_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_12_U2 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority3_module_12_n3), .ZN(
        n_cini_module_0__majority3_module_12_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_12_U1 ( .A1(
        n_cini_module_0__majority3_module_12_n1), .A2(
        n_cini_module_0__majority3_module_12_n2), .ZN(
        n_cini_module_0__majority3_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_61__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_12_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_61_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_31_U1 ( .A1(
        n_cini_module_0__reg_module_61_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_31_res) );
  DFF_X1 u_cini_module_0__reg_module_62__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_31_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_62_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_61_U1 ( .A(
        n_cini_module_0__reg_module_60_res), .B(
        n_cini_module_0__reg_module_62_res), .Z(
        n_cini_module_0__xor_module_61_res) );
  DFF_X1 u_cini_module_0__reg_module_63__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_1), .Q(n_cini_module_0__reg_module_63_res), .QN() );
  INV_X1 u_cini_module_0__not_module_14_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_14_res) );
  AND2_X1 u_cini_module_0__and_module_32_U1 ( .A1(
        n_cini_module_0__not_module_14_res), .A2(
        n_cini_module_0__reg_module_63_res), .ZN(
        n_cini_module_0__and_module_32_res) );
  DFF_X1 u_cini_module_0__reg_module_64__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_32_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_64_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_13_U4 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_13_n1) );
  OR2_X1 u_cini_module_0__majority3_module_13_U3 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_13_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_13_U2 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority3_module_13_n3), .ZN(
        n_cini_module_0__majority3_module_13_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_13_U1 ( .A1(
        n_cini_module_0__majority3_module_13_n1), .A2(
        n_cini_module_0__majority3_module_13_n2), .ZN(
        n_cini_module_0__majority3_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_65__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_13_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_65_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_33_U1 ( .A1(
        n_cini_module_0__reg_module_65_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_33_res) );
  DFF_X1 u_cini_module_0__reg_module_66__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_33_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_66_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_62_U1 ( .A(
        n_cini_module_0__reg_module_64_res), .B(
        n_cini_module_0__reg_module_66_res), .Z(
        n_cini_module_0__xor_module_62_res) );
  XOR2_X1 u_cini_module_0__xor_module_63_U1 ( .A(
        n_cini_module_0__xor_module_61_res), .B(
        n_cini_module_0__xor_module_62_res), .Z(
        n_cini_module_0__xor_module_63_res) );
  DFF_X1 u_cini_module_0__reg_module_67__hpc_correct_b_s0_d0_reg ( .D(p_rand_2), .CK(clock_1), .Q(n_cini_module_0__reg_module_67_res), .QN() );
  INV_X1 u_cini_module_0__not_module_15_U1 ( .A(io_a_s0_d1), .ZN(
        n_cini_module_0__not_module_15_res) );
  AND2_X1 u_cini_module_0__and_module_34_U1 ( .A1(
        n_cini_module_0__not_module_15_res), .A2(
        n_cini_module_0__reg_module_67_res), .ZN(
        n_cini_module_0__and_module_34_res) );
  DFF_X1 u_cini_module_0__reg_module_68__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_34_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_68_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_14_U4 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_14_n1) );
  OR2_X1 u_cini_module_0__majority3_module_14_U3 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_14_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_14_U2 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority3_module_14_n3), .ZN(
        n_cini_module_0__majority3_module_14_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_14_U1 ( .A1(
        n_cini_module_0__majority3_module_14_n1), .A2(
        n_cini_module_0__majority3_module_14_n2), .ZN(
        n_cini_module_0__majority3_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_69__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_14_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_69_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_35_U1 ( .A1(
        n_cini_module_0__reg_module_69_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_35_res) );
  DFF_X1 u_cini_module_0__reg_module_70__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_35_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_70_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_64_U1 ( .A(
        n_cini_module_0__reg_module_68_res), .B(
        n_cini_module_0__reg_module_70_res), .Z(
        n_cini_module_0__xor_module_64_res) );
  XOR2_X1 u_cini_module_0__xor_module_65_U1 ( .A(
        n_cini_module_0__xor_module_63_res), .B(
        n_cini_module_0__xor_module_64_res), .Z(
        n_cini_module_0__xor_module_65_res) );
  XOR2_X1 u_cini_module_0__xor_module_66_U1 ( .A(
        n_cini_module_0__xor_module_65_res), .B(
        n_cini_module_0__reg_module_58_res), .Z(io_c_s0_d1) );
  DFF_X1 u_cini_module_0__reg_module_71__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_71_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_36_U1 ( .A1(
        n_cini_module_0__reg_module_71_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_36_res) );
  DFF_X1 u_cini_module_0__reg_module_72__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_36_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_72_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_73__hpc_correct_b_s0_d0_reg ( .D(p_rand_0), .CK(clock_1), .Q(n_cini_module_0__reg_module_73_res), .QN() );
  INV_X1 u_cini_module_0__not_module_16_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_16_res) );
  AND2_X1 u_cini_module_0__and_module_37_U1 ( .A1(
        n_cini_module_0__not_module_16_res), .A2(
        n_cini_module_0__reg_module_73_res), .ZN(
        n_cini_module_0__and_module_37_res) );
  DFF_X1 u_cini_module_0__reg_module_74__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_37_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_74_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_15_U4 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_15_n1) );
  OR2_X1 u_cini_module_0__majority3_module_15_U3 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_15_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_15_U2 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority3_module_15_n3), .ZN(
        n_cini_module_0__majority3_module_15_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_15_U1 ( .A1(
        n_cini_module_0__majority3_module_15_n1), .A2(
        n_cini_module_0__majority3_module_15_n2), .ZN(
        n_cini_module_0__majority3_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_75__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_15_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_75_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_38_U1 ( .A1(
        n_cini_module_0__reg_module_75_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_38_res) );
  DFF_X1 u_cini_module_0__reg_module_76__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_38_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_76_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_67_U1 ( .A(
        n_cini_module_0__reg_module_74_res), .B(
        n_cini_module_0__reg_module_76_res), .Z(
        n_cini_module_0__xor_module_67_res) );
  DFF_X1 u_cini_module_0__reg_module_77__hpc_correct_b_s0_d0_reg ( .D(p_rand_3), .CK(clock_1), .Q(n_cini_module_0__reg_module_77_res), .QN() );
  INV_X1 u_cini_module_0__not_module_17_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_17_res) );
  AND2_X1 u_cini_module_0__and_module_39_U1 ( .A1(
        n_cini_module_0__not_module_17_res), .A2(
        n_cini_module_0__reg_module_77_res), .ZN(
        n_cini_module_0__and_module_39_res) );
  DFF_X1 u_cini_module_0__reg_module_78__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_39_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_78_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_16_U4 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_16_n1) );
  OR2_X1 u_cini_module_0__majority3_module_16_U3 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_16_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_16_U2 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority3_module_16_n3), .ZN(
        n_cini_module_0__majority3_module_16_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_16_U1 ( .A1(
        n_cini_module_0__majority3_module_16_n1), .A2(
        n_cini_module_0__majority3_module_16_n2), .ZN(
        n_cini_module_0__majority3_module_16_res) );
  DFF_X1 u_cini_module_0__reg_module_79__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_16_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_79_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_40_U1 ( .A1(
        n_cini_module_0__reg_module_79_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_40_res) );
  DFF_X1 u_cini_module_0__reg_module_80__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_40_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_80_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_68_U1 ( .A(
        n_cini_module_0__reg_module_78_res), .B(
        n_cini_module_0__reg_module_80_res), .Z(
        n_cini_module_0__xor_module_68_res) );
  XOR2_X1 u_cini_module_0__xor_module_69_U1 ( .A(
        n_cini_module_0__xor_module_67_res), .B(
        n_cini_module_0__xor_module_68_res), .Z(
        n_cini_module_0__xor_module_69_res) );
  DFF_X1 u_cini_module_0__reg_module_81__hpc_correct_b_s0_d0_reg ( .D(p_rand_4), .CK(clock_1), .Q(n_cini_module_0__reg_module_81_res), .QN() );
  INV_X1 u_cini_module_0__not_module_18_U1 ( .A(io_a_s1_d1), .ZN(
        n_cini_module_0__not_module_18_res) );
  AND2_X1 u_cini_module_0__and_module_41_U1 ( .A1(
        n_cini_module_0__not_module_18_res), .A2(
        n_cini_module_0__reg_module_81_res), .ZN(
        n_cini_module_0__and_module_41_res) );
  DFF_X1 u_cini_module_0__reg_module_82__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_41_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_82_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_17_U4 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_17_n1) );
  OR2_X1 u_cini_module_0__majority3_module_17_U3 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_17_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_17_U2 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority3_module_17_n3), .ZN(
        n_cini_module_0__majority3_module_17_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_17_U1 ( .A1(
        n_cini_module_0__majority3_module_17_n1), .A2(
        n_cini_module_0__majority3_module_17_n2), .ZN(
        n_cini_module_0__majority3_module_17_res) );
  DFF_X1 u_cini_module_0__reg_module_83__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_17_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_83_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_42_U1 ( .A1(
        n_cini_module_0__reg_module_83_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_42_res) );
  DFF_X1 u_cini_module_0__reg_module_84__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_42_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_84_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_70_U1 ( .A(
        n_cini_module_0__reg_module_82_res), .B(
        n_cini_module_0__reg_module_84_res), .Z(
        n_cini_module_0__xor_module_70_res) );
  XOR2_X1 u_cini_module_0__xor_module_71_U1 ( .A(
        n_cini_module_0__xor_module_69_res), .B(
        n_cini_module_0__xor_module_70_res), .Z(
        n_cini_module_0__xor_module_71_res) );
  XOR2_X1 u_cini_module_0__xor_module_72_U1 ( .A(
        n_cini_module_0__xor_module_71_res), .B(
        n_cini_module_0__reg_module_72_res), .Z(io_c_s1_d1) );
  DFF_X1 u_cini_module_0__reg_module_85__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_85_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_43_U1 ( .A1(
        n_cini_module_0__reg_module_85_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_43_res) );
  DFF_X1 u_cini_module_0__reg_module_86__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_43_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_86_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_87__hpc_correct_b_s0_d0_reg ( .D(p_rand_1), .CK(clock_1), .Q(n_cini_module_0__reg_module_87_res), .QN() );
  INV_X1 u_cini_module_0__not_module_19_U1 ( .A(io_a_s2_d1), .ZN(
        n_cini_module_0__not_module_19_res) );
  AND2_X1 u_cini_module_0__and_module_44_U1 ( .A1(
        n_cini_module_0__not_module_19_res), .A2(
        n_cini_module_0__reg_module_87_res), .ZN(
        n_cini_module_0__and_module_44_res) );
  DFF_X1 u_cini_module_0__reg_module_88__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_44_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_88_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_18_U4 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority3_module_18_n1) );
  OR2_X1 u_cini_module_0__majority3_module_18_U3 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority3_module_18_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_18_U2 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority3_module_18_n3), .ZN(
        n_cini_module_0__majority3_module_18_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_18_U1 ( .A1(
        n_cini_module_0__majority3_module_18_n1), .A2(
        n_cini_module_0__majority3_module_18_n2), .ZN(
        n_cini_module_0__majority3_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_89__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_18_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_89_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_45_U1 ( .A1(
        n_cini_module_0__reg_module_89_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_45_res) );
  DFF_X1 u_cini_module_0__reg_module_90__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_45_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_90_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_73_U1 ( .A(
        n_cini_module_0__reg_module_88_res), .B(
        n_cini_module_0__reg_module_90_res), .Z(
        n_cini_module_0__xor_module_73_res) );
  DFF_X1 u_cini_module_0__reg_module_91__hpc_correct_b_s0_d0_reg ( .D(p_rand_3), .CK(clock_1), .Q(n_cini_module_0__reg_module_91_res), .QN() );
  INV_X1 u_cini_module_0__not_module_20_U1 ( .A(io_a_s2_d1), .ZN(
        n_cini_module_0__not_module_20_res) );
  AND2_X1 u_cini_module_0__and_module_46_U1 ( .A1(
        n_cini_module_0__not_module_20_res), .A2(
        n_cini_module_0__reg_module_91_res), .ZN(
        n_cini_module_0__and_module_46_res) );
  DFF_X1 u_cini_module_0__reg_module_92__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_46_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_92_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_19_U4 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority3_module_19_n1) );
  OR2_X1 u_cini_module_0__majority3_module_19_U3 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority3_module_19_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_19_U2 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority3_module_19_n3), .ZN(
        n_cini_module_0__majority3_module_19_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_19_U1 ( .A1(
        n_cini_module_0__majority3_module_19_n1), .A2(
        n_cini_module_0__majority3_module_19_n2), .ZN(
        n_cini_module_0__majority3_module_19_res) );
  DFF_X1 u_cini_module_0__reg_module_93__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_19_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_93_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_47_U1 ( .A1(
        n_cini_module_0__reg_module_93_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_47_res) );
  DFF_X1 u_cini_module_0__reg_module_94__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_47_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_94_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_74_U1 ( .A(
        n_cini_module_0__reg_module_92_res), .B(
        n_cini_module_0__reg_module_94_res), .Z(
        n_cini_module_0__xor_module_74_res) );
  XOR2_X1 u_cini_module_0__xor_module_75_U1 ( .A(
        n_cini_module_0__xor_module_73_res), .B(
        n_cini_module_0__xor_module_74_res), .Z(
        n_cini_module_0__xor_module_75_res) );
  DFF_X1 u_cini_module_0__reg_module_95__hpc_correct_b_s0_d0_reg ( .D(p_rand_5), .CK(clock_1), .Q(n_cini_module_0__reg_module_95_res), .QN() );
  INV_X1 u_cini_module_0__not_module_21_U1 ( .A(io_a_s2_d1), .ZN(
        n_cini_module_0__not_module_21_res) );
  AND2_X1 u_cini_module_0__and_module_48_U1 ( .A1(
        n_cini_module_0__not_module_21_res), .A2(
        n_cini_module_0__reg_module_95_res), .ZN(
        n_cini_module_0__and_module_48_res) );
  DFF_X1 u_cini_module_0__reg_module_96__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_48_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_96_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_20_U4 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority3_module_20_n1) );
  OR2_X1 u_cini_module_0__majority3_module_20_U3 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority3_module_20_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_20_U2 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority3_module_20_n3), .ZN(
        n_cini_module_0__majority3_module_20_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_20_U1 ( .A1(
        n_cini_module_0__majority3_module_20_n1), .A2(
        n_cini_module_0__majority3_module_20_n2), .ZN(
        n_cini_module_0__majority3_module_20_res) );
  DFF_X1 u_cini_module_0__reg_module_97__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_20_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_97_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_49_U1 ( .A1(
        n_cini_module_0__reg_module_97_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_49_res) );
  DFF_X1 u_cini_module_0__reg_module_98__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_49_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_98_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_76_U1 ( .A(
        n_cini_module_0__reg_module_96_res), .B(
        n_cini_module_0__reg_module_98_res), .Z(
        n_cini_module_0__xor_module_76_res) );
  XOR2_X1 u_cini_module_0__xor_module_77_U1 ( .A(
        n_cini_module_0__xor_module_75_res), .B(
        n_cini_module_0__xor_module_76_res), .Z(
        n_cini_module_0__xor_module_77_res) );
  XOR2_X1 u_cini_module_0__xor_module_78_U1 ( .A(
        n_cini_module_0__xor_module_77_res), .B(
        n_cini_module_0__reg_module_86_res), .Z(io_c_s2_d1) );
  DFF_X1 u_cini_module_0__reg_module_99__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d1), .CK(clock_1), .Q(n_cini_module_0__reg_module_99_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_50_U1 ( .A1(
        n_cini_module_0__reg_module_99_res), .A2(io_a_s3_d1), .ZN(
        n_cini_module_0__and_module_50_res) );
  DFF_X1 u_cini_module_0__reg_module_100__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_50_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_100_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_101__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_1), .Q(n_cini_module_0__reg_module_101_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_22_U1 ( .A(io_a_s3_d1), .ZN(
        n_cini_module_0__not_module_22_res) );
  AND2_X1 u_cini_module_0__and_module_51_U1 ( .A1(
        n_cini_module_0__not_module_22_res), .A2(
        n_cini_module_0__reg_module_101_res), .ZN(
        n_cini_module_0__and_module_51_res) );
  DFF_X1 u_cini_module_0__reg_module_102__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_51_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_102_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_21_U4 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority3_module_21_n1) );
  OR2_X1 u_cini_module_0__majority3_module_21_U3 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority3_module_21_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_21_U2 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority3_module_21_n3), .ZN(
        n_cini_module_0__majority3_module_21_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_21_U1 ( .A1(
        n_cini_module_0__majority3_module_21_n1), .A2(
        n_cini_module_0__majority3_module_21_n2), .ZN(
        n_cini_module_0__majority3_module_21_res) );
  DFF_X1 u_cini_module_0__reg_module_103__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_21_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_103_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_52_U1 ( .A1(
        n_cini_module_0__reg_module_103_res), .A2(io_a_s3_d1), .ZN(
        n_cini_module_0__and_module_52_res) );
  DFF_X1 u_cini_module_0__reg_module_104__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_52_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_104_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_79_U1 ( .A(
        n_cini_module_0__reg_module_102_res), .B(
        n_cini_module_0__reg_module_104_res), .Z(
        n_cini_module_0__xor_module_79_res) );
  DFF_X1 u_cini_module_0__reg_module_105__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_1), .Q(n_cini_module_0__reg_module_105_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_23_U1 ( .A(io_a_s3_d1), .ZN(
        n_cini_module_0__not_module_23_res) );
  AND2_X1 u_cini_module_0__and_module_53_U1 ( .A1(
        n_cini_module_0__not_module_23_res), .A2(
        n_cini_module_0__reg_module_105_res), .ZN(
        n_cini_module_0__and_module_53_res) );
  DFF_X1 u_cini_module_0__reg_module_106__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_53_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_106_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_22_U4 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority3_module_22_n1) );
  OR2_X1 u_cini_module_0__majority3_module_22_U3 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority3_module_22_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_22_U2 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority3_module_22_n3), .ZN(
        n_cini_module_0__majority3_module_22_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_22_U1 ( .A1(
        n_cini_module_0__majority3_module_22_n1), .A2(
        n_cini_module_0__majority3_module_22_n2), .ZN(
        n_cini_module_0__majority3_module_22_res) );
  DFF_X1 u_cini_module_0__reg_module_107__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_22_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_107_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_54_U1 ( .A1(
        n_cini_module_0__reg_module_107_res), .A2(io_a_s3_d1), .ZN(
        n_cini_module_0__and_module_54_res) );
  DFF_X1 u_cini_module_0__reg_module_108__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_54_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_108_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_80_U1 ( .A(
        n_cini_module_0__reg_module_106_res), .B(
        n_cini_module_0__reg_module_108_res), .Z(
        n_cini_module_0__xor_module_80_res) );
  XOR2_X1 u_cini_module_0__xor_module_81_U1 ( .A(
        n_cini_module_0__xor_module_79_res), .B(
        n_cini_module_0__xor_module_80_res), .Z(
        n_cini_module_0__xor_module_81_res) );
  DFF_X1 u_cini_module_0__reg_module_109__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_1), .Q(n_cini_module_0__reg_module_109_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_24_U1 ( .A(io_a_s3_d1), .ZN(
        n_cini_module_0__not_module_24_res) );
  AND2_X1 u_cini_module_0__and_module_55_U1 ( .A1(
        n_cini_module_0__not_module_24_res), .A2(
        n_cini_module_0__reg_module_109_res), .ZN(
        n_cini_module_0__and_module_55_res) );
  DFF_X1 u_cini_module_0__reg_module_110__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_55_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_110_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_23_U4 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority3_module_23_n1) );
  OR2_X1 u_cini_module_0__majority3_module_23_U3 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority3_module_23_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_23_U2 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority3_module_23_n3), .ZN(
        n_cini_module_0__majority3_module_23_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_23_U1 ( .A1(
        n_cini_module_0__majority3_module_23_n1), .A2(
        n_cini_module_0__majority3_module_23_n2), .ZN(
        n_cini_module_0__majority3_module_23_res) );
  DFF_X1 u_cini_module_0__reg_module_111__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_23_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_111_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_56_U1 ( .A1(
        n_cini_module_0__reg_module_111_res), .A2(io_a_s3_d1), .ZN(
        n_cini_module_0__and_module_56_res) );
  DFF_X1 u_cini_module_0__reg_module_112__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_56_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_112_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_82_U1 ( .A(
        n_cini_module_0__reg_module_110_res), .B(
        n_cini_module_0__reg_module_112_res), .Z(
        n_cini_module_0__xor_module_82_res) );
  XOR2_X1 u_cini_module_0__xor_module_83_U1 ( .A(
        n_cini_module_0__xor_module_81_res), .B(
        n_cini_module_0__xor_module_82_res), .Z(
        n_cini_module_0__xor_module_83_res) );
  XOR2_X1 u_cini_module_0__xor_module_84_U1 ( .A(
        n_cini_module_0__xor_module_83_res), .B(
        n_cini_module_0__reg_module_100_res), .Z(io_c_s3_d1) );
  DFF_X1 u_cini_module_0__reg_module_113__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s0_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_113_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_57_U1 ( .A1(
        n_cini_module_0__reg_module_113_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_57_res) );
  DFF_X1 u_cini_module_0__reg_module_114__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_57_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_114_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_115__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_2), .Q(n_cini_module_0__reg_module_115_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_25_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_25_res) );
  AND2_X1 u_cini_module_0__and_module_58_U1 ( .A1(
        n_cini_module_0__not_module_25_res), .A2(
        n_cini_module_0__reg_module_115_res), .ZN(
        n_cini_module_0__and_module_58_res) );
  DFF_X1 u_cini_module_0__reg_module_116__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_58_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_116_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_24_U4 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_24_n1) );
  OR2_X1 u_cini_module_0__majority3_module_24_U3 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_24_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_24_U2 ( .A1(
        n_cini_module_0__xor_module_25_res), .A2(
        n_cini_module_0__majority3_module_24_n3), .ZN(
        n_cini_module_0__majority3_module_24_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_24_U1 ( .A1(
        n_cini_module_0__majority3_module_24_n1), .A2(
        n_cini_module_0__majority3_module_24_n2), .ZN(
        n_cini_module_0__majority3_module_24_res) );
  DFF_X1 u_cini_module_0__reg_module_117__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_24_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_117_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_59_U1 ( .A1(
        n_cini_module_0__reg_module_117_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_59_res) );
  DFF_X1 u_cini_module_0__reg_module_118__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_59_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_118_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_85_U1 ( .A(
        n_cini_module_0__reg_module_116_res), .B(
        n_cini_module_0__reg_module_118_res), .Z(
        n_cini_module_0__xor_module_85_res) );
  DFF_X1 u_cini_module_0__reg_module_119__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_2), .Q(n_cini_module_0__reg_module_119_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_26_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_26_res) );
  AND2_X1 u_cini_module_0__and_module_60_U1 ( .A1(
        n_cini_module_0__not_module_26_res), .A2(
        n_cini_module_0__reg_module_119_res), .ZN(
        n_cini_module_0__and_module_60_res) );
  DFF_X1 u_cini_module_0__reg_module_120__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_60_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_120_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_25_U4 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_25_n1) );
  OR2_X1 u_cini_module_0__majority3_module_25_U3 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_25_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_25_U2 ( .A1(
        n_cini_module_0__xor_module_26_res), .A2(
        n_cini_module_0__majority3_module_25_n3), .ZN(
        n_cini_module_0__majority3_module_25_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_25_U1 ( .A1(
        n_cini_module_0__majority3_module_25_n1), .A2(
        n_cini_module_0__majority3_module_25_n2), .ZN(
        n_cini_module_0__majority3_module_25_res) );
  DFF_X1 u_cini_module_0__reg_module_121__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_25_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_121_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_61_U1 ( .A1(
        n_cini_module_0__reg_module_121_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_61_res) );
  DFF_X1 u_cini_module_0__reg_module_122__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_61_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_122_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_86_U1 ( .A(
        n_cini_module_0__reg_module_120_res), .B(
        n_cini_module_0__reg_module_122_res), .Z(
        n_cini_module_0__xor_module_86_res) );
  XOR2_X1 u_cini_module_0__xor_module_87_U1 ( .A(
        n_cini_module_0__xor_module_85_res), .B(
        n_cini_module_0__xor_module_86_res), .Z(
        n_cini_module_0__xor_module_87_res) );
  DFF_X1 u_cini_module_0__reg_module_123__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_2), .Q(n_cini_module_0__reg_module_123_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_27_U1 ( .A(io_a_s0_d2), .ZN(
        n_cini_module_0__not_module_27_res) );
  AND2_X1 u_cini_module_0__and_module_62_U1 ( .A1(
        n_cini_module_0__not_module_27_res), .A2(
        n_cini_module_0__reg_module_123_res), .ZN(
        n_cini_module_0__and_module_62_res) );
  DFF_X1 u_cini_module_0__reg_module_124__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_62_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_124_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_26_U4 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_26_n1) );
  OR2_X1 u_cini_module_0__majority3_module_26_U3 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_26_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_26_U2 ( .A1(
        n_cini_module_0__xor_module_27_res), .A2(
        n_cini_module_0__majority3_module_26_n3), .ZN(
        n_cini_module_0__majority3_module_26_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_26_U1 ( .A1(
        n_cini_module_0__majority3_module_26_n1), .A2(
        n_cini_module_0__majority3_module_26_n2), .ZN(
        n_cini_module_0__majority3_module_26_res) );
  DFF_X1 u_cini_module_0__reg_module_125__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_26_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_125_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_63_U1 ( .A1(
        n_cini_module_0__reg_module_125_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_63_res) );
  DFF_X1 u_cini_module_0__reg_module_126__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_63_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_126_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_88_U1 ( .A(
        n_cini_module_0__reg_module_124_res), .B(
        n_cini_module_0__reg_module_126_res), .Z(
        n_cini_module_0__xor_module_88_res) );
  XOR2_X1 u_cini_module_0__xor_module_89_U1 ( .A(
        n_cini_module_0__xor_module_87_res), .B(
        n_cini_module_0__xor_module_88_res), .Z(
        n_cini_module_0__xor_module_89_res) );
  XOR2_X1 u_cini_module_0__xor_module_90_U1 ( .A(
        n_cini_module_0__xor_module_89_res), .B(
        n_cini_module_0__reg_module_114_res), .Z(io_c_s0_d2) );
  DFF_X1 u_cini_module_0__reg_module_127__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s1_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_127_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_64_U1 ( .A1(
        n_cini_module_0__reg_module_127_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_64_res) );
  DFF_X1 u_cini_module_0__reg_module_128__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_64_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_128_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_129__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_0), .CK(clock_2), .Q(n_cini_module_0__reg_module_129_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_28_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_28_res) );
  AND2_X1 u_cini_module_0__and_module_65_U1 ( .A1(
        n_cini_module_0__not_module_28_res), .A2(
        n_cini_module_0__reg_module_129_res), .ZN(
        n_cini_module_0__and_module_65_res) );
  DFF_X1 u_cini_module_0__reg_module_130__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_65_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_130_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_27_U4 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_27_n1) );
  OR2_X1 u_cini_module_0__majority3_module_27_U3 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_27_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_27_U2 ( .A1(
        n_cini_module_0__xor_module_28_res), .A2(
        n_cini_module_0__majority3_module_27_n3), .ZN(
        n_cini_module_0__majority3_module_27_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_27_U1 ( .A1(
        n_cini_module_0__majority3_module_27_n1), .A2(
        n_cini_module_0__majority3_module_27_n2), .ZN(
        n_cini_module_0__majority3_module_27_res) );
  DFF_X1 u_cini_module_0__reg_module_131__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_27_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_131_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_66_U1 ( .A1(
        n_cini_module_0__reg_module_131_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_66_res) );
  DFF_X1 u_cini_module_0__reg_module_132__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_66_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_132_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_91_U1 ( .A(
        n_cini_module_0__reg_module_130_res), .B(
        n_cini_module_0__reg_module_132_res), .Z(
        n_cini_module_0__xor_module_91_res) );
  DFF_X1 u_cini_module_0__reg_module_133__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_2), .Q(n_cini_module_0__reg_module_133_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_29_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_29_res) );
  AND2_X1 u_cini_module_0__and_module_67_U1 ( .A1(
        n_cini_module_0__not_module_29_res), .A2(
        n_cini_module_0__reg_module_133_res), .ZN(
        n_cini_module_0__and_module_67_res) );
  DFF_X1 u_cini_module_0__reg_module_134__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_67_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_134_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_28_U4 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_28_n1) );
  OR2_X1 u_cini_module_0__majority3_module_28_U3 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_28_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_28_U2 ( .A1(
        n_cini_module_0__xor_module_29_res), .A2(
        n_cini_module_0__majority3_module_28_n3), .ZN(
        n_cini_module_0__majority3_module_28_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_28_U1 ( .A1(
        n_cini_module_0__majority3_module_28_n1), .A2(
        n_cini_module_0__majority3_module_28_n2), .ZN(
        n_cini_module_0__majority3_module_28_res) );
  DFF_X1 u_cini_module_0__reg_module_135__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_28_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_135_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_68_U1 ( .A1(
        n_cini_module_0__reg_module_135_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_68_res) );
  DFF_X1 u_cini_module_0__reg_module_136__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_68_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_136_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_92_U1 ( .A(
        n_cini_module_0__reg_module_134_res), .B(
        n_cini_module_0__reg_module_136_res), .Z(
        n_cini_module_0__xor_module_92_res) );
  XOR2_X1 u_cini_module_0__xor_module_93_U1 ( .A(
        n_cini_module_0__xor_module_91_res), .B(
        n_cini_module_0__xor_module_92_res), .Z(
        n_cini_module_0__xor_module_93_res) );
  DFF_X1 u_cini_module_0__reg_module_137__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_2), .Q(n_cini_module_0__reg_module_137_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_30_U1 ( .A(io_a_s1_d2), .ZN(
        n_cini_module_0__not_module_30_res) );
  AND2_X1 u_cini_module_0__and_module_69_U1 ( .A1(
        n_cini_module_0__not_module_30_res), .A2(
        n_cini_module_0__reg_module_137_res), .ZN(
        n_cini_module_0__and_module_69_res) );
  DFF_X1 u_cini_module_0__reg_module_138__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_69_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_138_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_29_U4 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_29_n1) );
  OR2_X1 u_cini_module_0__majority3_module_29_U3 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_29_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_29_U2 ( .A1(
        n_cini_module_0__xor_module_30_res), .A2(
        n_cini_module_0__majority3_module_29_n3), .ZN(
        n_cini_module_0__majority3_module_29_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_29_U1 ( .A1(
        n_cini_module_0__majority3_module_29_n1), .A2(
        n_cini_module_0__majority3_module_29_n2), .ZN(
        n_cini_module_0__majority3_module_29_res) );
  DFF_X1 u_cini_module_0__reg_module_139__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_29_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_139_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_70_U1 ( .A1(
        n_cini_module_0__reg_module_139_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_70_res) );
  DFF_X1 u_cini_module_0__reg_module_140__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_70_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_140_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_94_U1 ( .A(
        n_cini_module_0__reg_module_138_res), .B(
        n_cini_module_0__reg_module_140_res), .Z(
        n_cini_module_0__xor_module_94_res) );
  XOR2_X1 u_cini_module_0__xor_module_95_U1 ( .A(
        n_cini_module_0__xor_module_93_res), .B(
        n_cini_module_0__xor_module_94_res), .Z(
        n_cini_module_0__xor_module_95_res) );
  XOR2_X1 u_cini_module_0__xor_module_96_U1 ( .A(
        n_cini_module_0__xor_module_95_res), .B(
        n_cini_module_0__reg_module_128_res), .Z(io_c_s1_d2) );
  DFF_X1 u_cini_module_0__reg_module_141__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s2_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_141_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_71_U1 ( .A1(
        n_cini_module_0__reg_module_141_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_71_res) );
  DFF_X1 u_cini_module_0__reg_module_142__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_71_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_142_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_143__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_1), .CK(clock_2), .Q(n_cini_module_0__reg_module_143_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_31_U1 ( .A(io_a_s2_d2), .ZN(
        n_cini_module_0__not_module_31_res) );
  AND2_X1 u_cini_module_0__and_module_72_U1 ( .A1(
        n_cini_module_0__not_module_31_res), .A2(
        n_cini_module_0__reg_module_143_res), .ZN(
        n_cini_module_0__and_module_72_res) );
  DFF_X1 u_cini_module_0__reg_module_144__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_72_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_144_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_30_U4 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority3_module_30_n1) );
  OR2_X1 u_cini_module_0__majority3_module_30_U3 ( .A1(
        n_cini_module_0__xor_module_19_res), .A2(
        n_cini_module_0__xor_module_7_res), .ZN(
        n_cini_module_0__majority3_module_30_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_30_U2 ( .A1(
        n_cini_module_0__xor_module_31_res), .A2(
        n_cini_module_0__majority3_module_30_n3), .ZN(
        n_cini_module_0__majority3_module_30_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_30_U1 ( .A1(
        n_cini_module_0__majority3_module_30_n1), .A2(
        n_cini_module_0__majority3_module_30_n2), .ZN(
        n_cini_module_0__majority3_module_30_res) );
  DFF_X1 u_cini_module_0__reg_module_145__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_30_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_145_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_73_U1 ( .A1(
        n_cini_module_0__reg_module_145_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_73_res) );
  DFF_X1 u_cini_module_0__reg_module_146__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_73_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_146_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_97_U1 ( .A(
        n_cini_module_0__reg_module_144_res), .B(
        n_cini_module_0__reg_module_146_res), .Z(
        n_cini_module_0__xor_module_97_res) );
  DFF_X1 u_cini_module_0__reg_module_147__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_3), .CK(clock_2), .Q(n_cini_module_0__reg_module_147_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_32_U1 ( .A(io_a_s2_d2), .ZN(
        n_cini_module_0__not_module_32_res) );
  AND2_X1 u_cini_module_0__and_module_74_U1 ( .A1(
        n_cini_module_0__not_module_32_res), .A2(
        n_cini_module_0__reg_module_147_res), .ZN(
        n_cini_module_0__and_module_74_res) );
  DFF_X1 u_cini_module_0__reg_module_148__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_74_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_148_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_31_U4 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority3_module_31_n1) );
  OR2_X1 u_cini_module_0__majority3_module_31_U3 ( .A1(
        n_cini_module_0__xor_module_20_res), .A2(
        n_cini_module_0__xor_module_8_res), .ZN(
        n_cini_module_0__majority3_module_31_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_31_U2 ( .A1(
        n_cini_module_0__xor_module_32_res), .A2(
        n_cini_module_0__majority3_module_31_n3), .ZN(
        n_cini_module_0__majority3_module_31_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_31_U1 ( .A1(
        n_cini_module_0__majority3_module_31_n1), .A2(
        n_cini_module_0__majority3_module_31_n2), .ZN(
        n_cini_module_0__majority3_module_31_res) );
  DFF_X1 u_cini_module_0__reg_module_149__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_31_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_149_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_75_U1 ( .A1(
        n_cini_module_0__reg_module_149_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_75_res) );
  DFF_X1 u_cini_module_0__reg_module_150__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_75_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_150_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_98_U1 ( .A(
        n_cini_module_0__reg_module_148_res), .B(
        n_cini_module_0__reg_module_150_res), .Z(
        n_cini_module_0__xor_module_98_res) );
  XOR2_X1 u_cini_module_0__xor_module_99_U1 ( .A(
        n_cini_module_0__xor_module_97_res), .B(
        n_cini_module_0__xor_module_98_res), .Z(
        n_cini_module_0__xor_module_99_res) );
  DFF_X1 u_cini_module_0__reg_module_151__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_2), .Q(n_cini_module_0__reg_module_151_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_33_U1 ( .A(io_a_s2_d2), .ZN(
        n_cini_module_0__not_module_33_res) );
  AND2_X1 u_cini_module_0__and_module_76_U1 ( .A1(
        n_cini_module_0__not_module_33_res), .A2(
        n_cini_module_0__reg_module_151_res), .ZN(
        n_cini_module_0__and_module_76_res) );
  DFF_X1 u_cini_module_0__reg_module_152__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_76_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_152_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_32_U4 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority3_module_32_n1) );
  OR2_X1 u_cini_module_0__majority3_module_32_U3 ( .A1(
        n_cini_module_0__xor_module_21_res), .A2(
        n_cini_module_0__xor_module_9_res), .ZN(
        n_cini_module_0__majority3_module_32_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_32_U2 ( .A1(
        n_cini_module_0__xor_module_33_res), .A2(
        n_cini_module_0__majority3_module_32_n3), .ZN(
        n_cini_module_0__majority3_module_32_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_32_U1 ( .A1(
        n_cini_module_0__majority3_module_32_n1), .A2(
        n_cini_module_0__majority3_module_32_n2), .ZN(
        n_cini_module_0__majority3_module_32_res) );
  DFF_X1 u_cini_module_0__reg_module_153__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_32_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_153_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_77_U1 ( .A1(
        n_cini_module_0__reg_module_153_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_77_res) );
  DFF_X1 u_cini_module_0__reg_module_154__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_77_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_154_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_100_U1 ( .A(
        n_cini_module_0__reg_module_152_res), .B(
        n_cini_module_0__reg_module_154_res), .Z(
        n_cini_module_0__xor_module_100_res) );
  XOR2_X1 u_cini_module_0__xor_module_101_U1 ( .A(
        n_cini_module_0__xor_module_99_res), .B(
        n_cini_module_0__xor_module_100_res), .Z(
        n_cini_module_0__xor_module_101_res) );
  XOR2_X1 u_cini_module_0__xor_module_102_U1 ( .A(
        n_cini_module_0__xor_module_101_res), .B(
        n_cini_module_0__reg_module_142_res), .Z(io_c_s2_d2) );
  DFF_X1 u_cini_module_0__reg_module_155__hpc_correct_b_s0_d0_reg ( .D(
        io_b_s3_d2), .CK(clock_2), .Q(n_cini_module_0__reg_module_155_res), 
        .QN() );
  AND2_X1 u_cini_module_0__and_module_78_U1 ( .A1(
        n_cini_module_0__reg_module_155_res), .A2(io_a_s3_d2), .ZN(
        n_cini_module_0__and_module_78_res) );
  DFF_X1 u_cini_module_0__reg_module_156__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_78_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_156_res), .QN() );
  DFF_X1 u_cini_module_0__reg_module_157__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_2), .CK(clock_2), .Q(n_cini_module_0__reg_module_157_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_34_U1 ( .A(io_a_s3_d2), .ZN(
        n_cini_module_0__not_module_34_res) );
  AND2_X1 u_cini_module_0__and_module_79_U1 ( .A1(
        n_cini_module_0__not_module_34_res), .A2(
        n_cini_module_0__reg_module_157_res), .ZN(
        n_cini_module_0__and_module_79_res) );
  DFF_X1 u_cini_module_0__reg_module_158__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_79_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_158_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_33_U4 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority3_module_33_n1) );
  OR2_X1 u_cini_module_0__majority3_module_33_U3 ( .A1(
        n_cini_module_0__xor_module_22_res), .A2(
        n_cini_module_0__xor_module_10_res), .ZN(
        n_cini_module_0__majority3_module_33_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_33_U2 ( .A1(
        n_cini_module_0__xor_module_34_res), .A2(
        n_cini_module_0__majority3_module_33_n3), .ZN(
        n_cini_module_0__majority3_module_33_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_33_U1 ( .A1(
        n_cini_module_0__majority3_module_33_n1), .A2(
        n_cini_module_0__majority3_module_33_n2), .ZN(
        n_cini_module_0__majority3_module_33_res) );
  DFF_X1 u_cini_module_0__reg_module_159__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_33_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_159_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_80_U1 ( .A1(
        n_cini_module_0__reg_module_159_res), .A2(io_a_s3_d2), .ZN(
        n_cini_module_0__and_module_80_res) );
  DFF_X1 u_cini_module_0__reg_module_160__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_80_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_160_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_103_U1 ( .A(
        n_cini_module_0__reg_module_158_res), .B(
        n_cini_module_0__reg_module_160_res), .Z(
        n_cini_module_0__xor_module_103_res) );
  DFF_X1 u_cini_module_0__reg_module_161__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_4), .CK(clock_2), .Q(n_cini_module_0__reg_module_161_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_35_U1 ( .A(io_a_s3_d2), .ZN(
        n_cini_module_0__not_module_35_res) );
  AND2_X1 u_cini_module_0__and_module_81_U1 ( .A1(
        n_cini_module_0__not_module_35_res), .A2(
        n_cini_module_0__reg_module_161_res), .ZN(
        n_cini_module_0__and_module_81_res) );
  DFF_X1 u_cini_module_0__reg_module_162__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_81_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_162_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_34_U4 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority3_module_34_n1) );
  OR2_X1 u_cini_module_0__majority3_module_34_U3 ( .A1(
        n_cini_module_0__xor_module_23_res), .A2(
        n_cini_module_0__xor_module_11_res), .ZN(
        n_cini_module_0__majority3_module_34_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_34_U2 ( .A1(
        n_cini_module_0__xor_module_35_res), .A2(
        n_cini_module_0__majority3_module_34_n3), .ZN(
        n_cini_module_0__majority3_module_34_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_34_U1 ( .A1(
        n_cini_module_0__majority3_module_34_n1), .A2(
        n_cini_module_0__majority3_module_34_n2), .ZN(
        n_cini_module_0__majority3_module_34_res) );
  DFF_X1 u_cini_module_0__reg_module_163__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_34_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_163_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_82_U1 ( .A1(
        n_cini_module_0__reg_module_163_res), .A2(io_a_s3_d2), .ZN(
        n_cini_module_0__and_module_82_res) );
  DFF_X1 u_cini_module_0__reg_module_164__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_82_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_164_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_104_U1 ( .A(
        n_cini_module_0__reg_module_162_res), .B(
        n_cini_module_0__reg_module_164_res), .Z(
        n_cini_module_0__xor_module_104_res) );
  XOR2_X1 u_cini_module_0__xor_module_105_U1 ( .A(
        n_cini_module_0__xor_module_103_res), .B(
        n_cini_module_0__xor_module_104_res), .Z(
        n_cini_module_0__xor_module_105_res) );
  DFF_X1 u_cini_module_0__reg_module_165__hpc_correct_b_s0_d0_reg ( .D(
        p_rand_5), .CK(clock_2), .Q(n_cini_module_0__reg_module_165_res), 
        .QN() );
  INV_X1 u_cini_module_0__not_module_36_U1 ( .A(io_a_s3_d2), .ZN(
        n_cini_module_0__not_module_36_res) );
  AND2_X1 u_cini_module_0__and_module_83_U1 ( .A1(
        n_cini_module_0__not_module_36_res), .A2(
        n_cini_module_0__reg_module_165_res), .ZN(
        n_cini_module_0__and_module_83_res) );
  DFF_X1 u_cini_module_0__reg_module_166__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_83_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_166_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_35_U4 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority3_module_35_n1) );
  OR2_X1 u_cini_module_0__majority3_module_35_U3 ( .A1(
        n_cini_module_0__xor_module_24_res), .A2(
        n_cini_module_0__xor_module_12_res), .ZN(
        n_cini_module_0__majority3_module_35_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_35_U2 ( .A1(
        n_cini_module_0__xor_module_36_res), .A2(
        n_cini_module_0__majority3_module_35_n3), .ZN(
        n_cini_module_0__majority3_module_35_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_35_U1 ( .A1(
        n_cini_module_0__majority3_module_35_n1), .A2(
        n_cini_module_0__majority3_module_35_n2), .ZN(
        n_cini_module_0__majority3_module_35_res) );
  DFF_X1 u_cini_module_0__reg_module_167__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_35_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_167_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_84_U1 ( .A1(
        n_cini_module_0__reg_module_167_res), .A2(io_a_s3_d2), .ZN(
        n_cini_module_0__and_module_84_res) );
  DFF_X1 u_cini_module_0__reg_module_168__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_84_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_168_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_106_U1 ( .A(
        n_cini_module_0__reg_module_166_res), .B(
        n_cini_module_0__reg_module_168_res), .Z(
        n_cini_module_0__xor_module_106_res) );
  XOR2_X1 u_cini_module_0__xor_module_107_U1 ( .A(
        n_cini_module_0__xor_module_105_res), .B(
        n_cini_module_0__xor_module_106_res), .Z(
        n_cini_module_0__xor_module_107_res) );
  XOR2_X1 u_cini_module_0__xor_module_108_U1 ( .A(
        n_cini_module_0__xor_module_107_res), .B(
        n_cini_module_0__reg_module_156_res), .Z(io_c_s3_d2) );
endmodule

