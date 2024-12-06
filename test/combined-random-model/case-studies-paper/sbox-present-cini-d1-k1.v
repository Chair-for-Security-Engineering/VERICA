/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Feb  9 10:36:11 2024
/////////////////////////////////////////////////////////////


module PresentSboxAndOpt ( clock_0, clock_1, clock_2, reset_0, reset_1, 
        reset_2, io_i0_s0_d0, io_i0_s0_d1, io_i0_s0_d2, io_i0_s1_d0, 
        io_i0_s1_d1, io_i0_s1_d2, io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, 
        io_i1_s1_d0, io_i1_s1_d1, io_i1_s1_d2, io_i2_s0_d0, io_i2_s0_d1, 
        io_i2_s0_d2, io_i2_s1_d0, io_i2_s1_d1, io_i2_s1_d2, io_i3_s0_d0, 
        io_i3_s0_d1, io_i3_s0_d2, io_i3_s1_d0, io_i3_s1_d1, io_i3_s1_d2, 
        p_rand_0, p_rand_1, p_rand_2, p_rand_3, p_rand_4, p_rand_5, p_rand_6, 
        p_rand_7, io_o0_s0_d0, io_o0_s0_d1, io_o0_s0_d2, io_o0_s1_d0, 
        io_o0_s1_d1, io_o0_s1_d2, io_o1_s0_d0, io_o1_s0_d1, io_o1_s0_d2, 
        io_o1_s1_d0, io_o1_s1_d1, io_o1_s1_d2, io_o2_s0_d0, io_o2_s0_d1, 
        io_o2_s0_d2, io_o2_s1_d0, io_o2_s1_d1, io_o2_s1_d2, io_o3_s0_d0, 
        io_o3_s0_d1, io_o3_s0_d2, io_o3_s1_d0, io_o3_s1_d1, io_o3_s1_d2 );
  input clock_0, clock_1, clock_2, reset_0, reset_1, reset_2, io_i0_s0_d0,
         io_i0_s0_d1, io_i0_s0_d2, io_i0_s1_d0, io_i0_s1_d1, io_i0_s1_d2,
         io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, io_i1_s1_d0, io_i1_s1_d1,
         io_i1_s1_d2, io_i2_s0_d0, io_i2_s0_d1, io_i2_s0_d2, io_i2_s1_d0,
         io_i2_s1_d1, io_i2_s1_d2, io_i3_s0_d0, io_i3_s0_d1, io_i3_s0_d2,
         io_i3_s1_d0, io_i3_s1_d1, io_i3_s1_d2, p_rand_0, p_rand_1, p_rand_2,
         p_rand_3, p_rand_4, p_rand_5, p_rand_6, p_rand_7;
  output io_o0_s0_d0, io_o0_s0_d1, io_o0_s0_d2, io_o0_s1_d0, io_o0_s1_d1,
         io_o0_s1_d2, io_o1_s0_d0, io_o1_s0_d1, io_o1_s0_d2, io_o1_s1_d0,
         io_o1_s1_d1, io_o1_s1_d2, io_o2_s0_d0, io_o2_s0_d1, io_o2_s0_d2,
         io_o2_s1_d0, io_o2_s1_d1, io_o2_s1_d2, io_o3_s0_d0, io_o3_s0_d1,
         io_o3_s0_d2, io_o3_s1_d0, io_o3_s1_d1, io_o3_s1_d2;
  wire   n_xor_module_1_res, n_xor_module_2_res, n_xor_module_3_res,
         n_xor_module_4_res, n_xor_module_5_res, n_xor_module_6_res,
         n_not_module_1_res, n_not_module_2_res, n_not_module_3_res,
         n_not_module_4_res, n_not_module_5_res, n_not_module_6_res,
         n_cini_module_3_out_res_s0_d0, n_cini_module_3_out_res_s0_d1,
         n_cini_module_3_out_res_s0_d2, n_cini_module_3_out_res_s1_d0,
         n_cini_module_3_out_res_s1_d1, n_cini_module_3_out_res_s1_d2,
         n_xor_module_7_res, n_xor_module_8_res, n_xor_module_9_res,
         n_xor_module_10_res, n_xor_module_11_res, n_xor_module_12_res,
         n_xor_module_13_res, n_xor_module_14_res, n_xor_module_15_res,
         n_xor_module_16_res, n_xor_module_17_res, n_xor_module_18_res,
         n_xor_module_19_res, n_xor_module_20_res, n_xor_module_21_res,
         n_xor_module_22_res, n_xor_module_23_res, n_xor_module_24_res,
         n_not_module_7_res, n_not_module_8_res, n_not_module_9_res,
         n_xor_module_25_res, n_xor_module_26_res, n_xor_module_27_res,
         n_xor_module_28_res, n_xor_module_29_res, n_xor_module_30_res,
         n_xor_module_31_res, n_xor_module_32_res, n_xor_module_33_res,
         n_xor_module_34_res, n_xor_module_35_res, n_xor_module_36_res,
         n_xor_module_37_res, n_xor_module_38_res, n_xor_module_39_res,
         n_xor_module_40_res, n_xor_module_41_res, n_xor_module_42_res,
         n_not_module_10_res, n_not_module_11_res, n_not_module_12_res,
         n_cini_module_12_out_res_s0_d0, n_cini_module_12_out_res_s0_d1,
         n_cini_module_12_out_res_s0_d2, n_cini_module_12_out_res_s1_d0,
         n_cini_module_12_out_res_s1_d1, n_cini_module_12_out_res_s1_d2,
         n_xor_module_43_res, n_xor_module_44_res, n_xor_module_45_res,
         n_xor_module_46_res, n_xor_module_47_res, n_xor_module_48_res,
         n_xor_module_49_res, n_xor_module_50_res, n_xor_module_51_res,
         n_xor_module_52_res, n_xor_module_53_res, n_xor_module_54_res,
         n_xor_module_55_res, n_xor_module_56_res, n_xor_module_57_res,
         n_xor_module_58_res, n_xor_module_59_res, n_xor_module_60_res,
         n_not_module_13_res, n_not_module_14_res, n_not_module_15_res,
         n_xor_module_61_res, n_xor_module_62_res, n_xor_module_63_res,
         n_xor_module_64_res, n_xor_module_65_res, n_xor_module_66_res,
         n_xor_module_67_res, n_xor_module_68_res, n_xor_module_69_res,
         n_xor_module_70_res, n_xor_module_71_res, n_xor_module_72_res,
         n_cini_module_19_out_res_s0_d0, n_cini_module_19_out_res_s0_d1,
         n_cini_module_19_out_res_s0_d2, n_cini_module_19_out_res_s1_d0,
         n_cini_module_19_out_res_s1_d1, n_cini_module_19_out_res_s1_d2,
         n_cini_module_20_out_res_s0_d0, n_cini_module_20_out_res_s0_d1,
         n_cini_module_20_out_res_s0_d2, n_cini_module_20_out_res_s1_d0,
         n_cini_module_20_out_res_s1_d1, n_cini_module_20_out_res_s1_d2,
         n_xor_module_73_res, n_xor_module_74_res, n_xor_module_75_res,
         n_xor_module_76_res, n_xor_module_77_res, n_xor_module_78_res,
         n_xor_module_79_res, n_xor_module_80_res, n_xor_module_81_res,
         n_xor_module_82_res, n_xor_module_83_res, n_xor_module_84_res,
         n_xor_module_91_res, n_xor_module_92_res, n_xor_module_93_res,
         n_xor_module_94_res, n_xor_module_95_res, n_xor_module_96_res,
         n_xor_module_97_res, n_xor_module_98_res, n_xor_module_99_res,
         n_xor_module_100_res, n_xor_module_101_res, n_xor_module_102_res,
         n_xor_module_103_res, n_xor_module_104_res, n_xor_module_105_res,
         n_xor_module_106_res, n_xor_module_107_res, n_xor_module_108_res,
         n_xor_module_115_res, n_xor_module_116_res, n_xor_module_117_res,
         n_xor_module_118_res, n_xor_module_119_res, n_xor_module_120_res,
         n_xor_module_127_res, n_xor_module_128_res, n_xor_module_129_res,
         n_xor_module_130_res, n_xor_module_131_res, n_xor_module_132_res,
         n_cini_module_3__reg_module_18_res,
         n_cini_module_3__reg_module_17_res,
         n_cini_module_3__majority3_module_11_res,
         n_cini_module_3__reg_module_16_res,
         n_cini_module_3__majority3_module_10_res,
         n_cini_module_3__reg_module_15_res,
         n_cini_module_3__reg_module_14_res,
         n_cini_module_3__reg_module_13_res,
         n_cini_module_3__majority3_module_9_res,
         n_cini_module_3__reg_module_12_res,
         n_cini_module_3__majority3_module_8_res,
         n_cini_module_3__reg_module_11_res,
         n_cini_module_3__reg_module_10_res, n_cini_module_3__reg_module_9_res,
         n_cini_module_3__majority3_module_7_res,
         n_cini_module_3__reg_module_8_res,
         n_cini_module_3__majority3_module_6_res,
         n_cini_module_3__reg_module_7_res, n_cini_module_3__and_module_12_res,
         n_cini_module_3__xor_module_12_res,
         n_cini_module_3__and_module_11_res,
         n_cini_module_3__xor_module_11_res,
         n_cini_module_3__and_module_10_res, n_cini_module_3__and_module_9_res,
         n_cini_module_3__and_module_8_res, n_cini_module_3__xor_module_10_res,
         n_cini_module_3__and_module_7_res, n_cini_module_3__xor_module_9_res,
         n_cini_module_3__and_module_6_res, n_cini_module_3__and_module_5_res,
         n_cini_module_3__and_module_4_res, n_cini_module_3__xor_module_8_res,
         n_cini_module_3__and_module_3_res, n_cini_module_3__xor_module_7_res,
         n_cini_module_3__and_module_2_res, n_cini_module_3__and_module_1_res,
         n_cini_module_3__reg_module_6_res,
         n_cini_module_3__majority3_module_5_res,
         n_cini_module_3__reg_module_5_res,
         n_cini_module_3__majority3_module_4_res,
         n_cini_module_3__reg_module_4_res,
         n_cini_module_3__majority3_module_3_res,
         n_cini_module_3__reg_module_3_res,
         n_cini_module_3__majority3_module_2_res,
         n_cini_module_3__reg_module_2_res,
         n_cini_module_3__majority3_module_1_res,
         n_cini_module_3__reg_module_1_res,
         n_cini_module_3__majority3_module_0_res,
         n_cini_module_3__xor_module_6_res, n_cini_module_3__xor_module_5_res,
         n_cini_module_3__xor_module_4_res, n_cini_module_3__xor_module_3_res,
         n_cini_module_3__xor_module_2_res, n_cini_module_3__xor_module_1_res,
         n_cini_module_3__majority3_module_0_n3,
         n_cini_module_3__majority3_module_0_n2,
         n_cini_module_3__majority3_module_0_n1,
         n_cini_module_3__majority3_module_1_n3,
         n_cini_module_3__majority3_module_1_n2,
         n_cini_module_3__majority3_module_1_n1,
         n_cini_module_3__majority3_module_2_n3,
         n_cini_module_3__majority3_module_2_n2,
         n_cini_module_3__majority3_module_2_n1,
         n_cini_module_3__majority3_module_3_n3,
         n_cini_module_3__majority3_module_3_n2,
         n_cini_module_3__majority3_module_3_n1,
         n_cini_module_3__majority3_module_4_n3,
         n_cini_module_3__majority3_module_4_n2,
         n_cini_module_3__majority3_module_4_n1,
         n_cini_module_3__majority3_module_5_n3,
         n_cini_module_3__majority3_module_5_n2,
         n_cini_module_3__majority3_module_5_n1,
         n_cini_module_3__majority3_module_6_n3,
         n_cini_module_3__majority3_module_6_n2,
         n_cini_module_3__majority3_module_6_n1,
         n_cini_module_3__majority3_module_7_n3,
         n_cini_module_3__majority3_module_7_n2,
         n_cini_module_3__majority3_module_7_n1,
         n_cini_module_3__majority3_module_8_n3,
         n_cini_module_3__majority3_module_8_n2,
         n_cini_module_3__majority3_module_8_n1,
         n_cini_module_3__majority3_module_9_n3,
         n_cini_module_3__majority3_module_9_n2,
         n_cini_module_3__majority3_module_9_n1,
         n_cini_module_3__majority3_module_10_n3,
         n_cini_module_3__majority3_module_10_n2,
         n_cini_module_3__majority3_module_10_n1,
         n_cini_module_3__majority3_module_11_n3,
         n_cini_module_3__majority3_module_11_n2,
         n_cini_module_3__majority3_module_11_n1,
         n_cini_module_12__reg_module_18_res,
         n_cini_module_12__reg_module_17_res,
         n_cini_module_12__majority3_module_11_res,
         n_cini_module_12__reg_module_16_res,
         n_cini_module_12__majority3_module_10_res,
         n_cini_module_12__reg_module_15_res,
         n_cini_module_12__reg_module_14_res,
         n_cini_module_12__reg_module_13_res,
         n_cini_module_12__majority3_module_9_res,
         n_cini_module_12__reg_module_12_res,
         n_cini_module_12__majority3_module_8_res,
         n_cini_module_12__reg_module_11_res,
         n_cini_module_12__reg_module_10_res,
         n_cini_module_12__reg_module_9_res,
         n_cini_module_12__majority3_module_7_res,
         n_cini_module_12__reg_module_8_res,
         n_cini_module_12__majority3_module_6_res,
         n_cini_module_12__reg_module_7_res,
         n_cini_module_12__and_module_12_res,
         n_cini_module_12__xor_module_12_res,
         n_cini_module_12__and_module_11_res,
         n_cini_module_12__xor_module_11_res,
         n_cini_module_12__and_module_10_res,
         n_cini_module_12__and_module_9_res,
         n_cini_module_12__and_module_8_res,
         n_cini_module_12__xor_module_10_res,
         n_cini_module_12__and_module_7_res,
         n_cini_module_12__xor_module_9_res,
         n_cini_module_12__and_module_6_res,
         n_cini_module_12__and_module_5_res,
         n_cini_module_12__and_module_4_res,
         n_cini_module_12__xor_module_8_res,
         n_cini_module_12__and_module_3_res,
         n_cini_module_12__xor_module_7_res,
         n_cini_module_12__and_module_2_res,
         n_cini_module_12__and_module_1_res,
         n_cini_module_12__reg_module_6_res,
         n_cini_module_12__majority3_module_5_res,
         n_cini_module_12__reg_module_5_res,
         n_cini_module_12__majority3_module_4_res,
         n_cini_module_12__reg_module_4_res,
         n_cini_module_12__majority3_module_3_res,
         n_cini_module_12__reg_module_3_res,
         n_cini_module_12__majority3_module_2_res,
         n_cini_module_12__reg_module_2_res,
         n_cini_module_12__majority3_module_1_res,
         n_cini_module_12__reg_module_1_res,
         n_cini_module_12__majority3_module_0_res,
         n_cini_module_12__xor_module_6_res,
         n_cini_module_12__xor_module_5_res,
         n_cini_module_12__xor_module_4_res,
         n_cini_module_12__xor_module_3_res,
         n_cini_module_12__xor_module_2_res,
         n_cini_module_12__xor_module_1_res,
         n_cini_module_12__majority3_module_0_n3,
         n_cini_module_12__majority3_module_0_n2,
         n_cini_module_12__majority3_module_0_n1,
         n_cini_module_12__majority3_module_1_n3,
         n_cini_module_12__majority3_module_1_n2,
         n_cini_module_12__majority3_module_1_n1,
         n_cini_module_12__majority3_module_2_n3,
         n_cini_module_12__majority3_module_2_n2,
         n_cini_module_12__majority3_module_2_n1,
         n_cini_module_12__majority3_module_3_n3,
         n_cini_module_12__majority3_module_3_n2,
         n_cini_module_12__majority3_module_3_n1,
         n_cini_module_12__majority3_module_4_n3,
         n_cini_module_12__majority3_module_4_n2,
         n_cini_module_12__majority3_module_4_n1,
         n_cini_module_12__majority3_module_5_n3,
         n_cini_module_12__majority3_module_5_n2,
         n_cini_module_12__majority3_module_5_n1,
         n_cini_module_12__majority3_module_6_n3,
         n_cini_module_12__majority3_module_6_n2,
         n_cini_module_12__majority3_module_6_n1,
         n_cini_module_12__majority3_module_7_n3,
         n_cini_module_12__majority3_module_7_n2,
         n_cini_module_12__majority3_module_7_n1,
         n_cini_module_12__majority3_module_8_n3,
         n_cini_module_12__majority3_module_8_n2,
         n_cini_module_12__majority3_module_8_n1,
         n_cini_module_12__majority3_module_9_n3,
         n_cini_module_12__majority3_module_9_n2,
         n_cini_module_12__majority3_module_9_n1,
         n_cini_module_12__majority3_module_10_n3,
         n_cini_module_12__majority3_module_10_n2,
         n_cini_module_12__majority3_module_10_n1,
         n_cini_module_12__majority3_module_11_n3,
         n_cini_module_12__majority3_module_11_n2,
         n_cini_module_12__majority3_module_11_n1,
         n_cini_module_19__reg_module_18_res,
         n_cini_module_19__reg_module_17_res,
         n_cini_module_19__majority3_module_11_res,
         n_cini_module_19__reg_module_16_res,
         n_cini_module_19__majority3_module_10_res,
         n_cini_module_19__reg_module_15_res,
         n_cini_module_19__reg_module_14_res,
         n_cini_module_19__reg_module_13_res,
         n_cini_module_19__majority3_module_9_res,
         n_cini_module_19__reg_module_12_res,
         n_cini_module_19__majority3_module_8_res,
         n_cini_module_19__reg_module_11_res,
         n_cini_module_19__reg_module_10_res,
         n_cini_module_19__reg_module_9_res,
         n_cini_module_19__majority3_module_7_res,
         n_cini_module_19__reg_module_8_res,
         n_cini_module_19__majority3_module_6_res,
         n_cini_module_19__reg_module_7_res,
         n_cini_module_19__and_module_12_res,
         n_cini_module_19__xor_module_12_res,
         n_cini_module_19__and_module_11_res,
         n_cini_module_19__xor_module_11_res,
         n_cini_module_19__and_module_10_res,
         n_cini_module_19__and_module_9_res,
         n_cini_module_19__and_module_8_res,
         n_cini_module_19__xor_module_10_res,
         n_cini_module_19__and_module_7_res,
         n_cini_module_19__xor_module_9_res,
         n_cini_module_19__and_module_6_res,
         n_cini_module_19__and_module_5_res,
         n_cini_module_19__and_module_4_res,
         n_cini_module_19__xor_module_8_res,
         n_cini_module_19__and_module_3_res,
         n_cini_module_19__xor_module_7_res,
         n_cini_module_19__and_module_2_res,
         n_cini_module_19__and_module_1_res,
         n_cini_module_19__reg_module_6_res,
         n_cini_module_19__majority3_module_5_res,
         n_cini_module_19__reg_module_5_res,
         n_cini_module_19__majority3_module_4_res,
         n_cini_module_19__reg_module_4_res,
         n_cini_module_19__majority3_module_3_res,
         n_cini_module_19__reg_module_3_res,
         n_cini_module_19__majority3_module_2_res,
         n_cini_module_19__reg_module_2_res,
         n_cini_module_19__majority3_module_1_res,
         n_cini_module_19__reg_module_1_res,
         n_cini_module_19__majority3_module_0_res,
         n_cini_module_19__xor_module_6_res,
         n_cini_module_19__xor_module_5_res,
         n_cini_module_19__xor_module_4_res,
         n_cini_module_19__xor_module_3_res,
         n_cini_module_19__xor_module_2_res,
         n_cini_module_19__xor_module_1_res,
         n_cini_module_19__majority3_module_0_n3,
         n_cini_module_19__majority3_module_0_n2,
         n_cini_module_19__majority3_module_0_n1,
         n_cini_module_19__majority3_module_1_n3,
         n_cini_module_19__majority3_module_1_n2,
         n_cini_module_19__majority3_module_1_n1,
         n_cini_module_19__majority3_module_2_n3,
         n_cini_module_19__majority3_module_2_n2,
         n_cini_module_19__majority3_module_2_n1,
         n_cini_module_19__majority3_module_3_n3,
         n_cini_module_19__majority3_module_3_n2,
         n_cini_module_19__majority3_module_3_n1,
         n_cini_module_19__majority3_module_4_n3,
         n_cini_module_19__majority3_module_4_n2,
         n_cini_module_19__majority3_module_4_n1,
         n_cini_module_19__majority3_module_5_n3,
         n_cini_module_19__majority3_module_5_n2,
         n_cini_module_19__majority3_module_5_n1,
         n_cini_module_19__majority3_module_6_n3,
         n_cini_module_19__majority3_module_6_n2,
         n_cini_module_19__majority3_module_6_n1,
         n_cini_module_19__majority3_module_7_n3,
         n_cini_module_19__majority3_module_7_n2,
         n_cini_module_19__majority3_module_7_n1,
         n_cini_module_19__majority3_module_8_n3,
         n_cini_module_19__majority3_module_8_n2,
         n_cini_module_19__majority3_module_8_n1,
         n_cini_module_19__majority3_module_9_n3,
         n_cini_module_19__majority3_module_9_n2,
         n_cini_module_19__majority3_module_9_n1,
         n_cini_module_19__majority3_module_10_n3,
         n_cini_module_19__majority3_module_10_n2,
         n_cini_module_19__majority3_module_10_n1,
         n_cini_module_19__majority3_module_11_n3,
         n_cini_module_19__majority3_module_11_n2,
         n_cini_module_19__majority3_module_11_n1,
         n_cini_module_20__reg_module_18_res,
         n_cini_module_20__reg_module_17_res,
         n_cini_module_20__majority3_module_11_res,
         n_cini_module_20__reg_module_16_res,
         n_cini_module_20__majority3_module_10_res,
         n_cini_module_20__reg_module_15_res,
         n_cini_module_20__reg_module_14_res,
         n_cini_module_20__reg_module_13_res,
         n_cini_module_20__majority3_module_9_res,
         n_cini_module_20__reg_module_12_res,
         n_cini_module_20__majority3_module_8_res,
         n_cini_module_20__reg_module_11_res,
         n_cini_module_20__reg_module_10_res,
         n_cini_module_20__reg_module_9_res,
         n_cini_module_20__majority3_module_7_res,
         n_cini_module_20__reg_module_8_res,
         n_cini_module_20__majority3_module_6_res,
         n_cini_module_20__reg_module_7_res,
         n_cini_module_20__and_module_12_res,
         n_cini_module_20__xor_module_12_res,
         n_cini_module_20__and_module_11_res,
         n_cini_module_20__xor_module_11_res,
         n_cini_module_20__and_module_10_res,
         n_cini_module_20__and_module_9_res,
         n_cini_module_20__and_module_8_res,
         n_cini_module_20__xor_module_10_res,
         n_cini_module_20__and_module_7_res,
         n_cini_module_20__xor_module_9_res,
         n_cini_module_20__and_module_6_res,
         n_cini_module_20__and_module_5_res,
         n_cini_module_20__and_module_4_res,
         n_cini_module_20__xor_module_8_res,
         n_cini_module_20__and_module_3_res,
         n_cini_module_20__xor_module_7_res,
         n_cini_module_20__and_module_2_res,
         n_cini_module_20__and_module_1_res,
         n_cini_module_20__reg_module_6_res,
         n_cini_module_20__majority3_module_5_res,
         n_cini_module_20__reg_module_5_res,
         n_cini_module_20__majority3_module_4_res,
         n_cini_module_20__reg_module_4_res,
         n_cini_module_20__majority3_module_3_res,
         n_cini_module_20__reg_module_3_res,
         n_cini_module_20__majority3_module_2_res,
         n_cini_module_20__reg_module_2_res,
         n_cini_module_20__majority3_module_1_res,
         n_cini_module_20__reg_module_1_res,
         n_cini_module_20__majority3_module_0_res,
         n_cini_module_20__xor_module_6_res,
         n_cini_module_20__xor_module_5_res,
         n_cini_module_20__xor_module_4_res,
         n_cini_module_20__xor_module_3_res,
         n_cini_module_20__xor_module_2_res,
         n_cini_module_20__xor_module_1_res,
         n_cini_module_20__majority3_module_0_n3,
         n_cini_module_20__majority3_module_0_n2,
         n_cini_module_20__majority3_module_0_n1,
         n_cini_module_20__majority3_module_1_n3,
         n_cini_module_20__majority3_module_1_n2,
         n_cini_module_20__majority3_module_1_n1,
         n_cini_module_20__majority3_module_2_n3,
         n_cini_module_20__majority3_module_2_n2,
         n_cini_module_20__majority3_module_2_n1,
         n_cini_module_20__majority3_module_3_n3,
         n_cini_module_20__majority3_module_3_n2,
         n_cini_module_20__majority3_module_3_n1,
         n_cini_module_20__majority3_module_4_n3,
         n_cini_module_20__majority3_module_4_n2,
         n_cini_module_20__majority3_module_4_n1,
         n_cini_module_20__majority3_module_5_n3,
         n_cini_module_20__majority3_module_5_n2,
         n_cini_module_20__majority3_module_5_n1,
         n_cini_module_20__majority3_module_6_n3,
         n_cini_module_20__majority3_module_6_n2,
         n_cini_module_20__majority3_module_6_n1,
         n_cini_module_20__majority3_module_7_n3,
         n_cini_module_20__majority3_module_7_n2,
         n_cini_module_20__majority3_module_7_n1,
         n_cini_module_20__majority3_module_8_n3,
         n_cini_module_20__majority3_module_8_n2,
         n_cini_module_20__majority3_module_8_n1,
         n_cini_module_20__majority3_module_9_n3,
         n_cini_module_20__majority3_module_9_n2,
         n_cini_module_20__majority3_module_9_n1,
         n_cini_module_20__majority3_module_10_n3,
         n_cini_module_20__majority3_module_10_n2,
         n_cini_module_20__majority3_module_10_n1,
         n_cini_module_20__majority3_module_11_n3,
         n_cini_module_20__majority3_module_11_n2,
         n_cini_module_20__majority3_module_11_n1;

  XOR2_X1 u_xor_module_1_U1 ( .A(io_i2_s0_d0), .B(io_i1_s0_d0), .Z(
        n_xor_module_1_res) );
  XOR2_X1 u_xor_module_2_U1 ( .A(io_i2_s0_d1), .B(io_i1_s0_d1), .Z(
        n_xor_module_2_res) );
  XOR2_X1 u_xor_module_3_U1 ( .A(io_i2_s0_d2), .B(io_i1_s0_d2), .Z(
        n_xor_module_3_res) );
  XOR2_X1 u_xor_module_4_U1 ( .A(io_i2_s1_d0), .B(io_i1_s1_d0), .Z(
        n_xor_module_4_res) );
  XOR2_X1 u_xor_module_5_U1 ( .A(io_i2_s1_d1), .B(io_i1_s1_d1), .Z(
        n_xor_module_5_res) );
  XOR2_X1 u_xor_module_6_U1 ( .A(io_i2_s1_d2), .B(io_i1_s1_d2), .Z(
        n_xor_module_6_res) );
  INV_X1 u_not_module_1_U1 ( .A(n_xor_module_1_res), .ZN(n_not_module_1_res)
         );
  INV_X1 u_not_module_2_U1 ( .A(n_xor_module_2_res), .ZN(n_not_module_2_res)
         );
  INV_X1 u_not_module_3_U1 ( .A(n_xor_module_3_res), .ZN(n_not_module_3_res)
         );
  INV_X1 u_not_module_4_U1 ( .A(io_i0_s0_d0), .ZN(n_not_module_4_res) );
  INV_X1 u_not_module_5_U1 ( .A(io_i0_s0_d1), .ZN(n_not_module_5_res) );
  INV_X1 u_not_module_6_U1 ( .A(io_i0_s0_d2), .ZN(n_not_module_6_res) );
  XOR2_X1 u_cini_module_3__xor_module_1_U1 ( .A(p_rand_0), .B(
        n_not_module_4_res), .Z(n_cini_module_3__xor_module_1_res) );
  XOR2_X1 u_cini_module_3__xor_module_2_U1 ( .A(p_rand_0), .B(io_i0_s1_d0), 
        .Z(n_cini_module_3__xor_module_2_res) );
  XOR2_X1 u_cini_module_3__xor_module_3_U1 ( .A(p_rand_0), .B(
        n_not_module_5_res), .Z(n_cini_module_3__xor_module_3_res) );
  XOR2_X1 u_cini_module_3__xor_module_4_U1 ( .A(p_rand_0), .B(io_i0_s1_d1), 
        .Z(n_cini_module_3__xor_module_4_res) );
  XOR2_X1 u_cini_module_3__xor_module_5_U1 ( .A(p_rand_0), .B(
        n_not_module_6_res), .Z(n_cini_module_3__xor_module_5_res) );
  XOR2_X1 u_cini_module_3__xor_module_6_U1 ( .A(p_rand_0), .B(io_i0_s1_d2), 
        .Z(n_cini_module_3__xor_module_6_res) );
  NAND2_X1 u_cini_module_3__majority3_module_0_U4 ( .A1(
        n_cini_module_3__xor_module_3_res), .A2(
        n_cini_module_3__xor_module_1_res), .ZN(
        n_cini_module_3__majority3_module_0_n1) );
  OR2_X1 u_cini_module_3__majority3_module_0_U3 ( .A1(
        n_cini_module_3__xor_module_3_res), .A2(
        n_cini_module_3__xor_module_1_res), .ZN(
        n_cini_module_3__majority3_module_0_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_0_U2 ( .A1(
        n_cini_module_3__xor_module_5_res), .A2(
        n_cini_module_3__majority3_module_0_n3), .ZN(
        n_cini_module_3__majority3_module_0_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_0_U1 ( .A1(
        n_cini_module_3__majority3_module_0_n1), .A2(
        n_cini_module_3__majority3_module_0_n2), .ZN(
        n_cini_module_3__majority3_module_0_res) );
  DFF_X1 u_cini_module_3__reg_module_1__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_0_res), .CK(clock_0), .Q(
        n_cini_module_3__reg_module_1_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_1_U4 ( .A1(
        n_cini_module_3__xor_module_4_res), .A2(
        n_cini_module_3__xor_module_2_res), .ZN(
        n_cini_module_3__majority3_module_1_n1) );
  OR2_X1 u_cini_module_3__majority3_module_1_U3 ( .A1(
        n_cini_module_3__xor_module_4_res), .A2(
        n_cini_module_3__xor_module_2_res), .ZN(
        n_cini_module_3__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_1_U2 ( .A1(
        n_cini_module_3__xor_module_6_res), .A2(
        n_cini_module_3__majority3_module_1_n3), .ZN(
        n_cini_module_3__majority3_module_1_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_1_U1 ( .A1(
        n_cini_module_3__majority3_module_1_n1), .A2(
        n_cini_module_3__majority3_module_1_n2), .ZN(
        n_cini_module_3__majority3_module_1_res) );
  DFF_X1 u_cini_module_3__reg_module_2__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_1_res), .CK(clock_0), .Q(
        n_cini_module_3__reg_module_2_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_2_U4 ( .A1(
        n_cini_module_3__xor_module_3_res), .A2(
        n_cini_module_3__xor_module_1_res), .ZN(
        n_cini_module_3__majority3_module_2_n1) );
  OR2_X1 u_cini_module_3__majority3_module_2_U3 ( .A1(
        n_cini_module_3__xor_module_3_res), .A2(
        n_cini_module_3__xor_module_1_res), .ZN(
        n_cini_module_3__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_2_U2 ( .A1(
        n_cini_module_3__xor_module_5_res), .A2(
        n_cini_module_3__majority3_module_2_n3), .ZN(
        n_cini_module_3__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_2_U1 ( .A1(
        n_cini_module_3__majority3_module_2_n1), .A2(
        n_cini_module_3__majority3_module_2_n2), .ZN(
        n_cini_module_3__majority3_module_2_res) );
  DFF_X1 u_cini_module_3__reg_module_3__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_2_res), .CK(clock_1), .Q(
        n_cini_module_3__reg_module_3_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_3_U4 ( .A1(
        n_cini_module_3__xor_module_4_res), .A2(
        n_cini_module_3__xor_module_2_res), .ZN(
        n_cini_module_3__majority3_module_3_n1) );
  OR2_X1 u_cini_module_3__majority3_module_3_U3 ( .A1(
        n_cini_module_3__xor_module_4_res), .A2(
        n_cini_module_3__xor_module_2_res), .ZN(
        n_cini_module_3__majority3_module_3_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_3_U2 ( .A1(
        n_cini_module_3__xor_module_6_res), .A2(
        n_cini_module_3__majority3_module_3_n3), .ZN(
        n_cini_module_3__majority3_module_3_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_3_U1 ( .A1(
        n_cini_module_3__majority3_module_3_n1), .A2(
        n_cini_module_3__majority3_module_3_n2), .ZN(
        n_cini_module_3__majority3_module_3_res) );
  DFF_X1 u_cini_module_3__reg_module_4__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_3_res), .CK(clock_1), .Q(
        n_cini_module_3__reg_module_4_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_4_U4 ( .A1(
        n_cini_module_3__xor_module_3_res), .A2(
        n_cini_module_3__xor_module_1_res), .ZN(
        n_cini_module_3__majority3_module_4_n1) );
  OR2_X1 u_cini_module_3__majority3_module_4_U3 ( .A1(
        n_cini_module_3__xor_module_3_res), .A2(
        n_cini_module_3__xor_module_1_res), .ZN(
        n_cini_module_3__majority3_module_4_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_4_U2 ( .A1(
        n_cini_module_3__xor_module_5_res), .A2(
        n_cini_module_3__majority3_module_4_n3), .ZN(
        n_cini_module_3__majority3_module_4_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_4_U1 ( .A1(
        n_cini_module_3__majority3_module_4_n1), .A2(
        n_cini_module_3__majority3_module_4_n2), .ZN(
        n_cini_module_3__majority3_module_4_res) );
  DFF_X1 u_cini_module_3__reg_module_5__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_4_res), .CK(clock_2), .Q(
        n_cini_module_3__reg_module_5_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_5_U4 ( .A1(
        n_cini_module_3__xor_module_4_res), .A2(
        n_cini_module_3__xor_module_2_res), .ZN(
        n_cini_module_3__majority3_module_5_n1) );
  OR2_X1 u_cini_module_3__majority3_module_5_U3 ( .A1(
        n_cini_module_3__xor_module_4_res), .A2(
        n_cini_module_3__xor_module_2_res), .ZN(
        n_cini_module_3__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_5_U2 ( .A1(
        n_cini_module_3__xor_module_6_res), .A2(
        n_cini_module_3__majority3_module_5_n3), .ZN(
        n_cini_module_3__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_5_U1 ( .A1(
        n_cini_module_3__majority3_module_5_n1), .A2(
        n_cini_module_3__majority3_module_5_n2), .ZN(
        n_cini_module_3__majority3_module_5_res) );
  DFF_X1 u_cini_module_3__reg_module_6__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_5_res), .CK(clock_2), .Q(
        n_cini_module_3__reg_module_6_res), .QN() );
  AND2_X1 u_cini_module_3__and_module_1_U1 ( .A1(
        n_cini_module_3__reg_module_1_res), .A2(n_not_module_1_res), .ZN(
        n_cini_module_3__and_module_1_res) );
  AND2_X1 u_cini_module_3__and_module_2_U1 ( .A1(
        n_cini_module_3__reg_module_2_res), .A2(n_not_module_1_res), .ZN(
        n_cini_module_3__and_module_2_res) );
  XOR2_X1 u_cini_module_3__xor_module_7_U1 ( .A(p_rand_1), .B(
        n_cini_module_3__and_module_2_res), .Z(
        n_cini_module_3__xor_module_7_res) );
  AND2_X1 u_cini_module_3__and_module_3_U1 ( .A1(
        n_cini_module_3__reg_module_1_res), .A2(n_xor_module_4_res), .ZN(
        n_cini_module_3__and_module_3_res) );
  XOR2_X1 u_cini_module_3__xor_module_8_U1 ( .A(p_rand_1), .B(
        n_cini_module_3__and_module_3_res), .Z(
        n_cini_module_3__xor_module_8_res) );
  AND2_X1 u_cini_module_3__and_module_4_U1 ( .A1(
        n_cini_module_3__reg_module_2_res), .A2(n_xor_module_4_res), .ZN(
        n_cini_module_3__and_module_4_res) );
  AND2_X1 u_cini_module_3__and_module_5_U1 ( .A1(
        n_cini_module_3__reg_module_3_res), .A2(n_not_module_2_res), .ZN(
        n_cini_module_3__and_module_5_res) );
  AND2_X1 u_cini_module_3__and_module_6_U1 ( .A1(
        n_cini_module_3__reg_module_4_res), .A2(n_not_module_2_res), .ZN(
        n_cini_module_3__and_module_6_res) );
  XOR2_X1 u_cini_module_3__xor_module_9_U1 ( .A(p_rand_1), .B(
        n_cini_module_3__and_module_6_res), .Z(
        n_cini_module_3__xor_module_9_res) );
  AND2_X1 u_cini_module_3__and_module_7_U1 ( .A1(
        n_cini_module_3__reg_module_3_res), .A2(n_xor_module_5_res), .ZN(
        n_cini_module_3__and_module_7_res) );
  XOR2_X1 u_cini_module_3__xor_module_10_U1 ( .A(p_rand_1), .B(
        n_cini_module_3__and_module_7_res), .Z(
        n_cini_module_3__xor_module_10_res) );
  AND2_X1 u_cini_module_3__and_module_8_U1 ( .A1(
        n_cini_module_3__reg_module_4_res), .A2(n_xor_module_5_res), .ZN(
        n_cini_module_3__and_module_8_res) );
  AND2_X1 u_cini_module_3__and_module_9_U1 ( .A1(
        n_cini_module_3__reg_module_5_res), .A2(n_not_module_3_res), .ZN(
        n_cini_module_3__and_module_9_res) );
  AND2_X1 u_cini_module_3__and_module_10_U1 ( .A1(
        n_cini_module_3__reg_module_6_res), .A2(n_not_module_3_res), .ZN(
        n_cini_module_3__and_module_10_res) );
  XOR2_X1 u_cini_module_3__xor_module_11_U1 ( .A(p_rand_1), .B(
        n_cini_module_3__and_module_10_res), .Z(
        n_cini_module_3__xor_module_11_res) );
  AND2_X1 u_cini_module_3__and_module_11_U1 ( .A1(
        n_cini_module_3__reg_module_5_res), .A2(n_xor_module_6_res), .ZN(
        n_cini_module_3__and_module_11_res) );
  XOR2_X1 u_cini_module_3__xor_module_12_U1 ( .A(p_rand_1), .B(
        n_cini_module_3__and_module_11_res), .Z(
        n_cini_module_3__xor_module_12_res) );
  AND2_X1 u_cini_module_3__and_module_12_U1 ( .A1(
        n_cini_module_3__reg_module_6_res), .A2(n_xor_module_6_res), .ZN(
        n_cini_module_3__and_module_12_res) );
  DFF_X1 u_cini_module_3__reg_module_7__cini_mul_v00_reg ( .D(
        n_cini_module_3__and_module_1_res), .CK(clock_0), .Q(
        n_cini_module_3__reg_module_7_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_6_U4 ( .A1(
        n_cini_module_3__xor_module_9_res), .A2(
        n_cini_module_3__xor_module_7_res), .ZN(
        n_cini_module_3__majority3_module_6_n1) );
  OR2_X1 u_cini_module_3__majority3_module_6_U3 ( .A1(
        n_cini_module_3__xor_module_9_res), .A2(
        n_cini_module_3__xor_module_7_res), .ZN(
        n_cini_module_3__majority3_module_6_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_6_U2 ( .A1(
        n_cini_module_3__xor_module_11_res), .A2(
        n_cini_module_3__majority3_module_6_n3), .ZN(
        n_cini_module_3__majority3_module_6_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_6_U1 ( .A1(
        n_cini_module_3__majority3_module_6_n1), .A2(
        n_cini_module_3__majority3_module_6_n2), .ZN(
        n_cini_module_3__majority3_module_6_res) );
  DFF_X1 u_cini_module_3__reg_module_8__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_6_res), .CK(clock_0), .Q(
        n_cini_module_3__reg_module_8_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_7_U4 ( .A1(
        n_cini_module_3__xor_module_10_res), .A2(
        n_cini_module_3__xor_module_8_res), .ZN(
        n_cini_module_3__majority3_module_7_n1) );
  OR2_X1 u_cini_module_3__majority3_module_7_U3 ( .A1(
        n_cini_module_3__xor_module_10_res), .A2(
        n_cini_module_3__xor_module_8_res), .ZN(
        n_cini_module_3__majority3_module_7_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_7_U2 ( .A1(
        n_cini_module_3__xor_module_12_res), .A2(
        n_cini_module_3__majority3_module_7_n3), .ZN(
        n_cini_module_3__majority3_module_7_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_7_U1 ( .A1(
        n_cini_module_3__majority3_module_7_n1), .A2(
        n_cini_module_3__majority3_module_7_n2), .ZN(
        n_cini_module_3__majority3_module_7_res) );
  DFF_X1 u_cini_module_3__reg_module_9__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_7_res), .CK(clock_0), .Q(
        n_cini_module_3__reg_module_9_res), .QN() );
  DFF_X1 u_cini_module_3__reg_module_10__cini_mul_v00_reg ( .D(
        n_cini_module_3__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_3__reg_module_10_res), .QN() );
  DFF_X1 u_cini_module_3__reg_module_11__cini_mul_v00_reg ( .D(
        n_cini_module_3__and_module_5_res), .CK(clock_1), .Q(
        n_cini_module_3__reg_module_11_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_8_U4 ( .A1(
        n_cini_module_3__xor_module_9_res), .A2(
        n_cini_module_3__xor_module_7_res), .ZN(
        n_cini_module_3__majority3_module_8_n1) );
  OR2_X1 u_cini_module_3__majority3_module_8_U3 ( .A1(
        n_cini_module_3__xor_module_9_res), .A2(
        n_cini_module_3__xor_module_7_res), .ZN(
        n_cini_module_3__majority3_module_8_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_8_U2 ( .A1(
        n_cini_module_3__xor_module_11_res), .A2(
        n_cini_module_3__majority3_module_8_n3), .ZN(
        n_cini_module_3__majority3_module_8_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_8_U1 ( .A1(
        n_cini_module_3__majority3_module_8_n1), .A2(
        n_cini_module_3__majority3_module_8_n2), .ZN(
        n_cini_module_3__majority3_module_8_res) );
  DFF_X1 u_cini_module_3__reg_module_12__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_8_res), .CK(clock_1), .Q(
        n_cini_module_3__reg_module_12_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_9_U4 ( .A1(
        n_cini_module_3__xor_module_10_res), .A2(
        n_cini_module_3__xor_module_8_res), .ZN(
        n_cini_module_3__majority3_module_9_n1) );
  OR2_X1 u_cini_module_3__majority3_module_9_U3 ( .A1(
        n_cini_module_3__xor_module_10_res), .A2(
        n_cini_module_3__xor_module_8_res), .ZN(
        n_cini_module_3__majority3_module_9_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_9_U2 ( .A1(
        n_cini_module_3__xor_module_12_res), .A2(
        n_cini_module_3__majority3_module_9_n3), .ZN(
        n_cini_module_3__majority3_module_9_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_9_U1 ( .A1(
        n_cini_module_3__majority3_module_9_n1), .A2(
        n_cini_module_3__majority3_module_9_n2), .ZN(
        n_cini_module_3__majority3_module_9_res) );
  DFF_X1 u_cini_module_3__reg_module_13__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_9_res), .CK(clock_1), .Q(
        n_cini_module_3__reg_module_13_res), .QN() );
  DFF_X1 u_cini_module_3__reg_module_14__cini_mul_v00_reg ( .D(
        n_cini_module_3__and_module_8_res), .CK(clock_1), .Q(
        n_cini_module_3__reg_module_14_res), .QN() );
  DFF_X1 u_cini_module_3__reg_module_15__cini_mul_v00_reg ( .D(
        n_cini_module_3__and_module_9_res), .CK(clock_2), .Q(
        n_cini_module_3__reg_module_15_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_10_U4 ( .A1(
        n_cini_module_3__xor_module_9_res), .A2(
        n_cini_module_3__xor_module_7_res), .ZN(
        n_cini_module_3__majority3_module_10_n1) );
  OR2_X1 u_cini_module_3__majority3_module_10_U3 ( .A1(
        n_cini_module_3__xor_module_9_res), .A2(
        n_cini_module_3__xor_module_7_res), .ZN(
        n_cini_module_3__majority3_module_10_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_10_U2 ( .A1(
        n_cini_module_3__xor_module_11_res), .A2(
        n_cini_module_3__majority3_module_10_n3), .ZN(
        n_cini_module_3__majority3_module_10_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_10_U1 ( .A1(
        n_cini_module_3__majority3_module_10_n1), .A2(
        n_cini_module_3__majority3_module_10_n2), .ZN(
        n_cini_module_3__majority3_module_10_res) );
  DFF_X1 u_cini_module_3__reg_module_16__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_10_res), .CK(clock_2), .Q(
        n_cini_module_3__reg_module_16_res), .QN() );
  NAND2_X1 u_cini_module_3__majority3_module_11_U4 ( .A1(
        n_cini_module_3__xor_module_10_res), .A2(
        n_cini_module_3__xor_module_8_res), .ZN(
        n_cini_module_3__majority3_module_11_n1) );
  OR2_X1 u_cini_module_3__majority3_module_11_U3 ( .A1(
        n_cini_module_3__xor_module_10_res), .A2(
        n_cini_module_3__xor_module_8_res), .ZN(
        n_cini_module_3__majority3_module_11_n3) );
  NAND2_X1 u_cini_module_3__majority3_module_11_U2 ( .A1(
        n_cini_module_3__xor_module_12_res), .A2(
        n_cini_module_3__majority3_module_11_n3), .ZN(
        n_cini_module_3__majority3_module_11_n2) );
  NAND2_X1 u_cini_module_3__majority3_module_11_U1 ( .A1(
        n_cini_module_3__majority3_module_11_n1), .A2(
        n_cini_module_3__majority3_module_11_n2), .ZN(
        n_cini_module_3__majority3_module_11_res) );
  DFF_X1 u_cini_module_3__reg_module_17__cini_mul_v00_reg ( .D(
        n_cini_module_3__majority3_module_11_res), .CK(clock_2), .Q(
        n_cini_module_3__reg_module_17_res), .QN() );
  DFF_X1 u_cini_module_3__reg_module_18__cini_mul_v00_reg ( .D(
        n_cini_module_3__and_module_12_res), .CK(clock_2), .Q(
        n_cini_module_3__reg_module_18_res), .QN() );
  XOR2_X1 u_cini_module_3__xor_module_13_U1 ( .A(
        n_cini_module_3__reg_module_8_res), .B(
        n_cini_module_3__reg_module_7_res), .Z(n_cini_module_3_out_res_s0_d0)
         );
  XOR2_X1 u_cini_module_3__xor_module_14_U1 ( .A(
        n_cini_module_3__reg_module_9_res), .B(
        n_cini_module_3__reg_module_10_res), .Z(n_cini_module_3_out_res_s1_d0)
         );
  XOR2_X1 u_cini_module_3__xor_module_15_U1 ( .A(
        n_cini_module_3__reg_module_12_res), .B(
        n_cini_module_3__reg_module_11_res), .Z(n_cini_module_3_out_res_s0_d1)
         );
  XOR2_X1 u_cini_module_3__xor_module_16_U1 ( .A(
        n_cini_module_3__reg_module_13_res), .B(
        n_cini_module_3__reg_module_14_res), .Z(n_cini_module_3_out_res_s1_d1)
         );
  XOR2_X1 u_cini_module_3__xor_module_17_U1 ( .A(
        n_cini_module_3__reg_module_16_res), .B(
        n_cini_module_3__reg_module_15_res), .Z(n_cini_module_3_out_res_s0_d2)
         );
  XOR2_X1 u_cini_module_3__xor_module_18_U1 ( .A(
        n_cini_module_3__reg_module_17_res), .B(
        n_cini_module_3__reg_module_18_res), .Z(n_cini_module_3_out_res_s1_d2)
         );
  XOR2_X1 u_xor_module_7_U1 ( .A(io_i2_s0_d0), .B(io_i0_s0_d0), .Z(
        n_xor_module_7_res) );
  XOR2_X1 u_xor_module_8_U1 ( .A(io_i2_s0_d1), .B(io_i0_s0_d1), .Z(
        n_xor_module_8_res) );
  XOR2_X1 u_xor_module_9_U1 ( .A(io_i2_s0_d2), .B(io_i0_s0_d2), .Z(
        n_xor_module_9_res) );
  XOR2_X1 u_xor_module_10_U1 ( .A(io_i2_s1_d0), .B(io_i0_s1_d0), .Z(
        n_xor_module_10_res) );
  XOR2_X1 u_xor_module_11_U1 ( .A(io_i2_s1_d1), .B(io_i0_s1_d1), .Z(
        n_xor_module_11_res) );
  XOR2_X1 u_xor_module_12_U1 ( .A(io_i2_s1_d2), .B(io_i0_s1_d2), .Z(
        n_xor_module_12_res) );
  XOR2_X1 u_xor_module_13_U1 ( .A(io_i3_s0_d0), .B(n_xor_module_7_res), .Z(
        n_xor_module_13_res) );
  XOR2_X1 u_xor_module_14_U1 ( .A(io_i3_s0_d1), .B(n_xor_module_8_res), .Z(
        n_xor_module_14_res) );
  XOR2_X1 u_xor_module_15_U1 ( .A(io_i3_s0_d2), .B(n_xor_module_9_res), .Z(
        n_xor_module_15_res) );
  XOR2_X1 u_xor_module_16_U1 ( .A(io_i3_s1_d0), .B(n_xor_module_10_res), .Z(
        n_xor_module_16_res) );
  XOR2_X1 u_xor_module_17_U1 ( .A(io_i3_s1_d1), .B(n_xor_module_11_res), .Z(
        n_xor_module_17_res) );
  XOR2_X1 u_xor_module_18_U1 ( .A(io_i3_s1_d2), .B(n_xor_module_12_res), .Z(
        n_xor_module_18_res) );
  XOR2_X1 u_xor_module_19_U1 ( .A(n_cini_module_3_out_res_s0_d0), .B(
        n_xor_module_13_res), .Z(n_xor_module_19_res) );
  XOR2_X1 u_xor_module_20_U1 ( .A(n_cini_module_3_out_res_s0_d1), .B(
        n_xor_module_14_res), .Z(n_xor_module_20_res) );
  XOR2_X1 u_xor_module_21_U1 ( .A(n_cini_module_3_out_res_s0_d2), .B(
        n_xor_module_15_res), .Z(n_xor_module_21_res) );
  XOR2_X1 u_xor_module_22_U1 ( .A(n_cini_module_3_out_res_s1_d0), .B(
        n_xor_module_16_res), .Z(n_xor_module_22_res) );
  XOR2_X1 u_xor_module_23_U1 ( .A(n_cini_module_3_out_res_s1_d1), .B(
        n_xor_module_17_res), .Z(n_xor_module_23_res) );
  XOR2_X1 u_xor_module_24_U1 ( .A(n_cini_module_3_out_res_s1_d2), .B(
        n_xor_module_18_res), .Z(n_xor_module_24_res) );
  INV_X1 u_not_module_7_U1 ( .A(n_xor_module_19_res), .ZN(n_not_module_7_res)
         );
  INV_X1 u_not_module_8_U1 ( .A(n_xor_module_20_res), .ZN(n_not_module_8_res)
         );
  INV_X1 u_not_module_9_U1 ( .A(n_xor_module_21_res), .ZN(n_not_module_9_res)
         );
  XOR2_X1 u_xor_module_25_U1 ( .A(io_i1_s0_d0), .B(io_i0_s0_d0), .Z(
        n_xor_module_25_res) );
  XOR2_X1 u_xor_module_26_U1 ( .A(io_i1_s0_d1), .B(io_i0_s0_d1), .Z(
        n_xor_module_26_res) );
  XOR2_X1 u_xor_module_27_U1 ( .A(io_i1_s0_d2), .B(io_i0_s0_d2), .Z(
        n_xor_module_27_res) );
  XOR2_X1 u_xor_module_28_U1 ( .A(io_i1_s1_d0), .B(io_i0_s1_d0), .Z(
        n_xor_module_28_res) );
  XOR2_X1 u_xor_module_29_U1 ( .A(io_i1_s1_d1), .B(io_i0_s1_d1), .Z(
        n_xor_module_29_res) );
  XOR2_X1 u_xor_module_30_U1 ( .A(io_i1_s1_d2), .B(io_i0_s1_d2), .Z(
        n_xor_module_30_res) );
  XOR2_X1 u_xor_module_31_U1 ( .A(io_i2_s0_d0), .B(n_xor_module_25_res), .Z(
        n_xor_module_31_res) );
  XOR2_X1 u_xor_module_32_U1 ( .A(io_i2_s0_d1), .B(n_xor_module_26_res), .Z(
        n_xor_module_32_res) );
  XOR2_X1 u_xor_module_33_U1 ( .A(io_i2_s0_d2), .B(n_xor_module_27_res), .Z(
        n_xor_module_33_res) );
  XOR2_X1 u_xor_module_34_U1 ( .A(io_i2_s1_d0), .B(n_xor_module_28_res), .Z(
        n_xor_module_34_res) );
  XOR2_X1 u_xor_module_35_U1 ( .A(io_i2_s1_d1), .B(n_xor_module_29_res), .Z(
        n_xor_module_35_res) );
  XOR2_X1 u_xor_module_36_U1 ( .A(io_i2_s1_d2), .B(n_xor_module_30_res), .Z(
        n_xor_module_36_res) );
  XOR2_X1 u_xor_module_37_U1 ( .A(io_i3_s0_d0), .B(n_xor_module_31_res), .Z(
        n_xor_module_37_res) );
  XOR2_X1 u_xor_module_38_U1 ( .A(io_i3_s0_d1), .B(n_xor_module_32_res), .Z(
        n_xor_module_38_res) );
  XOR2_X1 u_xor_module_39_U1 ( .A(io_i3_s0_d2), .B(n_xor_module_33_res), .Z(
        n_xor_module_39_res) );
  XOR2_X1 u_xor_module_40_U1 ( .A(io_i3_s1_d0), .B(n_xor_module_34_res), .Z(
        n_xor_module_40_res) );
  XOR2_X1 u_xor_module_41_U1 ( .A(io_i3_s1_d1), .B(n_xor_module_35_res), .Z(
        n_xor_module_41_res) );
  XOR2_X1 u_xor_module_42_U1 ( .A(io_i3_s1_d2), .B(n_xor_module_36_res), .Z(
        n_xor_module_42_res) );
  INV_X1 u_not_module_10_U1 ( .A(io_i2_s0_d0), .ZN(n_not_module_10_res) );
  INV_X1 u_not_module_11_U1 ( .A(io_i2_s0_d1), .ZN(n_not_module_11_res) );
  INV_X1 u_not_module_12_U1 ( .A(io_i2_s0_d2), .ZN(n_not_module_12_res) );
  XOR2_X1 u_cini_module_12__xor_module_1_U1 ( .A(p_rand_2), .B(io_i1_s0_d0), 
        .Z(n_cini_module_12__xor_module_1_res) );
  XOR2_X1 u_cini_module_12__xor_module_2_U1 ( .A(p_rand_2), .B(io_i1_s1_d0), 
        .Z(n_cini_module_12__xor_module_2_res) );
  XOR2_X1 u_cini_module_12__xor_module_3_U1 ( .A(p_rand_2), .B(io_i1_s0_d1), 
        .Z(n_cini_module_12__xor_module_3_res) );
  XOR2_X1 u_cini_module_12__xor_module_4_U1 ( .A(p_rand_2), .B(io_i1_s1_d1), 
        .Z(n_cini_module_12__xor_module_4_res) );
  XOR2_X1 u_cini_module_12__xor_module_5_U1 ( .A(p_rand_2), .B(io_i1_s0_d2), 
        .Z(n_cini_module_12__xor_module_5_res) );
  XOR2_X1 u_cini_module_12__xor_module_6_U1 ( .A(p_rand_2), .B(io_i1_s1_d2), 
        .Z(n_cini_module_12__xor_module_6_res) );
  NAND2_X1 u_cini_module_12__majority3_module_0_U4 ( .A1(
        n_cini_module_12__xor_module_3_res), .A2(
        n_cini_module_12__xor_module_1_res), .ZN(
        n_cini_module_12__majority3_module_0_n1) );
  OR2_X1 u_cini_module_12__majority3_module_0_U3 ( .A1(
        n_cini_module_12__xor_module_3_res), .A2(
        n_cini_module_12__xor_module_1_res), .ZN(
        n_cini_module_12__majority3_module_0_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_0_U2 ( .A1(
        n_cini_module_12__xor_module_5_res), .A2(
        n_cini_module_12__majority3_module_0_n3), .ZN(
        n_cini_module_12__majority3_module_0_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_0_U1 ( .A1(
        n_cini_module_12__majority3_module_0_n1), .A2(
        n_cini_module_12__majority3_module_0_n2), .ZN(
        n_cini_module_12__majority3_module_0_res) );
  DFF_X1 u_cini_module_12__reg_module_1__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_0_res), .CK(clock_0), .Q(
        n_cini_module_12__reg_module_1_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_1_U4 ( .A1(
        n_cini_module_12__xor_module_4_res), .A2(
        n_cini_module_12__xor_module_2_res), .ZN(
        n_cini_module_12__majority3_module_1_n1) );
  OR2_X1 u_cini_module_12__majority3_module_1_U3 ( .A1(
        n_cini_module_12__xor_module_4_res), .A2(
        n_cini_module_12__xor_module_2_res), .ZN(
        n_cini_module_12__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_1_U2 ( .A1(
        n_cini_module_12__xor_module_6_res), .A2(
        n_cini_module_12__majority3_module_1_n3), .ZN(
        n_cini_module_12__majority3_module_1_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_1_U1 ( .A1(
        n_cini_module_12__majority3_module_1_n1), .A2(
        n_cini_module_12__majority3_module_1_n2), .ZN(
        n_cini_module_12__majority3_module_1_res) );
  DFF_X1 u_cini_module_12__reg_module_2__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_1_res), .CK(clock_0), .Q(
        n_cini_module_12__reg_module_2_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_2_U4 ( .A1(
        n_cini_module_12__xor_module_3_res), .A2(
        n_cini_module_12__xor_module_1_res), .ZN(
        n_cini_module_12__majority3_module_2_n1) );
  OR2_X1 u_cini_module_12__majority3_module_2_U3 ( .A1(
        n_cini_module_12__xor_module_3_res), .A2(
        n_cini_module_12__xor_module_1_res), .ZN(
        n_cini_module_12__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_2_U2 ( .A1(
        n_cini_module_12__xor_module_5_res), .A2(
        n_cini_module_12__majority3_module_2_n3), .ZN(
        n_cini_module_12__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_2_U1 ( .A1(
        n_cini_module_12__majority3_module_2_n1), .A2(
        n_cini_module_12__majority3_module_2_n2), .ZN(
        n_cini_module_12__majority3_module_2_res) );
  DFF_X1 u_cini_module_12__reg_module_3__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_2_res), .CK(clock_1), .Q(
        n_cini_module_12__reg_module_3_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_3_U4 ( .A1(
        n_cini_module_12__xor_module_4_res), .A2(
        n_cini_module_12__xor_module_2_res), .ZN(
        n_cini_module_12__majority3_module_3_n1) );
  OR2_X1 u_cini_module_12__majority3_module_3_U3 ( .A1(
        n_cini_module_12__xor_module_4_res), .A2(
        n_cini_module_12__xor_module_2_res), .ZN(
        n_cini_module_12__majority3_module_3_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_3_U2 ( .A1(
        n_cini_module_12__xor_module_6_res), .A2(
        n_cini_module_12__majority3_module_3_n3), .ZN(
        n_cini_module_12__majority3_module_3_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_3_U1 ( .A1(
        n_cini_module_12__majority3_module_3_n1), .A2(
        n_cini_module_12__majority3_module_3_n2), .ZN(
        n_cini_module_12__majority3_module_3_res) );
  DFF_X1 u_cini_module_12__reg_module_4__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_3_res), .CK(clock_1), .Q(
        n_cini_module_12__reg_module_4_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_4_U4 ( .A1(
        n_cini_module_12__xor_module_3_res), .A2(
        n_cini_module_12__xor_module_1_res), .ZN(
        n_cini_module_12__majority3_module_4_n1) );
  OR2_X1 u_cini_module_12__majority3_module_4_U3 ( .A1(
        n_cini_module_12__xor_module_3_res), .A2(
        n_cini_module_12__xor_module_1_res), .ZN(
        n_cini_module_12__majority3_module_4_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_4_U2 ( .A1(
        n_cini_module_12__xor_module_5_res), .A2(
        n_cini_module_12__majority3_module_4_n3), .ZN(
        n_cini_module_12__majority3_module_4_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_4_U1 ( .A1(
        n_cini_module_12__majority3_module_4_n1), .A2(
        n_cini_module_12__majority3_module_4_n2), .ZN(
        n_cini_module_12__majority3_module_4_res) );
  DFF_X1 u_cini_module_12__reg_module_5__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_4_res), .CK(clock_2), .Q(
        n_cini_module_12__reg_module_5_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_5_U4 ( .A1(
        n_cini_module_12__xor_module_4_res), .A2(
        n_cini_module_12__xor_module_2_res), .ZN(
        n_cini_module_12__majority3_module_5_n1) );
  OR2_X1 u_cini_module_12__majority3_module_5_U3 ( .A1(
        n_cini_module_12__xor_module_4_res), .A2(
        n_cini_module_12__xor_module_2_res), .ZN(
        n_cini_module_12__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_5_U2 ( .A1(
        n_cini_module_12__xor_module_6_res), .A2(
        n_cini_module_12__majority3_module_5_n3), .ZN(
        n_cini_module_12__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_5_U1 ( .A1(
        n_cini_module_12__majority3_module_5_n1), .A2(
        n_cini_module_12__majority3_module_5_n2), .ZN(
        n_cini_module_12__majority3_module_5_res) );
  DFF_X1 u_cini_module_12__reg_module_6__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_5_res), .CK(clock_2), .Q(
        n_cini_module_12__reg_module_6_res), .QN() );
  AND2_X1 u_cini_module_12__and_module_1_U1 ( .A1(
        n_cini_module_12__reg_module_1_res), .A2(n_not_module_10_res), .ZN(
        n_cini_module_12__and_module_1_res) );
  AND2_X1 u_cini_module_12__and_module_2_U1 ( .A1(
        n_cini_module_12__reg_module_2_res), .A2(n_not_module_10_res), .ZN(
        n_cini_module_12__and_module_2_res) );
  XOR2_X1 u_cini_module_12__xor_module_7_U1 ( .A(p_rand_3), .B(
        n_cini_module_12__and_module_2_res), .Z(
        n_cini_module_12__xor_module_7_res) );
  AND2_X1 u_cini_module_12__and_module_3_U1 ( .A1(
        n_cini_module_12__reg_module_1_res), .A2(io_i2_s1_d0), .ZN(
        n_cini_module_12__and_module_3_res) );
  XOR2_X1 u_cini_module_12__xor_module_8_U1 ( .A(p_rand_3), .B(
        n_cini_module_12__and_module_3_res), .Z(
        n_cini_module_12__xor_module_8_res) );
  AND2_X1 u_cini_module_12__and_module_4_U1 ( .A1(
        n_cini_module_12__reg_module_2_res), .A2(io_i2_s1_d0), .ZN(
        n_cini_module_12__and_module_4_res) );
  AND2_X1 u_cini_module_12__and_module_5_U1 ( .A1(
        n_cini_module_12__reg_module_3_res), .A2(n_not_module_11_res), .ZN(
        n_cini_module_12__and_module_5_res) );
  AND2_X1 u_cini_module_12__and_module_6_U1 ( .A1(
        n_cini_module_12__reg_module_4_res), .A2(n_not_module_11_res), .ZN(
        n_cini_module_12__and_module_6_res) );
  XOR2_X1 u_cini_module_12__xor_module_9_U1 ( .A(p_rand_3), .B(
        n_cini_module_12__and_module_6_res), .Z(
        n_cini_module_12__xor_module_9_res) );
  AND2_X1 u_cini_module_12__and_module_7_U1 ( .A1(
        n_cini_module_12__reg_module_3_res), .A2(io_i2_s1_d1), .ZN(
        n_cini_module_12__and_module_7_res) );
  XOR2_X1 u_cini_module_12__xor_module_10_U1 ( .A(p_rand_3), .B(
        n_cini_module_12__and_module_7_res), .Z(
        n_cini_module_12__xor_module_10_res) );
  AND2_X1 u_cini_module_12__and_module_8_U1 ( .A1(
        n_cini_module_12__reg_module_4_res), .A2(io_i2_s1_d1), .ZN(
        n_cini_module_12__and_module_8_res) );
  AND2_X1 u_cini_module_12__and_module_9_U1 ( .A1(
        n_cini_module_12__reg_module_5_res), .A2(n_not_module_12_res), .ZN(
        n_cini_module_12__and_module_9_res) );
  AND2_X1 u_cini_module_12__and_module_10_U1 ( .A1(
        n_cini_module_12__reg_module_6_res), .A2(n_not_module_12_res), .ZN(
        n_cini_module_12__and_module_10_res) );
  XOR2_X1 u_cini_module_12__xor_module_11_U1 ( .A(p_rand_3), .B(
        n_cini_module_12__and_module_10_res), .Z(
        n_cini_module_12__xor_module_11_res) );
  AND2_X1 u_cini_module_12__and_module_11_U1 ( .A1(
        n_cini_module_12__reg_module_5_res), .A2(io_i2_s1_d2), .ZN(
        n_cini_module_12__and_module_11_res) );
  XOR2_X1 u_cini_module_12__xor_module_12_U1 ( .A(p_rand_3), .B(
        n_cini_module_12__and_module_11_res), .Z(
        n_cini_module_12__xor_module_12_res) );
  AND2_X1 u_cini_module_12__and_module_12_U1 ( .A1(
        n_cini_module_12__reg_module_6_res), .A2(io_i2_s1_d2), .ZN(
        n_cini_module_12__and_module_12_res) );
  DFF_X1 u_cini_module_12__reg_module_7__cini_mul_v00_reg ( .D(
        n_cini_module_12__and_module_1_res), .CK(clock_0), .Q(
        n_cini_module_12__reg_module_7_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_6_U4 ( .A1(
        n_cini_module_12__xor_module_9_res), .A2(
        n_cini_module_12__xor_module_7_res), .ZN(
        n_cini_module_12__majority3_module_6_n1) );
  OR2_X1 u_cini_module_12__majority3_module_6_U3 ( .A1(
        n_cini_module_12__xor_module_9_res), .A2(
        n_cini_module_12__xor_module_7_res), .ZN(
        n_cini_module_12__majority3_module_6_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_6_U2 ( .A1(
        n_cini_module_12__xor_module_11_res), .A2(
        n_cini_module_12__majority3_module_6_n3), .ZN(
        n_cini_module_12__majority3_module_6_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_6_U1 ( .A1(
        n_cini_module_12__majority3_module_6_n1), .A2(
        n_cini_module_12__majority3_module_6_n2), .ZN(
        n_cini_module_12__majority3_module_6_res) );
  DFF_X1 u_cini_module_12__reg_module_8__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_6_res), .CK(clock_0), .Q(
        n_cini_module_12__reg_module_8_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_7_U4 ( .A1(
        n_cini_module_12__xor_module_10_res), .A2(
        n_cini_module_12__xor_module_8_res), .ZN(
        n_cini_module_12__majority3_module_7_n1) );
  OR2_X1 u_cini_module_12__majority3_module_7_U3 ( .A1(
        n_cini_module_12__xor_module_10_res), .A2(
        n_cini_module_12__xor_module_8_res), .ZN(
        n_cini_module_12__majority3_module_7_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_7_U2 ( .A1(
        n_cini_module_12__xor_module_12_res), .A2(
        n_cini_module_12__majority3_module_7_n3), .ZN(
        n_cini_module_12__majority3_module_7_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_7_U1 ( .A1(
        n_cini_module_12__majority3_module_7_n1), .A2(
        n_cini_module_12__majority3_module_7_n2), .ZN(
        n_cini_module_12__majority3_module_7_res) );
  DFF_X1 u_cini_module_12__reg_module_9__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_7_res), .CK(clock_0), .Q(
        n_cini_module_12__reg_module_9_res), .QN() );
  DFF_X1 u_cini_module_12__reg_module_10__cini_mul_v00_reg ( .D(
        n_cini_module_12__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_12__reg_module_10_res), .QN() );
  DFF_X1 u_cini_module_12__reg_module_11__cini_mul_v00_reg ( .D(
        n_cini_module_12__and_module_5_res), .CK(clock_1), .Q(
        n_cini_module_12__reg_module_11_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_8_U4 ( .A1(
        n_cini_module_12__xor_module_9_res), .A2(
        n_cini_module_12__xor_module_7_res), .ZN(
        n_cini_module_12__majority3_module_8_n1) );
  OR2_X1 u_cini_module_12__majority3_module_8_U3 ( .A1(
        n_cini_module_12__xor_module_9_res), .A2(
        n_cini_module_12__xor_module_7_res), .ZN(
        n_cini_module_12__majority3_module_8_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_8_U2 ( .A1(
        n_cini_module_12__xor_module_11_res), .A2(
        n_cini_module_12__majority3_module_8_n3), .ZN(
        n_cini_module_12__majority3_module_8_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_8_U1 ( .A1(
        n_cini_module_12__majority3_module_8_n1), .A2(
        n_cini_module_12__majority3_module_8_n2), .ZN(
        n_cini_module_12__majority3_module_8_res) );
  DFF_X1 u_cini_module_12__reg_module_12__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_8_res), .CK(clock_1), .Q(
        n_cini_module_12__reg_module_12_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_9_U4 ( .A1(
        n_cini_module_12__xor_module_10_res), .A2(
        n_cini_module_12__xor_module_8_res), .ZN(
        n_cini_module_12__majority3_module_9_n1) );
  OR2_X1 u_cini_module_12__majority3_module_9_U3 ( .A1(
        n_cini_module_12__xor_module_10_res), .A2(
        n_cini_module_12__xor_module_8_res), .ZN(
        n_cini_module_12__majority3_module_9_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_9_U2 ( .A1(
        n_cini_module_12__xor_module_12_res), .A2(
        n_cini_module_12__majority3_module_9_n3), .ZN(
        n_cini_module_12__majority3_module_9_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_9_U1 ( .A1(
        n_cini_module_12__majority3_module_9_n1), .A2(
        n_cini_module_12__majority3_module_9_n2), .ZN(
        n_cini_module_12__majority3_module_9_res) );
  DFF_X1 u_cini_module_12__reg_module_13__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_9_res), .CK(clock_1), .Q(
        n_cini_module_12__reg_module_13_res), .QN() );
  DFF_X1 u_cini_module_12__reg_module_14__cini_mul_v00_reg ( .D(
        n_cini_module_12__and_module_8_res), .CK(clock_1), .Q(
        n_cini_module_12__reg_module_14_res), .QN() );
  DFF_X1 u_cini_module_12__reg_module_15__cini_mul_v00_reg ( .D(
        n_cini_module_12__and_module_9_res), .CK(clock_2), .Q(
        n_cini_module_12__reg_module_15_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_10_U4 ( .A1(
        n_cini_module_12__xor_module_9_res), .A2(
        n_cini_module_12__xor_module_7_res), .ZN(
        n_cini_module_12__majority3_module_10_n1) );
  OR2_X1 u_cini_module_12__majority3_module_10_U3 ( .A1(
        n_cini_module_12__xor_module_9_res), .A2(
        n_cini_module_12__xor_module_7_res), .ZN(
        n_cini_module_12__majority3_module_10_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_10_U2 ( .A1(
        n_cini_module_12__xor_module_11_res), .A2(
        n_cini_module_12__majority3_module_10_n3), .ZN(
        n_cini_module_12__majority3_module_10_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_10_U1 ( .A1(
        n_cini_module_12__majority3_module_10_n1), .A2(
        n_cini_module_12__majority3_module_10_n2), .ZN(
        n_cini_module_12__majority3_module_10_res) );
  DFF_X1 u_cini_module_12__reg_module_16__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_10_res), .CK(clock_2), .Q(
        n_cini_module_12__reg_module_16_res), .QN() );
  NAND2_X1 u_cini_module_12__majority3_module_11_U4 ( .A1(
        n_cini_module_12__xor_module_10_res), .A2(
        n_cini_module_12__xor_module_8_res), .ZN(
        n_cini_module_12__majority3_module_11_n1) );
  OR2_X1 u_cini_module_12__majority3_module_11_U3 ( .A1(
        n_cini_module_12__xor_module_10_res), .A2(
        n_cini_module_12__xor_module_8_res), .ZN(
        n_cini_module_12__majority3_module_11_n3) );
  NAND2_X1 u_cini_module_12__majority3_module_11_U2 ( .A1(
        n_cini_module_12__xor_module_12_res), .A2(
        n_cini_module_12__majority3_module_11_n3), .ZN(
        n_cini_module_12__majority3_module_11_n2) );
  NAND2_X1 u_cini_module_12__majority3_module_11_U1 ( .A1(
        n_cini_module_12__majority3_module_11_n1), .A2(
        n_cini_module_12__majority3_module_11_n2), .ZN(
        n_cini_module_12__majority3_module_11_res) );
  DFF_X1 u_cini_module_12__reg_module_17__cini_mul_v00_reg ( .D(
        n_cini_module_12__majority3_module_11_res), .CK(clock_2), .Q(
        n_cini_module_12__reg_module_17_res), .QN() );
  DFF_X1 u_cini_module_12__reg_module_18__cini_mul_v00_reg ( .D(
        n_cini_module_12__and_module_12_res), .CK(clock_2), .Q(
        n_cini_module_12__reg_module_18_res), .QN() );
  XOR2_X1 u_cini_module_12__xor_module_13_U1 ( .A(
        n_cini_module_12__reg_module_8_res), .B(
        n_cini_module_12__reg_module_7_res), .Z(n_cini_module_12_out_res_s0_d0) );
  XOR2_X1 u_cini_module_12__xor_module_14_U1 ( .A(
        n_cini_module_12__reg_module_9_res), .B(
        n_cini_module_12__reg_module_10_res), .Z(
        n_cini_module_12_out_res_s1_d0) );
  XOR2_X1 u_cini_module_12__xor_module_15_U1 ( .A(
        n_cini_module_12__reg_module_12_res), .B(
        n_cini_module_12__reg_module_11_res), .Z(
        n_cini_module_12_out_res_s0_d1) );
  XOR2_X1 u_cini_module_12__xor_module_16_U1 ( .A(
        n_cini_module_12__reg_module_13_res), .B(
        n_cini_module_12__reg_module_14_res), .Z(
        n_cini_module_12_out_res_s1_d1) );
  XOR2_X1 u_cini_module_12__xor_module_17_U1 ( .A(
        n_cini_module_12__reg_module_16_res), .B(
        n_cini_module_12__reg_module_15_res), .Z(
        n_cini_module_12_out_res_s0_d2) );
  XOR2_X1 u_cini_module_12__xor_module_18_U1 ( .A(
        n_cini_module_12__reg_module_17_res), .B(
        n_cini_module_12__reg_module_18_res), .Z(
        n_cini_module_12_out_res_s1_d2) );
  XOR2_X1 u_xor_module_43_U1 ( .A(io_i2_s0_d0), .B(io_i0_s0_d0), .Z(
        n_xor_module_43_res) );
  XOR2_X1 u_xor_module_44_U1 ( .A(io_i2_s0_d1), .B(io_i0_s0_d1), .Z(
        n_xor_module_44_res) );
  XOR2_X1 u_xor_module_45_U1 ( .A(io_i2_s0_d2), .B(io_i0_s0_d2), .Z(
        n_xor_module_45_res) );
  XOR2_X1 u_xor_module_46_U1 ( .A(io_i2_s1_d0), .B(io_i0_s1_d0), .Z(
        n_xor_module_46_res) );
  XOR2_X1 u_xor_module_47_U1 ( .A(io_i2_s1_d1), .B(io_i0_s1_d1), .Z(
        n_xor_module_47_res) );
  XOR2_X1 u_xor_module_48_U1 ( .A(io_i2_s1_d2), .B(io_i0_s1_d2), .Z(
        n_xor_module_48_res) );
  XOR2_X1 u_xor_module_49_U1 ( .A(n_cini_module_3_out_res_s0_d0), .B(
        n_xor_module_43_res), .Z(n_xor_module_49_res) );
  XOR2_X1 u_xor_module_50_U1 ( .A(n_cini_module_3_out_res_s0_d1), .B(
        n_xor_module_44_res), .Z(n_xor_module_50_res) );
  XOR2_X1 u_xor_module_51_U1 ( .A(n_cini_module_3_out_res_s0_d2), .B(
        n_xor_module_45_res), .Z(n_xor_module_51_res) );
  XOR2_X1 u_xor_module_52_U1 ( .A(n_cini_module_3_out_res_s1_d0), .B(
        n_xor_module_46_res), .Z(n_xor_module_52_res) );
  XOR2_X1 u_xor_module_53_U1 ( .A(n_cini_module_3_out_res_s1_d1), .B(
        n_xor_module_47_res), .Z(n_xor_module_53_res) );
  XOR2_X1 u_xor_module_54_U1 ( .A(n_cini_module_3_out_res_s1_d2), .B(
        n_xor_module_48_res), .Z(n_xor_module_54_res) );
  XOR2_X1 u_xor_module_55_U1 ( .A(n_cini_module_12_out_res_s0_d0), .B(
        n_xor_module_49_res), .Z(n_xor_module_55_res) );
  XOR2_X1 u_xor_module_56_U1 ( .A(n_cini_module_12_out_res_s0_d1), .B(
        n_xor_module_50_res), .Z(n_xor_module_56_res) );
  XOR2_X1 u_xor_module_57_U1 ( .A(n_cini_module_12_out_res_s0_d2), .B(
        n_xor_module_51_res), .Z(n_xor_module_57_res) );
  XOR2_X1 u_xor_module_58_U1 ( .A(n_cini_module_12_out_res_s1_d0), .B(
        n_xor_module_52_res), .Z(n_xor_module_58_res) );
  XOR2_X1 u_xor_module_59_U1 ( .A(n_cini_module_12_out_res_s1_d1), .B(
        n_xor_module_53_res), .Z(n_xor_module_59_res) );
  XOR2_X1 u_xor_module_60_U1 ( .A(n_cini_module_12_out_res_s1_d2), .B(
        n_xor_module_54_res), .Z(n_xor_module_60_res) );
  INV_X1 u_not_module_13_U1 ( .A(n_xor_module_55_res), .ZN(n_not_module_13_res) );
  INV_X1 u_not_module_14_U1 ( .A(n_xor_module_56_res), .ZN(n_not_module_14_res) );
  INV_X1 u_not_module_15_U1 ( .A(n_xor_module_57_res), .ZN(n_not_module_15_res) );
  XOR2_X1 u_xor_module_61_U1 ( .A(io_i2_s0_d0), .B(io_i1_s0_d0), .Z(
        n_xor_module_61_res) );
  XOR2_X1 u_xor_module_62_U1 ( .A(io_i2_s0_d1), .B(io_i1_s0_d1), .Z(
        n_xor_module_62_res) );
  XOR2_X1 u_xor_module_63_U1 ( .A(io_i2_s0_d2), .B(io_i1_s0_d2), .Z(
        n_xor_module_63_res) );
  XOR2_X1 u_xor_module_64_U1 ( .A(io_i2_s1_d0), .B(io_i1_s1_d0), .Z(
        n_xor_module_64_res) );
  XOR2_X1 u_xor_module_65_U1 ( .A(io_i2_s1_d1), .B(io_i1_s1_d1), .Z(
        n_xor_module_65_res) );
  XOR2_X1 u_xor_module_66_U1 ( .A(io_i2_s1_d2), .B(io_i1_s1_d2), .Z(
        n_xor_module_66_res) );
  XOR2_X1 u_xor_module_67_U1 ( .A(io_i3_s0_d0), .B(n_xor_module_61_res), .Z(
        n_xor_module_67_res) );
  XOR2_X1 u_xor_module_68_U1 ( .A(io_i3_s0_d1), .B(n_xor_module_62_res), .Z(
        n_xor_module_68_res) );
  XOR2_X1 u_xor_module_69_U1 ( .A(io_i3_s0_d2), .B(n_xor_module_63_res), .Z(
        n_xor_module_69_res) );
  XOR2_X1 u_xor_module_70_U1 ( .A(io_i3_s1_d0), .B(n_xor_module_64_res), .Z(
        n_xor_module_70_res) );
  XOR2_X1 u_xor_module_71_U1 ( .A(io_i3_s1_d1), .B(n_xor_module_65_res), .Z(
        n_xor_module_71_res) );
  XOR2_X1 u_xor_module_72_U1 ( .A(io_i3_s1_d2), .B(n_xor_module_66_res), .Z(
        n_xor_module_72_res) );
  XOR2_X1 u_cini_module_19__xor_module_1_U1 ( .A(p_rand_4), .B(
        n_xor_module_37_res), .Z(n_cini_module_19__xor_module_1_res) );
  XOR2_X1 u_cini_module_19__xor_module_2_U1 ( .A(p_rand_4), .B(
        n_xor_module_40_res), .Z(n_cini_module_19__xor_module_2_res) );
  XOR2_X1 u_cini_module_19__xor_module_3_U1 ( .A(p_rand_4), .B(
        n_xor_module_38_res), .Z(n_cini_module_19__xor_module_3_res) );
  XOR2_X1 u_cini_module_19__xor_module_4_U1 ( .A(p_rand_4), .B(
        n_xor_module_41_res), .Z(n_cini_module_19__xor_module_4_res) );
  XOR2_X1 u_cini_module_19__xor_module_5_U1 ( .A(p_rand_4), .B(
        n_xor_module_39_res), .Z(n_cini_module_19__xor_module_5_res) );
  XOR2_X1 u_cini_module_19__xor_module_6_U1 ( .A(p_rand_4), .B(
        n_xor_module_42_res), .Z(n_cini_module_19__xor_module_6_res) );
  NAND2_X1 u_cini_module_19__majority3_module_0_U4 ( .A1(
        n_cini_module_19__xor_module_3_res), .A2(
        n_cini_module_19__xor_module_1_res), .ZN(
        n_cini_module_19__majority3_module_0_n1) );
  OR2_X1 u_cini_module_19__majority3_module_0_U3 ( .A1(
        n_cini_module_19__xor_module_3_res), .A2(
        n_cini_module_19__xor_module_1_res), .ZN(
        n_cini_module_19__majority3_module_0_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_0_U2 ( .A1(
        n_cini_module_19__xor_module_5_res), .A2(
        n_cini_module_19__majority3_module_0_n3), .ZN(
        n_cini_module_19__majority3_module_0_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_0_U1 ( .A1(
        n_cini_module_19__majority3_module_0_n1), .A2(
        n_cini_module_19__majority3_module_0_n2), .ZN(
        n_cini_module_19__majority3_module_0_res) );
  DFF_X1 u_cini_module_19__reg_module_1__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_0_res), .CK(clock_0), .Q(
        n_cini_module_19__reg_module_1_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_1_U4 ( .A1(
        n_cini_module_19__xor_module_4_res), .A2(
        n_cini_module_19__xor_module_2_res), .ZN(
        n_cini_module_19__majority3_module_1_n1) );
  OR2_X1 u_cini_module_19__majority3_module_1_U3 ( .A1(
        n_cini_module_19__xor_module_4_res), .A2(
        n_cini_module_19__xor_module_2_res), .ZN(
        n_cini_module_19__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_1_U2 ( .A1(
        n_cini_module_19__xor_module_6_res), .A2(
        n_cini_module_19__majority3_module_1_n3), .ZN(
        n_cini_module_19__majority3_module_1_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_1_U1 ( .A1(
        n_cini_module_19__majority3_module_1_n1), .A2(
        n_cini_module_19__majority3_module_1_n2), .ZN(
        n_cini_module_19__majority3_module_1_res) );
  DFF_X1 u_cini_module_19__reg_module_2__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_1_res), .CK(clock_0), .Q(
        n_cini_module_19__reg_module_2_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_2_U4 ( .A1(
        n_cini_module_19__xor_module_3_res), .A2(
        n_cini_module_19__xor_module_1_res), .ZN(
        n_cini_module_19__majority3_module_2_n1) );
  OR2_X1 u_cini_module_19__majority3_module_2_U3 ( .A1(
        n_cini_module_19__xor_module_3_res), .A2(
        n_cini_module_19__xor_module_1_res), .ZN(
        n_cini_module_19__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_2_U2 ( .A1(
        n_cini_module_19__xor_module_5_res), .A2(
        n_cini_module_19__majority3_module_2_n3), .ZN(
        n_cini_module_19__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_2_U1 ( .A1(
        n_cini_module_19__majority3_module_2_n1), .A2(
        n_cini_module_19__majority3_module_2_n2), .ZN(
        n_cini_module_19__majority3_module_2_res) );
  DFF_X1 u_cini_module_19__reg_module_3__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_2_res), .CK(clock_1), .Q(
        n_cini_module_19__reg_module_3_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_3_U4 ( .A1(
        n_cini_module_19__xor_module_4_res), .A2(
        n_cini_module_19__xor_module_2_res), .ZN(
        n_cini_module_19__majority3_module_3_n1) );
  OR2_X1 u_cini_module_19__majority3_module_3_U3 ( .A1(
        n_cini_module_19__xor_module_4_res), .A2(
        n_cini_module_19__xor_module_2_res), .ZN(
        n_cini_module_19__majority3_module_3_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_3_U2 ( .A1(
        n_cini_module_19__xor_module_6_res), .A2(
        n_cini_module_19__majority3_module_3_n3), .ZN(
        n_cini_module_19__majority3_module_3_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_3_U1 ( .A1(
        n_cini_module_19__majority3_module_3_n1), .A2(
        n_cini_module_19__majority3_module_3_n2), .ZN(
        n_cini_module_19__majority3_module_3_res) );
  DFF_X1 u_cini_module_19__reg_module_4__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_3_res), .CK(clock_1), .Q(
        n_cini_module_19__reg_module_4_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_4_U4 ( .A1(
        n_cini_module_19__xor_module_3_res), .A2(
        n_cini_module_19__xor_module_1_res), .ZN(
        n_cini_module_19__majority3_module_4_n1) );
  OR2_X1 u_cini_module_19__majority3_module_4_U3 ( .A1(
        n_cini_module_19__xor_module_3_res), .A2(
        n_cini_module_19__xor_module_1_res), .ZN(
        n_cini_module_19__majority3_module_4_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_4_U2 ( .A1(
        n_cini_module_19__xor_module_5_res), .A2(
        n_cini_module_19__majority3_module_4_n3), .ZN(
        n_cini_module_19__majority3_module_4_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_4_U1 ( .A1(
        n_cini_module_19__majority3_module_4_n1), .A2(
        n_cini_module_19__majority3_module_4_n2), .ZN(
        n_cini_module_19__majority3_module_4_res) );
  DFF_X1 u_cini_module_19__reg_module_5__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_4_res), .CK(clock_2), .Q(
        n_cini_module_19__reg_module_5_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_5_U4 ( .A1(
        n_cini_module_19__xor_module_4_res), .A2(
        n_cini_module_19__xor_module_2_res), .ZN(
        n_cini_module_19__majority3_module_5_n1) );
  OR2_X1 u_cini_module_19__majority3_module_5_U3 ( .A1(
        n_cini_module_19__xor_module_4_res), .A2(
        n_cini_module_19__xor_module_2_res), .ZN(
        n_cini_module_19__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_5_U2 ( .A1(
        n_cini_module_19__xor_module_6_res), .A2(
        n_cini_module_19__majority3_module_5_n3), .ZN(
        n_cini_module_19__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_5_U1 ( .A1(
        n_cini_module_19__majority3_module_5_n1), .A2(
        n_cini_module_19__majority3_module_5_n2), .ZN(
        n_cini_module_19__majority3_module_5_res) );
  DFF_X1 u_cini_module_19__reg_module_6__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_5_res), .CK(clock_2), .Q(
        n_cini_module_19__reg_module_6_res), .QN() );
  AND2_X1 u_cini_module_19__and_module_1_U1 ( .A1(
        n_cini_module_19__reg_module_1_res), .A2(n_not_module_7_res), .ZN(
        n_cini_module_19__and_module_1_res) );
  AND2_X1 u_cini_module_19__and_module_2_U1 ( .A1(
        n_cini_module_19__reg_module_2_res), .A2(n_not_module_7_res), .ZN(
        n_cini_module_19__and_module_2_res) );
  XOR2_X1 u_cini_module_19__xor_module_7_U1 ( .A(p_rand_5), .B(
        n_cini_module_19__and_module_2_res), .Z(
        n_cini_module_19__xor_module_7_res) );
  AND2_X1 u_cini_module_19__and_module_3_U1 ( .A1(
        n_cini_module_19__reg_module_1_res), .A2(n_xor_module_22_res), .ZN(
        n_cini_module_19__and_module_3_res) );
  XOR2_X1 u_cini_module_19__xor_module_8_U1 ( .A(p_rand_5), .B(
        n_cini_module_19__and_module_3_res), .Z(
        n_cini_module_19__xor_module_8_res) );
  AND2_X1 u_cini_module_19__and_module_4_U1 ( .A1(
        n_cini_module_19__reg_module_2_res), .A2(n_xor_module_22_res), .ZN(
        n_cini_module_19__and_module_4_res) );
  AND2_X1 u_cini_module_19__and_module_5_U1 ( .A1(
        n_cini_module_19__reg_module_3_res), .A2(n_not_module_8_res), .ZN(
        n_cini_module_19__and_module_5_res) );
  AND2_X1 u_cini_module_19__and_module_6_U1 ( .A1(
        n_cini_module_19__reg_module_4_res), .A2(n_not_module_8_res), .ZN(
        n_cini_module_19__and_module_6_res) );
  XOR2_X1 u_cini_module_19__xor_module_9_U1 ( .A(p_rand_5), .B(
        n_cini_module_19__and_module_6_res), .Z(
        n_cini_module_19__xor_module_9_res) );
  AND2_X1 u_cini_module_19__and_module_7_U1 ( .A1(
        n_cini_module_19__reg_module_3_res), .A2(n_xor_module_23_res), .ZN(
        n_cini_module_19__and_module_7_res) );
  XOR2_X1 u_cini_module_19__xor_module_10_U1 ( .A(p_rand_5), .B(
        n_cini_module_19__and_module_7_res), .Z(
        n_cini_module_19__xor_module_10_res) );
  AND2_X1 u_cini_module_19__and_module_8_U1 ( .A1(
        n_cini_module_19__reg_module_4_res), .A2(n_xor_module_23_res), .ZN(
        n_cini_module_19__and_module_8_res) );
  AND2_X1 u_cini_module_19__and_module_9_U1 ( .A1(
        n_cini_module_19__reg_module_5_res), .A2(n_not_module_9_res), .ZN(
        n_cini_module_19__and_module_9_res) );
  AND2_X1 u_cini_module_19__and_module_10_U1 ( .A1(
        n_cini_module_19__reg_module_6_res), .A2(n_not_module_9_res), .ZN(
        n_cini_module_19__and_module_10_res) );
  XOR2_X1 u_cini_module_19__xor_module_11_U1 ( .A(p_rand_5), .B(
        n_cini_module_19__and_module_10_res), .Z(
        n_cini_module_19__xor_module_11_res) );
  AND2_X1 u_cini_module_19__and_module_11_U1 ( .A1(
        n_cini_module_19__reg_module_5_res), .A2(n_xor_module_24_res), .ZN(
        n_cini_module_19__and_module_11_res) );
  XOR2_X1 u_cini_module_19__xor_module_12_U1 ( .A(p_rand_5), .B(
        n_cini_module_19__and_module_11_res), .Z(
        n_cini_module_19__xor_module_12_res) );
  AND2_X1 u_cini_module_19__and_module_12_U1 ( .A1(
        n_cini_module_19__reg_module_6_res), .A2(n_xor_module_24_res), .ZN(
        n_cini_module_19__and_module_12_res) );
  DFF_X1 u_cini_module_19__reg_module_7__cini_mul_v00_reg ( .D(
        n_cini_module_19__and_module_1_res), .CK(clock_0), .Q(
        n_cini_module_19__reg_module_7_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_6_U4 ( .A1(
        n_cini_module_19__xor_module_9_res), .A2(
        n_cini_module_19__xor_module_7_res), .ZN(
        n_cini_module_19__majority3_module_6_n1) );
  OR2_X1 u_cini_module_19__majority3_module_6_U3 ( .A1(
        n_cini_module_19__xor_module_9_res), .A2(
        n_cini_module_19__xor_module_7_res), .ZN(
        n_cini_module_19__majority3_module_6_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_6_U2 ( .A1(
        n_cini_module_19__xor_module_11_res), .A2(
        n_cini_module_19__majority3_module_6_n3), .ZN(
        n_cini_module_19__majority3_module_6_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_6_U1 ( .A1(
        n_cini_module_19__majority3_module_6_n1), .A2(
        n_cini_module_19__majority3_module_6_n2), .ZN(
        n_cini_module_19__majority3_module_6_res) );
  DFF_X1 u_cini_module_19__reg_module_8__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_6_res), .CK(clock_0), .Q(
        n_cini_module_19__reg_module_8_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_7_U4 ( .A1(
        n_cini_module_19__xor_module_10_res), .A2(
        n_cini_module_19__xor_module_8_res), .ZN(
        n_cini_module_19__majority3_module_7_n1) );
  OR2_X1 u_cini_module_19__majority3_module_7_U3 ( .A1(
        n_cini_module_19__xor_module_10_res), .A2(
        n_cini_module_19__xor_module_8_res), .ZN(
        n_cini_module_19__majority3_module_7_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_7_U2 ( .A1(
        n_cini_module_19__xor_module_12_res), .A2(
        n_cini_module_19__majority3_module_7_n3), .ZN(
        n_cini_module_19__majority3_module_7_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_7_U1 ( .A1(
        n_cini_module_19__majority3_module_7_n1), .A2(
        n_cini_module_19__majority3_module_7_n2), .ZN(
        n_cini_module_19__majority3_module_7_res) );
  DFF_X1 u_cini_module_19__reg_module_9__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_7_res), .CK(clock_0), .Q(
        n_cini_module_19__reg_module_9_res), .QN() );
  DFF_X1 u_cini_module_19__reg_module_10__cini_mul_v00_reg ( .D(
        n_cini_module_19__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_19__reg_module_10_res), .QN() );
  DFF_X1 u_cini_module_19__reg_module_11__cini_mul_v00_reg ( .D(
        n_cini_module_19__and_module_5_res), .CK(clock_1), .Q(
        n_cini_module_19__reg_module_11_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_8_U4 ( .A1(
        n_cini_module_19__xor_module_9_res), .A2(
        n_cini_module_19__xor_module_7_res), .ZN(
        n_cini_module_19__majority3_module_8_n1) );
  OR2_X1 u_cini_module_19__majority3_module_8_U3 ( .A1(
        n_cini_module_19__xor_module_9_res), .A2(
        n_cini_module_19__xor_module_7_res), .ZN(
        n_cini_module_19__majority3_module_8_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_8_U2 ( .A1(
        n_cini_module_19__xor_module_11_res), .A2(
        n_cini_module_19__majority3_module_8_n3), .ZN(
        n_cini_module_19__majority3_module_8_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_8_U1 ( .A1(
        n_cini_module_19__majority3_module_8_n1), .A2(
        n_cini_module_19__majority3_module_8_n2), .ZN(
        n_cini_module_19__majority3_module_8_res) );
  DFF_X1 u_cini_module_19__reg_module_12__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_8_res), .CK(clock_1), .Q(
        n_cini_module_19__reg_module_12_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_9_U4 ( .A1(
        n_cini_module_19__xor_module_10_res), .A2(
        n_cini_module_19__xor_module_8_res), .ZN(
        n_cini_module_19__majority3_module_9_n1) );
  OR2_X1 u_cini_module_19__majority3_module_9_U3 ( .A1(
        n_cini_module_19__xor_module_10_res), .A2(
        n_cini_module_19__xor_module_8_res), .ZN(
        n_cini_module_19__majority3_module_9_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_9_U2 ( .A1(
        n_cini_module_19__xor_module_12_res), .A2(
        n_cini_module_19__majority3_module_9_n3), .ZN(
        n_cini_module_19__majority3_module_9_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_9_U1 ( .A1(
        n_cini_module_19__majority3_module_9_n1), .A2(
        n_cini_module_19__majority3_module_9_n2), .ZN(
        n_cini_module_19__majority3_module_9_res) );
  DFF_X1 u_cini_module_19__reg_module_13__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_9_res), .CK(clock_1), .Q(
        n_cini_module_19__reg_module_13_res), .QN() );
  DFF_X1 u_cini_module_19__reg_module_14__cini_mul_v00_reg ( .D(
        n_cini_module_19__and_module_8_res), .CK(clock_1), .Q(
        n_cini_module_19__reg_module_14_res), .QN() );
  DFF_X1 u_cini_module_19__reg_module_15__cini_mul_v00_reg ( .D(
        n_cini_module_19__and_module_9_res), .CK(clock_2), .Q(
        n_cini_module_19__reg_module_15_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_10_U4 ( .A1(
        n_cini_module_19__xor_module_9_res), .A2(
        n_cini_module_19__xor_module_7_res), .ZN(
        n_cini_module_19__majority3_module_10_n1) );
  OR2_X1 u_cini_module_19__majority3_module_10_U3 ( .A1(
        n_cini_module_19__xor_module_9_res), .A2(
        n_cini_module_19__xor_module_7_res), .ZN(
        n_cini_module_19__majority3_module_10_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_10_U2 ( .A1(
        n_cini_module_19__xor_module_11_res), .A2(
        n_cini_module_19__majority3_module_10_n3), .ZN(
        n_cini_module_19__majority3_module_10_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_10_U1 ( .A1(
        n_cini_module_19__majority3_module_10_n1), .A2(
        n_cini_module_19__majority3_module_10_n2), .ZN(
        n_cini_module_19__majority3_module_10_res) );
  DFF_X1 u_cini_module_19__reg_module_16__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_10_res), .CK(clock_2), .Q(
        n_cini_module_19__reg_module_16_res), .QN() );
  NAND2_X1 u_cini_module_19__majority3_module_11_U4 ( .A1(
        n_cini_module_19__xor_module_10_res), .A2(
        n_cini_module_19__xor_module_8_res), .ZN(
        n_cini_module_19__majority3_module_11_n1) );
  OR2_X1 u_cini_module_19__majority3_module_11_U3 ( .A1(
        n_cini_module_19__xor_module_10_res), .A2(
        n_cini_module_19__xor_module_8_res), .ZN(
        n_cini_module_19__majority3_module_11_n3) );
  NAND2_X1 u_cini_module_19__majority3_module_11_U2 ( .A1(
        n_cini_module_19__xor_module_12_res), .A2(
        n_cini_module_19__majority3_module_11_n3), .ZN(
        n_cini_module_19__majority3_module_11_n2) );
  NAND2_X1 u_cini_module_19__majority3_module_11_U1 ( .A1(
        n_cini_module_19__majority3_module_11_n1), .A2(
        n_cini_module_19__majority3_module_11_n2), .ZN(
        n_cini_module_19__majority3_module_11_res) );
  DFF_X1 u_cini_module_19__reg_module_17__cini_mul_v00_reg ( .D(
        n_cini_module_19__majority3_module_11_res), .CK(clock_2), .Q(
        n_cini_module_19__reg_module_17_res), .QN() );
  DFF_X1 u_cini_module_19__reg_module_18__cini_mul_v00_reg ( .D(
        n_cini_module_19__and_module_12_res), .CK(clock_2), .Q(
        n_cini_module_19__reg_module_18_res), .QN() );
  XOR2_X1 u_cini_module_19__xor_module_13_U1 ( .A(
        n_cini_module_19__reg_module_8_res), .B(
        n_cini_module_19__reg_module_7_res), .Z(n_cini_module_19_out_res_s0_d0) );
  XOR2_X1 u_cini_module_19__xor_module_14_U1 ( .A(
        n_cini_module_19__reg_module_9_res), .B(
        n_cini_module_19__reg_module_10_res), .Z(
        n_cini_module_19_out_res_s1_d0) );
  XOR2_X1 u_cini_module_19__xor_module_15_U1 ( .A(
        n_cini_module_19__reg_module_12_res), .B(
        n_cini_module_19__reg_module_11_res), .Z(
        n_cini_module_19_out_res_s0_d1) );
  XOR2_X1 u_cini_module_19__xor_module_16_U1 ( .A(
        n_cini_module_19__reg_module_13_res), .B(
        n_cini_module_19__reg_module_14_res), .Z(
        n_cini_module_19_out_res_s1_d1) );
  XOR2_X1 u_cini_module_19__xor_module_17_U1 ( .A(
        n_cini_module_19__reg_module_16_res), .B(
        n_cini_module_19__reg_module_15_res), .Z(
        n_cini_module_19_out_res_s0_d2) );
  XOR2_X1 u_cini_module_19__xor_module_18_U1 ( .A(
        n_cini_module_19__reg_module_17_res), .B(
        n_cini_module_19__reg_module_18_res), .Z(
        n_cini_module_19_out_res_s1_d2) );
  XOR2_X1 u_cini_module_20__xor_module_1_U1 ( .A(p_rand_6), .B(
        n_xor_module_67_res), .Z(n_cini_module_20__xor_module_1_res) );
  XOR2_X1 u_cini_module_20__xor_module_2_U1 ( .A(p_rand_6), .B(
        n_xor_module_70_res), .Z(n_cini_module_20__xor_module_2_res) );
  XOR2_X1 u_cini_module_20__xor_module_3_U1 ( .A(p_rand_6), .B(
        n_xor_module_68_res), .Z(n_cini_module_20__xor_module_3_res) );
  XOR2_X1 u_cini_module_20__xor_module_4_U1 ( .A(p_rand_6), .B(
        n_xor_module_71_res), .Z(n_cini_module_20__xor_module_4_res) );
  XOR2_X1 u_cini_module_20__xor_module_5_U1 ( .A(p_rand_6), .B(
        n_xor_module_69_res), .Z(n_cini_module_20__xor_module_5_res) );
  XOR2_X1 u_cini_module_20__xor_module_6_U1 ( .A(p_rand_6), .B(
        n_xor_module_72_res), .Z(n_cini_module_20__xor_module_6_res) );
  NAND2_X1 u_cini_module_20__majority3_module_0_U4 ( .A1(
        n_cini_module_20__xor_module_3_res), .A2(
        n_cini_module_20__xor_module_1_res), .ZN(
        n_cini_module_20__majority3_module_0_n1) );
  OR2_X1 u_cini_module_20__majority3_module_0_U3 ( .A1(
        n_cini_module_20__xor_module_3_res), .A2(
        n_cini_module_20__xor_module_1_res), .ZN(
        n_cini_module_20__majority3_module_0_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_0_U2 ( .A1(
        n_cini_module_20__xor_module_5_res), .A2(
        n_cini_module_20__majority3_module_0_n3), .ZN(
        n_cini_module_20__majority3_module_0_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_0_U1 ( .A1(
        n_cini_module_20__majority3_module_0_n1), .A2(
        n_cini_module_20__majority3_module_0_n2), .ZN(
        n_cini_module_20__majority3_module_0_res) );
  DFF_X1 u_cini_module_20__reg_module_1__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_0_res), .CK(clock_0), .Q(
        n_cini_module_20__reg_module_1_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_1_U4 ( .A1(
        n_cini_module_20__xor_module_4_res), .A2(
        n_cini_module_20__xor_module_2_res), .ZN(
        n_cini_module_20__majority3_module_1_n1) );
  OR2_X1 u_cini_module_20__majority3_module_1_U3 ( .A1(
        n_cini_module_20__xor_module_4_res), .A2(
        n_cini_module_20__xor_module_2_res), .ZN(
        n_cini_module_20__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_1_U2 ( .A1(
        n_cini_module_20__xor_module_6_res), .A2(
        n_cini_module_20__majority3_module_1_n3), .ZN(
        n_cini_module_20__majority3_module_1_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_1_U1 ( .A1(
        n_cini_module_20__majority3_module_1_n1), .A2(
        n_cini_module_20__majority3_module_1_n2), .ZN(
        n_cini_module_20__majority3_module_1_res) );
  DFF_X1 u_cini_module_20__reg_module_2__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_1_res), .CK(clock_0), .Q(
        n_cini_module_20__reg_module_2_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_2_U4 ( .A1(
        n_cini_module_20__xor_module_3_res), .A2(
        n_cini_module_20__xor_module_1_res), .ZN(
        n_cini_module_20__majority3_module_2_n1) );
  OR2_X1 u_cini_module_20__majority3_module_2_U3 ( .A1(
        n_cini_module_20__xor_module_3_res), .A2(
        n_cini_module_20__xor_module_1_res), .ZN(
        n_cini_module_20__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_2_U2 ( .A1(
        n_cini_module_20__xor_module_5_res), .A2(
        n_cini_module_20__majority3_module_2_n3), .ZN(
        n_cini_module_20__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_2_U1 ( .A1(
        n_cini_module_20__majority3_module_2_n1), .A2(
        n_cini_module_20__majority3_module_2_n2), .ZN(
        n_cini_module_20__majority3_module_2_res) );
  DFF_X1 u_cini_module_20__reg_module_3__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_2_res), .CK(clock_1), .Q(
        n_cini_module_20__reg_module_3_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_3_U4 ( .A1(
        n_cini_module_20__xor_module_4_res), .A2(
        n_cini_module_20__xor_module_2_res), .ZN(
        n_cini_module_20__majority3_module_3_n1) );
  OR2_X1 u_cini_module_20__majority3_module_3_U3 ( .A1(
        n_cini_module_20__xor_module_4_res), .A2(
        n_cini_module_20__xor_module_2_res), .ZN(
        n_cini_module_20__majority3_module_3_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_3_U2 ( .A1(
        n_cini_module_20__xor_module_6_res), .A2(
        n_cini_module_20__majority3_module_3_n3), .ZN(
        n_cini_module_20__majority3_module_3_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_3_U1 ( .A1(
        n_cini_module_20__majority3_module_3_n1), .A2(
        n_cini_module_20__majority3_module_3_n2), .ZN(
        n_cini_module_20__majority3_module_3_res) );
  DFF_X1 u_cini_module_20__reg_module_4__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_3_res), .CK(clock_1), .Q(
        n_cini_module_20__reg_module_4_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_4_U4 ( .A1(
        n_cini_module_20__xor_module_3_res), .A2(
        n_cini_module_20__xor_module_1_res), .ZN(
        n_cini_module_20__majority3_module_4_n1) );
  OR2_X1 u_cini_module_20__majority3_module_4_U3 ( .A1(
        n_cini_module_20__xor_module_3_res), .A2(
        n_cini_module_20__xor_module_1_res), .ZN(
        n_cini_module_20__majority3_module_4_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_4_U2 ( .A1(
        n_cini_module_20__xor_module_5_res), .A2(
        n_cini_module_20__majority3_module_4_n3), .ZN(
        n_cini_module_20__majority3_module_4_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_4_U1 ( .A1(
        n_cini_module_20__majority3_module_4_n1), .A2(
        n_cini_module_20__majority3_module_4_n2), .ZN(
        n_cini_module_20__majority3_module_4_res) );
  DFF_X1 u_cini_module_20__reg_module_5__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_4_res), .CK(clock_2), .Q(
        n_cini_module_20__reg_module_5_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_5_U4 ( .A1(
        n_cini_module_20__xor_module_4_res), .A2(
        n_cini_module_20__xor_module_2_res), .ZN(
        n_cini_module_20__majority3_module_5_n1) );
  OR2_X1 u_cini_module_20__majority3_module_5_U3 ( .A1(
        n_cini_module_20__xor_module_4_res), .A2(
        n_cini_module_20__xor_module_2_res), .ZN(
        n_cini_module_20__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_5_U2 ( .A1(
        n_cini_module_20__xor_module_6_res), .A2(
        n_cini_module_20__majority3_module_5_n3), .ZN(
        n_cini_module_20__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_5_U1 ( .A1(
        n_cini_module_20__majority3_module_5_n1), .A2(
        n_cini_module_20__majority3_module_5_n2), .ZN(
        n_cini_module_20__majority3_module_5_res) );
  DFF_X1 u_cini_module_20__reg_module_6__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_5_res), .CK(clock_2), .Q(
        n_cini_module_20__reg_module_6_res), .QN() );
  AND2_X1 u_cini_module_20__and_module_1_U1 ( .A1(
        n_cini_module_20__reg_module_1_res), .A2(n_not_module_13_res), .ZN(
        n_cini_module_20__and_module_1_res) );
  AND2_X1 u_cini_module_20__and_module_2_U1 ( .A1(
        n_cini_module_20__reg_module_2_res), .A2(n_not_module_13_res), .ZN(
        n_cini_module_20__and_module_2_res) );
  XOR2_X1 u_cini_module_20__xor_module_7_U1 ( .A(p_rand_7), .B(
        n_cini_module_20__and_module_2_res), .Z(
        n_cini_module_20__xor_module_7_res) );
  AND2_X1 u_cini_module_20__and_module_3_U1 ( .A1(
        n_cini_module_20__reg_module_1_res), .A2(n_xor_module_58_res), .ZN(
        n_cini_module_20__and_module_3_res) );
  XOR2_X1 u_cini_module_20__xor_module_8_U1 ( .A(p_rand_7), .B(
        n_cini_module_20__and_module_3_res), .Z(
        n_cini_module_20__xor_module_8_res) );
  AND2_X1 u_cini_module_20__and_module_4_U1 ( .A1(
        n_cini_module_20__reg_module_2_res), .A2(n_xor_module_58_res), .ZN(
        n_cini_module_20__and_module_4_res) );
  AND2_X1 u_cini_module_20__and_module_5_U1 ( .A1(
        n_cini_module_20__reg_module_3_res), .A2(n_not_module_14_res), .ZN(
        n_cini_module_20__and_module_5_res) );
  AND2_X1 u_cini_module_20__and_module_6_U1 ( .A1(
        n_cini_module_20__reg_module_4_res), .A2(n_not_module_14_res), .ZN(
        n_cini_module_20__and_module_6_res) );
  XOR2_X1 u_cini_module_20__xor_module_9_U1 ( .A(p_rand_7), .B(
        n_cini_module_20__and_module_6_res), .Z(
        n_cini_module_20__xor_module_9_res) );
  AND2_X1 u_cini_module_20__and_module_7_U1 ( .A1(
        n_cini_module_20__reg_module_3_res), .A2(n_xor_module_59_res), .ZN(
        n_cini_module_20__and_module_7_res) );
  XOR2_X1 u_cini_module_20__xor_module_10_U1 ( .A(p_rand_7), .B(
        n_cini_module_20__and_module_7_res), .Z(
        n_cini_module_20__xor_module_10_res) );
  AND2_X1 u_cini_module_20__and_module_8_U1 ( .A1(
        n_cini_module_20__reg_module_4_res), .A2(n_xor_module_59_res), .ZN(
        n_cini_module_20__and_module_8_res) );
  AND2_X1 u_cini_module_20__and_module_9_U1 ( .A1(
        n_cini_module_20__reg_module_5_res), .A2(n_not_module_15_res), .ZN(
        n_cini_module_20__and_module_9_res) );
  AND2_X1 u_cini_module_20__and_module_10_U1 ( .A1(
        n_cini_module_20__reg_module_6_res), .A2(n_not_module_15_res), .ZN(
        n_cini_module_20__and_module_10_res) );
  XOR2_X1 u_cini_module_20__xor_module_11_U1 ( .A(p_rand_7), .B(
        n_cini_module_20__and_module_10_res), .Z(
        n_cini_module_20__xor_module_11_res) );
  AND2_X1 u_cini_module_20__and_module_11_U1 ( .A1(
        n_cini_module_20__reg_module_5_res), .A2(n_xor_module_60_res), .ZN(
        n_cini_module_20__and_module_11_res) );
  XOR2_X1 u_cini_module_20__xor_module_12_U1 ( .A(p_rand_7), .B(
        n_cini_module_20__and_module_11_res), .Z(
        n_cini_module_20__xor_module_12_res) );
  AND2_X1 u_cini_module_20__and_module_12_U1 ( .A1(
        n_cini_module_20__reg_module_6_res), .A2(n_xor_module_60_res), .ZN(
        n_cini_module_20__and_module_12_res) );
  DFF_X1 u_cini_module_20__reg_module_7__cini_mul_v00_reg ( .D(
        n_cini_module_20__and_module_1_res), .CK(clock_0), .Q(
        n_cini_module_20__reg_module_7_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_6_U4 ( .A1(
        n_cini_module_20__xor_module_9_res), .A2(
        n_cini_module_20__xor_module_7_res), .ZN(
        n_cini_module_20__majority3_module_6_n1) );
  OR2_X1 u_cini_module_20__majority3_module_6_U3 ( .A1(
        n_cini_module_20__xor_module_9_res), .A2(
        n_cini_module_20__xor_module_7_res), .ZN(
        n_cini_module_20__majority3_module_6_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_6_U2 ( .A1(
        n_cini_module_20__xor_module_11_res), .A2(
        n_cini_module_20__majority3_module_6_n3), .ZN(
        n_cini_module_20__majority3_module_6_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_6_U1 ( .A1(
        n_cini_module_20__majority3_module_6_n1), .A2(
        n_cini_module_20__majority3_module_6_n2), .ZN(
        n_cini_module_20__majority3_module_6_res) );
  DFF_X1 u_cini_module_20__reg_module_8__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_6_res), .CK(clock_0), .Q(
        n_cini_module_20__reg_module_8_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_7_U4 ( .A1(
        n_cini_module_20__xor_module_10_res), .A2(
        n_cini_module_20__xor_module_8_res), .ZN(
        n_cini_module_20__majority3_module_7_n1) );
  OR2_X1 u_cini_module_20__majority3_module_7_U3 ( .A1(
        n_cini_module_20__xor_module_10_res), .A2(
        n_cini_module_20__xor_module_8_res), .ZN(
        n_cini_module_20__majority3_module_7_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_7_U2 ( .A1(
        n_cini_module_20__xor_module_12_res), .A2(
        n_cini_module_20__majority3_module_7_n3), .ZN(
        n_cini_module_20__majority3_module_7_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_7_U1 ( .A1(
        n_cini_module_20__majority3_module_7_n1), .A2(
        n_cini_module_20__majority3_module_7_n2), .ZN(
        n_cini_module_20__majority3_module_7_res) );
  DFF_X1 u_cini_module_20__reg_module_9__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_7_res), .CK(clock_0), .Q(
        n_cini_module_20__reg_module_9_res), .QN() );
  DFF_X1 u_cini_module_20__reg_module_10__cini_mul_v00_reg ( .D(
        n_cini_module_20__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_20__reg_module_10_res), .QN() );
  DFF_X1 u_cini_module_20__reg_module_11__cini_mul_v00_reg ( .D(
        n_cini_module_20__and_module_5_res), .CK(clock_1), .Q(
        n_cini_module_20__reg_module_11_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_8_U4 ( .A1(
        n_cini_module_20__xor_module_9_res), .A2(
        n_cini_module_20__xor_module_7_res), .ZN(
        n_cini_module_20__majority3_module_8_n1) );
  OR2_X1 u_cini_module_20__majority3_module_8_U3 ( .A1(
        n_cini_module_20__xor_module_9_res), .A2(
        n_cini_module_20__xor_module_7_res), .ZN(
        n_cini_module_20__majority3_module_8_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_8_U2 ( .A1(
        n_cini_module_20__xor_module_11_res), .A2(
        n_cini_module_20__majority3_module_8_n3), .ZN(
        n_cini_module_20__majority3_module_8_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_8_U1 ( .A1(
        n_cini_module_20__majority3_module_8_n1), .A2(
        n_cini_module_20__majority3_module_8_n2), .ZN(
        n_cini_module_20__majority3_module_8_res) );
  DFF_X1 u_cini_module_20__reg_module_12__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_8_res), .CK(clock_1), .Q(
        n_cini_module_20__reg_module_12_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_9_U4 ( .A1(
        n_cini_module_20__xor_module_10_res), .A2(
        n_cini_module_20__xor_module_8_res), .ZN(
        n_cini_module_20__majority3_module_9_n1) );
  OR2_X1 u_cini_module_20__majority3_module_9_U3 ( .A1(
        n_cini_module_20__xor_module_10_res), .A2(
        n_cini_module_20__xor_module_8_res), .ZN(
        n_cini_module_20__majority3_module_9_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_9_U2 ( .A1(
        n_cini_module_20__xor_module_12_res), .A2(
        n_cini_module_20__majority3_module_9_n3), .ZN(
        n_cini_module_20__majority3_module_9_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_9_U1 ( .A1(
        n_cini_module_20__majority3_module_9_n1), .A2(
        n_cini_module_20__majority3_module_9_n2), .ZN(
        n_cini_module_20__majority3_module_9_res) );
  DFF_X1 u_cini_module_20__reg_module_13__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_9_res), .CK(clock_1), .Q(
        n_cini_module_20__reg_module_13_res), .QN() );
  DFF_X1 u_cini_module_20__reg_module_14__cini_mul_v00_reg ( .D(
        n_cini_module_20__and_module_8_res), .CK(clock_1), .Q(
        n_cini_module_20__reg_module_14_res), .QN() );
  DFF_X1 u_cini_module_20__reg_module_15__cini_mul_v00_reg ( .D(
        n_cini_module_20__and_module_9_res), .CK(clock_2), .Q(
        n_cini_module_20__reg_module_15_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_10_U4 ( .A1(
        n_cini_module_20__xor_module_9_res), .A2(
        n_cini_module_20__xor_module_7_res), .ZN(
        n_cini_module_20__majority3_module_10_n1) );
  OR2_X1 u_cini_module_20__majority3_module_10_U3 ( .A1(
        n_cini_module_20__xor_module_9_res), .A2(
        n_cini_module_20__xor_module_7_res), .ZN(
        n_cini_module_20__majority3_module_10_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_10_U2 ( .A1(
        n_cini_module_20__xor_module_11_res), .A2(
        n_cini_module_20__majority3_module_10_n3), .ZN(
        n_cini_module_20__majority3_module_10_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_10_U1 ( .A1(
        n_cini_module_20__majority3_module_10_n1), .A2(
        n_cini_module_20__majority3_module_10_n2), .ZN(
        n_cini_module_20__majority3_module_10_res) );
  DFF_X1 u_cini_module_20__reg_module_16__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_10_res), .CK(clock_2), .Q(
        n_cini_module_20__reg_module_16_res), .QN() );
  NAND2_X1 u_cini_module_20__majority3_module_11_U4 ( .A1(
        n_cini_module_20__xor_module_10_res), .A2(
        n_cini_module_20__xor_module_8_res), .ZN(
        n_cini_module_20__majority3_module_11_n1) );
  OR2_X1 u_cini_module_20__majority3_module_11_U3 ( .A1(
        n_cini_module_20__xor_module_10_res), .A2(
        n_cini_module_20__xor_module_8_res), .ZN(
        n_cini_module_20__majority3_module_11_n3) );
  NAND2_X1 u_cini_module_20__majority3_module_11_U2 ( .A1(
        n_cini_module_20__xor_module_12_res), .A2(
        n_cini_module_20__majority3_module_11_n3), .ZN(
        n_cini_module_20__majority3_module_11_n2) );
  NAND2_X1 u_cini_module_20__majority3_module_11_U1 ( .A1(
        n_cini_module_20__majority3_module_11_n1), .A2(
        n_cini_module_20__majority3_module_11_n2), .ZN(
        n_cini_module_20__majority3_module_11_res) );
  DFF_X1 u_cini_module_20__reg_module_17__cini_mul_v00_reg ( .D(
        n_cini_module_20__majority3_module_11_res), .CK(clock_2), .Q(
        n_cini_module_20__reg_module_17_res), .QN() );
  DFF_X1 u_cini_module_20__reg_module_18__cini_mul_v00_reg ( .D(
        n_cini_module_20__and_module_12_res), .CK(clock_2), .Q(
        n_cini_module_20__reg_module_18_res), .QN() );
  XOR2_X1 u_cini_module_20__xor_module_13_U1 ( .A(
        n_cini_module_20__reg_module_8_res), .B(
        n_cini_module_20__reg_module_7_res), .Z(n_cini_module_20_out_res_s0_d0) );
  XOR2_X1 u_cini_module_20__xor_module_14_U1 ( .A(
        n_cini_module_20__reg_module_9_res), .B(
        n_cini_module_20__reg_module_10_res), .Z(
        n_cini_module_20_out_res_s1_d0) );
  XOR2_X1 u_cini_module_20__xor_module_15_U1 ( .A(
        n_cini_module_20__reg_module_12_res), .B(
        n_cini_module_20__reg_module_11_res), .Z(
        n_cini_module_20_out_res_s0_d1) );
  XOR2_X1 u_cini_module_20__xor_module_16_U1 ( .A(
        n_cini_module_20__reg_module_13_res), .B(
        n_cini_module_20__reg_module_14_res), .Z(
        n_cini_module_20_out_res_s1_d1) );
  XOR2_X1 u_cini_module_20__xor_module_17_U1 ( .A(
        n_cini_module_20__reg_module_16_res), .B(
        n_cini_module_20__reg_module_15_res), .Z(
        n_cini_module_20_out_res_s0_d2) );
  XOR2_X1 u_cini_module_20__xor_module_18_U1 ( .A(
        n_cini_module_20__reg_module_17_res), .B(
        n_cini_module_20__reg_module_18_res), .Z(
        n_cini_module_20_out_res_s1_d2) );
  XOR2_X1 u_xor_module_73_U1 ( .A(n_cini_module_3_out_res_s0_d0), .B(
        io_i3_s0_d0), .Z(n_xor_module_73_res) );
  XOR2_X1 u_xor_module_74_U1 ( .A(n_cini_module_3_out_res_s0_d1), .B(
        io_i3_s0_d1), .Z(n_xor_module_74_res) );
  XOR2_X1 u_xor_module_75_U1 ( .A(n_cini_module_3_out_res_s0_d2), .B(
        io_i3_s0_d2), .Z(n_xor_module_75_res) );
  XOR2_X1 u_xor_module_76_U1 ( .A(n_cini_module_3_out_res_s1_d0), .B(
        io_i3_s1_d0), .Z(n_xor_module_76_res) );
  XOR2_X1 u_xor_module_77_U1 ( .A(n_cini_module_3_out_res_s1_d1), .B(
        io_i3_s1_d1), .Z(n_xor_module_77_res) );
  XOR2_X1 u_xor_module_78_U1 ( .A(n_cini_module_3_out_res_s1_d2), .B(
        io_i3_s1_d2), .Z(n_xor_module_78_res) );
  XOR2_X1 u_xor_module_79_U1 ( .A(n_cini_module_12_out_res_s0_d0), .B(
        n_xor_module_73_res), .Z(n_xor_module_79_res) );
  XOR2_X1 u_xor_module_80_U1 ( .A(n_cini_module_12_out_res_s0_d1), .B(
        n_xor_module_74_res), .Z(n_xor_module_80_res) );
  XOR2_X1 u_xor_module_81_U1 ( .A(n_cini_module_12_out_res_s0_d2), .B(
        n_xor_module_75_res), .Z(n_xor_module_81_res) );
  XOR2_X1 u_xor_module_82_U1 ( .A(n_cini_module_12_out_res_s1_d0), .B(
        n_xor_module_76_res), .Z(n_xor_module_82_res) );
  XOR2_X1 u_xor_module_83_U1 ( .A(n_cini_module_12_out_res_s1_d1), .B(
        n_xor_module_77_res), .Z(n_xor_module_83_res) );
  XOR2_X1 u_xor_module_84_U1 ( .A(n_cini_module_12_out_res_s1_d2), .B(
        n_xor_module_78_res), .Z(n_xor_module_84_res) );
  XOR2_X1 u_xor_module_85_U1 ( .A(n_cini_module_20_out_res_s0_d0), .B(
        n_xor_module_79_res), .Z(io_o0_s0_d0) );
  XOR2_X1 u_xor_module_86_U1 ( .A(n_cini_module_20_out_res_s0_d1), .B(
        n_xor_module_80_res), .Z(io_o0_s0_d1) );
  XOR2_X1 u_xor_module_87_U1 ( .A(n_cini_module_20_out_res_s0_d2), .B(
        n_xor_module_81_res), .Z(io_o0_s0_d2) );
  XOR2_X1 u_xor_module_88_U1 ( .A(n_cini_module_20_out_res_s1_d0), .B(
        n_xor_module_82_res), .Z(io_o0_s1_d0) );
  XOR2_X1 u_xor_module_89_U1 ( .A(n_cini_module_20_out_res_s1_d1), .B(
        n_xor_module_83_res), .Z(io_o0_s1_d1) );
  XOR2_X1 u_xor_module_90_U1 ( .A(n_cini_module_20_out_res_s1_d2), .B(
        n_xor_module_84_res), .Z(io_o0_s1_d2) );
  XOR2_X1 u_xor_module_91_U1 ( .A(io_i3_s0_d0), .B(io_i2_s0_d0), .Z(
        n_xor_module_91_res) );
  XOR2_X1 u_xor_module_92_U1 ( .A(io_i3_s0_d1), .B(io_i2_s0_d1), .Z(
        n_xor_module_92_res) );
  XOR2_X1 u_xor_module_93_U1 ( .A(io_i3_s0_d2), .B(io_i2_s0_d2), .Z(
        n_xor_module_93_res) );
  XOR2_X1 u_xor_module_94_U1 ( .A(io_i3_s1_d0), .B(io_i2_s1_d0), .Z(
        n_xor_module_94_res) );
  XOR2_X1 u_xor_module_95_U1 ( .A(io_i3_s1_d1), .B(io_i2_s1_d1), .Z(
        n_xor_module_95_res) );
  XOR2_X1 u_xor_module_96_U1 ( .A(io_i3_s1_d2), .B(io_i2_s1_d2), .Z(
        n_xor_module_96_res) );
  XOR2_X1 u_xor_module_97_U1 ( .A(n_cini_module_3_out_res_s0_d0), .B(
        n_xor_module_91_res), .Z(n_xor_module_97_res) );
  XOR2_X1 u_xor_module_98_U1 ( .A(n_cini_module_3_out_res_s0_d1), .B(
        n_xor_module_92_res), .Z(n_xor_module_98_res) );
  XOR2_X1 u_xor_module_99_U1 ( .A(n_cini_module_3_out_res_s0_d2), .B(
        n_xor_module_93_res), .Z(n_xor_module_99_res) );
  XOR2_X1 u_xor_module_100_U1 ( .A(n_cini_module_3_out_res_s1_d0), .B(
        n_xor_module_94_res), .Z(n_xor_module_100_res) );
  XOR2_X1 u_xor_module_101_U1 ( .A(n_cini_module_3_out_res_s1_d1), .B(
        n_xor_module_95_res), .Z(n_xor_module_101_res) );
  XOR2_X1 u_xor_module_102_U1 ( .A(n_cini_module_3_out_res_s1_d2), .B(
        n_xor_module_96_res), .Z(n_xor_module_102_res) );
  XOR2_X1 u_xor_module_103_U1 ( .A(n_cini_module_19_out_res_s0_d0), .B(
        n_xor_module_97_res), .Z(n_xor_module_103_res) );
  XOR2_X1 u_xor_module_104_U1 ( .A(n_cini_module_19_out_res_s0_d1), .B(
        n_xor_module_98_res), .Z(n_xor_module_104_res) );
  XOR2_X1 u_xor_module_105_U1 ( .A(n_cini_module_19_out_res_s0_d2), .B(
        n_xor_module_99_res), .Z(n_xor_module_105_res) );
  XOR2_X1 u_xor_module_106_U1 ( .A(n_cini_module_19_out_res_s1_d0), .B(
        n_xor_module_100_res), .Z(n_xor_module_106_res) );
  XOR2_X1 u_xor_module_107_U1 ( .A(n_cini_module_19_out_res_s1_d1), .B(
        n_xor_module_101_res), .Z(n_xor_module_107_res) );
  XOR2_X1 u_xor_module_108_U1 ( .A(n_cini_module_19_out_res_s1_d2), .B(
        n_xor_module_102_res), .Z(n_xor_module_108_res) );
  XOR2_X1 u_xor_module_109_U1 ( .A(n_cini_module_12_out_res_s0_d0), .B(
        n_xor_module_103_res), .Z(io_o1_s0_d0) );
  XOR2_X1 u_xor_module_110_U1 ( .A(n_cini_module_12_out_res_s0_d1), .B(
        n_xor_module_104_res), .Z(io_o1_s0_d1) );
  XOR2_X1 u_xor_module_111_U1 ( .A(n_cini_module_12_out_res_s0_d2), .B(
        n_xor_module_105_res), .Z(io_o1_s0_d2) );
  XOR2_X1 u_xor_module_112_U1 ( .A(n_cini_module_12_out_res_s1_d0), .B(
        n_xor_module_106_res), .Z(io_o1_s1_d0) );
  XOR2_X1 u_xor_module_113_U1 ( .A(n_cini_module_12_out_res_s1_d1), .B(
        n_xor_module_107_res), .Z(io_o1_s1_d1) );
  XOR2_X1 u_xor_module_114_U1 ( .A(n_cini_module_12_out_res_s1_d2), .B(
        n_xor_module_108_res), .Z(io_o1_s1_d2) );
  XOR2_X1 u_xor_module_115_U1 ( .A(io_i2_s0_d0), .B(io_i0_s0_d0), .Z(
        n_xor_module_115_res) );
  XOR2_X1 u_xor_module_116_U1 ( .A(io_i2_s0_d1), .B(io_i0_s0_d1), .Z(
        n_xor_module_116_res) );
  XOR2_X1 u_xor_module_117_U1 ( .A(io_i2_s0_d2), .B(io_i0_s0_d2), .Z(
        n_xor_module_117_res) );
  XOR2_X1 u_xor_module_118_U1 ( .A(io_i2_s1_d0), .B(io_i0_s1_d0), .Z(
        n_xor_module_118_res) );
  XOR2_X1 u_xor_module_119_U1 ( .A(io_i2_s1_d1), .B(io_i0_s1_d1), .Z(
        n_xor_module_119_res) );
  XOR2_X1 u_xor_module_120_U1 ( .A(io_i2_s1_d2), .B(io_i0_s1_d2), .Z(
        n_xor_module_120_res) );
  XOR2_X1 u_xor_module_121_U1 ( .A(n_cini_module_20_out_res_s0_d0), .B(
        n_xor_module_115_res), .Z(io_o2_s0_d0) );
  XOR2_X1 u_xor_module_122_U1 ( .A(n_cini_module_20_out_res_s0_d1), .B(
        n_xor_module_116_res), .Z(io_o2_s0_d1) );
  XOR2_X1 u_xor_module_123_U1 ( .A(n_cini_module_20_out_res_s0_d2), .B(
        n_xor_module_117_res), .Z(io_o2_s0_d2) );
  XOR2_X1 u_xor_module_124_U1 ( .A(n_cini_module_20_out_res_s1_d0), .B(
        n_xor_module_118_res), .Z(io_o2_s1_d0) );
  XOR2_X1 u_xor_module_125_U1 ( .A(n_cini_module_20_out_res_s1_d1), .B(
        n_xor_module_119_res), .Z(io_o2_s1_d1) );
  XOR2_X1 u_xor_module_126_U1 ( .A(n_cini_module_20_out_res_s1_d2), .B(
        n_xor_module_120_res), .Z(io_o2_s1_d2) );
  XOR2_X1 u_xor_module_127_U1 ( .A(io_i3_s0_d0), .B(io_i0_s0_d0), .Z(
        n_xor_module_127_res) );
  XOR2_X1 u_xor_module_128_U1 ( .A(io_i3_s0_d1), .B(io_i0_s0_d1), .Z(
        n_xor_module_128_res) );
  XOR2_X1 u_xor_module_129_U1 ( .A(io_i3_s0_d2), .B(io_i0_s0_d2), .Z(
        n_xor_module_129_res) );
  XOR2_X1 u_xor_module_130_U1 ( .A(io_i3_s1_d0), .B(io_i0_s1_d0), .Z(
        n_xor_module_130_res) );
  XOR2_X1 u_xor_module_131_U1 ( .A(io_i3_s1_d1), .B(io_i0_s1_d1), .Z(
        n_xor_module_131_res) );
  XOR2_X1 u_xor_module_132_U1 ( .A(io_i3_s1_d2), .B(io_i0_s1_d2), .Z(
        n_xor_module_132_res) );
  XOR2_X1 u_xor_module_133_U1 ( .A(n_cini_module_12_out_res_s0_d0), .B(
        n_xor_module_127_res), .Z(io_o3_s0_d0) );
  XOR2_X1 u_xor_module_134_U1 ( .A(n_cini_module_12_out_res_s0_d1), .B(
        n_xor_module_128_res), .Z(io_o3_s0_d1) );
  XOR2_X1 u_xor_module_135_U1 ( .A(n_cini_module_12_out_res_s0_d2), .B(
        n_xor_module_129_res), .Z(io_o3_s0_d2) );
  XOR2_X1 u_xor_module_136_U1 ( .A(n_cini_module_12_out_res_s1_d0), .B(
        n_xor_module_130_res), .Z(io_o3_s1_d0) );
  XOR2_X1 u_xor_module_137_U1 ( .A(n_cini_module_12_out_res_s1_d1), .B(
        n_xor_module_131_res), .Z(io_o3_s1_d1) );
  XOR2_X1 u_xor_module_138_U1 ( .A(n_cini_module_12_out_res_s1_d2), .B(
        n_xor_module_132_res), .Z(io_o3_s1_d2) );
endmodule

