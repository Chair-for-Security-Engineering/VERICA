/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Apr 21 09:54:36 2022
/////////////////////////////////////////////////////////////


module And_gate ( clock_0, clock_1, clock_2, io_a_s0_d0, io_a_s0_d1, 
        io_a_s0_d2, io_a_s1_d0, io_a_s1_d1, io_a_s1_d2, io_a_s2_d0, io_a_s2_d1, 
        io_a_s2_d2, io_b_s0_d0, io_b_s0_d1, io_b_s0_d2, io_b_s1_d0, io_b_s1_d1, 
        io_b_s1_d2, io_b_s2_d0, io_b_s2_d1, io_b_s2_d2, p_rand_0, p_rand_1, 
        p_rand_2, io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s1_d0, io_c_s1_d1, 
        io_c_s1_d2, io_c_s2_d0, io_c_s2_d1, io_c_s2_d2 );
  input clock_0, clock_1, clock_2, io_a_s0_d0, io_a_s0_d1, io_a_s0_d2,
         io_a_s1_d0, io_a_s1_d1, io_a_s1_d2, io_a_s2_d0, io_a_s2_d1,
         io_a_s2_d2, io_b_s0_d0, io_b_s0_d1, io_b_s0_d2, io_b_s1_d0,
         io_b_s1_d1, io_b_s1_d2, io_b_s2_d0, io_b_s2_d1, io_b_s2_d2, p_rand_0,
         p_rand_1, p_rand_2;
  output io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s1_d0, io_c_s1_d1,
         io_c_s1_d2, io_c_s2_d0, io_c_s2_d1, io_c_s2_d2;
  wire   n_cini_module_0__xor_module_53_res,
         n_cini_module_0__xor_module_52_res,
         n_cini_module_0__reg_module_90_res,
         n_cini_module_0__and_module_45_res,
         n_cini_module_0__reg_module_89_res,
         n_cini_module_0__majority3_module_17_res,
         n_cini_module_0__reg_module_88_res,
         n_cini_module_0__and_module_44_res,
         n_cini_module_0__not_module_18_res,
         n_cini_module_0__reg_module_87_res,
         n_cini_module_0__xor_module_51_res,
         n_cini_module_0__reg_module_86_res,
         n_cini_module_0__and_module_43_res,
         n_cini_module_0__reg_module_85_res,
         n_cini_module_0__majority3_module_16_res,
         n_cini_module_0__reg_module_84_res,
         n_cini_module_0__and_module_42_res,
         n_cini_module_0__not_module_17_res,
         n_cini_module_0__reg_module_83_res,
         n_cini_module_0__reg_module_82_res,
         n_cini_module_0__and_module_41_res,
         n_cini_module_0__reg_module_81_res,
         n_cini_module_0__xor_module_49_res,
         n_cini_module_0__xor_module_48_res,
         n_cini_module_0__reg_module_80_res,
         n_cini_module_0__and_module_40_res,
         n_cini_module_0__reg_module_79_res,
         n_cini_module_0__majority3_module_15_res,
         n_cini_module_0__reg_module_78_res,
         n_cini_module_0__and_module_39_res,
         n_cini_module_0__not_module_16_res,
         n_cini_module_0__reg_module_77_res,
         n_cini_module_0__xor_module_47_res,
         n_cini_module_0__reg_module_76_res,
         n_cini_module_0__and_module_38_res,
         n_cini_module_0__reg_module_75_res,
         n_cini_module_0__majority3_module_14_res,
         n_cini_module_0__reg_module_74_res,
         n_cini_module_0__and_module_37_res,
         n_cini_module_0__not_module_15_res,
         n_cini_module_0__reg_module_73_res,
         n_cini_module_0__reg_module_72_res,
         n_cini_module_0__and_module_36_res,
         n_cini_module_0__reg_module_71_res,
         n_cini_module_0__xor_module_45_res,
         n_cini_module_0__xor_module_44_res,
         n_cini_module_0__reg_module_70_res,
         n_cini_module_0__and_module_35_res,
         n_cini_module_0__reg_module_69_res,
         n_cini_module_0__majority3_module_13_res,
         n_cini_module_0__reg_module_68_res,
         n_cini_module_0__and_module_34_res,
         n_cini_module_0__not_module_14_res,
         n_cini_module_0__reg_module_67_res,
         n_cini_module_0__xor_module_43_res,
         n_cini_module_0__reg_module_66_res,
         n_cini_module_0__and_module_33_res,
         n_cini_module_0__reg_module_65_res,
         n_cini_module_0__majority3_module_12_res,
         n_cini_module_0__reg_module_64_res,
         n_cini_module_0__and_module_32_res,
         n_cini_module_0__not_module_13_res,
         n_cini_module_0__reg_module_63_res,
         n_cini_module_0__reg_module_62_res,
         n_cini_module_0__and_module_31_res,
         n_cini_module_0__reg_module_61_res,
         n_cini_module_0__xor_module_41_res,
         n_cini_module_0__xor_module_40_res,
         n_cini_module_0__reg_module_60_res,
         n_cini_module_0__and_module_30_res,
         n_cini_module_0__reg_module_59_res,
         n_cini_module_0__majority3_module_11_res,
         n_cini_module_0__reg_module_58_res,
         n_cini_module_0__and_module_29_res,
         n_cini_module_0__not_module_12_res,
         n_cini_module_0__reg_module_57_res,
         n_cini_module_0__xor_module_39_res,
         n_cini_module_0__reg_module_56_res,
         n_cini_module_0__and_module_28_res,
         n_cini_module_0__reg_module_55_res,
         n_cini_module_0__majority3_module_10_res,
         n_cini_module_0__reg_module_54_res,
         n_cini_module_0__and_module_27_res,
         n_cini_module_0__not_module_11_res,
         n_cini_module_0__reg_module_53_res,
         n_cini_module_0__reg_module_52_res,
         n_cini_module_0__and_module_26_res,
         n_cini_module_0__reg_module_51_res,
         n_cini_module_0__xor_module_37_res,
         n_cini_module_0__xor_module_36_res,
         n_cini_module_0__reg_module_50_res,
         n_cini_module_0__and_module_25_res,
         n_cini_module_0__reg_module_49_res,
         n_cini_module_0__majority3_module_9_res,
         n_cini_module_0__reg_module_48_res,
         n_cini_module_0__and_module_24_res,
         n_cini_module_0__not_module_10_res,
         n_cini_module_0__reg_module_47_res,
         n_cini_module_0__xor_module_35_res,
         n_cini_module_0__reg_module_46_res,
         n_cini_module_0__and_module_23_res,
         n_cini_module_0__reg_module_45_res,
         n_cini_module_0__majority3_module_8_res,
         n_cini_module_0__reg_module_44_res,
         n_cini_module_0__and_module_22_res, n_cini_module_0__not_module_9_res,
         n_cini_module_0__reg_module_43_res,
         n_cini_module_0__reg_module_42_res,
         n_cini_module_0__and_module_21_res,
         n_cini_module_0__reg_module_41_res,
         n_cini_module_0__xor_module_33_res,
         n_cini_module_0__xor_module_32_res,
         n_cini_module_0__reg_module_40_res,
         n_cini_module_0__and_module_20_res,
         n_cini_module_0__reg_module_39_res,
         n_cini_module_0__majority3_module_7_res,
         n_cini_module_0__reg_module_38_res,
         n_cini_module_0__and_module_19_res, n_cini_module_0__not_module_8_res,
         n_cini_module_0__reg_module_37_res,
         n_cini_module_0__xor_module_31_res,
         n_cini_module_0__reg_module_36_res,
         n_cini_module_0__and_module_18_res,
         n_cini_module_0__reg_module_35_res,
         n_cini_module_0__majority3_module_6_res,
         n_cini_module_0__reg_module_34_res,
         n_cini_module_0__and_module_17_res, n_cini_module_0__not_module_7_res,
         n_cini_module_0__reg_module_33_res,
         n_cini_module_0__reg_module_32_res,
         n_cini_module_0__and_module_16_res,
         n_cini_module_0__reg_module_31_res,
         n_cini_module_0__xor_module_29_res,
         n_cini_module_0__xor_module_28_res,
         n_cini_module_0__reg_module_30_res,
         n_cini_module_0__and_module_15_res,
         n_cini_module_0__reg_module_29_res,
         n_cini_module_0__majority3_module_5_res,
         n_cini_module_0__reg_module_28_res,
         n_cini_module_0__and_module_14_res, n_cini_module_0__not_module_6_res,
         n_cini_module_0__reg_module_27_res,
         n_cini_module_0__xor_module_27_res,
         n_cini_module_0__reg_module_26_res,
         n_cini_module_0__and_module_13_res,
         n_cini_module_0__reg_module_25_res,
         n_cini_module_0__majority3_module_4_res,
         n_cini_module_0__reg_module_24_res,
         n_cini_module_0__and_module_12_res, n_cini_module_0__not_module_5_res,
         n_cini_module_0__reg_module_23_res,
         n_cini_module_0__reg_module_22_res,
         n_cini_module_0__and_module_11_res,
         n_cini_module_0__reg_module_21_res,
         n_cini_module_0__xor_module_25_res,
         n_cini_module_0__xor_module_24_res,
         n_cini_module_0__reg_module_20_res,
         n_cini_module_0__and_module_10_res,
         n_cini_module_0__reg_module_19_res,
         n_cini_module_0__majority3_module_3_res,
         n_cini_module_0__reg_module_18_res, n_cini_module_0__and_module_9_res,
         n_cini_module_0__not_module_4_res, n_cini_module_0__reg_module_17_res,
         n_cini_module_0__xor_module_23_res,
         n_cini_module_0__reg_module_16_res, n_cini_module_0__and_module_8_res,
         n_cini_module_0__reg_module_15_res,
         n_cini_module_0__majority3_module_2_res,
         n_cini_module_0__reg_module_14_res, n_cini_module_0__and_module_7_res,
         n_cini_module_0__not_module_3_res, n_cini_module_0__reg_module_13_res,
         n_cini_module_0__reg_module_12_res, n_cini_module_0__and_module_6_res,
         n_cini_module_0__reg_module_11_res,
         n_cini_module_0__xor_module_21_res,
         n_cini_module_0__xor_module_20_res,
         n_cini_module_0__reg_module_10_res, n_cini_module_0__and_module_5_res,
         n_cini_module_0__reg_module_9_res,
         n_cini_module_0__majority3_module_1_res,
         n_cini_module_0__reg_module_8_res, n_cini_module_0__and_module_4_res,
         n_cini_module_0__not_module_2_res, n_cini_module_0__reg_module_7_res,
         n_cini_module_0__xor_module_19_res, n_cini_module_0__reg_module_6_res,
         n_cini_module_0__and_module_3_res, n_cini_module_0__reg_module_5_res,
         n_cini_module_0__majority3_module_0_res,
         n_cini_module_0__reg_module_4_res, n_cini_module_0__and_module_2_res,
         n_cini_module_0__not_module_1_res, n_cini_module_0__reg_module_3_res,
         n_cini_module_0__reg_module_2_res, n_cini_module_0__and_module_1_res,
         n_cini_module_0__reg_module_1_res, n_cini_module_0__xor_module_18_res,
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
         n_cini_module_0__majority3_module_17_n1;

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
  XOR2_X1 u_cini_module_0__xor_module_7_U1 ( .A(p_rand_0), .B(io_b_s1_d1), .Z(
        n_cini_module_0__xor_module_7_res) );
  XOR2_X1 u_cini_module_0__xor_module_8_U1 ( .A(p_rand_1), .B(io_b_s2_d1), .Z(
        n_cini_module_0__xor_module_8_res) );
  XOR2_X1 u_cini_module_0__xor_module_9_U1 ( .A(p_rand_0), .B(io_b_s0_d1), .Z(
        n_cini_module_0__xor_module_9_res) );
  XOR2_X1 u_cini_module_0__xor_module_10_U1 ( .A(p_rand_2), .B(io_b_s2_d1), 
        .Z(n_cini_module_0__xor_module_10_res) );
  XOR2_X1 u_cini_module_0__xor_module_11_U1 ( .A(p_rand_1), .B(io_b_s0_d1), 
        .Z(n_cini_module_0__xor_module_11_res) );
  XOR2_X1 u_cini_module_0__xor_module_12_U1 ( .A(p_rand_2), .B(io_b_s1_d1), 
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
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_0_n1) );
  OR2_X1 u_cini_module_0__majority3_module_0_U3 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_0_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_0_U2 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
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
  XOR2_X1 u_cini_module_0__xor_module_19_U1 ( .A(
        n_cini_module_0__reg_module_4_res), .B(
        n_cini_module_0__reg_module_6_res), .Z(
        n_cini_module_0__xor_module_19_res) );
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
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_1_n1) );
  OR2_X1 u_cini_module_0__majority3_module_1_U3 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_1_U2 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
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
  XOR2_X1 u_cini_module_0__xor_module_20_U1 ( .A(
        n_cini_module_0__reg_module_8_res), .B(
        n_cini_module_0__reg_module_10_res), .Z(
        n_cini_module_0__xor_module_20_res) );
  XOR2_X1 u_cini_module_0__xor_module_21_U1 ( .A(
        n_cini_module_0__xor_module_19_res), .B(
        n_cini_module_0__xor_module_20_res), .Z(
        n_cini_module_0__xor_module_21_res) );
  XOR2_X1 u_cini_module_0__xor_module_22_U1 ( .A(
        n_cini_module_0__xor_module_21_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_2_U4 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_2_n1) );
  OR2_X1 u_cini_module_0__majority3_module_2_U3 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_2_U2 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__majority3_module_2_n3), .ZN(
        n_cini_module_0__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_2_U1 ( .A1(
        n_cini_module_0__majority3_module_2_n1), .A2(
        n_cini_module_0__majority3_module_2_n2), .ZN(
        n_cini_module_0__majority3_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_15__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_2_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_15_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_8_U1 ( .A1(
        n_cini_module_0__reg_module_15_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_16__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_8_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_16_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_23_U1 ( .A(
        n_cini_module_0__reg_module_14_res), .B(
        n_cini_module_0__reg_module_16_res), .Z(
        n_cini_module_0__xor_module_23_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_3_U4 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_3_n1) );
  OR2_X1 u_cini_module_0__majority3_module_3_U3 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_3_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_3_U2 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
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
  XOR2_X1 u_cini_module_0__xor_module_24_U1 ( .A(
        n_cini_module_0__reg_module_18_res), .B(
        n_cini_module_0__reg_module_20_res), .Z(
        n_cini_module_0__xor_module_24_res) );
  XOR2_X1 u_cini_module_0__xor_module_25_U1 ( .A(
        n_cini_module_0__xor_module_23_res), .B(
        n_cini_module_0__xor_module_24_res), .Z(
        n_cini_module_0__xor_module_25_res) );
  XOR2_X1 u_cini_module_0__xor_module_26_U1 ( .A(
        n_cini_module_0__xor_module_25_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_4_U4 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_4_n1) );
  OR2_X1 u_cini_module_0__majority3_module_4_U3 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_4_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_4_U2 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__majority3_module_4_n3), .ZN(
        n_cini_module_0__majority3_module_4_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_4_U1 ( .A1(
        n_cini_module_0__majority3_module_4_n1), .A2(
        n_cini_module_0__majority3_module_4_n2), .ZN(
        n_cini_module_0__majority3_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_25__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_4_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_25_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_13_U1 ( .A1(
        n_cini_module_0__reg_module_25_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_26__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_13_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_26_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_27_U1 ( .A(
        n_cini_module_0__reg_module_24_res), .B(
        n_cini_module_0__reg_module_26_res), .Z(
        n_cini_module_0__xor_module_27_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_5_U4 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_5_n1) );
  OR2_X1 u_cini_module_0__majority3_module_5_U3 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_5_U2 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__majority3_module_5_n3), .ZN(
        n_cini_module_0__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_5_U1 ( .A1(
        n_cini_module_0__majority3_module_5_n1), .A2(
        n_cini_module_0__majority3_module_5_n2), .ZN(
        n_cini_module_0__majority3_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_29__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_5_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_29_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_15_U1 ( .A1(
        n_cini_module_0__reg_module_29_res), .A2(io_a_s2_d0), .ZN(
        n_cini_module_0__and_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_30__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_15_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_30_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_28_U1 ( .A(
        n_cini_module_0__reg_module_28_res), .B(
        n_cini_module_0__reg_module_30_res), .Z(
        n_cini_module_0__xor_module_28_res) );
  XOR2_X1 u_cini_module_0__xor_module_29_U1 ( .A(
        n_cini_module_0__xor_module_27_res), .B(
        n_cini_module_0__xor_module_28_res), .Z(
        n_cini_module_0__xor_module_29_res) );
  XOR2_X1 u_cini_module_0__xor_module_30_U1 ( .A(
        n_cini_module_0__xor_module_29_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_6_U4 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_6_n1) );
  OR2_X1 u_cini_module_0__majority3_module_6_U3 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_6_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_6_U2 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority3_module_6_n3), .ZN(
        n_cini_module_0__majority3_module_6_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_6_U1 ( .A1(
        n_cini_module_0__majority3_module_6_n1), .A2(
        n_cini_module_0__majority3_module_6_n2), .ZN(
        n_cini_module_0__majority3_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_35__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_6_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_35_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_18_U1 ( .A1(
        n_cini_module_0__reg_module_35_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_36__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_18_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_36_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_31_U1 ( .A(
        n_cini_module_0__reg_module_34_res), .B(
        n_cini_module_0__reg_module_36_res), .Z(
        n_cini_module_0__xor_module_31_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_7_U4 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_7_n1) );
  OR2_X1 u_cini_module_0__majority3_module_7_U3 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_7_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_7_U2 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority3_module_7_n3), .ZN(
        n_cini_module_0__majority3_module_7_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_7_U1 ( .A1(
        n_cini_module_0__majority3_module_7_n1), .A2(
        n_cini_module_0__majority3_module_7_n2), .ZN(
        n_cini_module_0__majority3_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_39__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_7_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_39_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_20_U1 ( .A1(
        n_cini_module_0__reg_module_39_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_20_res) );
  DFF_X1 u_cini_module_0__reg_module_40__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_20_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_40_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_32_U1 ( .A(
        n_cini_module_0__reg_module_38_res), .B(
        n_cini_module_0__reg_module_40_res), .Z(
        n_cini_module_0__xor_module_32_res) );
  XOR2_X1 u_cini_module_0__xor_module_33_U1 ( .A(
        n_cini_module_0__xor_module_31_res), .B(
        n_cini_module_0__xor_module_32_res), .Z(
        n_cini_module_0__xor_module_33_res) );
  XOR2_X1 u_cini_module_0__xor_module_34_U1 ( .A(
        n_cini_module_0__xor_module_33_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_8_U4 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_8_n1) );
  OR2_X1 u_cini_module_0__majority3_module_8_U3 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_8_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_8_U2 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__majority3_module_8_n3), .ZN(
        n_cini_module_0__majority3_module_8_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_8_U1 ( .A1(
        n_cini_module_0__majority3_module_8_n1), .A2(
        n_cini_module_0__majority3_module_8_n2), .ZN(
        n_cini_module_0__majority3_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_45__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_8_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_45_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_23_U1 ( .A1(
        n_cini_module_0__reg_module_45_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_23_res) );
  DFF_X1 u_cini_module_0__reg_module_46__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_23_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_46_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_35_U1 ( .A(
        n_cini_module_0__reg_module_44_res), .B(
        n_cini_module_0__reg_module_46_res), .Z(
        n_cini_module_0__xor_module_35_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_9_U4 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_9_n1) );
  OR2_X1 u_cini_module_0__majority3_module_9_U3 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_9_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_9_U2 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
        n_cini_module_0__majority3_module_9_n3), .ZN(
        n_cini_module_0__majority3_module_9_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_9_U1 ( .A1(
        n_cini_module_0__majority3_module_9_n1), .A2(
        n_cini_module_0__majority3_module_9_n2), .ZN(
        n_cini_module_0__majority3_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_49__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_9_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_49_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_25_U1 ( .A1(
        n_cini_module_0__reg_module_49_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_25_res) );
  DFF_X1 u_cini_module_0__reg_module_50__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_25_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_50_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_36_U1 ( .A(
        n_cini_module_0__reg_module_48_res), .B(
        n_cini_module_0__reg_module_50_res), .Z(
        n_cini_module_0__xor_module_36_res) );
  XOR2_X1 u_cini_module_0__xor_module_37_U1 ( .A(
        n_cini_module_0__xor_module_35_res), .B(
        n_cini_module_0__xor_module_36_res), .Z(
        n_cini_module_0__xor_module_37_res) );
  XOR2_X1 u_cini_module_0__xor_module_38_U1 ( .A(
        n_cini_module_0__xor_module_37_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_10_U4 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_10_n1) );
  OR2_X1 u_cini_module_0__majority3_module_10_U3 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_10_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_10_U2 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__majority3_module_10_n3), .ZN(
        n_cini_module_0__majority3_module_10_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_10_U1 ( .A1(
        n_cini_module_0__majority3_module_10_n1), .A2(
        n_cini_module_0__majority3_module_10_n2), .ZN(
        n_cini_module_0__majority3_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_55__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_10_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_55_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_28_U1 ( .A1(
        n_cini_module_0__reg_module_55_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_28_res) );
  DFF_X1 u_cini_module_0__reg_module_56__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_28_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_56_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_39_U1 ( .A(
        n_cini_module_0__reg_module_54_res), .B(
        n_cini_module_0__reg_module_56_res), .Z(
        n_cini_module_0__xor_module_39_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_11_U4 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_11_n1) );
  OR2_X1 u_cini_module_0__majority3_module_11_U3 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_11_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_11_U2 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__majority3_module_11_n3), .ZN(
        n_cini_module_0__majority3_module_11_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_11_U1 ( .A1(
        n_cini_module_0__majority3_module_11_n1), .A2(
        n_cini_module_0__majority3_module_11_n2), .ZN(
        n_cini_module_0__majority3_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_59__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_11_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_59_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_30_U1 ( .A1(
        n_cini_module_0__reg_module_59_res), .A2(io_a_s2_d1), .ZN(
        n_cini_module_0__and_module_30_res) );
  DFF_X1 u_cini_module_0__reg_module_60__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_30_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_60_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_40_U1 ( .A(
        n_cini_module_0__reg_module_58_res), .B(
        n_cini_module_0__reg_module_60_res), .Z(
        n_cini_module_0__xor_module_40_res) );
  XOR2_X1 u_cini_module_0__xor_module_41_U1 ( .A(
        n_cini_module_0__xor_module_39_res), .B(
        n_cini_module_0__xor_module_40_res), .Z(
        n_cini_module_0__xor_module_41_res) );
  XOR2_X1 u_cini_module_0__xor_module_42_U1 ( .A(
        n_cini_module_0__xor_module_41_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_12_U4 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_12_n1) );
  OR2_X1 u_cini_module_0__majority3_module_12_U3 ( .A1(
        n_cini_module_0__xor_module_7_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_12_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_12_U2 ( .A1(
        n_cini_module_0__xor_module_13_res), .A2(
        n_cini_module_0__majority3_module_12_n3), .ZN(
        n_cini_module_0__majority3_module_12_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_12_U1 ( .A1(
        n_cini_module_0__majority3_module_12_n1), .A2(
        n_cini_module_0__majority3_module_12_n2), .ZN(
        n_cini_module_0__majority3_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_65__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_12_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_65_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_33_U1 ( .A1(
        n_cini_module_0__reg_module_65_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_33_res) );
  DFF_X1 u_cini_module_0__reg_module_66__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_33_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_66_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_43_U1 ( .A(
        n_cini_module_0__reg_module_64_res), .B(
        n_cini_module_0__reg_module_66_res), .Z(
        n_cini_module_0__xor_module_43_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_13_U4 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_13_n1) );
  OR2_X1 u_cini_module_0__majority3_module_13_U3 ( .A1(
        n_cini_module_0__xor_module_8_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_13_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_13_U2 ( .A1(
        n_cini_module_0__xor_module_14_res), .A2(
        n_cini_module_0__majority3_module_13_n3), .ZN(
        n_cini_module_0__majority3_module_13_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_13_U1 ( .A1(
        n_cini_module_0__majority3_module_13_n1), .A2(
        n_cini_module_0__majority3_module_13_n2), .ZN(
        n_cini_module_0__majority3_module_13_res) );
  DFF_X1 u_cini_module_0__reg_module_69__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_13_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_69_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_35_U1 ( .A1(
        n_cini_module_0__reg_module_69_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_35_res) );
  DFF_X1 u_cini_module_0__reg_module_70__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_35_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_70_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_44_U1 ( .A(
        n_cini_module_0__reg_module_68_res), .B(
        n_cini_module_0__reg_module_70_res), .Z(
        n_cini_module_0__xor_module_44_res) );
  XOR2_X1 u_cini_module_0__xor_module_45_U1 ( .A(
        n_cini_module_0__xor_module_43_res), .B(
        n_cini_module_0__xor_module_44_res), .Z(
        n_cini_module_0__xor_module_45_res) );
  XOR2_X1 u_cini_module_0__xor_module_46_U1 ( .A(
        n_cini_module_0__xor_module_45_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_14_U4 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_14_n1) );
  OR2_X1 u_cini_module_0__majority3_module_14_U3 ( .A1(
        n_cini_module_0__xor_module_9_res), .A2(
        n_cini_module_0__xor_module_3_res), .ZN(
        n_cini_module_0__majority3_module_14_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_14_U2 ( .A1(
        n_cini_module_0__xor_module_15_res), .A2(
        n_cini_module_0__majority3_module_14_n3), .ZN(
        n_cini_module_0__majority3_module_14_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_14_U1 ( .A1(
        n_cini_module_0__majority3_module_14_n1), .A2(
        n_cini_module_0__majority3_module_14_n2), .ZN(
        n_cini_module_0__majority3_module_14_res) );
  DFF_X1 u_cini_module_0__reg_module_75__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_14_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_75_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_38_U1 ( .A1(
        n_cini_module_0__reg_module_75_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_38_res) );
  DFF_X1 u_cini_module_0__reg_module_76__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_38_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_76_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_47_U1 ( .A(
        n_cini_module_0__reg_module_74_res), .B(
        n_cini_module_0__reg_module_76_res), .Z(
        n_cini_module_0__xor_module_47_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_15_U4 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_15_n1) );
  OR2_X1 u_cini_module_0__majority3_module_15_U3 ( .A1(
        n_cini_module_0__xor_module_10_res), .A2(
        n_cini_module_0__xor_module_4_res), .ZN(
        n_cini_module_0__majority3_module_15_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_15_U2 ( .A1(
        n_cini_module_0__xor_module_16_res), .A2(
        n_cini_module_0__majority3_module_15_n3), .ZN(
        n_cini_module_0__majority3_module_15_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_15_U1 ( .A1(
        n_cini_module_0__majority3_module_15_n1), .A2(
        n_cini_module_0__majority3_module_15_n2), .ZN(
        n_cini_module_0__majority3_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_79__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_15_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_79_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_40_U1 ( .A1(
        n_cini_module_0__reg_module_79_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_40_res) );
  DFF_X1 u_cini_module_0__reg_module_80__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_40_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_80_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_48_U1 ( .A(
        n_cini_module_0__reg_module_78_res), .B(
        n_cini_module_0__reg_module_80_res), .Z(
        n_cini_module_0__xor_module_48_res) );
  XOR2_X1 u_cini_module_0__xor_module_49_U1 ( .A(
        n_cini_module_0__xor_module_47_res), .B(
        n_cini_module_0__xor_module_48_res), .Z(
        n_cini_module_0__xor_module_49_res) );
  XOR2_X1 u_cini_module_0__xor_module_50_U1 ( .A(
        n_cini_module_0__xor_module_49_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_16_U4 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_16_n1) );
  OR2_X1 u_cini_module_0__majority3_module_16_U3 ( .A1(
        n_cini_module_0__xor_module_11_res), .A2(
        n_cini_module_0__xor_module_5_res), .ZN(
        n_cini_module_0__majority3_module_16_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_16_U2 ( .A1(
        n_cini_module_0__xor_module_17_res), .A2(
        n_cini_module_0__majority3_module_16_n3), .ZN(
        n_cini_module_0__majority3_module_16_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_16_U1 ( .A1(
        n_cini_module_0__majority3_module_16_n1), .A2(
        n_cini_module_0__majority3_module_16_n2), .ZN(
        n_cini_module_0__majority3_module_16_res) );
  DFF_X1 u_cini_module_0__reg_module_85__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_16_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_85_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_43_U1 ( .A1(
        n_cini_module_0__reg_module_85_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_43_res) );
  DFF_X1 u_cini_module_0__reg_module_86__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_43_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_86_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_51_U1 ( .A(
        n_cini_module_0__reg_module_84_res), .B(
        n_cini_module_0__reg_module_86_res), .Z(
        n_cini_module_0__xor_module_51_res) );
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
  NAND2_X1 u_cini_module_0__majority3_module_17_U4 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_17_n1) );
  OR2_X1 u_cini_module_0__majority3_module_17_U3 ( .A1(
        n_cini_module_0__xor_module_12_res), .A2(
        n_cini_module_0__xor_module_6_res), .ZN(
        n_cini_module_0__majority3_module_17_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_17_U2 ( .A1(
        n_cini_module_0__xor_module_18_res), .A2(
        n_cini_module_0__majority3_module_17_n3), .ZN(
        n_cini_module_0__majority3_module_17_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_17_U1 ( .A1(
        n_cini_module_0__majority3_module_17_n1), .A2(
        n_cini_module_0__majority3_module_17_n2), .ZN(
        n_cini_module_0__majority3_module_17_res) );
  DFF_X1 u_cini_module_0__reg_module_89__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_17_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_89_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_45_U1 ( .A1(
        n_cini_module_0__reg_module_89_res), .A2(io_a_s2_d2), .ZN(
        n_cini_module_0__and_module_45_res) );
  DFF_X1 u_cini_module_0__reg_module_90__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_45_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_90_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_52_U1 ( .A(
        n_cini_module_0__reg_module_88_res), .B(
        n_cini_module_0__reg_module_90_res), .Z(
        n_cini_module_0__xor_module_52_res) );
  XOR2_X1 u_cini_module_0__xor_module_53_U1 ( .A(
        n_cini_module_0__xor_module_51_res), .B(
        n_cini_module_0__xor_module_52_res), .Z(
        n_cini_module_0__xor_module_53_res) );
  XOR2_X1 u_cini_module_0__xor_module_54_U1 ( .A(
        n_cini_module_0__xor_module_53_res), .B(
        n_cini_module_0__reg_module_82_res), .Z(io_c_s2_d2) );
endmodule

