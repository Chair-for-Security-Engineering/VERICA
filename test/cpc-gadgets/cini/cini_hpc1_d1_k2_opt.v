
module And_gate ( clock_0, clock_1, clock_2, clock_3, clock_4, reset_0, 
        reset_1, reset_2, reset_3, reset_4, io_i0_s0_d0, io_i0_s0_d1, 
        io_i0_s0_d2, io_i0_s0_d3, io_i0_s0_d4, io_i0_s1_d0, io_i0_s1_d1, 
        io_i0_s1_d2, io_i0_s1_d3, io_i0_s1_d4, io_i1_s0_d0, io_i1_s0_d1, 
        io_i1_s0_d2, io_i1_s0_d3, io_i1_s0_d4, io_i1_s1_d0, io_i1_s1_d1, 
        io_i1_s1_d2, io_i1_s1_d3, io_i1_s1_d4, p_rand_0, p_rand_1, io_o0_s0_d0, 
        io_o0_s0_d1, io_o0_s0_d2, io_o0_s0_d3, io_o0_s0_d4, io_o0_s1_d0, 
        io_o0_s1_d1, io_o0_s1_d2, io_o0_s1_d3, io_o0_s1_d4 );
  input clock_0, clock_1, clock_2, clock_3, clock_4, reset_0, reset_1, reset_2,
         reset_3, reset_4, io_i0_s0_d0, io_i0_s0_d1, io_i0_s0_d2, io_i0_s0_d3,
         io_i0_s0_d4, io_i0_s1_d0, io_i0_s1_d1, io_i0_s1_d2, io_i0_s1_d3,
         io_i0_s1_d4, io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, io_i1_s0_d3,
         io_i1_s0_d4, io_i1_s1_d0, io_i1_s1_d1, io_i1_s1_d2, io_i1_s1_d3,
         io_i1_s1_d4, p_rand_0, p_rand_1;
  output io_o0_s0_d0, io_o0_s0_d1, io_o0_s0_d2, io_o0_s0_d3, io_o0_s0_d4,
         io_o0_s1_d0, io_o0_s1_d1, io_o0_s1_d2, io_o0_s1_d3, io_o0_s1_d4;
  wire   n_xor_module_1_res, n_xor_module_2_res, n_xor_module_3_res,
         n_xor_module_4_res, n_xor_module_5_res, n_xor_module_6_res,
         n_xor_module_7_res, n_xor_module_8_res, n_xor_module_9_res,
         n_xor_module_10_res, n_majority5_module_0_res, n_reg_module_1_res,
         n_majority5_module_1_res, n_reg_module_2_res,
         n_majority5_module_2_res, n_reg_module_3_res,
         n_majority5_module_3_res, n_reg_module_4_res,
         n_majority5_module_4_res, n_reg_module_5_res,
         n_majority5_module_5_res, n_reg_module_6_res,
         n_majority5_module_6_res, n_reg_module_7_res,
         n_majority5_module_7_res, n_reg_module_8_res,
         n_majority5_module_8_res, n_reg_module_9_res,
         n_majority5_module_9_res, n_reg_module_10_res, n_and_module_1_res,
         n_and_module_2_res, n_xor_module_11_res, n_and_module_3_res,
         n_xor_module_12_res, n_and_module_4_res, n_and_module_5_res,
         n_and_module_6_res, n_xor_module_13_res, n_and_module_7_res,
         n_xor_module_14_res, n_and_module_8_res, n_and_module_9_res,
         n_and_module_10_res, n_xor_module_15_res, n_and_module_11_res,
         n_xor_module_16_res, n_and_module_12_res, n_and_module_13_res,
         n_and_module_14_res, n_xor_module_17_res, n_and_module_15_res,
         n_xor_module_18_res, n_and_module_16_res, n_and_module_17_res,
         n_and_module_18_res, n_xor_module_19_res, n_and_module_19_res,
         n_xor_module_20_res, n_and_module_20_res, n_reg_module_11_res,
         n_majority5_module_10_res, n_reg_module_12_res,
         n_majority5_module_11_res, n_reg_module_13_res, n_reg_module_14_res,
         n_reg_module_15_res, n_majority5_module_12_res, n_reg_module_16_res,
         n_majority5_module_13_res, n_reg_module_17_res, n_reg_module_18_res,
         n_reg_module_19_res, n_majority5_module_14_res, n_reg_module_20_res,
         n_majority5_module_15_res, n_reg_module_21_res, n_reg_module_22_res,
         n_reg_module_23_res, n_majority5_module_16_res, n_reg_module_24_res,
         n_majority5_module_17_res, n_reg_module_25_res, n_reg_module_26_res,
         n_reg_module_27_res, n_majority5_module_18_res, n_reg_module_28_res,
         n_majority5_module_19_res, n_reg_module_29_res, n_reg_module_30_res,
         n_majority5_module_0__and_module_6_res,
         n_majority5_module_0__or_module_7_res,
         n_majority5_module_0__or_module_6_res,
         n_majority5_module_0__and_module_5_res,
         n_majority5_module_0__or_module_5_res,
         n_majority5_module_0__or_module_4_res,
         n_majority5_module_0__and_module_4_res,
         n_majority5_module_0__or_module_3_res,
         n_majority5_module_0__and_module_3_res,
         n_majority5_module_0__or_module_2_res,
         n_majority5_module_0__and_module_2_res,
         n_majority5_module_0__or_module_1_res,
         n_majority5_module_0__and_module_1_res,
         n_majority5_module_1__and_module_6_res,
         n_majority5_module_1__or_module_7_res,
         n_majority5_module_1__or_module_6_res,
         n_majority5_module_1__and_module_5_res,
         n_majority5_module_1__or_module_5_res,
         n_majority5_module_1__or_module_4_res,
         n_majority5_module_1__and_module_4_res,
         n_majority5_module_1__or_module_3_res,
         n_majority5_module_1__and_module_3_res,
         n_majority5_module_1__or_module_2_res,
         n_majority5_module_1__and_module_2_res,
         n_majority5_module_1__or_module_1_res,
         n_majority5_module_1__and_module_1_res,
         n_majority5_module_2__and_module_6_res,
         n_majority5_module_2__or_module_7_res,
         n_majority5_module_2__or_module_6_res,
         n_majority5_module_2__and_module_5_res,
         n_majority5_module_2__or_module_5_res,
         n_majority5_module_2__or_module_4_res,
         n_majority5_module_2__and_module_4_res,
         n_majority5_module_2__or_module_3_res,
         n_majority5_module_2__and_module_3_res,
         n_majority5_module_2__or_module_2_res,
         n_majority5_module_2__and_module_2_res,
         n_majority5_module_2__or_module_1_res,
         n_majority5_module_2__and_module_1_res,
         n_majority5_module_3__and_module_6_res,
         n_majority5_module_3__or_module_7_res,
         n_majority5_module_3__or_module_6_res,
         n_majority5_module_3__and_module_5_res,
         n_majority5_module_3__or_module_5_res,
         n_majority5_module_3__or_module_4_res,
         n_majority5_module_3__and_module_4_res,
         n_majority5_module_3__or_module_3_res,
         n_majority5_module_3__and_module_3_res,
         n_majority5_module_3__or_module_2_res,
         n_majority5_module_3__and_module_2_res,
         n_majority5_module_3__or_module_1_res,
         n_majority5_module_3__and_module_1_res,
         n_majority5_module_4__and_module_6_res,
         n_majority5_module_4__or_module_7_res,
         n_majority5_module_4__or_module_6_res,
         n_majority5_module_4__and_module_5_res,
         n_majority5_module_4__or_module_5_res,
         n_majority5_module_4__or_module_4_res,
         n_majority5_module_4__and_module_4_res,
         n_majority5_module_4__or_module_3_res,
         n_majority5_module_4__and_module_3_res,
         n_majority5_module_4__or_module_2_res,
         n_majority5_module_4__and_module_2_res,
         n_majority5_module_4__or_module_1_res,
         n_majority5_module_4__and_module_1_res,
         n_majority5_module_5__and_module_6_res,
         n_majority5_module_5__or_module_7_res,
         n_majority5_module_5__or_module_6_res,
         n_majority5_module_5__and_module_5_res,
         n_majority5_module_5__or_module_5_res,
         n_majority5_module_5__or_module_4_res,
         n_majority5_module_5__and_module_4_res,
         n_majority5_module_5__or_module_3_res,
         n_majority5_module_5__and_module_3_res,
         n_majority5_module_5__or_module_2_res,
         n_majority5_module_5__and_module_2_res,
         n_majority5_module_5__or_module_1_res,
         n_majority5_module_5__and_module_1_res,
         n_majority5_module_6__and_module_6_res,
         n_majority5_module_6__or_module_7_res,
         n_majority5_module_6__or_module_6_res,
         n_majority5_module_6__and_module_5_res,
         n_majority5_module_6__or_module_5_res,
         n_majority5_module_6__or_module_4_res,
         n_majority5_module_6__and_module_4_res,
         n_majority5_module_6__or_module_3_res,
         n_majority5_module_6__and_module_3_res,
         n_majority5_module_6__or_module_2_res,
         n_majority5_module_6__and_module_2_res,
         n_majority5_module_6__or_module_1_res,
         n_majority5_module_6__and_module_1_res,
         n_majority5_module_7__and_module_6_res,
         n_majority5_module_7__or_module_7_res,
         n_majority5_module_7__or_module_6_res,
         n_majority5_module_7__and_module_5_res,
         n_majority5_module_7__or_module_5_res,
         n_majority5_module_7__or_module_4_res,
         n_majority5_module_7__and_module_4_res,
         n_majority5_module_7__or_module_3_res,
         n_majority5_module_7__and_module_3_res,
         n_majority5_module_7__or_module_2_res,
         n_majority5_module_7__and_module_2_res,
         n_majority5_module_7__or_module_1_res,
         n_majority5_module_7__and_module_1_res,
         n_majority5_module_8__and_module_6_res,
         n_majority5_module_8__or_module_7_res,
         n_majority5_module_8__or_module_6_res,
         n_majority5_module_8__and_module_5_res,
         n_majority5_module_8__or_module_5_res,
         n_majority5_module_8__or_module_4_res,
         n_majority5_module_8__and_module_4_res,
         n_majority5_module_8__or_module_3_res,
         n_majority5_module_8__and_module_3_res,
         n_majority5_module_8__or_module_2_res,
         n_majority5_module_8__and_module_2_res,
         n_majority5_module_8__or_module_1_res,
         n_majority5_module_8__and_module_1_res,
         n_majority5_module_9__and_module_6_res,
         n_majority5_module_9__or_module_7_res,
         n_majority5_module_9__or_module_6_res,
         n_majority5_module_9__and_module_5_res,
         n_majority5_module_9__or_module_5_res,
         n_majority5_module_9__or_module_4_res,
         n_majority5_module_9__and_module_4_res,
         n_majority5_module_9__or_module_3_res,
         n_majority5_module_9__and_module_3_res,
         n_majority5_module_9__or_module_2_res,
         n_majority5_module_9__and_module_2_res,
         n_majority5_module_9__or_module_1_res,
         n_majority5_module_9__and_module_1_res,
         n_majority5_module_10__and_module_6_res,
         n_majority5_module_10__or_module_7_res,
         n_majority5_module_10__or_module_6_res,
         n_majority5_module_10__and_module_5_res,
         n_majority5_module_10__or_module_5_res,
         n_majority5_module_10__or_module_4_res,
         n_majority5_module_10__and_module_4_res,
         n_majority5_module_10__or_module_3_res,
         n_majority5_module_10__and_module_3_res,
         n_majority5_module_10__or_module_2_res,
         n_majority5_module_10__and_module_2_res,
         n_majority5_module_10__or_module_1_res,
         n_majority5_module_10__and_module_1_res,
         n_majority5_module_11__and_module_6_res,
         n_majority5_module_11__or_module_7_res,
         n_majority5_module_11__or_module_6_res,
         n_majority5_module_11__and_module_5_res,
         n_majority5_module_11__or_module_5_res,
         n_majority5_module_11__or_module_4_res,
         n_majority5_module_11__and_module_4_res,
         n_majority5_module_11__or_module_3_res,
         n_majority5_module_11__and_module_3_res,
         n_majority5_module_11__or_module_2_res,
         n_majority5_module_11__and_module_2_res,
         n_majority5_module_11__or_module_1_res,
         n_majority5_module_11__and_module_1_res,
         n_majority5_module_12__and_module_6_res,
         n_majority5_module_12__or_module_7_res,
         n_majority5_module_12__or_module_6_res,
         n_majority5_module_12__and_module_5_res,
         n_majority5_module_12__or_module_5_res,
         n_majority5_module_12__or_module_4_res,
         n_majority5_module_12__and_module_4_res,
         n_majority5_module_12__or_module_3_res,
         n_majority5_module_12__and_module_3_res,
         n_majority5_module_12__or_module_2_res,
         n_majority5_module_12__and_module_2_res,
         n_majority5_module_12__or_module_1_res,
         n_majority5_module_12__and_module_1_res,
         n_majority5_module_13__and_module_6_res,
         n_majority5_module_13__or_module_7_res,
         n_majority5_module_13__or_module_6_res,
         n_majority5_module_13__and_module_5_res,
         n_majority5_module_13__or_module_5_res,
         n_majority5_module_13__or_module_4_res,
         n_majority5_module_13__and_module_4_res,
         n_majority5_module_13__or_module_3_res,
         n_majority5_module_13__and_module_3_res,
         n_majority5_module_13__or_module_2_res,
         n_majority5_module_13__and_module_2_res,
         n_majority5_module_13__or_module_1_res,
         n_majority5_module_13__and_module_1_res,
         n_majority5_module_14__and_module_6_res,
         n_majority5_module_14__or_module_7_res,
         n_majority5_module_14__or_module_6_res,
         n_majority5_module_14__and_module_5_res,
         n_majority5_module_14__or_module_5_res,
         n_majority5_module_14__or_module_4_res,
         n_majority5_module_14__and_module_4_res,
         n_majority5_module_14__or_module_3_res,
         n_majority5_module_14__and_module_3_res,
         n_majority5_module_14__or_module_2_res,
         n_majority5_module_14__and_module_2_res,
         n_majority5_module_14__or_module_1_res,
         n_majority5_module_14__and_module_1_res,
         n_majority5_module_15__and_module_6_res,
         n_majority5_module_15__or_module_7_res,
         n_majority5_module_15__or_module_6_res,
         n_majority5_module_15__and_module_5_res,
         n_majority5_module_15__or_module_5_res,
         n_majority5_module_15__or_module_4_res,
         n_majority5_module_15__and_module_4_res,
         n_majority5_module_15__or_module_3_res,
         n_majority5_module_15__and_module_3_res,
         n_majority5_module_15__or_module_2_res,
         n_majority5_module_15__and_module_2_res,
         n_majority5_module_15__or_module_1_res,
         n_majority5_module_15__and_module_1_res,
         n_majority5_module_16__and_module_6_res,
         n_majority5_module_16__or_module_7_res,
         n_majority5_module_16__or_module_6_res,
         n_majority5_module_16__and_module_5_res,
         n_majority5_module_16__or_module_5_res,
         n_majority5_module_16__or_module_4_res,
         n_majority5_module_16__and_module_4_res,
         n_majority5_module_16__or_module_3_res,
         n_majority5_module_16__and_module_3_res,
         n_majority5_module_16__or_module_2_res,
         n_majority5_module_16__and_module_2_res,
         n_majority5_module_16__or_module_1_res,
         n_majority5_module_16__and_module_1_res,
         n_majority5_module_17__and_module_6_res,
         n_majority5_module_17__or_module_7_res,
         n_majority5_module_17__or_module_6_res,
         n_majority5_module_17__and_module_5_res,
         n_majority5_module_17__or_module_5_res,
         n_majority5_module_17__or_module_4_res,
         n_majority5_module_17__and_module_4_res,
         n_majority5_module_17__or_module_3_res,
         n_majority5_module_17__and_module_3_res,
         n_majority5_module_17__or_module_2_res,
         n_majority5_module_17__and_module_2_res,
         n_majority5_module_17__or_module_1_res,
         n_majority5_module_17__and_module_1_res,
         n_majority5_module_18__and_module_6_res,
         n_majority5_module_18__or_module_7_res,
         n_majority5_module_18__or_module_6_res,
         n_majority5_module_18__and_module_5_res,
         n_majority5_module_18__or_module_5_res,
         n_majority5_module_18__or_module_4_res,
         n_majority5_module_18__and_module_4_res,
         n_majority5_module_18__or_module_3_res,
         n_majority5_module_18__and_module_3_res,
         n_majority5_module_18__or_module_2_res,
         n_majority5_module_18__and_module_2_res,
         n_majority5_module_18__or_module_1_res,
         n_majority5_module_18__and_module_1_res,
         n_majority5_module_19__and_module_6_res,
         n_majority5_module_19__or_module_7_res,
         n_majority5_module_19__or_module_6_res,
         n_majority5_module_19__and_module_5_res,
         n_majority5_module_19__or_module_5_res,
         n_majority5_module_19__or_module_4_res,
         n_majority5_module_19__and_module_4_res,
         n_majority5_module_19__or_module_3_res,
         n_majority5_module_19__and_module_3_res,
         n_majority5_module_19__or_module_2_res,
         n_majority5_module_19__and_module_2_res,
         n_majority5_module_19__or_module_1_res,
         n_majority5_module_19__and_module_1_res;

  XOR2_X1 u_xor_module_1_U1 ( .A(p_rand_0), .B(io_i1_s0_d0), .Z(
        n_xor_module_1_res) );
  XOR2_X1 u_xor_module_2_U1 ( .A(p_rand_0), .B(io_i1_s1_d0), .Z(
        n_xor_module_2_res) );
  XOR2_X1 u_xor_module_3_U1 ( .A(p_rand_0), .B(io_i1_s0_d1), .Z(
        n_xor_module_3_res) );
  XOR2_X1 u_xor_module_4_U1 ( .A(p_rand_0), .B(io_i1_s1_d1), .Z(
        n_xor_module_4_res) );
  XOR2_X1 u_xor_module_5_U1 ( .A(p_rand_0), .B(io_i1_s0_d2), .Z(
        n_xor_module_5_res) );
  XOR2_X1 u_xor_module_6_U1 ( .A(p_rand_0), .B(io_i1_s1_d2), .Z(
        n_xor_module_6_res) );
  XOR2_X1 u_xor_module_7_U1 ( .A(p_rand_0), .B(io_i1_s0_d3), .Z(
        n_xor_module_7_res) );
  XOR2_X1 u_xor_module_8_U1 ( .A(p_rand_0), .B(io_i1_s1_d3), .Z(
        n_xor_module_8_res) );
  XOR2_X1 u_xor_module_9_U1 ( .A(p_rand_0), .B(io_i1_s0_d4), .Z(
        n_xor_module_9_res) );
  XOR2_X1 u_xor_module_10_U1 ( .A(p_rand_0), .B(io_i1_s1_d4), .Z(
        n_xor_module_10_res) );
  AND2_X1 u_majority5_module_0__and_module_1_U1 ( .A1(n_xor_module_7_res), 
        .A2(n_xor_module_1_res), .ZN(n_majority5_module_0__and_module_1_res)
         );
  OR2_X1 u_majority5_module_0__or_module_1_U1 ( .A1(n_xor_module_1_res), .A2(
        n_xor_module_7_res), .ZN(n_majority5_module_0__or_module_1_res) );
  AND2_X1 u_majority5_module_0__and_module_2_U1 ( .A1(n_xor_module_9_res), 
        .A2(n_xor_module_3_res), .ZN(n_majority5_module_0__and_module_2_res)
         );
  OR2_X1 u_majority5_module_0__or_module_2_U1 ( .A1(n_xor_module_3_res), .A2(
        n_xor_module_9_res), .ZN(n_majority5_module_0__or_module_2_res) );
  AND2_X1 u_majority5_module_0__and_module_3_U1 ( .A1(n_xor_module_5_res), 
        .A2(n_majority5_module_0__and_module_1_res), .ZN(
        n_majority5_module_0__and_module_3_res) );
  OR2_X1 u_majority5_module_0__or_module_3_U1 ( .A1(
        n_majority5_module_0__and_module_1_res), .A2(n_xor_module_5_res), .ZN(
        n_majority5_module_0__or_module_3_res) );
  AND2_X1 u_majority5_module_0__and_module_4_U1 ( .A1(
        n_majority5_module_0__or_module_1_res), .A2(
        n_majority5_module_0__and_module_2_res), .ZN(
        n_majority5_module_0__and_module_4_res) );
  OR2_X1 u_majority5_module_0__or_module_4_U1 ( .A1(
        n_majority5_module_0__and_module_2_res), .A2(
        n_majority5_module_0__or_module_1_res), .ZN(
        n_majority5_module_0__or_module_4_res) );
  OR2_X1 u_majority5_module_0__or_module_5_U1 ( .A1(
        n_majority5_module_0__and_module_3_res), .A2(
        n_majority5_module_0__and_module_4_res), .ZN(
        n_majority5_module_0__or_module_5_res) );
  AND2_X1 u_majority5_module_0__and_module_5_U1 ( .A1(
        n_majority5_module_0__or_module_2_res), .A2(
        n_majority5_module_0__or_module_3_res), .ZN(
        n_majority5_module_0__and_module_5_res) );
  OR2_X1 u_majority5_module_0__or_module_6_U1 ( .A1(
        n_majority5_module_0__or_module_3_res), .A2(
        n_majority5_module_0__or_module_2_res), .ZN(
        n_majority5_module_0__or_module_6_res) );
  OR2_X1 u_majority5_module_0__or_module_7_U1 ( .A1(
        n_majority5_module_0__or_module_5_res), .A2(
        n_majority5_module_0__and_module_5_res), .ZN(
        n_majority5_module_0__or_module_7_res) );
  AND2_X1 u_majority5_module_0__and_module_6_U1 ( .A1(
        n_majority5_module_0__or_module_6_res), .A2(
        n_majority5_module_0__or_module_4_res), .ZN(
        n_majority5_module_0__and_module_6_res) );
  AND2_X1 u_majority5_module_0__and_module_7_U1 ( .A1(
        n_majority5_module_0__and_module_6_res), .A2(
        n_majority5_module_0__or_module_7_res), .ZN(n_majority5_module_0_res)
         );
  DFF_X1 u_reg_module_1__cini_mul_v00_reg ( .D(n_majority5_module_0_res), .CK(
        clock_0), .Q(n_reg_module_1_res), .QN() );
  AND2_X1 u_majority5_module_1__and_module_1_U1 ( .A1(n_xor_module_8_res), 
        .A2(n_xor_module_2_res), .ZN(n_majority5_module_1__and_module_1_res)
         );
  OR2_X1 u_majority5_module_1__or_module_1_U1 ( .A1(n_xor_module_2_res), .A2(
        n_xor_module_8_res), .ZN(n_majority5_module_1__or_module_1_res) );
  AND2_X1 u_majority5_module_1__and_module_2_U1 ( .A1(n_xor_module_10_res), 
        .A2(n_xor_module_4_res), .ZN(n_majority5_module_1__and_module_2_res)
         );
  OR2_X1 u_majority5_module_1__or_module_2_U1 ( .A1(n_xor_module_4_res), .A2(
        n_xor_module_10_res), .ZN(n_majority5_module_1__or_module_2_res) );
  AND2_X1 u_majority5_module_1__and_module_3_U1 ( .A1(n_xor_module_6_res), 
        .A2(n_majority5_module_1__and_module_1_res), .ZN(
        n_majority5_module_1__and_module_3_res) );
  OR2_X1 u_majority5_module_1__or_module_3_U1 ( .A1(
        n_majority5_module_1__and_module_1_res), .A2(n_xor_module_6_res), .ZN(
        n_majority5_module_1__or_module_3_res) );
  AND2_X1 u_majority5_module_1__and_module_4_U1 ( .A1(
        n_majority5_module_1__or_module_1_res), .A2(
        n_majority5_module_1__and_module_2_res), .ZN(
        n_majority5_module_1__and_module_4_res) );
  OR2_X1 u_majority5_module_1__or_module_4_U1 ( .A1(
        n_majority5_module_1__and_module_2_res), .A2(
        n_majority5_module_1__or_module_1_res), .ZN(
        n_majority5_module_1__or_module_4_res) );
  OR2_X1 u_majority5_module_1__or_module_5_U1 ( .A1(
        n_majority5_module_1__and_module_3_res), .A2(
        n_majority5_module_1__and_module_4_res), .ZN(
        n_majority5_module_1__or_module_5_res) );
  AND2_X1 u_majority5_module_1__and_module_5_U1 ( .A1(
        n_majority5_module_1__or_module_2_res), .A2(
        n_majority5_module_1__or_module_3_res), .ZN(
        n_majority5_module_1__and_module_5_res) );
  OR2_X1 u_majority5_module_1__or_module_6_U1 ( .A1(
        n_majority5_module_1__or_module_3_res), .A2(
        n_majority5_module_1__or_module_2_res), .ZN(
        n_majority5_module_1__or_module_6_res) );
  OR2_X1 u_majority5_module_1__or_module_7_U1 ( .A1(
        n_majority5_module_1__or_module_5_res), .A2(
        n_majority5_module_1__and_module_5_res), .ZN(
        n_majority5_module_1__or_module_7_res) );
  AND2_X1 u_majority5_module_1__and_module_6_U1 ( .A1(
        n_majority5_module_1__or_module_6_res), .A2(
        n_majority5_module_1__or_module_4_res), .ZN(
        n_majority5_module_1__and_module_6_res) );
  AND2_X1 u_majority5_module_1__and_module_7_U1 ( .A1(
        n_majority5_module_1__and_module_6_res), .A2(
        n_majority5_module_1__or_module_7_res), .ZN(n_majority5_module_1_res)
         );
  DFF_X1 u_reg_module_2__cini_mul_v00_reg ( .D(n_majority5_module_1_res), .CK(
        clock_0), .Q(n_reg_module_2_res), .QN() );
  AND2_X1 u_majority5_module_2__and_module_1_U1 ( .A1(n_xor_module_7_res), 
        .A2(n_xor_module_1_res), .ZN(n_majority5_module_2__and_module_1_res)
         );
  OR2_X1 u_majority5_module_2__or_module_1_U1 ( .A1(n_xor_module_1_res), .A2(
        n_xor_module_7_res), .ZN(n_majority5_module_2__or_module_1_res) );
  AND2_X1 u_majority5_module_2__and_module_2_U1 ( .A1(n_xor_module_9_res), 
        .A2(n_xor_module_3_res), .ZN(n_majority5_module_2__and_module_2_res)
         );
  OR2_X1 u_majority5_module_2__or_module_2_U1 ( .A1(n_xor_module_3_res), .A2(
        n_xor_module_9_res), .ZN(n_majority5_module_2__or_module_2_res) );
  AND2_X1 u_majority5_module_2__and_module_3_U1 ( .A1(n_xor_module_5_res), 
        .A2(n_majority5_module_2__and_module_1_res), .ZN(
        n_majority5_module_2__and_module_3_res) );
  OR2_X1 u_majority5_module_2__or_module_3_U1 ( .A1(
        n_majority5_module_2__and_module_1_res), .A2(n_xor_module_5_res), .ZN(
        n_majority5_module_2__or_module_3_res) );
  AND2_X1 u_majority5_module_2__and_module_4_U1 ( .A1(
        n_majority5_module_2__or_module_1_res), .A2(
        n_majority5_module_2__and_module_2_res), .ZN(
        n_majority5_module_2__and_module_4_res) );
  OR2_X1 u_majority5_module_2__or_module_4_U1 ( .A1(
        n_majority5_module_2__and_module_2_res), .A2(
        n_majority5_module_2__or_module_1_res), .ZN(
        n_majority5_module_2__or_module_4_res) );
  OR2_X1 u_majority5_module_2__or_module_5_U1 ( .A1(
        n_majority5_module_2__and_module_3_res), .A2(
        n_majority5_module_2__and_module_4_res), .ZN(
        n_majority5_module_2__or_module_5_res) );
  AND2_X1 u_majority5_module_2__and_module_5_U1 ( .A1(
        n_majority5_module_2__or_module_2_res), .A2(
        n_majority5_module_2__or_module_3_res), .ZN(
        n_majority5_module_2__and_module_5_res) );
  OR2_X1 u_majority5_module_2__or_module_6_U1 ( .A1(
        n_majority5_module_2__or_module_3_res), .A2(
        n_majority5_module_2__or_module_2_res), .ZN(
        n_majority5_module_2__or_module_6_res) );
  OR2_X1 u_majority5_module_2__or_module_7_U1 ( .A1(
        n_majority5_module_2__or_module_5_res), .A2(
        n_majority5_module_2__and_module_5_res), .ZN(
        n_majority5_module_2__or_module_7_res) );
  AND2_X1 u_majority5_module_2__and_module_6_U1 ( .A1(
        n_majority5_module_2__or_module_6_res), .A2(
        n_majority5_module_2__or_module_4_res), .ZN(
        n_majority5_module_2__and_module_6_res) );
  AND2_X1 u_majority5_module_2__and_module_7_U1 ( .A1(
        n_majority5_module_2__and_module_6_res), .A2(
        n_majority5_module_2__or_module_7_res), .ZN(n_majority5_module_2_res)
         );
  DFF_X1 u_reg_module_3__cini_mul_v00_reg ( .D(n_majority5_module_2_res), .CK(
        clock_1), .Q(n_reg_module_3_res), .QN() );
  AND2_X1 u_majority5_module_3__and_module_1_U1 ( .A1(n_xor_module_8_res), 
        .A2(n_xor_module_2_res), .ZN(n_majority5_module_3__and_module_1_res)
         );
  OR2_X1 u_majority5_module_3__or_module_1_U1 ( .A1(n_xor_module_2_res), .A2(
        n_xor_module_8_res), .ZN(n_majority5_module_3__or_module_1_res) );
  AND2_X1 u_majority5_module_3__and_module_2_U1 ( .A1(n_xor_module_10_res), 
        .A2(n_xor_module_4_res), .ZN(n_majority5_module_3__and_module_2_res)
         );
  OR2_X1 u_majority5_module_3__or_module_2_U1 ( .A1(n_xor_module_4_res), .A2(
        n_xor_module_10_res), .ZN(n_majority5_module_3__or_module_2_res) );
  AND2_X1 u_majority5_module_3__and_module_3_U1 ( .A1(n_xor_module_6_res), 
        .A2(n_majority5_module_3__and_module_1_res), .ZN(
        n_majority5_module_3__and_module_3_res) );
  OR2_X1 u_majority5_module_3__or_module_3_U1 ( .A1(
        n_majority5_module_3__and_module_1_res), .A2(n_xor_module_6_res), .ZN(
        n_majority5_module_3__or_module_3_res) );
  AND2_X1 u_majority5_module_3__and_module_4_U1 ( .A1(
        n_majority5_module_3__or_module_1_res), .A2(
        n_majority5_module_3__and_module_2_res), .ZN(
        n_majority5_module_3__and_module_4_res) );
  OR2_X1 u_majority5_module_3__or_module_4_U1 ( .A1(
        n_majority5_module_3__and_module_2_res), .A2(
        n_majority5_module_3__or_module_1_res), .ZN(
        n_majority5_module_3__or_module_4_res) );
  OR2_X1 u_majority5_module_3__or_module_5_U1 ( .A1(
        n_majority5_module_3__and_module_3_res), .A2(
        n_majority5_module_3__and_module_4_res), .ZN(
        n_majority5_module_3__or_module_5_res) );
  AND2_X1 u_majority5_module_3__and_module_5_U1 ( .A1(
        n_majority5_module_3__or_module_2_res), .A2(
        n_majority5_module_3__or_module_3_res), .ZN(
        n_majority5_module_3__and_module_5_res) );
  OR2_X1 u_majority5_module_3__or_module_6_U1 ( .A1(
        n_majority5_module_3__or_module_3_res), .A2(
        n_majority5_module_3__or_module_2_res), .ZN(
        n_majority5_module_3__or_module_6_res) );
  OR2_X1 u_majority5_module_3__or_module_7_U1 ( .A1(
        n_majority5_module_3__or_module_5_res), .A2(
        n_majority5_module_3__and_module_5_res), .ZN(
        n_majority5_module_3__or_module_7_res) );
  AND2_X1 u_majority5_module_3__and_module_6_U1 ( .A1(
        n_majority5_module_3__or_module_6_res), .A2(
        n_majority5_module_3__or_module_4_res), .ZN(
        n_majority5_module_3__and_module_6_res) );
  AND2_X1 u_majority5_module_3__and_module_7_U1 ( .A1(
        n_majority5_module_3__and_module_6_res), .A2(
        n_majority5_module_3__or_module_7_res), .ZN(n_majority5_module_3_res)
         );
  DFF_X1 u_reg_module_4__cini_mul_v00_reg ( .D(n_majority5_module_3_res), .CK(
        clock_1), .Q(n_reg_module_4_res), .QN() );
  AND2_X1 u_majority5_module_4__and_module_1_U1 ( .A1(n_xor_module_7_res), 
        .A2(n_xor_module_1_res), .ZN(n_majority5_module_4__and_module_1_res)
         );
  OR2_X1 u_majority5_module_4__or_module_1_U1 ( .A1(n_xor_module_1_res), .A2(
        n_xor_module_7_res), .ZN(n_majority5_module_4__or_module_1_res) );
  AND2_X1 u_majority5_module_4__and_module_2_U1 ( .A1(n_xor_module_9_res), 
        .A2(n_xor_module_3_res), .ZN(n_majority5_module_4__and_module_2_res)
         );
  OR2_X1 u_majority5_module_4__or_module_2_U1 ( .A1(n_xor_module_3_res), .A2(
        n_xor_module_9_res), .ZN(n_majority5_module_4__or_module_2_res) );
  AND2_X1 u_majority5_module_4__and_module_3_U1 ( .A1(n_xor_module_5_res), 
        .A2(n_majority5_module_4__and_module_1_res), .ZN(
        n_majority5_module_4__and_module_3_res) );
  OR2_X1 u_majority5_module_4__or_module_3_U1 ( .A1(
        n_majority5_module_4__and_module_1_res), .A2(n_xor_module_5_res), .ZN(
        n_majority5_module_4__or_module_3_res) );
  AND2_X1 u_majority5_module_4__and_module_4_U1 ( .A1(
        n_majority5_module_4__or_module_1_res), .A2(
        n_majority5_module_4__and_module_2_res), .ZN(
        n_majority5_module_4__and_module_4_res) );
  OR2_X1 u_majority5_module_4__or_module_4_U1 ( .A1(
        n_majority5_module_4__and_module_2_res), .A2(
        n_majority5_module_4__or_module_1_res), .ZN(
        n_majority5_module_4__or_module_4_res) );
  OR2_X1 u_majority5_module_4__or_module_5_U1 ( .A1(
        n_majority5_module_4__and_module_3_res), .A2(
        n_majority5_module_4__and_module_4_res), .ZN(
        n_majority5_module_4__or_module_5_res) );
  AND2_X1 u_majority5_module_4__and_module_5_U1 ( .A1(
        n_majority5_module_4__or_module_2_res), .A2(
        n_majority5_module_4__or_module_3_res), .ZN(
        n_majority5_module_4__and_module_5_res) );
  OR2_X1 u_majority5_module_4__or_module_6_U1 ( .A1(
        n_majority5_module_4__or_module_3_res), .A2(
        n_majority5_module_4__or_module_2_res), .ZN(
        n_majority5_module_4__or_module_6_res) );
  OR2_X1 u_majority5_module_4__or_module_7_U1 ( .A1(
        n_majority5_module_4__or_module_5_res), .A2(
        n_majority5_module_4__and_module_5_res), .ZN(
        n_majority5_module_4__or_module_7_res) );
  AND2_X1 u_majority5_module_4__and_module_6_U1 ( .A1(
        n_majority5_module_4__or_module_6_res), .A2(
        n_majority5_module_4__or_module_4_res), .ZN(
        n_majority5_module_4__and_module_6_res) );
  AND2_X1 u_majority5_module_4__and_module_7_U1 ( .A1(
        n_majority5_module_4__and_module_6_res), .A2(
        n_majority5_module_4__or_module_7_res), .ZN(n_majority5_module_4_res)
         );
  DFF_X1 u_reg_module_5__cini_mul_v00_reg ( .D(n_majority5_module_4_res), .CK(
        clock_2), .Q(n_reg_module_5_res), .QN() );
  AND2_X1 u_majority5_module_5__and_module_1_U1 ( .A1(n_xor_module_8_res), 
        .A2(n_xor_module_2_res), .ZN(n_majority5_module_5__and_module_1_res)
         );
  OR2_X1 u_majority5_module_5__or_module_1_U1 ( .A1(n_xor_module_2_res), .A2(
        n_xor_module_8_res), .ZN(n_majority5_module_5__or_module_1_res) );
  AND2_X1 u_majority5_module_5__and_module_2_U1 ( .A1(n_xor_module_10_res), 
        .A2(n_xor_module_4_res), .ZN(n_majority5_module_5__and_module_2_res)
         );
  OR2_X1 u_majority5_module_5__or_module_2_U1 ( .A1(n_xor_module_4_res), .A2(
        n_xor_module_10_res), .ZN(n_majority5_module_5__or_module_2_res) );
  AND2_X1 u_majority5_module_5__and_module_3_U1 ( .A1(n_xor_module_6_res), 
        .A2(n_majority5_module_5__and_module_1_res), .ZN(
        n_majority5_module_5__and_module_3_res) );
  OR2_X1 u_majority5_module_5__or_module_3_U1 ( .A1(
        n_majority5_module_5__and_module_1_res), .A2(n_xor_module_6_res), .ZN(
        n_majority5_module_5__or_module_3_res) );
  AND2_X1 u_majority5_module_5__and_module_4_U1 ( .A1(
        n_majority5_module_5__or_module_1_res), .A2(
        n_majority5_module_5__and_module_2_res), .ZN(
        n_majority5_module_5__and_module_4_res) );
  OR2_X1 u_majority5_module_5__or_module_4_U1 ( .A1(
        n_majority5_module_5__and_module_2_res), .A2(
        n_majority5_module_5__or_module_1_res), .ZN(
        n_majority5_module_5__or_module_4_res) );
  OR2_X1 u_majority5_module_5__or_module_5_U1 ( .A1(
        n_majority5_module_5__and_module_3_res), .A2(
        n_majority5_module_5__and_module_4_res), .ZN(
        n_majority5_module_5__or_module_5_res) );
  AND2_X1 u_majority5_module_5__and_module_5_U1 ( .A1(
        n_majority5_module_5__or_module_2_res), .A2(
        n_majority5_module_5__or_module_3_res), .ZN(
        n_majority5_module_5__and_module_5_res) );
  OR2_X1 u_majority5_module_5__or_module_6_U1 ( .A1(
        n_majority5_module_5__or_module_3_res), .A2(
        n_majority5_module_5__or_module_2_res), .ZN(
        n_majority5_module_5__or_module_6_res) );
  OR2_X1 u_majority5_module_5__or_module_7_U1 ( .A1(
        n_majority5_module_5__or_module_5_res), .A2(
        n_majority5_module_5__and_module_5_res), .ZN(
        n_majority5_module_5__or_module_7_res) );
  AND2_X1 u_majority5_module_5__and_module_6_U1 ( .A1(
        n_majority5_module_5__or_module_6_res), .A2(
        n_majority5_module_5__or_module_4_res), .ZN(
        n_majority5_module_5__and_module_6_res) );
  AND2_X1 u_majority5_module_5__and_module_7_U1 ( .A1(
        n_majority5_module_5__and_module_6_res), .A2(
        n_majority5_module_5__or_module_7_res), .ZN(n_majority5_module_5_res)
         );
  DFF_X1 u_reg_module_6__cini_mul_v00_reg ( .D(n_majority5_module_5_res), .CK(
        clock_2), .Q(n_reg_module_6_res), .QN() );
  AND2_X1 u_majority5_module_6__and_module_1_U1 ( .A1(n_xor_module_7_res), 
        .A2(n_xor_module_1_res), .ZN(n_majority5_module_6__and_module_1_res)
         );
  OR2_X1 u_majority5_module_6__or_module_1_U1 ( .A1(n_xor_module_1_res), .A2(
        n_xor_module_7_res), .ZN(n_majority5_module_6__or_module_1_res) );
  AND2_X1 u_majority5_module_6__and_module_2_U1 ( .A1(n_xor_module_9_res), 
        .A2(n_xor_module_3_res), .ZN(n_majority5_module_6__and_module_2_res)
         );
  OR2_X1 u_majority5_module_6__or_module_2_U1 ( .A1(n_xor_module_3_res), .A2(
        n_xor_module_9_res), .ZN(n_majority5_module_6__or_module_2_res) );
  AND2_X1 u_majority5_module_6__and_module_3_U1 ( .A1(n_xor_module_5_res), 
        .A2(n_majority5_module_6__and_module_1_res), .ZN(
        n_majority5_module_6__and_module_3_res) );
  OR2_X1 u_majority5_module_6__or_module_3_U1 ( .A1(
        n_majority5_module_6__and_module_1_res), .A2(n_xor_module_5_res), .ZN(
        n_majority5_module_6__or_module_3_res) );
  AND2_X1 u_majority5_module_6__and_module_4_U1 ( .A1(
        n_majority5_module_6__or_module_1_res), .A2(
        n_majority5_module_6__and_module_2_res), .ZN(
        n_majority5_module_6__and_module_4_res) );
  OR2_X1 u_majority5_module_6__or_module_4_U1 ( .A1(
        n_majority5_module_6__and_module_2_res), .A2(
        n_majority5_module_6__or_module_1_res), .ZN(
        n_majority5_module_6__or_module_4_res) );
  OR2_X1 u_majority5_module_6__or_module_5_U1 ( .A1(
        n_majority5_module_6__and_module_3_res), .A2(
        n_majority5_module_6__and_module_4_res), .ZN(
        n_majority5_module_6__or_module_5_res) );
  AND2_X1 u_majority5_module_6__and_module_5_U1 ( .A1(
        n_majority5_module_6__or_module_2_res), .A2(
        n_majority5_module_6__or_module_3_res), .ZN(
        n_majority5_module_6__and_module_5_res) );
  OR2_X1 u_majority5_module_6__or_module_6_U1 ( .A1(
        n_majority5_module_6__or_module_3_res), .A2(
        n_majority5_module_6__or_module_2_res), .ZN(
        n_majority5_module_6__or_module_6_res) );
  OR2_X1 u_majority5_module_6__or_module_7_U1 ( .A1(
        n_majority5_module_6__or_module_5_res), .A2(
        n_majority5_module_6__and_module_5_res), .ZN(
        n_majority5_module_6__or_module_7_res) );
  AND2_X1 u_majority5_module_6__and_module_6_U1 ( .A1(
        n_majority5_module_6__or_module_6_res), .A2(
        n_majority5_module_6__or_module_4_res), .ZN(
        n_majority5_module_6__and_module_6_res) );
  AND2_X1 u_majority5_module_6__and_module_7_U1 ( .A1(
        n_majority5_module_6__and_module_6_res), .A2(
        n_majority5_module_6__or_module_7_res), .ZN(n_majority5_module_6_res)
         );
  DFF_X1 u_reg_module_7__cini_mul_v00_reg ( .D(n_majority5_module_6_res), .CK(
        clock_3), .Q(n_reg_module_7_res), .QN() );
  AND2_X1 u_majority5_module_7__and_module_1_U1 ( .A1(n_xor_module_8_res), 
        .A2(n_xor_module_2_res), .ZN(n_majority5_module_7__and_module_1_res)
         );
  OR2_X1 u_majority5_module_7__or_module_1_U1 ( .A1(n_xor_module_2_res), .A2(
        n_xor_module_8_res), .ZN(n_majority5_module_7__or_module_1_res) );
  AND2_X1 u_majority5_module_7__and_module_2_U1 ( .A1(n_xor_module_10_res), 
        .A2(n_xor_module_4_res), .ZN(n_majority5_module_7__and_module_2_res)
         );
  OR2_X1 u_majority5_module_7__or_module_2_U1 ( .A1(n_xor_module_4_res), .A2(
        n_xor_module_10_res), .ZN(n_majority5_module_7__or_module_2_res) );
  AND2_X1 u_majority5_module_7__and_module_3_U1 ( .A1(n_xor_module_6_res), 
        .A2(n_majority5_module_7__and_module_1_res), .ZN(
        n_majority5_module_7__and_module_3_res) );
  OR2_X1 u_majority5_module_7__or_module_3_U1 ( .A1(
        n_majority5_module_7__and_module_1_res), .A2(n_xor_module_6_res), .ZN(
        n_majority5_module_7__or_module_3_res) );
  AND2_X1 u_majority5_module_7__and_module_4_U1 ( .A1(
        n_majority5_module_7__or_module_1_res), .A2(
        n_majority5_module_7__and_module_2_res), .ZN(
        n_majority5_module_7__and_module_4_res) );
  OR2_X1 u_majority5_module_7__or_module_4_U1 ( .A1(
        n_majority5_module_7__and_module_2_res), .A2(
        n_majority5_module_7__or_module_1_res), .ZN(
        n_majority5_module_7__or_module_4_res) );
  OR2_X1 u_majority5_module_7__or_module_5_U1 ( .A1(
        n_majority5_module_7__and_module_3_res), .A2(
        n_majority5_module_7__and_module_4_res), .ZN(
        n_majority5_module_7__or_module_5_res) );
  AND2_X1 u_majority5_module_7__and_module_5_U1 ( .A1(
        n_majority5_module_7__or_module_2_res), .A2(
        n_majority5_module_7__or_module_3_res), .ZN(
        n_majority5_module_7__and_module_5_res) );
  OR2_X1 u_majority5_module_7__or_module_6_U1 ( .A1(
        n_majority5_module_7__or_module_3_res), .A2(
        n_majority5_module_7__or_module_2_res), .ZN(
        n_majority5_module_7__or_module_6_res) );
  OR2_X1 u_majority5_module_7__or_module_7_U1 ( .A1(
        n_majority5_module_7__or_module_5_res), .A2(
        n_majority5_module_7__and_module_5_res), .ZN(
        n_majority5_module_7__or_module_7_res) );
  AND2_X1 u_majority5_module_7__and_module_6_U1 ( .A1(
        n_majority5_module_7__or_module_6_res), .A2(
        n_majority5_module_7__or_module_4_res), .ZN(
        n_majority5_module_7__and_module_6_res) );
  AND2_X1 u_majority5_module_7__and_module_7_U1 ( .A1(
        n_majority5_module_7__and_module_6_res), .A2(
        n_majority5_module_7__or_module_7_res), .ZN(n_majority5_module_7_res)
         );
  DFF_X1 u_reg_module_8__cini_mul_v00_reg ( .D(n_majority5_module_7_res), .CK(
        clock_3), .Q(n_reg_module_8_res), .QN() );
  AND2_X1 u_majority5_module_8__and_module_1_U1 ( .A1(n_xor_module_7_res), 
        .A2(n_xor_module_1_res), .ZN(n_majority5_module_8__and_module_1_res)
         );
  OR2_X1 u_majority5_module_8__or_module_1_U1 ( .A1(n_xor_module_1_res), .A2(
        n_xor_module_7_res), .ZN(n_majority5_module_8__or_module_1_res) );
  AND2_X1 u_majority5_module_8__and_module_2_U1 ( .A1(n_xor_module_9_res), 
        .A2(n_xor_module_3_res), .ZN(n_majority5_module_8__and_module_2_res)
         );
  OR2_X1 u_majority5_module_8__or_module_2_U1 ( .A1(n_xor_module_3_res), .A2(
        n_xor_module_9_res), .ZN(n_majority5_module_8__or_module_2_res) );
  AND2_X1 u_majority5_module_8__and_module_3_U1 ( .A1(n_xor_module_5_res), 
        .A2(n_majority5_module_8__and_module_1_res), .ZN(
        n_majority5_module_8__and_module_3_res) );
  OR2_X1 u_majority5_module_8__or_module_3_U1 ( .A1(
        n_majority5_module_8__and_module_1_res), .A2(n_xor_module_5_res), .ZN(
        n_majority5_module_8__or_module_3_res) );
  AND2_X1 u_majority5_module_8__and_module_4_U1 ( .A1(
        n_majority5_module_8__or_module_1_res), .A2(
        n_majority5_module_8__and_module_2_res), .ZN(
        n_majority5_module_8__and_module_4_res) );
  OR2_X1 u_majority5_module_8__or_module_4_U1 ( .A1(
        n_majority5_module_8__and_module_2_res), .A2(
        n_majority5_module_8__or_module_1_res), .ZN(
        n_majority5_module_8__or_module_4_res) );
  OR2_X1 u_majority5_module_8__or_module_5_U1 ( .A1(
        n_majority5_module_8__and_module_3_res), .A2(
        n_majority5_module_8__and_module_4_res), .ZN(
        n_majority5_module_8__or_module_5_res) );
  AND2_X1 u_majority5_module_8__and_module_5_U1 ( .A1(
        n_majority5_module_8__or_module_2_res), .A2(
        n_majority5_module_8__or_module_3_res), .ZN(
        n_majority5_module_8__and_module_5_res) );
  OR2_X1 u_majority5_module_8__or_module_6_U1 ( .A1(
        n_majority5_module_8__or_module_3_res), .A2(
        n_majority5_module_8__or_module_2_res), .ZN(
        n_majority5_module_8__or_module_6_res) );
  OR2_X1 u_majority5_module_8__or_module_7_U1 ( .A1(
        n_majority5_module_8__or_module_5_res), .A2(
        n_majority5_module_8__and_module_5_res), .ZN(
        n_majority5_module_8__or_module_7_res) );
  AND2_X1 u_majority5_module_8__and_module_6_U1 ( .A1(
        n_majority5_module_8__or_module_6_res), .A2(
        n_majority5_module_8__or_module_4_res), .ZN(
        n_majority5_module_8__and_module_6_res) );
  AND2_X1 u_majority5_module_8__and_module_7_U1 ( .A1(
        n_majority5_module_8__and_module_6_res), .A2(
        n_majority5_module_8__or_module_7_res), .ZN(n_majority5_module_8_res)
         );
  DFF_X1 u_reg_module_9__cini_mul_v00_reg ( .D(n_majority5_module_8_res), .CK(
        clock_4), .Q(n_reg_module_9_res), .QN() );
  AND2_X1 u_majority5_module_9__and_module_1_U1 ( .A1(n_xor_module_8_res), 
        .A2(n_xor_module_2_res), .ZN(n_majority5_module_9__and_module_1_res)
         );
  OR2_X1 u_majority5_module_9__or_module_1_U1 ( .A1(n_xor_module_2_res), .A2(
        n_xor_module_8_res), .ZN(n_majority5_module_9__or_module_1_res) );
  AND2_X1 u_majority5_module_9__and_module_2_U1 ( .A1(n_xor_module_10_res), 
        .A2(n_xor_module_4_res), .ZN(n_majority5_module_9__and_module_2_res)
         );
  OR2_X1 u_majority5_module_9__or_module_2_U1 ( .A1(n_xor_module_4_res), .A2(
        n_xor_module_10_res), .ZN(n_majority5_module_9__or_module_2_res) );
  AND2_X1 u_majority5_module_9__and_module_3_U1 ( .A1(n_xor_module_6_res), 
        .A2(n_majority5_module_9__and_module_1_res), .ZN(
        n_majority5_module_9__and_module_3_res) );
  OR2_X1 u_majority5_module_9__or_module_3_U1 ( .A1(
        n_majority5_module_9__and_module_1_res), .A2(n_xor_module_6_res), .ZN(
        n_majority5_module_9__or_module_3_res) );
  AND2_X1 u_majority5_module_9__and_module_4_U1 ( .A1(
        n_majority5_module_9__or_module_1_res), .A2(
        n_majority5_module_9__and_module_2_res), .ZN(
        n_majority5_module_9__and_module_4_res) );
  OR2_X1 u_majority5_module_9__or_module_4_U1 ( .A1(
        n_majority5_module_9__and_module_2_res), .A2(
        n_majority5_module_9__or_module_1_res), .ZN(
        n_majority5_module_9__or_module_4_res) );
  OR2_X1 u_majority5_module_9__or_module_5_U1 ( .A1(
        n_majority5_module_9__and_module_3_res), .A2(
        n_majority5_module_9__and_module_4_res), .ZN(
        n_majority5_module_9__or_module_5_res) );
  AND2_X1 u_majority5_module_9__and_module_5_U1 ( .A1(
        n_majority5_module_9__or_module_2_res), .A2(
        n_majority5_module_9__or_module_3_res), .ZN(
        n_majority5_module_9__and_module_5_res) );
  OR2_X1 u_majority5_module_9__or_module_6_U1 ( .A1(
        n_majority5_module_9__or_module_3_res), .A2(
        n_majority5_module_9__or_module_2_res), .ZN(
        n_majority5_module_9__or_module_6_res) );
  OR2_X1 u_majority5_module_9__or_module_7_U1 ( .A1(
        n_majority5_module_9__or_module_5_res), .A2(
        n_majority5_module_9__and_module_5_res), .ZN(
        n_majority5_module_9__or_module_7_res) );
  AND2_X1 u_majority5_module_9__and_module_6_U1 ( .A1(
        n_majority5_module_9__or_module_6_res), .A2(
        n_majority5_module_9__or_module_4_res), .ZN(
        n_majority5_module_9__and_module_6_res) );
  AND2_X1 u_majority5_module_9__and_module_7_U1 ( .A1(
        n_majority5_module_9__and_module_6_res), .A2(
        n_majority5_module_9__or_module_7_res), .ZN(n_majority5_module_9_res)
         );
  DFF_X1 u_reg_module_10__cini_mul_v00_reg ( .D(n_majority5_module_9_res), 
        .CK(clock_4), .Q(n_reg_module_10_res), .QN() );
  AND2_X1 u_and_module_1_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s0_d0), .ZN(
        n_and_module_1_res) );
  AND2_X1 u_and_module_2_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s0_d0), .ZN(
        n_and_module_2_res) );
  XOR2_X1 u_xor_module_11_U1 ( .A(p_rand_1), .B(n_and_module_2_res), .Z(
        n_xor_module_11_res) );
  AND2_X1 u_and_module_3_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s1_d0), .ZN(
        n_and_module_3_res) );
  XOR2_X1 u_xor_module_12_U1 ( .A(p_rand_1), .B(n_and_module_3_res), .Z(
        n_xor_module_12_res) );
  AND2_X1 u_and_module_4_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s1_d0), .ZN(
        n_and_module_4_res) );
  AND2_X1 u_and_module_5_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s0_d1), .ZN(
        n_and_module_5_res) );
  AND2_X1 u_and_module_6_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s0_d1), .ZN(
        n_and_module_6_res) );
  XOR2_X1 u_xor_module_13_U1 ( .A(p_rand_1), .B(n_and_module_6_res), .Z(
        n_xor_module_13_res) );
  AND2_X1 u_and_module_7_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s1_d1), .ZN(
        n_and_module_7_res) );
  XOR2_X1 u_xor_module_14_U1 ( .A(p_rand_1), .B(n_and_module_7_res), .Z(
        n_xor_module_14_res) );
  AND2_X1 u_and_module_8_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s1_d1), .ZN(
        n_and_module_8_res) );
  AND2_X1 u_and_module_9_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s0_d2), .ZN(
        n_and_module_9_res) );
  AND2_X1 u_and_module_10_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s0_d2), .ZN(
        n_and_module_10_res) );
  XOR2_X1 u_xor_module_15_U1 ( .A(p_rand_1), .B(n_and_module_10_res), .Z(
        n_xor_module_15_res) );
  AND2_X1 u_and_module_11_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s1_d2), .ZN(
        n_and_module_11_res) );
  XOR2_X1 u_xor_module_16_U1 ( .A(p_rand_1), .B(n_and_module_11_res), .Z(
        n_xor_module_16_res) );
  AND2_X1 u_and_module_12_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s1_d2), .ZN(
        n_and_module_12_res) );
  AND2_X1 u_and_module_13_U1 ( .A1(n_reg_module_7_res), .A2(io_i0_s0_d3), .ZN(
        n_and_module_13_res) );
  AND2_X1 u_and_module_14_U1 ( .A1(n_reg_module_8_res), .A2(io_i0_s0_d3), .ZN(
        n_and_module_14_res) );
  XOR2_X1 u_xor_module_17_U1 ( .A(p_rand_1), .B(n_and_module_14_res), .Z(
        n_xor_module_17_res) );
  AND2_X1 u_and_module_15_U1 ( .A1(n_reg_module_7_res), .A2(io_i0_s1_d3), .ZN(
        n_and_module_15_res) );
  XOR2_X1 u_xor_module_18_U1 ( .A(p_rand_1), .B(n_and_module_15_res), .Z(
        n_xor_module_18_res) );
  AND2_X1 u_and_module_16_U1 ( .A1(n_reg_module_8_res), .A2(io_i0_s1_d3), .ZN(
        n_and_module_16_res) );
  AND2_X1 u_and_module_17_U1 ( .A1(n_reg_module_9_res), .A2(io_i0_s0_d4), .ZN(
        n_and_module_17_res) );
  AND2_X1 u_and_module_18_U1 ( .A1(n_reg_module_10_res), .A2(io_i0_s0_d4), 
        .ZN(n_and_module_18_res) );
  XOR2_X1 u_xor_module_19_U1 ( .A(p_rand_1), .B(n_and_module_18_res), .Z(
        n_xor_module_19_res) );
  AND2_X1 u_and_module_19_U1 ( .A1(n_reg_module_9_res), .A2(io_i0_s1_d4), .ZN(
        n_and_module_19_res) );
  XOR2_X1 u_xor_module_20_U1 ( .A(p_rand_1), .B(n_and_module_19_res), .Z(
        n_xor_module_20_res) );
  AND2_X1 u_and_module_20_U1 ( .A1(n_reg_module_10_res), .A2(io_i0_s1_d4), 
        .ZN(n_and_module_20_res) );
  DFF_X1 u_reg_module_11__cini_mul_v00_reg ( .D(n_and_module_1_res), .CK(
        clock_0), .Q(n_reg_module_11_res), .QN() );
  AND2_X1 u_majority5_module_10__and_module_1_U1 ( .A1(n_xor_module_17_res), 
        .A2(n_xor_module_11_res), .ZN(n_majority5_module_10__and_module_1_res)
         );
  OR2_X1 u_majority5_module_10__or_module_1_U1 ( .A1(n_xor_module_11_res), 
        .A2(n_xor_module_17_res), .ZN(n_majority5_module_10__or_module_1_res)
         );
  AND2_X1 u_majority5_module_10__and_module_2_U1 ( .A1(n_xor_module_19_res), 
        .A2(n_xor_module_13_res), .ZN(n_majority5_module_10__and_module_2_res)
         );
  OR2_X1 u_majority5_module_10__or_module_2_U1 ( .A1(n_xor_module_13_res), 
        .A2(n_xor_module_19_res), .ZN(n_majority5_module_10__or_module_2_res)
         );
  AND2_X1 u_majority5_module_10__and_module_3_U1 ( .A1(n_xor_module_15_res), 
        .A2(n_majority5_module_10__and_module_1_res), .ZN(
        n_majority5_module_10__and_module_3_res) );
  OR2_X1 u_majority5_module_10__or_module_3_U1 ( .A1(
        n_majority5_module_10__and_module_1_res), .A2(n_xor_module_15_res), 
        .ZN(n_majority5_module_10__or_module_3_res) );
  AND2_X1 u_majority5_module_10__and_module_4_U1 ( .A1(
        n_majority5_module_10__or_module_1_res), .A2(
        n_majority5_module_10__and_module_2_res), .ZN(
        n_majority5_module_10__and_module_4_res) );
  OR2_X1 u_majority5_module_10__or_module_4_U1 ( .A1(
        n_majority5_module_10__and_module_2_res), .A2(
        n_majority5_module_10__or_module_1_res), .ZN(
        n_majority5_module_10__or_module_4_res) );
  OR2_X1 u_majority5_module_10__or_module_5_U1 ( .A1(
        n_majority5_module_10__and_module_3_res), .A2(
        n_majority5_module_10__and_module_4_res), .ZN(
        n_majority5_module_10__or_module_5_res) );
  AND2_X1 u_majority5_module_10__and_module_5_U1 ( .A1(
        n_majority5_module_10__or_module_2_res), .A2(
        n_majority5_module_10__or_module_3_res), .ZN(
        n_majority5_module_10__and_module_5_res) );
  OR2_X1 u_majority5_module_10__or_module_6_U1 ( .A1(
        n_majority5_module_10__or_module_3_res), .A2(
        n_majority5_module_10__or_module_2_res), .ZN(
        n_majority5_module_10__or_module_6_res) );
  OR2_X1 u_majority5_module_10__or_module_7_U1 ( .A1(
        n_majority5_module_10__or_module_5_res), .A2(
        n_majority5_module_10__and_module_5_res), .ZN(
        n_majority5_module_10__or_module_7_res) );
  AND2_X1 u_majority5_module_10__and_module_6_U1 ( .A1(
        n_majority5_module_10__or_module_6_res), .A2(
        n_majority5_module_10__or_module_4_res), .ZN(
        n_majority5_module_10__and_module_6_res) );
  AND2_X1 u_majority5_module_10__and_module_7_U1 ( .A1(
        n_majority5_module_10__and_module_6_res), .A2(
        n_majority5_module_10__or_module_7_res), .ZN(n_majority5_module_10_res) );
  DFF_X1 u_reg_module_12__cini_mul_v00_reg ( .D(n_majority5_module_10_res), 
        .CK(clock_0), .Q(n_reg_module_12_res), .QN() );
  AND2_X1 u_majority5_module_11__and_module_1_U1 ( .A1(n_xor_module_18_res), 
        .A2(n_xor_module_12_res), .ZN(n_majority5_module_11__and_module_1_res)
         );
  OR2_X1 u_majority5_module_11__or_module_1_U1 ( .A1(n_xor_module_12_res), 
        .A2(n_xor_module_18_res), .ZN(n_majority5_module_11__or_module_1_res)
         );
  AND2_X1 u_majority5_module_11__and_module_2_U1 ( .A1(n_xor_module_20_res), 
        .A2(n_xor_module_14_res), .ZN(n_majority5_module_11__and_module_2_res)
         );
  OR2_X1 u_majority5_module_11__or_module_2_U1 ( .A1(n_xor_module_14_res), 
        .A2(n_xor_module_20_res), .ZN(n_majority5_module_11__or_module_2_res)
         );
  AND2_X1 u_majority5_module_11__and_module_3_U1 ( .A1(n_xor_module_16_res), 
        .A2(n_majority5_module_11__and_module_1_res), .ZN(
        n_majority5_module_11__and_module_3_res) );
  OR2_X1 u_majority5_module_11__or_module_3_U1 ( .A1(
        n_majority5_module_11__and_module_1_res), .A2(n_xor_module_16_res), 
        .ZN(n_majority5_module_11__or_module_3_res) );
  AND2_X1 u_majority5_module_11__and_module_4_U1 ( .A1(
        n_majority5_module_11__or_module_1_res), .A2(
        n_majority5_module_11__and_module_2_res), .ZN(
        n_majority5_module_11__and_module_4_res) );
  OR2_X1 u_majority5_module_11__or_module_4_U1 ( .A1(
        n_majority5_module_11__and_module_2_res), .A2(
        n_majority5_module_11__or_module_1_res), .ZN(
        n_majority5_module_11__or_module_4_res) );
  OR2_X1 u_majority5_module_11__or_module_5_U1 ( .A1(
        n_majority5_module_11__and_module_3_res), .A2(
        n_majority5_module_11__and_module_4_res), .ZN(
        n_majority5_module_11__or_module_5_res) );
  AND2_X1 u_majority5_module_11__and_module_5_U1 ( .A1(
        n_majority5_module_11__or_module_2_res), .A2(
        n_majority5_module_11__or_module_3_res), .ZN(
        n_majority5_module_11__and_module_5_res) );
  OR2_X1 u_majority5_module_11__or_module_6_U1 ( .A1(
        n_majority5_module_11__or_module_3_res), .A2(
        n_majority5_module_11__or_module_2_res), .ZN(
        n_majority5_module_11__or_module_6_res) );
  OR2_X1 u_majority5_module_11__or_module_7_U1 ( .A1(
        n_majority5_module_11__or_module_5_res), .A2(
        n_majority5_module_11__and_module_5_res), .ZN(
        n_majority5_module_11__or_module_7_res) );
  AND2_X1 u_majority5_module_11__and_module_6_U1 ( .A1(
        n_majority5_module_11__or_module_6_res), .A2(
        n_majority5_module_11__or_module_4_res), .ZN(
        n_majority5_module_11__and_module_6_res) );
  AND2_X1 u_majority5_module_11__and_module_7_U1 ( .A1(
        n_majority5_module_11__and_module_6_res), .A2(
        n_majority5_module_11__or_module_7_res), .ZN(n_majority5_module_11_res) );
  DFF_X1 u_reg_module_13__cini_mul_v00_reg ( .D(n_majority5_module_11_res), 
        .CK(clock_0), .Q(n_reg_module_13_res), .QN() );
  DFF_X1 u_reg_module_14__cini_mul_v00_reg ( .D(n_and_module_4_res), .CK(
        clock_0), .Q(n_reg_module_14_res), .QN() );
  DFF_X1 u_reg_module_15__cini_mul_v00_reg ( .D(n_and_module_5_res), .CK(
        clock_1), .Q(n_reg_module_15_res), .QN() );
  AND2_X1 u_majority5_module_12__and_module_1_U1 ( .A1(n_xor_module_17_res), 
        .A2(n_xor_module_11_res), .ZN(n_majority5_module_12__and_module_1_res)
         );
  OR2_X1 u_majority5_module_12__or_module_1_U1 ( .A1(n_xor_module_11_res), 
        .A2(n_xor_module_17_res), .ZN(n_majority5_module_12__or_module_1_res)
         );
  AND2_X1 u_majority5_module_12__and_module_2_U1 ( .A1(n_xor_module_19_res), 
        .A2(n_xor_module_13_res), .ZN(n_majority5_module_12__and_module_2_res)
         );
  OR2_X1 u_majority5_module_12__or_module_2_U1 ( .A1(n_xor_module_13_res), 
        .A2(n_xor_module_19_res), .ZN(n_majority5_module_12__or_module_2_res)
         );
  AND2_X1 u_majority5_module_12__and_module_3_U1 ( .A1(n_xor_module_15_res), 
        .A2(n_majority5_module_12__and_module_1_res), .ZN(
        n_majority5_module_12__and_module_3_res) );
  OR2_X1 u_majority5_module_12__or_module_3_U1 ( .A1(
        n_majority5_module_12__and_module_1_res), .A2(n_xor_module_15_res), 
        .ZN(n_majority5_module_12__or_module_3_res) );
  AND2_X1 u_majority5_module_12__and_module_4_U1 ( .A1(
        n_majority5_module_12__or_module_1_res), .A2(
        n_majority5_module_12__and_module_2_res), .ZN(
        n_majority5_module_12__and_module_4_res) );
  OR2_X1 u_majority5_module_12__or_module_4_U1 ( .A1(
        n_majority5_module_12__and_module_2_res), .A2(
        n_majority5_module_12__or_module_1_res), .ZN(
        n_majority5_module_12__or_module_4_res) );
  OR2_X1 u_majority5_module_12__or_module_5_U1 ( .A1(
        n_majority5_module_12__and_module_3_res), .A2(
        n_majority5_module_12__and_module_4_res), .ZN(
        n_majority5_module_12__or_module_5_res) );
  AND2_X1 u_majority5_module_12__and_module_5_U1 ( .A1(
        n_majority5_module_12__or_module_2_res), .A2(
        n_majority5_module_12__or_module_3_res), .ZN(
        n_majority5_module_12__and_module_5_res) );
  OR2_X1 u_majority5_module_12__or_module_6_U1 ( .A1(
        n_majority5_module_12__or_module_3_res), .A2(
        n_majority5_module_12__or_module_2_res), .ZN(
        n_majority5_module_12__or_module_6_res) );
  OR2_X1 u_majority5_module_12__or_module_7_U1 ( .A1(
        n_majority5_module_12__or_module_5_res), .A2(
        n_majority5_module_12__and_module_5_res), .ZN(
        n_majority5_module_12__or_module_7_res) );
  AND2_X1 u_majority5_module_12__and_module_6_U1 ( .A1(
        n_majority5_module_12__or_module_6_res), .A2(
        n_majority5_module_12__or_module_4_res), .ZN(
        n_majority5_module_12__and_module_6_res) );
  AND2_X1 u_majority5_module_12__and_module_7_U1 ( .A1(
        n_majority5_module_12__and_module_6_res), .A2(
        n_majority5_module_12__or_module_7_res), .ZN(n_majority5_module_12_res) );
  DFF_X1 u_reg_module_16__cini_mul_v00_reg ( .D(n_majority5_module_12_res), 
        .CK(clock_1), .Q(n_reg_module_16_res), .QN() );
  AND2_X1 u_majority5_module_13__and_module_1_U1 ( .A1(n_xor_module_18_res), 
        .A2(n_xor_module_12_res), .ZN(n_majority5_module_13__and_module_1_res)
         );
  OR2_X1 u_majority5_module_13__or_module_1_U1 ( .A1(n_xor_module_12_res), 
        .A2(n_xor_module_18_res), .ZN(n_majority5_module_13__or_module_1_res)
         );
  AND2_X1 u_majority5_module_13__and_module_2_U1 ( .A1(n_xor_module_20_res), 
        .A2(n_xor_module_14_res), .ZN(n_majority5_module_13__and_module_2_res)
         );
  OR2_X1 u_majority5_module_13__or_module_2_U1 ( .A1(n_xor_module_14_res), 
        .A2(n_xor_module_20_res), .ZN(n_majority5_module_13__or_module_2_res)
         );
  AND2_X1 u_majority5_module_13__and_module_3_U1 ( .A1(n_xor_module_16_res), 
        .A2(n_majority5_module_13__and_module_1_res), .ZN(
        n_majority5_module_13__and_module_3_res) );
  OR2_X1 u_majority5_module_13__or_module_3_U1 ( .A1(
        n_majority5_module_13__and_module_1_res), .A2(n_xor_module_16_res), 
        .ZN(n_majority5_module_13__or_module_3_res) );
  AND2_X1 u_majority5_module_13__and_module_4_U1 ( .A1(
        n_majority5_module_13__or_module_1_res), .A2(
        n_majority5_module_13__and_module_2_res), .ZN(
        n_majority5_module_13__and_module_4_res) );
  OR2_X1 u_majority5_module_13__or_module_4_U1 ( .A1(
        n_majority5_module_13__and_module_2_res), .A2(
        n_majority5_module_13__or_module_1_res), .ZN(
        n_majority5_module_13__or_module_4_res) );
  OR2_X1 u_majority5_module_13__or_module_5_U1 ( .A1(
        n_majority5_module_13__and_module_3_res), .A2(
        n_majority5_module_13__and_module_4_res), .ZN(
        n_majority5_module_13__or_module_5_res) );
  AND2_X1 u_majority5_module_13__and_module_5_U1 ( .A1(
        n_majority5_module_13__or_module_2_res), .A2(
        n_majority5_module_13__or_module_3_res), .ZN(
        n_majority5_module_13__and_module_5_res) );
  OR2_X1 u_majority5_module_13__or_module_6_U1 ( .A1(
        n_majority5_module_13__or_module_3_res), .A2(
        n_majority5_module_13__or_module_2_res), .ZN(
        n_majority5_module_13__or_module_6_res) );
  OR2_X1 u_majority5_module_13__or_module_7_U1 ( .A1(
        n_majority5_module_13__or_module_5_res), .A2(
        n_majority5_module_13__and_module_5_res), .ZN(
        n_majority5_module_13__or_module_7_res) );
  AND2_X1 u_majority5_module_13__and_module_6_U1 ( .A1(
        n_majority5_module_13__or_module_6_res), .A2(
        n_majority5_module_13__or_module_4_res), .ZN(
        n_majority5_module_13__and_module_6_res) );
  AND2_X1 u_majority5_module_13__and_module_7_U1 ( .A1(
        n_majority5_module_13__and_module_6_res), .A2(
        n_majority5_module_13__or_module_7_res), .ZN(n_majority5_module_13_res) );
  DFF_X1 u_reg_module_17__cini_mul_v00_reg ( .D(n_majority5_module_13_res), 
        .CK(clock_1), .Q(n_reg_module_17_res), .QN() );
  DFF_X1 u_reg_module_18__cini_mul_v00_reg ( .D(n_and_module_8_res), .CK(
        clock_1), .Q(n_reg_module_18_res), .QN() );
  DFF_X1 u_reg_module_19__cini_mul_v00_reg ( .D(n_and_module_9_res), .CK(
        clock_2), .Q(n_reg_module_19_res), .QN() );
  AND2_X1 u_majority5_module_14__and_module_1_U1 ( .A1(n_xor_module_17_res), 
        .A2(n_xor_module_11_res), .ZN(n_majority5_module_14__and_module_1_res)
         );
  OR2_X1 u_majority5_module_14__or_module_1_U1 ( .A1(n_xor_module_11_res), 
        .A2(n_xor_module_17_res), .ZN(n_majority5_module_14__or_module_1_res)
         );
  AND2_X1 u_majority5_module_14__and_module_2_U1 ( .A1(n_xor_module_19_res), 
        .A2(n_xor_module_13_res), .ZN(n_majority5_module_14__and_module_2_res)
         );
  OR2_X1 u_majority5_module_14__or_module_2_U1 ( .A1(n_xor_module_13_res), 
        .A2(n_xor_module_19_res), .ZN(n_majority5_module_14__or_module_2_res)
         );
  AND2_X1 u_majority5_module_14__and_module_3_U1 ( .A1(n_xor_module_15_res), 
        .A2(n_majority5_module_14__and_module_1_res), .ZN(
        n_majority5_module_14__and_module_3_res) );
  OR2_X1 u_majority5_module_14__or_module_3_U1 ( .A1(
        n_majority5_module_14__and_module_1_res), .A2(n_xor_module_15_res), 
        .ZN(n_majority5_module_14__or_module_3_res) );
  AND2_X1 u_majority5_module_14__and_module_4_U1 ( .A1(
        n_majority5_module_14__or_module_1_res), .A2(
        n_majority5_module_14__and_module_2_res), .ZN(
        n_majority5_module_14__and_module_4_res) );
  OR2_X1 u_majority5_module_14__or_module_4_U1 ( .A1(
        n_majority5_module_14__and_module_2_res), .A2(
        n_majority5_module_14__or_module_1_res), .ZN(
        n_majority5_module_14__or_module_4_res) );
  OR2_X1 u_majority5_module_14__or_module_5_U1 ( .A1(
        n_majority5_module_14__and_module_3_res), .A2(
        n_majority5_module_14__and_module_4_res), .ZN(
        n_majority5_module_14__or_module_5_res) );
  AND2_X1 u_majority5_module_14__and_module_5_U1 ( .A1(
        n_majority5_module_14__or_module_2_res), .A2(
        n_majority5_module_14__or_module_3_res), .ZN(
        n_majority5_module_14__and_module_5_res) );
  OR2_X1 u_majority5_module_14__or_module_6_U1 ( .A1(
        n_majority5_module_14__or_module_3_res), .A2(
        n_majority5_module_14__or_module_2_res), .ZN(
        n_majority5_module_14__or_module_6_res) );
  OR2_X1 u_majority5_module_14__or_module_7_U1 ( .A1(
        n_majority5_module_14__or_module_5_res), .A2(
        n_majority5_module_14__and_module_5_res), .ZN(
        n_majority5_module_14__or_module_7_res) );
  AND2_X1 u_majority5_module_14__and_module_6_U1 ( .A1(
        n_majority5_module_14__or_module_6_res), .A2(
        n_majority5_module_14__or_module_4_res), .ZN(
        n_majority5_module_14__and_module_6_res) );
  AND2_X1 u_majority5_module_14__and_module_7_U1 ( .A1(
        n_majority5_module_14__and_module_6_res), .A2(
        n_majority5_module_14__or_module_7_res), .ZN(n_majority5_module_14_res) );
  DFF_X1 u_reg_module_20__cini_mul_v00_reg ( .D(n_majority5_module_14_res), 
        .CK(clock_2), .Q(n_reg_module_20_res), .QN() );
  AND2_X1 u_majority5_module_15__and_module_1_U1 ( .A1(n_xor_module_18_res), 
        .A2(n_xor_module_12_res), .ZN(n_majority5_module_15__and_module_1_res)
         );
  OR2_X1 u_majority5_module_15__or_module_1_U1 ( .A1(n_xor_module_12_res), 
        .A2(n_xor_module_18_res), .ZN(n_majority5_module_15__or_module_1_res)
         );
  AND2_X1 u_majority5_module_15__and_module_2_U1 ( .A1(n_xor_module_20_res), 
        .A2(n_xor_module_14_res), .ZN(n_majority5_module_15__and_module_2_res)
         );
  OR2_X1 u_majority5_module_15__or_module_2_U1 ( .A1(n_xor_module_14_res), 
        .A2(n_xor_module_20_res), .ZN(n_majority5_module_15__or_module_2_res)
         );
  AND2_X1 u_majority5_module_15__and_module_3_U1 ( .A1(n_xor_module_16_res), 
        .A2(n_majority5_module_15__and_module_1_res), .ZN(
        n_majority5_module_15__and_module_3_res) );
  OR2_X1 u_majority5_module_15__or_module_3_U1 ( .A1(
        n_majority5_module_15__and_module_1_res), .A2(n_xor_module_16_res), 
        .ZN(n_majority5_module_15__or_module_3_res) );
  AND2_X1 u_majority5_module_15__and_module_4_U1 ( .A1(
        n_majority5_module_15__or_module_1_res), .A2(
        n_majority5_module_15__and_module_2_res), .ZN(
        n_majority5_module_15__and_module_4_res) );
  OR2_X1 u_majority5_module_15__or_module_4_U1 ( .A1(
        n_majority5_module_15__and_module_2_res), .A2(
        n_majority5_module_15__or_module_1_res), .ZN(
        n_majority5_module_15__or_module_4_res) );
  OR2_X1 u_majority5_module_15__or_module_5_U1 ( .A1(
        n_majority5_module_15__and_module_3_res), .A2(
        n_majority5_module_15__and_module_4_res), .ZN(
        n_majority5_module_15__or_module_5_res) );
  AND2_X1 u_majority5_module_15__and_module_5_U1 ( .A1(
        n_majority5_module_15__or_module_2_res), .A2(
        n_majority5_module_15__or_module_3_res), .ZN(
        n_majority5_module_15__and_module_5_res) );
  OR2_X1 u_majority5_module_15__or_module_6_U1 ( .A1(
        n_majority5_module_15__or_module_3_res), .A2(
        n_majority5_module_15__or_module_2_res), .ZN(
        n_majority5_module_15__or_module_6_res) );
  OR2_X1 u_majority5_module_15__or_module_7_U1 ( .A1(
        n_majority5_module_15__or_module_5_res), .A2(
        n_majority5_module_15__and_module_5_res), .ZN(
        n_majority5_module_15__or_module_7_res) );
  AND2_X1 u_majority5_module_15__and_module_6_U1 ( .A1(
        n_majority5_module_15__or_module_6_res), .A2(
        n_majority5_module_15__or_module_4_res), .ZN(
        n_majority5_module_15__and_module_6_res) );
  AND2_X1 u_majority5_module_15__and_module_7_U1 ( .A1(
        n_majority5_module_15__and_module_6_res), .A2(
        n_majority5_module_15__or_module_7_res), .ZN(n_majority5_module_15_res) );
  DFF_X1 u_reg_module_21__cini_mul_v00_reg ( .D(n_majority5_module_15_res), 
        .CK(clock_2), .Q(n_reg_module_21_res), .QN() );
  DFF_X1 u_reg_module_22__cini_mul_v00_reg ( .D(n_and_module_12_res), .CK(
        clock_2), .Q(n_reg_module_22_res), .QN() );
  DFF_X1 u_reg_module_23__cini_mul_v00_reg ( .D(n_and_module_13_res), .CK(
        clock_3), .Q(n_reg_module_23_res), .QN() );
  AND2_X1 u_majority5_module_16__and_module_1_U1 ( .A1(n_xor_module_17_res), 
        .A2(n_xor_module_11_res), .ZN(n_majority5_module_16__and_module_1_res)
         );
  OR2_X1 u_majority5_module_16__or_module_1_U1 ( .A1(n_xor_module_11_res), 
        .A2(n_xor_module_17_res), .ZN(n_majority5_module_16__or_module_1_res)
         );
  AND2_X1 u_majority5_module_16__and_module_2_U1 ( .A1(n_xor_module_19_res), 
        .A2(n_xor_module_13_res), .ZN(n_majority5_module_16__and_module_2_res)
         );
  OR2_X1 u_majority5_module_16__or_module_2_U1 ( .A1(n_xor_module_13_res), 
        .A2(n_xor_module_19_res), .ZN(n_majority5_module_16__or_module_2_res)
         );
  AND2_X1 u_majority5_module_16__and_module_3_U1 ( .A1(n_xor_module_15_res), 
        .A2(n_majority5_module_16__and_module_1_res), .ZN(
        n_majority5_module_16__and_module_3_res) );
  OR2_X1 u_majority5_module_16__or_module_3_U1 ( .A1(
        n_majority5_module_16__and_module_1_res), .A2(n_xor_module_15_res), 
        .ZN(n_majority5_module_16__or_module_3_res) );
  AND2_X1 u_majority5_module_16__and_module_4_U1 ( .A1(
        n_majority5_module_16__or_module_1_res), .A2(
        n_majority5_module_16__and_module_2_res), .ZN(
        n_majority5_module_16__and_module_4_res) );
  OR2_X1 u_majority5_module_16__or_module_4_U1 ( .A1(
        n_majority5_module_16__and_module_2_res), .A2(
        n_majority5_module_16__or_module_1_res), .ZN(
        n_majority5_module_16__or_module_4_res) );
  OR2_X1 u_majority5_module_16__or_module_5_U1 ( .A1(
        n_majority5_module_16__and_module_3_res), .A2(
        n_majority5_module_16__and_module_4_res), .ZN(
        n_majority5_module_16__or_module_5_res) );
  AND2_X1 u_majority5_module_16__and_module_5_U1 ( .A1(
        n_majority5_module_16__or_module_2_res), .A2(
        n_majority5_module_16__or_module_3_res), .ZN(
        n_majority5_module_16__and_module_5_res) );
  OR2_X1 u_majority5_module_16__or_module_6_U1 ( .A1(
        n_majority5_module_16__or_module_3_res), .A2(
        n_majority5_module_16__or_module_2_res), .ZN(
        n_majority5_module_16__or_module_6_res) );
  OR2_X1 u_majority5_module_16__or_module_7_U1 ( .A1(
        n_majority5_module_16__or_module_5_res), .A2(
        n_majority5_module_16__and_module_5_res), .ZN(
        n_majority5_module_16__or_module_7_res) );
  AND2_X1 u_majority5_module_16__and_module_6_U1 ( .A1(
        n_majority5_module_16__or_module_6_res), .A2(
        n_majority5_module_16__or_module_4_res), .ZN(
        n_majority5_module_16__and_module_6_res) );
  AND2_X1 u_majority5_module_16__and_module_7_U1 ( .A1(
        n_majority5_module_16__and_module_6_res), .A2(
        n_majority5_module_16__or_module_7_res), .ZN(n_majority5_module_16_res) );
  DFF_X1 u_reg_module_24__cini_mul_v00_reg ( .D(n_majority5_module_16_res), 
        .CK(clock_3), .Q(n_reg_module_24_res), .QN() );
  AND2_X1 u_majority5_module_17__and_module_1_U1 ( .A1(n_xor_module_18_res), 
        .A2(n_xor_module_12_res), .ZN(n_majority5_module_17__and_module_1_res)
         );
  OR2_X1 u_majority5_module_17__or_module_1_U1 ( .A1(n_xor_module_12_res), 
        .A2(n_xor_module_18_res), .ZN(n_majority5_module_17__or_module_1_res)
         );
  AND2_X1 u_majority5_module_17__and_module_2_U1 ( .A1(n_xor_module_20_res), 
        .A2(n_xor_module_14_res), .ZN(n_majority5_module_17__and_module_2_res)
         );
  OR2_X1 u_majority5_module_17__or_module_2_U1 ( .A1(n_xor_module_14_res), 
        .A2(n_xor_module_20_res), .ZN(n_majority5_module_17__or_module_2_res)
         );
  AND2_X1 u_majority5_module_17__and_module_3_U1 ( .A1(n_xor_module_16_res), 
        .A2(n_majority5_module_17__and_module_1_res), .ZN(
        n_majority5_module_17__and_module_3_res) );
  OR2_X1 u_majority5_module_17__or_module_3_U1 ( .A1(
        n_majority5_module_17__and_module_1_res), .A2(n_xor_module_16_res), 
        .ZN(n_majority5_module_17__or_module_3_res) );
  AND2_X1 u_majority5_module_17__and_module_4_U1 ( .A1(
        n_majority5_module_17__or_module_1_res), .A2(
        n_majority5_module_17__and_module_2_res), .ZN(
        n_majority5_module_17__and_module_4_res) );
  OR2_X1 u_majority5_module_17__or_module_4_U1 ( .A1(
        n_majority5_module_17__and_module_2_res), .A2(
        n_majority5_module_17__or_module_1_res), .ZN(
        n_majority5_module_17__or_module_4_res) );
  OR2_X1 u_majority5_module_17__or_module_5_U1 ( .A1(
        n_majority5_module_17__and_module_3_res), .A2(
        n_majority5_module_17__and_module_4_res), .ZN(
        n_majority5_module_17__or_module_5_res) );
  AND2_X1 u_majority5_module_17__and_module_5_U1 ( .A1(
        n_majority5_module_17__or_module_2_res), .A2(
        n_majority5_module_17__or_module_3_res), .ZN(
        n_majority5_module_17__and_module_5_res) );
  OR2_X1 u_majority5_module_17__or_module_6_U1 ( .A1(
        n_majority5_module_17__or_module_3_res), .A2(
        n_majority5_module_17__or_module_2_res), .ZN(
        n_majority5_module_17__or_module_6_res) );
  OR2_X1 u_majority5_module_17__or_module_7_U1 ( .A1(
        n_majority5_module_17__or_module_5_res), .A2(
        n_majority5_module_17__and_module_5_res), .ZN(
        n_majority5_module_17__or_module_7_res) );
  AND2_X1 u_majority5_module_17__and_module_6_U1 ( .A1(
        n_majority5_module_17__or_module_6_res), .A2(
        n_majority5_module_17__or_module_4_res), .ZN(
        n_majority5_module_17__and_module_6_res) );
  AND2_X1 u_majority5_module_17__and_module_7_U1 ( .A1(
        n_majority5_module_17__and_module_6_res), .A2(
        n_majority5_module_17__or_module_7_res), .ZN(n_majority5_module_17_res) );
  DFF_X1 u_reg_module_25__cini_mul_v00_reg ( .D(n_majority5_module_17_res), 
        .CK(clock_3), .Q(n_reg_module_25_res), .QN() );
  DFF_X1 u_reg_module_26__cini_mul_v00_reg ( .D(n_and_module_16_res), .CK(
        clock_3), .Q(n_reg_module_26_res), .QN() );
  DFF_X1 u_reg_module_27__cini_mul_v00_reg ( .D(n_and_module_17_res), .CK(
        clock_4), .Q(n_reg_module_27_res), .QN() );
  AND2_X1 u_majority5_module_18__and_module_1_U1 ( .A1(n_xor_module_17_res), 
        .A2(n_xor_module_11_res), .ZN(n_majority5_module_18__and_module_1_res)
         );
  OR2_X1 u_majority5_module_18__or_module_1_U1 ( .A1(n_xor_module_11_res), 
        .A2(n_xor_module_17_res), .ZN(n_majority5_module_18__or_module_1_res)
         );
  AND2_X1 u_majority5_module_18__and_module_2_U1 ( .A1(n_xor_module_19_res), 
        .A2(n_xor_module_13_res), .ZN(n_majority5_module_18__and_module_2_res)
         );
  OR2_X1 u_majority5_module_18__or_module_2_U1 ( .A1(n_xor_module_13_res), 
        .A2(n_xor_module_19_res), .ZN(n_majority5_module_18__or_module_2_res)
         );
  AND2_X1 u_majority5_module_18__and_module_3_U1 ( .A1(n_xor_module_15_res), 
        .A2(n_majority5_module_18__and_module_1_res), .ZN(
        n_majority5_module_18__and_module_3_res) );
  OR2_X1 u_majority5_module_18__or_module_3_U1 ( .A1(
        n_majority5_module_18__and_module_1_res), .A2(n_xor_module_15_res), 
        .ZN(n_majority5_module_18__or_module_3_res) );
  AND2_X1 u_majority5_module_18__and_module_4_U1 ( .A1(
        n_majority5_module_18__or_module_1_res), .A2(
        n_majority5_module_18__and_module_2_res), .ZN(
        n_majority5_module_18__and_module_4_res) );
  OR2_X1 u_majority5_module_18__or_module_4_U1 ( .A1(
        n_majority5_module_18__and_module_2_res), .A2(
        n_majority5_module_18__or_module_1_res), .ZN(
        n_majority5_module_18__or_module_4_res) );
  OR2_X1 u_majority5_module_18__or_module_5_U1 ( .A1(
        n_majority5_module_18__and_module_3_res), .A2(
        n_majority5_module_18__and_module_4_res), .ZN(
        n_majority5_module_18__or_module_5_res) );
  AND2_X1 u_majority5_module_18__and_module_5_U1 ( .A1(
        n_majority5_module_18__or_module_2_res), .A2(
        n_majority5_module_18__or_module_3_res), .ZN(
        n_majority5_module_18__and_module_5_res) );
  OR2_X1 u_majority5_module_18__or_module_6_U1 ( .A1(
        n_majority5_module_18__or_module_3_res), .A2(
        n_majority5_module_18__or_module_2_res), .ZN(
        n_majority5_module_18__or_module_6_res) );
  OR2_X1 u_majority5_module_18__or_module_7_U1 ( .A1(
        n_majority5_module_18__or_module_5_res), .A2(
        n_majority5_module_18__and_module_5_res), .ZN(
        n_majority5_module_18__or_module_7_res) );
  AND2_X1 u_majority5_module_18__and_module_6_U1 ( .A1(
        n_majority5_module_18__or_module_6_res), .A2(
        n_majority5_module_18__or_module_4_res), .ZN(
        n_majority5_module_18__and_module_6_res) );
  AND2_X1 u_majority5_module_18__and_module_7_U1 ( .A1(
        n_majority5_module_18__and_module_6_res), .A2(
        n_majority5_module_18__or_module_7_res), .ZN(n_majority5_module_18_res) );
  DFF_X1 u_reg_module_28__cini_mul_v00_reg ( .D(n_majority5_module_18_res), 
        .CK(clock_4), .Q(n_reg_module_28_res), .QN() );
  AND2_X1 u_majority5_module_19__and_module_1_U1 ( .A1(n_xor_module_18_res), 
        .A2(n_xor_module_12_res), .ZN(n_majority5_module_19__and_module_1_res)
         );
  OR2_X1 u_majority5_module_19__or_module_1_U1 ( .A1(n_xor_module_12_res), 
        .A2(n_xor_module_18_res), .ZN(n_majority5_module_19__or_module_1_res)
         );
  AND2_X1 u_majority5_module_19__and_module_2_U1 ( .A1(n_xor_module_20_res), 
        .A2(n_xor_module_14_res), .ZN(n_majority5_module_19__and_module_2_res)
         );
  OR2_X1 u_majority5_module_19__or_module_2_U1 ( .A1(n_xor_module_14_res), 
        .A2(n_xor_module_20_res), .ZN(n_majority5_module_19__or_module_2_res)
         );
  AND2_X1 u_majority5_module_19__and_module_3_U1 ( .A1(n_xor_module_16_res), 
        .A2(n_majority5_module_19__and_module_1_res), .ZN(
        n_majority5_module_19__and_module_3_res) );
  OR2_X1 u_majority5_module_19__or_module_3_U1 ( .A1(
        n_majority5_module_19__and_module_1_res), .A2(n_xor_module_16_res), 
        .ZN(n_majority5_module_19__or_module_3_res) );
  AND2_X1 u_majority5_module_19__and_module_4_U1 ( .A1(
        n_majority5_module_19__or_module_1_res), .A2(
        n_majority5_module_19__and_module_2_res), .ZN(
        n_majority5_module_19__and_module_4_res) );
  OR2_X1 u_majority5_module_19__or_module_4_U1 ( .A1(
        n_majority5_module_19__and_module_2_res), .A2(
        n_majority5_module_19__or_module_1_res), .ZN(
        n_majority5_module_19__or_module_4_res) );
  OR2_X1 u_majority5_module_19__or_module_5_U1 ( .A1(
        n_majority5_module_19__and_module_3_res), .A2(
        n_majority5_module_19__and_module_4_res), .ZN(
        n_majority5_module_19__or_module_5_res) );
  AND2_X1 u_majority5_module_19__and_module_5_U1 ( .A1(
        n_majority5_module_19__or_module_2_res), .A2(
        n_majority5_module_19__or_module_3_res), .ZN(
        n_majority5_module_19__and_module_5_res) );
  OR2_X1 u_majority5_module_19__or_module_6_U1 ( .A1(
        n_majority5_module_19__or_module_3_res), .A2(
        n_majority5_module_19__or_module_2_res), .ZN(
        n_majority5_module_19__or_module_6_res) );
  OR2_X1 u_majority5_module_19__or_module_7_U1 ( .A1(
        n_majority5_module_19__or_module_5_res), .A2(
        n_majority5_module_19__and_module_5_res), .ZN(
        n_majority5_module_19__or_module_7_res) );
  AND2_X1 u_majority5_module_19__and_module_6_U1 ( .A1(
        n_majority5_module_19__or_module_6_res), .A2(
        n_majority5_module_19__or_module_4_res), .ZN(
        n_majority5_module_19__and_module_6_res) );
  AND2_X1 u_majority5_module_19__and_module_7_U1 ( .A1(
        n_majority5_module_19__and_module_6_res), .A2(
        n_majority5_module_19__or_module_7_res), .ZN(n_majority5_module_19_res) );
  DFF_X1 u_reg_module_29__cini_mul_v00_reg ( .D(n_majority5_module_19_res), 
        .CK(clock_4), .Q(n_reg_module_29_res), .QN() );
  DFF_X1 u_reg_module_30__cini_mul_v00_reg ( .D(n_and_module_20_res), .CK(
        clock_4), .Q(n_reg_module_30_res), .QN() );
  XOR2_X1 u_xor_module_21_U1 ( .A(n_reg_module_12_res), .B(n_reg_module_11_res), .Z(io_o0_s0_d0) );
  XOR2_X1 u_xor_module_22_U1 ( .A(n_reg_module_13_res), .B(n_reg_module_14_res), .Z(io_o0_s1_d0) );
  XOR2_X1 u_xor_module_23_U1 ( .A(n_reg_module_16_res), .B(n_reg_module_15_res), .Z(io_o0_s0_d1) );
  XOR2_X1 u_xor_module_24_U1 ( .A(n_reg_module_17_res), .B(n_reg_module_18_res), .Z(io_o0_s1_d1) );
  XOR2_X1 u_xor_module_25_U1 ( .A(n_reg_module_20_res), .B(n_reg_module_19_res), .Z(io_o0_s0_d2) );
  XOR2_X1 u_xor_module_26_U1 ( .A(n_reg_module_21_res), .B(n_reg_module_22_res), .Z(io_o0_s1_d2) );
  XOR2_X1 u_xor_module_27_U1 ( .A(n_reg_module_24_res), .B(n_reg_module_23_res), .Z(io_o0_s0_d3) );
  XOR2_X1 u_xor_module_28_U1 ( .A(n_reg_module_25_res), .B(n_reg_module_26_res), .Z(io_o0_s1_d3) );
  XOR2_X1 u_xor_module_29_U1 ( .A(n_reg_module_28_res), .B(n_reg_module_27_res), .Z(io_o0_s0_d4) );
  XOR2_X1 u_xor_module_30_U1 ( .A(n_reg_module_29_res), .B(n_reg_module_30_res), .Z(io_o0_s1_d4) );
endmodule

