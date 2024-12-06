/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Fri Feb  9 16:18:09 2024
/////////////////////////////////////////////////////////////


module AndComposition ( clock_0, clock_1, clock_2, reset_0, reset_1, reset_2, 
        io_i0_s0_d0, io_i0_s0_d1, io_i0_s0_d2, io_i0_s1_d0, io_i0_s1_d1, 
        io_i0_s1_d2, io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, io_i1_s1_d0, 
        io_i1_s1_d1, io_i1_s1_d2, io_i2_s0_d0, io_i2_s0_d1, io_i2_s0_d2, 
        io_i2_s1_d0, io_i2_s1_d1, io_i2_s1_d2, p_rand_0, p_rand_1, p_rand_2, 
        p_rand_3, io_o0_s0_d0, io_o0_s0_d1, io_o0_s0_d2, io_o0_s1_d0, 
        io_o0_s1_d1, io_o0_s1_d2 );
  input clock_0, clock_1, clock_2, reset_0, reset_1, reset_2, io_i0_s0_d0,
         io_i0_s0_d1, io_i0_s0_d2, io_i0_s1_d0, io_i0_s1_d1, io_i0_s1_d2,
         io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, io_i1_s1_d0, io_i1_s1_d1,
         io_i1_s1_d2, io_i2_s0_d0, io_i2_s0_d1, io_i2_s0_d2, io_i2_s1_d0,
         io_i2_s1_d1, io_i2_s1_d2, p_rand_0, p_rand_1, p_rand_2, p_rand_3;
  output io_o0_s0_d0, io_o0_s0_d1, io_o0_s0_d2, io_o0_s1_d0, io_o0_s1_d1,
         io_o0_s1_d2;
  wire   n_cini_module_0_out_res_s0_d0, n_cini_module_0_out_res_s0_d1,
         n_cini_module_0_out_res_s0_d2, n_cini_module_0_out_res_s1_d0,
         n_cini_module_0_out_res_s1_d1, n_cini_module_0_out_res_s1_d2,
         n_cini_module_0__reg_module_24_res,
         n_cini_module_0__and_module_12_res,
         n_cini_module_0__reg_module_23_res,
         n_cini_module_0__xor_module_12_res,
         n_cini_module_0__and_module_11_res,
         n_cini_module_0__reg_module_22_res,
         n_cini_module_0__xor_module_11_res,
         n_cini_module_0__and_module_10_res,
         n_cini_module_0__reg_module_21_res, n_cini_module_0__and_module_9_res,
         n_cini_module_0__reg_module_20_res, n_cini_module_0__and_module_8_res,
         n_cini_module_0__reg_module_19_res,
         n_cini_module_0__xor_module_10_res, n_cini_module_0__and_module_7_res,
         n_cini_module_0__reg_module_18_res, n_cini_module_0__xor_module_9_res,
         n_cini_module_0__and_module_6_res, n_cini_module_0__reg_module_17_res,
         n_cini_module_0__and_module_5_res, n_cini_module_0__reg_module_16_res,
         n_cini_module_0__and_module_4_res, n_cini_module_0__reg_module_15_res,
         n_cini_module_0__xor_module_8_res, n_cini_module_0__and_module_3_res,
         n_cini_module_0__reg_module_14_res, n_cini_module_0__xor_module_7_res,
         n_cini_module_0__and_module_2_res, n_cini_module_0__reg_module_13_res,
         n_cini_module_0__and_module_1_res, n_cini_module_0__reg_module_12_res,
         n_cini_module_0__majority3_module_11_res,
         n_cini_module_0__reg_module_11_res,
         n_cini_module_0__majority3_module_10_res,
         n_cini_module_0__reg_module_10_res,
         n_cini_module_0__majority3_module_9_res,
         n_cini_module_0__reg_module_9_res,
         n_cini_module_0__majority3_module_8_res,
         n_cini_module_0__reg_module_8_res,
         n_cini_module_0__majority3_module_7_res,
         n_cini_module_0__reg_module_7_res,
         n_cini_module_0__majority3_module_6_res,
         n_cini_module_0__reg_module_6_res,
         n_cini_module_0__majority3_module_5_res,
         n_cini_module_0__reg_module_5_res,
         n_cini_module_0__majority3_module_4_res,
         n_cini_module_0__reg_module_4_res,
         n_cini_module_0__majority3_module_3_res,
         n_cini_module_0__reg_module_3_res,
         n_cini_module_0__majority3_module_2_res,
         n_cini_module_0__reg_module_2_res,
         n_cini_module_0__majority3_module_1_res,
         n_cini_module_0__reg_module_1_res,
         n_cini_module_0__majority3_module_0_res,
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
         n_cini_module_1__reg_module_24_res,
         n_cini_module_1__and_module_12_res,
         n_cini_module_1__reg_module_23_res,
         n_cini_module_1__xor_module_12_res,
         n_cini_module_1__and_module_11_res,
         n_cini_module_1__reg_module_22_res,
         n_cini_module_1__xor_module_11_res,
         n_cini_module_1__and_module_10_res,
         n_cini_module_1__reg_module_21_res, n_cini_module_1__and_module_9_res,
         n_cini_module_1__reg_module_20_res, n_cini_module_1__and_module_8_res,
         n_cini_module_1__reg_module_19_res,
         n_cini_module_1__xor_module_10_res, n_cini_module_1__and_module_7_res,
         n_cini_module_1__reg_module_18_res, n_cini_module_1__xor_module_9_res,
         n_cini_module_1__and_module_6_res, n_cini_module_1__reg_module_17_res,
         n_cini_module_1__and_module_5_res, n_cini_module_1__reg_module_16_res,
         n_cini_module_1__and_module_4_res, n_cini_module_1__reg_module_15_res,
         n_cini_module_1__xor_module_8_res, n_cini_module_1__and_module_3_res,
         n_cini_module_1__reg_module_14_res, n_cini_module_1__xor_module_7_res,
         n_cini_module_1__and_module_2_res, n_cini_module_1__reg_module_13_res,
         n_cini_module_1__and_module_1_res, n_cini_module_1__reg_module_12_res,
         n_cini_module_1__majority3_module_11_res,
         n_cini_module_1__reg_module_11_res,
         n_cini_module_1__majority3_module_10_res,
         n_cini_module_1__reg_module_10_res,
         n_cini_module_1__majority3_module_9_res,
         n_cini_module_1__reg_module_9_res,
         n_cini_module_1__majority3_module_8_res,
         n_cini_module_1__reg_module_8_res,
         n_cini_module_1__majority3_module_7_res,
         n_cini_module_1__reg_module_7_res,
         n_cini_module_1__majority3_module_6_res,
         n_cini_module_1__reg_module_6_res,
         n_cini_module_1__majority3_module_5_res,
         n_cini_module_1__reg_module_5_res,
         n_cini_module_1__majority3_module_4_res,
         n_cini_module_1__reg_module_4_res,
         n_cini_module_1__majority3_module_3_res,
         n_cini_module_1__reg_module_3_res,
         n_cini_module_1__majority3_module_2_res,
         n_cini_module_1__reg_module_2_res,
         n_cini_module_1__majority3_module_1_res,
         n_cini_module_1__reg_module_1_res,
         n_cini_module_1__majority3_module_0_res,
         n_cini_module_1__xor_module_6_res, n_cini_module_1__xor_module_5_res,
         n_cini_module_1__xor_module_4_res, n_cini_module_1__xor_module_3_res,
         n_cini_module_1__xor_module_2_res, n_cini_module_1__xor_module_1_res,
         n_cini_module_1__majority3_module_0_n3,
         n_cini_module_1__majority3_module_0_n2,
         n_cini_module_1__majority3_module_0_n1,
         n_cini_module_1__majority3_module_1_n3,
         n_cini_module_1__majority3_module_1_n2,
         n_cini_module_1__majority3_module_1_n1,
         n_cini_module_1__majority3_module_2_n3,
         n_cini_module_1__majority3_module_2_n2,
         n_cini_module_1__majority3_module_2_n1,
         n_cini_module_1__majority3_module_3_n3,
         n_cini_module_1__majority3_module_3_n2,
         n_cini_module_1__majority3_module_3_n1,
         n_cini_module_1__majority3_module_4_n3,
         n_cini_module_1__majority3_module_4_n2,
         n_cini_module_1__majority3_module_4_n1,
         n_cini_module_1__majority3_module_5_n3,
         n_cini_module_1__majority3_module_5_n2,
         n_cini_module_1__majority3_module_5_n1,
         n_cini_module_1__majority3_module_6_n3,
         n_cini_module_1__majority3_module_6_n2,
         n_cini_module_1__majority3_module_6_n1,
         n_cini_module_1__majority3_module_7_n3,
         n_cini_module_1__majority3_module_7_n2,
         n_cini_module_1__majority3_module_7_n1,
         n_cini_module_1__majority3_module_8_n3,
         n_cini_module_1__majority3_module_8_n2,
         n_cini_module_1__majority3_module_8_n1,
         n_cini_module_1__majority3_module_9_n3,
         n_cini_module_1__majority3_module_9_n2,
         n_cini_module_1__majority3_module_9_n1,
         n_cini_module_1__majority3_module_10_n3,
         n_cini_module_1__majority3_module_10_n2,
         n_cini_module_1__majority3_module_10_n1,
         n_cini_module_1__majority3_module_11_n3,
         n_cini_module_1__majority3_module_11_n2,
         n_cini_module_1__majority3_module_11_n1;

  XOR2_X1 u_cini_module_0__xor_module_1_U1 ( .A(p_rand_0), .B(io_i1_s0_d0), 
        .Z(n_cini_module_0__xor_module_1_res) );
  XOR2_X1 u_cini_module_0__xor_module_2_U1 ( .A(p_rand_0), .B(io_i1_s1_d0), 
        .Z(n_cini_module_0__xor_module_2_res) );
  XOR2_X1 u_cini_module_0__xor_module_3_U1 ( .A(p_rand_0), .B(io_i1_s0_d1), 
        .Z(n_cini_module_0__xor_module_3_res) );
  XOR2_X1 u_cini_module_0__xor_module_4_U1 ( .A(p_rand_0), .B(io_i1_s1_d1), 
        .Z(n_cini_module_0__xor_module_4_res) );
  XOR2_X1 u_cini_module_0__xor_module_5_U1 ( .A(p_rand_0), .B(io_i1_s0_d2), 
        .Z(n_cini_module_0__xor_module_5_res) );
  XOR2_X1 u_cini_module_0__xor_module_6_U1 ( .A(p_rand_0), .B(io_i1_s1_d2), 
        .Z(n_cini_module_0__xor_module_6_res) );
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
  DFF_X1 u_cini_module_0__reg_module_1__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_0_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_1_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_1_U4 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_1_n1) );
  OR2_X1 u_cini_module_0__majority3_module_1_U3 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_1_U2 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority3_module_1_n3), .ZN(
        n_cini_module_0__majority3_module_1_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_1_U1 ( .A1(
        n_cini_module_0__majority3_module_1_n1), .A2(
        n_cini_module_0__majority3_module_1_n2), .ZN(
        n_cini_module_0__majority3_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_2__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_2_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_2_U4 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_2_n1) );
  OR2_X1 u_cini_module_0__majority3_module_2_U3 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_2_U2 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority3_module_2_n3), .ZN(
        n_cini_module_0__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_2_U1 ( .A1(
        n_cini_module_0__majority3_module_2_n1), .A2(
        n_cini_module_0__majority3_module_2_n2), .ZN(
        n_cini_module_0__majority3_module_2_res) );
  DFF_X1 u_cini_module_0__reg_module_3__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_2_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_3_res), .QN() );
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
  DFF_X1 u_cini_module_0__reg_module_4__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_3_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_4_res), .QN() );
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
  DFF_X1 u_cini_module_0__reg_module_5__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_4_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_5_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_5_U4 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_5_n1) );
  OR2_X1 u_cini_module_0__majority3_module_5_U3 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_5_U2 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority3_module_5_n3), .ZN(
        n_cini_module_0__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_5_U1 ( .A1(
        n_cini_module_0__majority3_module_5_n1), .A2(
        n_cini_module_0__majority3_module_5_n2), .ZN(
        n_cini_module_0__majority3_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_6__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_5_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_6_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_6_U4 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_6_n1) );
  OR2_X1 u_cini_module_0__majority3_module_6_U3 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_6_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_6_U2 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority3_module_6_n3), .ZN(
        n_cini_module_0__majority3_module_6_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_6_U1 ( .A1(
        n_cini_module_0__majority3_module_6_n1), .A2(
        n_cini_module_0__majority3_module_6_n2), .ZN(
        n_cini_module_0__majority3_module_6_res) );
  DFF_X1 u_cini_module_0__reg_module_7__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_6_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_7_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_7_U4 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_7_n1) );
  OR2_X1 u_cini_module_0__majority3_module_7_U3 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_7_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_7_U2 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority3_module_7_n3), .ZN(
        n_cini_module_0__majority3_module_7_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_7_U1 ( .A1(
        n_cini_module_0__majority3_module_7_n1), .A2(
        n_cini_module_0__majority3_module_7_n2), .ZN(
        n_cini_module_0__majority3_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_8__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_7_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_8_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_8_U4 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_8_n1) );
  OR2_X1 u_cini_module_0__majority3_module_8_U3 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_8_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_8_U2 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority3_module_8_n3), .ZN(
        n_cini_module_0__majority3_module_8_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_8_U1 ( .A1(
        n_cini_module_0__majority3_module_8_n1), .A2(
        n_cini_module_0__majority3_module_8_n2), .ZN(
        n_cini_module_0__majority3_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_9__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_8_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_9_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_9_U4 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_9_n1) );
  OR2_X1 u_cini_module_0__majority3_module_9_U3 ( .A1(
        n_cini_module_0__xor_module_3_res), .A2(
        n_cini_module_0__xor_module_1_res), .ZN(
        n_cini_module_0__majority3_module_9_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_9_U2 ( .A1(
        n_cini_module_0__xor_module_5_res), .A2(
        n_cini_module_0__majority3_module_9_n3), .ZN(
        n_cini_module_0__majority3_module_9_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_9_U1 ( .A1(
        n_cini_module_0__majority3_module_9_n1), .A2(
        n_cini_module_0__majority3_module_9_n2), .ZN(
        n_cini_module_0__majority3_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_10__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_9_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_10_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_10_U4 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_10_n1) );
  OR2_X1 u_cini_module_0__majority3_module_10_U3 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_10_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_10_U2 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority3_module_10_n3), .ZN(
        n_cini_module_0__majority3_module_10_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_10_U1 ( .A1(
        n_cini_module_0__majority3_module_10_n1), .A2(
        n_cini_module_0__majority3_module_10_n2), .ZN(
        n_cini_module_0__majority3_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_11__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_10_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_11_res), .QN() );
  NAND2_X1 u_cini_module_0__majority3_module_11_U4 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_11_n1) );
  OR2_X1 u_cini_module_0__majority3_module_11_U3 ( .A1(
        n_cini_module_0__xor_module_4_res), .A2(
        n_cini_module_0__xor_module_2_res), .ZN(
        n_cini_module_0__majority3_module_11_n3) );
  NAND2_X1 u_cini_module_0__majority3_module_11_U2 ( .A1(
        n_cini_module_0__xor_module_6_res), .A2(
        n_cini_module_0__majority3_module_11_n3), .ZN(
        n_cini_module_0__majority3_module_11_n2) );
  NAND2_X1 u_cini_module_0__majority3_module_11_U1 ( .A1(
        n_cini_module_0__majority3_module_11_n1), .A2(
        n_cini_module_0__majority3_module_11_n2), .ZN(
        n_cini_module_0__majority3_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_12__cini_mul_v000_reg ( .D(
        n_cini_module_0__majority3_module_11_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_12_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_1_U1 ( .A1(
        n_cini_module_0__reg_module_1_res), .A2(io_i0_s0_d0), .ZN(
        n_cini_module_0__and_module_1_res) );
  DFF_X1 u_cini_module_0__reg_module_13__cini_mul_v000_reg ( .D(
        n_cini_module_0__and_module_1_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_13_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_2_U1 ( .A1(
        n_cini_module_0__reg_module_3_res), .A2(io_i0_s0_d0), .ZN(
        n_cini_module_0__and_module_2_res) );
  XOR2_X1 u_cini_module_0__xor_module_7_U1 ( .A(p_rand_1), .B(
        n_cini_module_0__and_module_2_res), .Z(
        n_cini_module_0__xor_module_7_res) );
  DFF_X1 u_cini_module_0__reg_module_14__cini_mul_v000_reg ( .D(
        n_cini_module_0__xor_module_7_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_14_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_3_U1 ( .A1(
        n_cini_module_0__reg_module_2_res), .A2(io_i0_s1_d0), .ZN(
        n_cini_module_0__and_module_3_res) );
  XOR2_X1 u_cini_module_0__xor_module_8_U1 ( .A(p_rand_1), .B(
        n_cini_module_0__and_module_3_res), .Z(
        n_cini_module_0__xor_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_15__cini_mul_v000_reg ( .D(
        n_cini_module_0__xor_module_8_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_15_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_4_U1 ( .A1(
        n_cini_module_0__reg_module_4_res), .A2(io_i0_s1_d0), .ZN(
        n_cini_module_0__and_module_4_res) );
  DFF_X1 u_cini_module_0__reg_module_16__cini_mul_v000_reg ( .D(
        n_cini_module_0__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_0__reg_module_16_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_5_U1 ( .A1(
        n_cini_module_0__reg_module_5_res), .A2(io_i0_s0_d1), .ZN(
        n_cini_module_0__and_module_5_res) );
  DFF_X1 u_cini_module_0__reg_module_17__cini_mul_v000_reg ( .D(
        n_cini_module_0__and_module_5_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_17_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_6_U1 ( .A1(
        n_cini_module_0__reg_module_7_res), .A2(io_i0_s0_d1), .ZN(
        n_cini_module_0__and_module_6_res) );
  XOR2_X1 u_cini_module_0__xor_module_9_U1 ( .A(p_rand_1), .B(
        n_cini_module_0__and_module_6_res), .Z(
        n_cini_module_0__xor_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_18__cini_mul_v000_reg ( .D(
        n_cini_module_0__xor_module_9_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_18_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_7_U1 ( .A1(
        n_cini_module_0__reg_module_6_res), .A2(io_i0_s1_d1), .ZN(
        n_cini_module_0__and_module_7_res) );
  XOR2_X1 u_cini_module_0__xor_module_10_U1 ( .A(p_rand_1), .B(
        n_cini_module_0__and_module_7_res), .Z(
        n_cini_module_0__xor_module_10_res) );
  DFF_X1 u_cini_module_0__reg_module_19__cini_mul_v000_reg ( .D(
        n_cini_module_0__xor_module_10_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_19_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_8_U1 ( .A1(
        n_cini_module_0__reg_module_8_res), .A2(io_i0_s1_d1), .ZN(
        n_cini_module_0__and_module_8_res) );
  DFF_X1 u_cini_module_0__reg_module_20__cini_mul_v000_reg ( .D(
        n_cini_module_0__and_module_8_res), .CK(clock_1), .Q(
        n_cini_module_0__reg_module_20_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_9_U1 ( .A1(
        n_cini_module_0__reg_module_9_res), .A2(io_i0_s0_d2), .ZN(
        n_cini_module_0__and_module_9_res) );
  DFF_X1 u_cini_module_0__reg_module_21__cini_mul_v000_reg ( .D(
        n_cini_module_0__and_module_9_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_21_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_10_U1 ( .A1(
        n_cini_module_0__reg_module_11_res), .A2(io_i0_s0_d2), .ZN(
        n_cini_module_0__and_module_10_res) );
  XOR2_X1 u_cini_module_0__xor_module_11_U1 ( .A(p_rand_1), .B(
        n_cini_module_0__and_module_10_res), .Z(
        n_cini_module_0__xor_module_11_res) );
  DFF_X1 u_cini_module_0__reg_module_22__cini_mul_v000_reg ( .D(
        n_cini_module_0__xor_module_11_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_22_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_11_U1 ( .A1(
        n_cini_module_0__reg_module_10_res), .A2(io_i0_s1_d2), .ZN(
        n_cini_module_0__and_module_11_res) );
  XOR2_X1 u_cini_module_0__xor_module_12_U1 ( .A(p_rand_1), .B(
        n_cini_module_0__and_module_11_res), .Z(
        n_cini_module_0__xor_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_23__cini_mul_v000_reg ( .D(
        n_cini_module_0__xor_module_12_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_23_res), .QN() );
  AND2_X1 u_cini_module_0__and_module_12_U1 ( .A1(
        n_cini_module_0__reg_module_12_res), .A2(io_i0_s1_d2), .ZN(
        n_cini_module_0__and_module_12_res) );
  DFF_X1 u_cini_module_0__reg_module_24__cini_mul_v000_reg ( .D(
        n_cini_module_0__and_module_12_res), .CK(clock_2), .Q(
        n_cini_module_0__reg_module_24_res), .QN() );
  XOR2_X1 u_cini_module_0__xor_module_13_U1 ( .A(
        n_cini_module_0__reg_module_14_res), .B(
        n_cini_module_0__reg_module_13_res), .Z(n_cini_module_0_out_res_s0_d0)
         );
  XOR2_X1 u_cini_module_0__xor_module_14_U1 ( .A(
        n_cini_module_0__reg_module_15_res), .B(
        n_cini_module_0__reg_module_16_res), .Z(n_cini_module_0_out_res_s1_d0)
         );
  XOR2_X1 u_cini_module_0__xor_module_15_U1 ( .A(
        n_cini_module_0__reg_module_18_res), .B(
        n_cini_module_0__reg_module_17_res), .Z(n_cini_module_0_out_res_s0_d1)
         );
  XOR2_X1 u_cini_module_0__xor_module_16_U1 ( .A(
        n_cini_module_0__reg_module_19_res), .B(
        n_cini_module_0__reg_module_20_res), .Z(n_cini_module_0_out_res_s1_d1)
         );
  XOR2_X1 u_cini_module_0__xor_module_17_U1 ( .A(
        n_cini_module_0__reg_module_22_res), .B(
        n_cini_module_0__reg_module_21_res), .Z(n_cini_module_0_out_res_s0_d2)
         );
  XOR2_X1 u_cini_module_0__xor_module_18_U1 ( .A(
        n_cini_module_0__reg_module_23_res), .B(
        n_cini_module_0__reg_module_24_res), .Z(n_cini_module_0_out_res_s1_d2)
         );
  XOR2_X1 u_cini_module_1__xor_module_1_U1 ( .A(p_rand_2), .B(
        n_cini_module_0_out_res_s0_d0), .Z(n_cini_module_1__xor_module_1_res)
         );
  XOR2_X1 u_cini_module_1__xor_module_2_U1 ( .A(p_rand_2), .B(
        n_cini_module_0_out_res_s1_d0), .Z(n_cini_module_1__xor_module_2_res)
         );
  XOR2_X1 u_cini_module_1__xor_module_3_U1 ( .A(p_rand_2), .B(
        n_cini_module_0_out_res_s0_d1), .Z(n_cini_module_1__xor_module_3_res)
         );
  XOR2_X1 u_cini_module_1__xor_module_4_U1 ( .A(p_rand_2), .B(
        n_cini_module_0_out_res_s1_d1), .Z(n_cini_module_1__xor_module_4_res)
         );
  XOR2_X1 u_cini_module_1__xor_module_5_U1 ( .A(p_rand_2), .B(
        n_cini_module_0_out_res_s0_d2), .Z(n_cini_module_1__xor_module_5_res)
         );
  XOR2_X1 u_cini_module_1__xor_module_6_U1 ( .A(p_rand_2), .B(
        n_cini_module_0_out_res_s1_d2), .Z(n_cini_module_1__xor_module_6_res)
         );
  NAND2_X1 u_cini_module_1__majority3_module_0_U4 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_0_n1) );
  OR2_X1 u_cini_module_1__majority3_module_0_U3 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_0_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_0_U2 ( .A1(
        n_cini_module_1__xor_module_5_res), .A2(
        n_cini_module_1__majority3_module_0_n3), .ZN(
        n_cini_module_1__majority3_module_0_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_0_U1 ( .A1(
        n_cini_module_1__majority3_module_0_n1), .A2(
        n_cini_module_1__majority3_module_0_n2), .ZN(
        n_cini_module_1__majority3_module_0_res) );
  DFF_X1 u_cini_module_1__reg_module_1__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_0_res), .CK(clock_0), .Q(
        n_cini_module_1__reg_module_1_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_1_U4 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_1_n1) );
  OR2_X1 u_cini_module_1__majority3_module_1_U3 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_1_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_1_U2 ( .A1(
        n_cini_module_1__xor_module_5_res), .A2(
        n_cini_module_1__majority3_module_1_n3), .ZN(
        n_cini_module_1__majority3_module_1_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_1_U1 ( .A1(
        n_cini_module_1__majority3_module_1_n1), .A2(
        n_cini_module_1__majority3_module_1_n2), .ZN(
        n_cini_module_1__majority3_module_1_res) );
  DFF_X1 u_cini_module_1__reg_module_2__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_1_res), .CK(clock_0), .Q(
        n_cini_module_1__reg_module_2_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_2_U4 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_2_n1) );
  OR2_X1 u_cini_module_1__majority3_module_2_U3 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_2_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_2_U2 ( .A1(
        n_cini_module_1__xor_module_6_res), .A2(
        n_cini_module_1__majority3_module_2_n3), .ZN(
        n_cini_module_1__majority3_module_2_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_2_U1 ( .A1(
        n_cini_module_1__majority3_module_2_n1), .A2(
        n_cini_module_1__majority3_module_2_n2), .ZN(
        n_cini_module_1__majority3_module_2_res) );
  DFF_X1 u_cini_module_1__reg_module_3__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_2_res), .CK(clock_0), .Q(
        n_cini_module_1__reg_module_3_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_3_U4 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_3_n1) );
  OR2_X1 u_cini_module_1__majority3_module_3_U3 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_3_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_3_U2 ( .A1(
        n_cini_module_1__xor_module_6_res), .A2(
        n_cini_module_1__majority3_module_3_n3), .ZN(
        n_cini_module_1__majority3_module_3_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_3_U1 ( .A1(
        n_cini_module_1__majority3_module_3_n1), .A2(
        n_cini_module_1__majority3_module_3_n2), .ZN(
        n_cini_module_1__majority3_module_3_res) );
  DFF_X1 u_cini_module_1__reg_module_4__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_3_res), .CK(clock_0), .Q(
        n_cini_module_1__reg_module_4_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_4_U4 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_4_n1) );
  OR2_X1 u_cini_module_1__majority3_module_4_U3 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_4_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_4_U2 ( .A1(
        n_cini_module_1__xor_module_5_res), .A2(
        n_cini_module_1__majority3_module_4_n3), .ZN(
        n_cini_module_1__majority3_module_4_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_4_U1 ( .A1(
        n_cini_module_1__majority3_module_4_n1), .A2(
        n_cini_module_1__majority3_module_4_n2), .ZN(
        n_cini_module_1__majority3_module_4_res) );
  DFF_X1 u_cini_module_1__reg_module_5__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_4_res), .CK(clock_1), .Q(
        n_cini_module_1__reg_module_5_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_5_U4 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_5_n1) );
  OR2_X1 u_cini_module_1__majority3_module_5_U3 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_5_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_5_U2 ( .A1(
        n_cini_module_1__xor_module_5_res), .A2(
        n_cini_module_1__majority3_module_5_n3), .ZN(
        n_cini_module_1__majority3_module_5_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_5_U1 ( .A1(
        n_cini_module_1__majority3_module_5_n1), .A2(
        n_cini_module_1__majority3_module_5_n2), .ZN(
        n_cini_module_1__majority3_module_5_res) );
  DFF_X1 u_cini_module_1__reg_module_6__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_5_res), .CK(clock_1), .Q(
        n_cini_module_1__reg_module_6_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_6_U4 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_6_n1) );
  OR2_X1 u_cini_module_1__majority3_module_6_U3 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_6_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_6_U2 ( .A1(
        n_cini_module_1__xor_module_6_res), .A2(
        n_cini_module_1__majority3_module_6_n3), .ZN(
        n_cini_module_1__majority3_module_6_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_6_U1 ( .A1(
        n_cini_module_1__majority3_module_6_n1), .A2(
        n_cini_module_1__majority3_module_6_n2), .ZN(
        n_cini_module_1__majority3_module_6_res) );
  DFF_X1 u_cini_module_1__reg_module_7__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_6_res), .CK(clock_1), .Q(
        n_cini_module_1__reg_module_7_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_7_U4 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_7_n1) );
  OR2_X1 u_cini_module_1__majority3_module_7_U3 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_7_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_7_U2 ( .A1(
        n_cini_module_1__xor_module_6_res), .A2(
        n_cini_module_1__majority3_module_7_n3), .ZN(
        n_cini_module_1__majority3_module_7_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_7_U1 ( .A1(
        n_cini_module_1__majority3_module_7_n1), .A2(
        n_cini_module_1__majority3_module_7_n2), .ZN(
        n_cini_module_1__majority3_module_7_res) );
  DFF_X1 u_cini_module_1__reg_module_8__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_7_res), .CK(clock_1), .Q(
        n_cini_module_1__reg_module_8_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_8_U4 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_8_n1) );
  OR2_X1 u_cini_module_1__majority3_module_8_U3 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_8_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_8_U2 ( .A1(
        n_cini_module_1__xor_module_5_res), .A2(
        n_cini_module_1__majority3_module_8_n3), .ZN(
        n_cini_module_1__majority3_module_8_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_8_U1 ( .A1(
        n_cini_module_1__majority3_module_8_n1), .A2(
        n_cini_module_1__majority3_module_8_n2), .ZN(
        n_cini_module_1__majority3_module_8_res) );
  DFF_X1 u_cini_module_1__reg_module_9__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_8_res), .CK(clock_2), .Q(
        n_cini_module_1__reg_module_9_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_9_U4 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_9_n1) );
  OR2_X1 u_cini_module_1__majority3_module_9_U3 ( .A1(
        n_cini_module_1__xor_module_3_res), .A2(
        n_cini_module_1__xor_module_1_res), .ZN(
        n_cini_module_1__majority3_module_9_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_9_U2 ( .A1(
        n_cini_module_1__xor_module_5_res), .A2(
        n_cini_module_1__majority3_module_9_n3), .ZN(
        n_cini_module_1__majority3_module_9_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_9_U1 ( .A1(
        n_cini_module_1__majority3_module_9_n1), .A2(
        n_cini_module_1__majority3_module_9_n2), .ZN(
        n_cini_module_1__majority3_module_9_res) );
  DFF_X1 u_cini_module_1__reg_module_10__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_9_res), .CK(clock_2), .Q(
        n_cini_module_1__reg_module_10_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_10_U4 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_10_n1) );
  OR2_X1 u_cini_module_1__majority3_module_10_U3 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_10_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_10_U2 ( .A1(
        n_cini_module_1__xor_module_6_res), .A2(
        n_cini_module_1__majority3_module_10_n3), .ZN(
        n_cini_module_1__majority3_module_10_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_10_U1 ( .A1(
        n_cini_module_1__majority3_module_10_n1), .A2(
        n_cini_module_1__majority3_module_10_n2), .ZN(
        n_cini_module_1__majority3_module_10_res) );
  DFF_X1 u_cini_module_1__reg_module_11__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_10_res), .CK(clock_2), .Q(
        n_cini_module_1__reg_module_11_res), .QN() );
  NAND2_X1 u_cini_module_1__majority3_module_11_U4 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_11_n1) );
  OR2_X1 u_cini_module_1__majority3_module_11_U3 ( .A1(
        n_cini_module_1__xor_module_4_res), .A2(
        n_cini_module_1__xor_module_2_res), .ZN(
        n_cini_module_1__majority3_module_11_n3) );
  NAND2_X1 u_cini_module_1__majority3_module_11_U2 ( .A1(
        n_cini_module_1__xor_module_6_res), .A2(
        n_cini_module_1__majority3_module_11_n3), .ZN(
        n_cini_module_1__majority3_module_11_n2) );
  NAND2_X1 u_cini_module_1__majority3_module_11_U1 ( .A1(
        n_cini_module_1__majority3_module_11_n1), .A2(
        n_cini_module_1__majority3_module_11_n2), .ZN(
        n_cini_module_1__majority3_module_11_res) );
  DFF_X1 u_cini_module_1__reg_module_12__cini_mul_v000_reg ( .D(
        n_cini_module_1__majority3_module_11_res), .CK(clock_2), .Q(
        n_cini_module_1__reg_module_12_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_1_U1 ( .A1(
        n_cini_module_1__reg_module_1_res), .A2(io_i2_s0_d0), .ZN(
        n_cini_module_1__and_module_1_res) );
  DFF_X1 u_cini_module_1__reg_module_13__cini_mul_v000_reg ( .D(
        n_cini_module_1__and_module_1_res), .CK(clock_0), .Q(
        n_cini_module_1__reg_module_13_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_2_U1 ( .A1(
        n_cini_module_1__reg_module_3_res), .A2(io_i2_s0_d0), .ZN(
        n_cini_module_1__and_module_2_res) );
  XOR2_X1 u_cini_module_1__xor_module_7_U1 ( .A(p_rand_3), .B(
        n_cini_module_1__and_module_2_res), .Z(
        n_cini_module_1__xor_module_7_res) );
  DFF_X1 u_cini_module_1__reg_module_14__cini_mul_v000_reg ( .D(
        n_cini_module_1__xor_module_7_res), .CK(clock_0), .Q(
        n_cini_module_1__reg_module_14_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_3_U1 ( .A1(
        n_cini_module_1__reg_module_2_res), .A2(io_i2_s1_d0), .ZN(
        n_cini_module_1__and_module_3_res) );
  XOR2_X1 u_cini_module_1__xor_module_8_U1 ( .A(p_rand_3), .B(
        n_cini_module_1__and_module_3_res), .Z(
        n_cini_module_1__xor_module_8_res) );
  DFF_X1 u_cini_module_1__reg_module_15__cini_mul_v000_reg ( .D(
        n_cini_module_1__xor_module_8_res), .CK(clock_0), .Q(
        n_cini_module_1__reg_module_15_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_4_U1 ( .A1(
        n_cini_module_1__reg_module_4_res), .A2(io_i2_s1_d0), .ZN(
        n_cini_module_1__and_module_4_res) );
  DFF_X1 u_cini_module_1__reg_module_16__cini_mul_v000_reg ( .D(
        n_cini_module_1__and_module_4_res), .CK(clock_0), .Q(
        n_cini_module_1__reg_module_16_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_5_U1 ( .A1(
        n_cini_module_1__reg_module_5_res), .A2(io_i2_s0_d1), .ZN(
        n_cini_module_1__and_module_5_res) );
  DFF_X1 u_cini_module_1__reg_module_17__cini_mul_v000_reg ( .D(
        n_cini_module_1__and_module_5_res), .CK(clock_1), .Q(
        n_cini_module_1__reg_module_17_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_6_U1 ( .A1(
        n_cini_module_1__reg_module_7_res), .A2(io_i2_s0_d1), .ZN(
        n_cini_module_1__and_module_6_res) );
  XOR2_X1 u_cini_module_1__xor_module_9_U1 ( .A(p_rand_3), .B(
        n_cini_module_1__and_module_6_res), .Z(
        n_cini_module_1__xor_module_9_res) );
  DFF_X1 u_cini_module_1__reg_module_18__cini_mul_v000_reg ( .D(
        n_cini_module_1__xor_module_9_res), .CK(clock_1), .Q(
        n_cini_module_1__reg_module_18_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_7_U1 ( .A1(
        n_cini_module_1__reg_module_6_res), .A2(io_i2_s1_d1), .ZN(
        n_cini_module_1__and_module_7_res) );
  XOR2_X1 u_cini_module_1__xor_module_10_U1 ( .A(p_rand_3), .B(
        n_cini_module_1__and_module_7_res), .Z(
        n_cini_module_1__xor_module_10_res) );
  DFF_X1 u_cini_module_1__reg_module_19__cini_mul_v000_reg ( .D(
        n_cini_module_1__xor_module_10_res), .CK(clock_1), .Q(
        n_cini_module_1__reg_module_19_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_8_U1 ( .A1(
        n_cini_module_1__reg_module_8_res), .A2(io_i2_s1_d1), .ZN(
        n_cini_module_1__and_module_8_res) );
  DFF_X1 u_cini_module_1__reg_module_20__cini_mul_v000_reg ( .D(
        n_cini_module_1__and_module_8_res), .CK(clock_1), .Q(
        n_cini_module_1__reg_module_20_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_9_U1 ( .A1(
        n_cini_module_1__reg_module_9_res), .A2(io_i2_s0_d2), .ZN(
        n_cini_module_1__and_module_9_res) );
  DFF_X1 u_cini_module_1__reg_module_21__cini_mul_v000_reg ( .D(
        n_cini_module_1__and_module_9_res), .CK(clock_2), .Q(
        n_cini_module_1__reg_module_21_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_10_U1 ( .A1(
        n_cini_module_1__reg_module_11_res), .A2(io_i2_s0_d2), .ZN(
        n_cini_module_1__and_module_10_res) );
  XOR2_X1 u_cini_module_1__xor_module_11_U1 ( .A(p_rand_3), .B(
        n_cini_module_1__and_module_10_res), .Z(
        n_cini_module_1__xor_module_11_res) );
  DFF_X1 u_cini_module_1__reg_module_22__cini_mul_v000_reg ( .D(
        n_cini_module_1__xor_module_11_res), .CK(clock_2), .Q(
        n_cini_module_1__reg_module_22_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_11_U1 ( .A1(
        n_cini_module_1__reg_module_10_res), .A2(io_i2_s1_d2), .ZN(
        n_cini_module_1__and_module_11_res) );
  XOR2_X1 u_cini_module_1__xor_module_12_U1 ( .A(p_rand_3), .B(
        n_cini_module_1__and_module_11_res), .Z(
        n_cini_module_1__xor_module_12_res) );
  DFF_X1 u_cini_module_1__reg_module_23__cini_mul_v000_reg ( .D(
        n_cini_module_1__xor_module_12_res), .CK(clock_2), .Q(
        n_cini_module_1__reg_module_23_res), .QN() );
  AND2_X1 u_cini_module_1__and_module_12_U1 ( .A1(
        n_cini_module_1__reg_module_12_res), .A2(io_i2_s1_d2), .ZN(
        n_cini_module_1__and_module_12_res) );
  DFF_X1 u_cini_module_1__reg_module_24__cini_mul_v000_reg ( .D(
        n_cini_module_1__and_module_12_res), .CK(clock_2), .Q(
        n_cini_module_1__reg_module_24_res), .QN() );
  XOR2_X1 u_cini_module_1__xor_module_13_U1 ( .A(
        n_cini_module_1__reg_module_14_res), .B(
        n_cini_module_1__reg_module_13_res), .Z(io_o0_s0_d0) );
  XOR2_X1 u_cini_module_1__xor_module_14_U1 ( .A(
        n_cini_module_1__reg_module_15_res), .B(
        n_cini_module_1__reg_module_16_res), .Z(io_o0_s1_d0) );
  XOR2_X1 u_cini_module_1__xor_module_15_U1 ( .A(
        n_cini_module_1__reg_module_18_res), .B(
        n_cini_module_1__reg_module_17_res), .Z(io_o0_s0_d1) );
  XOR2_X1 u_cini_module_1__xor_module_16_U1 ( .A(
        n_cini_module_1__reg_module_19_res), .B(
        n_cini_module_1__reg_module_20_res), .Z(io_o0_s1_d1) );
  XOR2_X1 u_cini_module_1__xor_module_17_U1 ( .A(
        n_cini_module_1__reg_module_22_res), .B(
        n_cini_module_1__reg_module_21_res), .Z(io_o0_s0_d2) );
  XOR2_X1 u_cini_module_1__xor_module_18_U1 ( .A(
        n_cini_module_1__reg_module_23_res), .B(
        n_cini_module_1__reg_module_24_res), .Z(io_o0_s1_d2) );
endmodule

