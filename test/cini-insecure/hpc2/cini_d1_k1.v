/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Apr 21 09:53:34 2022
/////////////////////////////////////////////////////////////


module And_gate ( clock_0, clock_1, clock_2, io_a_s0_d0, io_a_s0_d1, 
        io_a_s0_d2, io_a_s1_d0, io_a_s1_d1, io_a_s1_d2, io_b_s0_d0, io_b_s0_d1, 
        io_b_s0_d2, io_b_s1_d0, io_b_s1_d1, io_b_s1_d2, p_rand_0, io_c_s0_d0, 
        io_c_s0_d1, io_c_s0_d2, io_c_s1_d0, io_c_s1_d1, io_c_s1_d2 );
  input clock_0, clock_1, clock_2, io_a_s0_d0, io_a_s0_d1, io_a_s0_d2,
         io_a_s1_d0, io_a_s1_d1, io_a_s1_d2, io_b_s0_d0, io_b_s0_d1,
         io_b_s0_d2, io_b_s1_d0, io_b_s1_d1, io_b_s1_d2, p_rand_0;
  output io_c_s0_d0, io_c_s0_d1, io_c_s0_d2, io_c_s1_d0, io_c_s1_d1,
         io_c_s1_d2;
  wire   n_cini_module_0__xor_module_17_res,
         n_cini_module_0__reg_module_36_res,
         n_cini_module_0__and_module_18_res,
         n_cini_module_0__reg_module_35_res,
         n_cini_module_0__majority3_module_5_res,
         n_cini_module_0__reg_module_34_res,
         n_cini_module_0__and_module_17_res, n_cini_module_0__not_module_6_res,
         n_cini_module_0__reg_module_33_res,
         n_cini_module_0__reg_module_32_res,
         n_cini_module_0__and_module_16_res,
         n_cini_module_0__reg_module_31_res,
         n_cini_module_0__xor_module_15_res,
         n_cini_module_0__reg_module_30_res,
         n_cini_module_0__and_module_15_res,
         n_cini_module_0__reg_module_29_res,
         n_cini_module_0__majority3_module_4_res,
         n_cini_module_0__reg_module_28_res,
         n_cini_module_0__and_module_14_res, n_cini_module_0__not_module_5_res,
         n_cini_module_0__reg_module_27_res,
         n_cini_module_0__reg_module_26_res,
         n_cini_module_0__and_module_13_res,
         n_cini_module_0__reg_module_25_res,
         n_cini_module_0__xor_module_13_res,
         n_cini_module_0__reg_module_24_res,
         n_cini_module_0__and_module_12_res,
         n_cini_module_0__reg_module_23_res,
         n_cini_module_0__majority3_module_3_res,
         n_cini_module_0__reg_module_22_res,
         n_cini_module_0__and_module_11_res, n_cini_module_0__not_module_4_res,
         n_cini_module_0__reg_module_21_res,
         n_cini_module_0__reg_module_20_res,
         n_cini_module_0__and_module_10_res,
         n_cini_module_0__reg_module_19_res,
         n_cini_module_0__xor_module_11_res,
         n_cini_module_0__reg_module_18_res, n_cini_module_0__and_module_9_res,
         n_cini_module_0__reg_module_17_res,
         n_cini_module_0__majority3_module_2_res,
         n_cini_module_0__reg_module_16_res, n_cini_module_0__and_module_8_res,
         n_cini_module_0__not_module_3_res, n_cini_module_0__reg_module_15_res,
         n_cini_module_0__reg_module_14_res, n_cini_module_0__and_module_7_res,
         n_cini_module_0__reg_module_13_res, n_cini_module_0__xor_module_9_res,
         n_cini_module_0__reg_module_12_res, n_cini_module_0__and_module_6_res,
         n_cini_module_0__reg_module_11_res,
         n_cini_module_0__majority3_module_1_res,
         n_cini_module_0__reg_module_10_res, n_cini_module_0__and_module_5_res,
         n_cini_module_0__not_module_2_res, n_cini_module_0__reg_module_9_res,
         n_cini_module_0__reg_module_8_res, n_cini_module_0__and_module_4_res,
         n_cini_module_0__reg_module_7_res, n_cini_module_0__xor_module_7_res,
         n_cini_module_0__reg_module_6_res, n_cini_module_0__and_module_3_res,
         n_cini_module_0__reg_module_5_res,
         n_cini_module_0__majority3_module_0_res,
         n_cini_module_0__reg_module_4_res, n_cini_module_0__and_module_2_res,
         n_cini_module_0__not_module_1_res, n_cini_module_0__reg_module_3_res,
         n_cini_module_0__reg_module_2_res, n_cini_module_0__and_module_1_res,
         n_cini_module_0__reg_module_1_res, n_cini_module_0__xor_module_6_res,
         n_cini_module_0__xor_module_5_res, n_cini_module_0__xor_module_4_res,
         n_cini_module_0__xor_module_3_res, n_cini_module_0__xor_module_2_res,
         n_cini_module_0__xor_module_1_res,
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
         n_cini_module_0__majority3_module_5_n1;

  XOR2_X1 u_cini_module_0__xor_module_1_U1 ( .A(p_rand_0), .B(io_b_s1_d0), .Z(
        n_cini_module_0__xor_module_1_res) );
  XOR2_X1 u_cini_module_0__xor_module_2_U1 ( .A(p_rand_0), .B(io_b_s0_d0), .Z(
        n_cini_module_0__xor_module_2_res) );
  XOR2_X1 u_cini_module_0__xor_module_3_U1 ( .A(p_rand_0), .B(io_b_s1_d1), .Z(
        n_cini_module_0__xor_module_3_res) );
  XOR2_X1 u_cini_module_0__xor_module_4_U1 ( .A(p_rand_0), .B(io_b_s0_d1), .Z(
        n_cini_module_0__xor_module_4_res) );
  XOR2_X1 u_cini_module_0__xor_module_5_U1 ( .A(p_rand_0), .B(io_b_s1_d2), .Z(
        n_cini_module_0__xor_module_5_res) );
  XOR2_X1 u_cini_module_0__xor_module_6_U1 ( .A(p_rand_0), .B(io_b_s0_d2), .Z(
        n_cini_module_0__xor_module_6_res) );
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
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_0_n1) );
  OR2_X1 u_cini_module_0__majority3_module_0_U3 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_0_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_0_U2 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
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
  XOR2_X1 u_cini_module_0__xor_module_7_U1 ( .A(
        n_cini_module_0__reg_module_4_res), .B(
        n_cini_module_0__reg_module_6_res), .Z(
        n_cini_module_0__xor_module_7_res) );
  XOR2_X1 u_cini_module_0__xor_module_8_U1 ( .A(
        n_cini_module_0__xor_module_7_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_1_U4 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_1_n1) );
  OR2_X1 u_cini_module_0__majority3_module_1_U3 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_1_U2 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority3_module_1_n3), .ZN(
        n_cini_module_0__majority3_module_1_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_1_U1 ( .A1(
        n_cini_module_0__majority3_module_1_n1), .A2(
        n_cini_module_0__majority3_module_1_n2), .ZN(
        n_cini_module_0__majority3_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_11__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_11_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_6_U1 ( .A1(
        n_cini_module_0__reg_module_11_res), .A2(io_a_s1_d0), .ZN(
        n_cini_module_0__and_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_12__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_6_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_12_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_9_U1 ( .A(
        n_cini_module_0__reg_module_10_res), .B(
        n_cini_module_0__reg_module_12_res), .Z(
        n_cini_module_0__xor_module_9_res) );
  XOR2_X1 u_cini_module_0__xor_module_10_U1 ( .A(
        n_cini_module_0__xor_module_9_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_2_U4 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_2_n1) );
  OR2_X1 u_cini_module_0__majority3_module_2_U3 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_2_U2 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority3_module_2_n3), .ZN(
        n_cini_module_0__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_2_U1 ( .A1(
        n_cini_module_0__majority3_module_2_n1), .A2(
        n_cini_module_0__majority3_module_2_n2), .ZN(
        n_cini_module_0__majority3_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_17__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_2_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_17_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_9_U1 ( .A1(
        n_cini_module_0__reg_module_17_res), .A2(io_a_s0_d1), .ZN(
        n_cini_module_0__and_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_18__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_9_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_18_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_11_U1 ( .A(
        n_cini_module_0__reg_module_16_res), .B(
        n_cini_module_0__reg_module_18_res), .Z(
        n_cini_module_0__xor_module_11_res) );
  XOR2_X1 u_cini_module_0__xor_module_12_U1 ( .A(
        n_cini_module_0__xor_module_11_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_3_U4 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_3_n1) );
  OR2_X1 u_cini_module_0__majority3_module_3_U3 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_3_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_3_U2 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority3_module_3_n3), .ZN(
        n_cini_module_0__majority3_module_3_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_3_U1 ( .A1(
        n_cini_module_0__majority3_module_3_n1), .A2(
        n_cini_module_0__majority3_module_3_n2), .ZN(
        n_cini_module_0__majority3_module_3_res) );
  DFF_X1 u_cini_module_0__reg_module_23__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_3_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_23_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_12_U1 ( .A1(
        n_cini_module_0__reg_module_23_res), .A2(io_a_s1_d1), .ZN(
        n_cini_module_0__and_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_24__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_12_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_24_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_13_U1 ( .A(
        n_cini_module_0__reg_module_22_res), .B(
        n_cini_module_0__reg_module_24_res), .Z(
        n_cini_module_0__xor_module_13_res) );
  XOR2_X1 u_cini_module_0__xor_module_14_U1 ( .A(
        n_cini_module_0__xor_module_13_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_4_U4 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_4_n1) );
  OR2_X1 u_cini_module_0__majority3_module_4_U3 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_4_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_4_U2 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority3_module_4_n3), .ZN(
        n_cini_module_0__majority3_module_4_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_4_U1 ( .A1(
        n_cini_module_0__majority3_module_4_n1), .A2(
        n_cini_module_0__majority3_module_4_n2), .ZN(
        n_cini_module_0__majority3_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_29__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_4_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_29_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_15_U1 ( .A1(
        n_cini_module_0__reg_module_29_res), .A2(io_a_s0_d2), .ZN(
        n_cini_module_0__and_module_15_res) );
  DFF_X1 u_cini_module_0__reg_module_30__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_15_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_30_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_15_U1 ( .A(
        n_cini_module_0__reg_module_28_res), .B(
        n_cini_module_0__reg_module_30_res), .Z(
        n_cini_module_0__xor_module_15_res) );
  XOR2_X1 u_cini_module_0__xor_module_16_U1 ( .A(
        n_cini_module_0__xor_module_15_res), .B(
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
  NAND2_X1 u_cini_module_0__majority3_module_5_U4 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_5_n1) );
  OR2_X1 u_cini_module_0__majority3_module_5_U3 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_5_U2 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority3_module_5_n3), .ZN(
        n_cini_module_0__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_5_U1 ( .A1(
        n_cini_module_0__majority3_module_5_n1), .A2(
        n_cini_module_0__majority3_module_5_n2), .ZN(
        n_cini_module_0__majority3_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_35__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__majority3_module_5_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_35_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_18_U1 ( .A1(
        n_cini_module_0__reg_module_35_res), .A2(io_a_s1_d2), .ZN(
        n_cini_module_0__and_module_18_res) );
  DFF_X1 u_cini_module_0__reg_module_36__hpc_correct_b_s0_d0_reg ( .D(
        n_cini_module_0__and_module_18_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_36_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_17_U1 ( .A(
        n_cini_module_0__reg_module_34_res), .B(
        n_cini_module_0__reg_module_36_res), .Z(
        n_cini_module_0__xor_module_17_res) );
  XOR2_X1 u_cini_module_0__xor_module_18_U1 ( .A(
        n_cini_module_0__xor_module_17_res), .B(
        n_cini_module_0__reg_module_32_res), .Z(io_c_s1_d2) );
endmodule

