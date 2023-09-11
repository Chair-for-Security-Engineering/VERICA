
module And_gate ( clock_0, clock_1, clock_2, reset_0, reset_1, reset_2, 
        io_i0_s0_d0, io_i0_s0_d1, io_i0_s0_d2, io_i0_s1_d0, io_i0_s1_d1, 
        io_i0_s1_d2, io_i0_s2_d0, io_i0_s2_d1, io_i0_s2_d2, io_i0_s3_d0, 
        io_i0_s3_d1, io_i0_s3_d2, io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, 
        io_i1_s1_d0, io_i1_s1_d1, io_i1_s1_d2, io_i1_s2_d0, io_i1_s2_d1, 
        io_i1_s2_d2, io_i1_s3_d0, io_i1_s3_d1, io_i1_s3_d2, p_rand_0, p_rand_1, 
        p_rand_2, p_rand_3, p_rand_4, p_rand_5, p_rand_6, p_rand_7, p_rand_8, 
        p_rand_9, p_rand_10, p_rand_11, io_o0_s0_d0, io_o0_s0_d1, io_o0_s0_d2, 
        io_o0_s1_d0, io_o0_s1_d1, io_o0_s1_d2, io_o0_s2_d0, io_o0_s2_d1, 
        io_o0_s2_d2, io_o0_s3_d0, io_o0_s3_d1, io_o0_s3_d2 );
  input clock_0, clock_1, clock_2, reset_0, reset_1, reset_2, io_i0_s0_d0,
         io_i0_s0_d1, io_i0_s0_d2, io_i0_s1_d0, io_i0_s1_d1, io_i0_s1_d2,
         io_i0_s2_d0, io_i0_s2_d1, io_i0_s2_d2, io_i0_s3_d0, io_i0_s3_d1,
         io_i0_s3_d2, io_i1_s0_d0, io_i1_s0_d1, io_i1_s0_d2, io_i1_s1_d0,
         io_i1_s1_d1, io_i1_s1_d2, io_i1_s2_d0, io_i1_s2_d1, io_i1_s2_d2,
         io_i1_s3_d0, io_i1_s3_d1, io_i1_s3_d2, p_rand_0, p_rand_1, p_rand_2,
         p_rand_3, p_rand_4, p_rand_5, p_rand_6, p_rand_7, p_rand_8, p_rand_9,
         p_rand_10, p_rand_11;
  output io_o0_s0_d0, io_o0_s0_d1, io_o0_s0_d2, io_o0_s1_d0, io_o0_s1_d1,
         io_o0_s1_d2, io_o0_s2_d0, io_o0_s2_d1, io_o0_s2_d2, io_o0_s3_d0,
         io_o0_s3_d1, io_o0_s3_d2;
  wire   n_xor_module_1_res, n_xor_module_2_res, n_xor_module_3_res,
         n_xor_module_4_res, n_xor_module_5_res, n_xor_module_6_res,
         n_xor_module_7_res, n_xor_module_8_res, n_xor_module_9_res,
         n_xor_module_10_res, n_xor_module_11_res, n_xor_module_12_res,
         n_xor_module_13_res, n_xor_module_14_res, n_xor_module_15_res,
         n_xor_module_16_res, n_xor_module_17_res, n_xor_module_18_res,
         n_xor_module_19_res, n_xor_module_20_res, n_xor_module_21_res,
         n_xor_module_22_res, n_xor_module_23_res, n_xor_module_24_res,
         n_xor_module_25_res, n_xor_module_26_res, n_xor_module_27_res,
         n_xor_module_28_res, n_xor_module_29_res, n_xor_module_30_res,
         n_xor_module_31_res, n_xor_module_32_res, n_xor_module_33_res,
         n_xor_module_34_res, n_xor_module_35_res, n_xor_module_36_res,
         n_majority3_module_0_res, n_reg_module_1_res,
         n_majority3_module_1_res, n_reg_module_2_res,
         n_majority3_module_2_res, n_reg_module_3_res,
         n_majority3_module_3_res, n_reg_module_4_res,
         n_majority3_module_4_res, n_reg_module_5_res,
         n_majority3_module_5_res, n_reg_module_6_res,
         n_majority3_module_6_res, n_reg_module_7_res,
         n_majority3_module_7_res, n_reg_module_8_res,
         n_majority3_module_8_res, n_reg_module_9_res,
         n_majority3_module_9_res, n_reg_module_10_res,
         n_majority3_module_10_res, n_reg_module_11_res,
         n_majority3_module_11_res, n_reg_module_12_res, n_and_module_1_res,
         n_and_module_2_res, n_xor_module_37_res, n_and_module_3_res,
         n_xor_module_38_res, n_and_module_4_res, n_xor_module_39_res,
         n_and_module_5_res, n_xor_module_40_res, n_and_module_6_res,
         n_and_module_7_res, n_xor_module_41_res, n_and_module_8_res,
         n_xor_module_42_res, n_and_module_9_res, n_xor_module_43_res,
         n_and_module_10_res, n_xor_module_44_res, n_and_module_11_res,
         n_and_module_12_res, n_xor_module_45_res, n_and_module_13_res,
         n_xor_module_46_res, n_and_module_14_res, n_xor_module_47_res,
         n_and_module_15_res, n_xor_module_48_res, n_and_module_16_res,
         n_and_module_17_res, n_and_module_18_res, n_xor_module_49_res,
         n_and_module_19_res, n_xor_module_50_res, n_and_module_20_res,
         n_xor_module_51_res, n_and_module_21_res, n_xor_module_52_res,
         n_and_module_22_res, n_and_module_23_res, n_xor_module_53_res,
         n_and_module_24_res, n_xor_module_54_res, n_and_module_25_res,
         n_xor_module_55_res, n_and_module_26_res, n_xor_module_56_res,
         n_and_module_27_res, n_and_module_28_res, n_xor_module_57_res,
         n_and_module_29_res, n_xor_module_58_res, n_and_module_30_res,
         n_xor_module_59_res, n_and_module_31_res, n_xor_module_60_res,
         n_and_module_32_res, n_and_module_33_res, n_and_module_34_res,
         n_xor_module_61_res, n_and_module_35_res, n_xor_module_62_res,
         n_and_module_36_res, n_xor_module_63_res, n_and_module_37_res,
         n_xor_module_64_res, n_and_module_38_res, n_and_module_39_res,
         n_xor_module_65_res, n_and_module_40_res, n_xor_module_66_res,
         n_and_module_41_res, n_xor_module_67_res, n_and_module_42_res,
         n_xor_module_68_res, n_and_module_43_res, n_and_module_44_res,
         n_xor_module_69_res, n_and_module_45_res, n_xor_module_70_res,
         n_and_module_46_res, n_xor_module_71_res, n_and_module_47_res,
         n_xor_module_72_res, n_and_module_48_res, n_reg_module_13_res,
         n_majority3_module_12_res, n_reg_module_14_res,
         n_majority3_module_13_res, n_reg_module_15_res,
         n_majority3_module_14_res, n_reg_module_16_res,
         n_majority3_module_15_res, n_reg_module_17_res, n_reg_module_18_res,
         n_majority3_module_16_res, n_reg_module_19_res,
         n_majority3_module_17_res, n_reg_module_20_res,
         n_majority3_module_18_res, n_reg_module_21_res,
         n_majority3_module_19_res, n_reg_module_22_res, n_reg_module_23_res,
         n_majority3_module_20_res, n_reg_module_24_res,
         n_majority3_module_21_res, n_reg_module_25_res,
         n_majority3_module_22_res, n_reg_module_26_res,
         n_majority3_module_23_res, n_reg_module_27_res, n_reg_module_28_res,
         n_reg_module_29_res, n_majority3_module_24_res, n_reg_module_30_res,
         n_majority3_module_25_res, n_reg_module_31_res,
         n_majority3_module_26_res, n_reg_module_32_res,
         n_majority3_module_27_res, n_reg_module_33_res, n_reg_module_34_res,
         n_majority3_module_28_res, n_reg_module_35_res,
         n_majority3_module_29_res, n_reg_module_36_res,
         n_majority3_module_30_res, n_reg_module_37_res,
         n_majority3_module_31_res, n_reg_module_38_res, n_reg_module_39_res,
         n_majority3_module_32_res, n_reg_module_40_res,
         n_majority3_module_33_res, n_reg_module_41_res,
         n_majority3_module_34_res, n_reg_module_42_res,
         n_majority3_module_35_res, n_reg_module_43_res, n_reg_module_44_res,
         n_reg_module_45_res, n_majority3_module_36_res, n_reg_module_46_res,
         n_majority3_module_37_res, n_reg_module_47_res,
         n_majority3_module_38_res, n_reg_module_48_res,
         n_majority3_module_39_res, n_reg_module_49_res, n_reg_module_50_res,
         n_majority3_module_40_res, n_reg_module_51_res,
         n_majority3_module_41_res, n_reg_module_52_res,
         n_majority3_module_42_res, n_reg_module_53_res,
         n_majority3_module_43_res, n_reg_module_54_res, n_reg_module_55_res,
         n_majority3_module_44_res, n_reg_module_56_res,
         n_majority3_module_45_res, n_reg_module_57_res,
         n_majority3_module_46_res, n_reg_module_58_res,
         n_majority3_module_47_res, n_reg_module_59_res, n_reg_module_60_res,
         n_xor_module_73_res, n_xor_module_74_res, n_xor_module_76_res,
         n_xor_module_77_res, n_xor_module_79_res, n_xor_module_80_res,
         n_xor_module_82_res, n_xor_module_83_res, n_xor_module_85_res,
         n_xor_module_86_res, n_xor_module_88_res, n_xor_module_89_res,
         n_xor_module_91_res, n_xor_module_92_res, n_xor_module_94_res,
         n_xor_module_95_res, n_xor_module_97_res, n_xor_module_98_res,
         n_xor_module_100_res, n_xor_module_101_res, n_xor_module_103_res,
         n_xor_module_104_res, n_xor_module_106_res, n_xor_module_107_res,
         n_majority3_module_0__or_module_2_res,
         n_majority3_module_0__or_module_1_res,
         n_majority3_module_0__and_module_1_res,
         n_majority3_module_1__or_module_2_res,
         n_majority3_module_1__or_module_1_res,
         n_majority3_module_1__and_module_1_res,
         n_majority3_module_2__or_module_2_res,
         n_majority3_module_2__or_module_1_res,
         n_majority3_module_2__and_module_1_res,
         n_majority3_module_3__or_module_2_res,
         n_majority3_module_3__or_module_1_res,
         n_majority3_module_3__and_module_1_res,
         n_majority3_module_4__or_module_2_res,
         n_majority3_module_4__or_module_1_res,
         n_majority3_module_4__and_module_1_res,
         n_majority3_module_5__or_module_2_res,
         n_majority3_module_5__or_module_1_res,
         n_majority3_module_5__and_module_1_res,
         n_majority3_module_6__or_module_2_res,
         n_majority3_module_6__or_module_1_res,
         n_majority3_module_6__and_module_1_res,
         n_majority3_module_7__or_module_2_res,
         n_majority3_module_7__or_module_1_res,
         n_majority3_module_7__and_module_1_res,
         n_majority3_module_8__or_module_2_res,
         n_majority3_module_8__or_module_1_res,
         n_majority3_module_8__and_module_1_res,
         n_majority3_module_9__or_module_2_res,
         n_majority3_module_9__or_module_1_res,
         n_majority3_module_9__and_module_1_res,
         n_majority3_module_10__or_module_2_res,
         n_majority3_module_10__or_module_1_res,
         n_majority3_module_10__and_module_1_res,
         n_majority3_module_11__or_module_2_res,
         n_majority3_module_11__or_module_1_res,
         n_majority3_module_11__and_module_1_res,
         n_majority3_module_12__or_module_2_res,
         n_majority3_module_12__or_module_1_res,
         n_majority3_module_12__and_module_1_res,
         n_majority3_module_13__or_module_2_res,
         n_majority3_module_13__or_module_1_res,
         n_majority3_module_13__and_module_1_res,
         n_majority3_module_14__or_module_2_res,
         n_majority3_module_14__or_module_1_res,
         n_majority3_module_14__and_module_1_res,
         n_majority3_module_15__or_module_2_res,
         n_majority3_module_15__or_module_1_res,
         n_majority3_module_15__and_module_1_res,
         n_majority3_module_16__or_module_2_res,
         n_majority3_module_16__or_module_1_res,
         n_majority3_module_16__and_module_1_res,
         n_majority3_module_17__or_module_2_res,
         n_majority3_module_17__or_module_1_res,
         n_majority3_module_17__and_module_1_res,
         n_majority3_module_18__or_module_2_res,
         n_majority3_module_18__or_module_1_res,
         n_majority3_module_18__and_module_1_res,
         n_majority3_module_19__or_module_2_res,
         n_majority3_module_19__or_module_1_res,
         n_majority3_module_19__and_module_1_res,
         n_majority3_module_20__or_module_2_res,
         n_majority3_module_20__or_module_1_res,
         n_majority3_module_20__and_module_1_res,
         n_majority3_module_21__or_module_2_res,
         n_majority3_module_21__or_module_1_res,
         n_majority3_module_21__and_module_1_res,
         n_majority3_module_22__or_module_2_res,
         n_majority3_module_22__or_module_1_res,
         n_majority3_module_22__and_module_1_res,
         n_majority3_module_23__or_module_2_res,
         n_majority3_module_23__or_module_1_res,
         n_majority3_module_23__and_module_1_res,
         n_majority3_module_24__or_module_2_res,
         n_majority3_module_24__or_module_1_res,
         n_majority3_module_24__and_module_1_res,
         n_majority3_module_25__or_module_2_res,
         n_majority3_module_25__or_module_1_res,
         n_majority3_module_25__and_module_1_res,
         n_majority3_module_26__or_module_2_res,
         n_majority3_module_26__or_module_1_res,
         n_majority3_module_26__and_module_1_res,
         n_majority3_module_27__or_module_2_res,
         n_majority3_module_27__or_module_1_res,
         n_majority3_module_27__and_module_1_res,
         n_majority3_module_28__or_module_2_res,
         n_majority3_module_28__or_module_1_res,
         n_majority3_module_28__and_module_1_res,
         n_majority3_module_29__or_module_2_res,
         n_majority3_module_29__or_module_1_res,
         n_majority3_module_29__and_module_1_res,
         n_majority3_module_30__or_module_2_res,
         n_majority3_module_30__or_module_1_res,
         n_majority3_module_30__and_module_1_res,
         n_majority3_module_31__or_module_2_res,
         n_majority3_module_31__or_module_1_res,
         n_majority3_module_31__and_module_1_res,
         n_majority3_module_32__or_module_2_res,
         n_majority3_module_32__or_module_1_res,
         n_majority3_module_32__and_module_1_res,
         n_majority3_module_33__or_module_2_res,
         n_majority3_module_33__or_module_1_res,
         n_majority3_module_33__and_module_1_res,
         n_majority3_module_34__or_module_2_res,
         n_majority3_module_34__or_module_1_res,
         n_majority3_module_34__and_module_1_res,
         n_majority3_module_35__or_module_2_res,
         n_majority3_module_35__or_module_1_res,
         n_majority3_module_35__and_module_1_res,
         n_majority3_module_36__or_module_2_res,
         n_majority3_module_36__or_module_1_res,
         n_majority3_module_36__and_module_1_res,
         n_majority3_module_37__or_module_2_res,
         n_majority3_module_37__or_module_1_res,
         n_majority3_module_37__and_module_1_res,
         n_majority3_module_38__or_module_2_res,
         n_majority3_module_38__or_module_1_res,
         n_majority3_module_38__and_module_1_res,
         n_majority3_module_39__or_module_2_res,
         n_majority3_module_39__or_module_1_res,
         n_majority3_module_39__and_module_1_res,
         n_majority3_module_40__or_module_2_res,
         n_majority3_module_40__or_module_1_res,
         n_majority3_module_40__and_module_1_res,
         n_majority3_module_41__or_module_2_res,
         n_majority3_module_41__or_module_1_res,
         n_majority3_module_41__and_module_1_res,
         n_majority3_module_42__or_module_2_res,
         n_majority3_module_42__or_module_1_res,
         n_majority3_module_42__and_module_1_res,
         n_majority3_module_43__or_module_2_res,
         n_majority3_module_43__or_module_1_res,
         n_majority3_module_43__and_module_1_res,
         n_majority3_module_44__or_module_2_res,
         n_majority3_module_44__or_module_1_res,
         n_majority3_module_44__and_module_1_res,
         n_majority3_module_45__or_module_2_res,
         n_majority3_module_45__or_module_1_res,
         n_majority3_module_45__and_module_1_res,
         n_majority3_module_46__or_module_2_res,
         n_majority3_module_46__or_module_1_res,
         n_majority3_module_46__and_module_1_res,
         n_majority3_module_47__or_module_2_res,
         n_majority3_module_47__or_module_1_res,
         n_majority3_module_47__and_module_1_res;

  XOR2_X1 u_xor_module_1_U1 ( .A(p_rand_0), .B(io_i1_s0_d0), .Z(
        n_xor_module_1_res) );
  XOR2_X1 u_xor_module_2_U1 ( .A(p_rand_1), .B(n_xor_module_1_res), .Z(
        n_xor_module_2_res) );
  XOR2_X1 u_xor_module_3_U1 ( .A(p_rand_2), .B(n_xor_module_2_res), .Z(
        n_xor_module_3_res) );
  XOR2_X1 u_xor_module_4_U1 ( .A(p_rand_0), .B(io_i1_s1_d0), .Z(
        n_xor_module_4_res) );
  XOR2_X1 u_xor_module_5_U1 ( .A(p_rand_3), .B(n_xor_module_4_res), .Z(
        n_xor_module_5_res) );
  XOR2_X1 u_xor_module_6_U1 ( .A(p_rand_4), .B(n_xor_module_5_res), .Z(
        n_xor_module_6_res) );
  XOR2_X1 u_xor_module_7_U1 ( .A(p_rand_1), .B(io_i1_s2_d0), .Z(
        n_xor_module_7_res) );
  XOR2_X1 u_xor_module_8_U1 ( .A(p_rand_3), .B(n_xor_module_7_res), .Z(
        n_xor_module_8_res) );
  XOR2_X1 u_xor_module_9_U1 ( .A(p_rand_5), .B(n_xor_module_8_res), .Z(
        n_xor_module_9_res) );
  XOR2_X1 u_xor_module_10_U1 ( .A(p_rand_2), .B(io_i1_s3_d0), .Z(
        n_xor_module_10_res) );
  XOR2_X1 u_xor_module_11_U1 ( .A(p_rand_4), .B(n_xor_module_10_res), .Z(
        n_xor_module_11_res) );
  XOR2_X1 u_xor_module_12_U1 ( .A(p_rand_5), .B(n_xor_module_11_res), .Z(
        n_xor_module_12_res) );
  XOR2_X1 u_xor_module_13_U1 ( .A(p_rand_0), .B(io_i1_s0_d1), .Z(
        n_xor_module_13_res) );
  XOR2_X1 u_xor_module_14_U1 ( .A(p_rand_1), .B(n_xor_module_13_res), .Z(
        n_xor_module_14_res) );
  XOR2_X1 u_xor_module_15_U1 ( .A(p_rand_2), .B(n_xor_module_14_res), .Z(
        n_xor_module_15_res) );
  XOR2_X1 u_xor_module_16_U1 ( .A(p_rand_0), .B(io_i1_s1_d1), .Z(
        n_xor_module_16_res) );
  XOR2_X1 u_xor_module_17_U1 ( .A(p_rand_3), .B(n_xor_module_16_res), .Z(
        n_xor_module_17_res) );
  XOR2_X1 u_xor_module_18_U1 ( .A(p_rand_4), .B(n_xor_module_17_res), .Z(
        n_xor_module_18_res) );
  XOR2_X1 u_xor_module_19_U1 ( .A(p_rand_1), .B(io_i1_s2_d1), .Z(
        n_xor_module_19_res) );
  XOR2_X1 u_xor_module_20_U1 ( .A(p_rand_3), .B(n_xor_module_19_res), .Z(
        n_xor_module_20_res) );
  XOR2_X1 u_xor_module_21_U1 ( .A(p_rand_5), .B(n_xor_module_20_res), .Z(
        n_xor_module_21_res) );
  XOR2_X1 u_xor_module_22_U1 ( .A(p_rand_2), .B(io_i1_s3_d1), .Z(
        n_xor_module_22_res) );
  XOR2_X1 u_xor_module_23_U1 ( .A(p_rand_4), .B(n_xor_module_22_res), .Z(
        n_xor_module_23_res) );
  XOR2_X1 u_xor_module_24_U1 ( .A(p_rand_5), .B(n_xor_module_23_res), .Z(
        n_xor_module_24_res) );
  XOR2_X1 u_xor_module_25_U1 ( .A(p_rand_0), .B(io_i1_s0_d2), .Z(
        n_xor_module_25_res) );
  XOR2_X1 u_xor_module_26_U1 ( .A(p_rand_1), .B(n_xor_module_25_res), .Z(
        n_xor_module_26_res) );
  XOR2_X1 u_xor_module_27_U1 ( .A(p_rand_2), .B(n_xor_module_26_res), .Z(
        n_xor_module_27_res) );
  XOR2_X1 u_xor_module_28_U1 ( .A(p_rand_0), .B(io_i1_s1_d2), .Z(
        n_xor_module_28_res) );
  XOR2_X1 u_xor_module_29_U1 ( .A(p_rand_3), .B(n_xor_module_28_res), .Z(
        n_xor_module_29_res) );
  XOR2_X1 u_xor_module_30_U1 ( .A(p_rand_4), .B(n_xor_module_29_res), .Z(
        n_xor_module_30_res) );
  XOR2_X1 u_xor_module_31_U1 ( .A(p_rand_1), .B(io_i1_s2_d2), .Z(
        n_xor_module_31_res) );
  XOR2_X1 u_xor_module_32_U1 ( .A(p_rand_3), .B(n_xor_module_31_res), .Z(
        n_xor_module_32_res) );
  XOR2_X1 u_xor_module_33_U1 ( .A(p_rand_5), .B(n_xor_module_32_res), .Z(
        n_xor_module_33_res) );
  XOR2_X1 u_xor_module_34_U1 ( .A(p_rand_2), .B(io_i1_s3_d2), .Z(
        n_xor_module_34_res) );
  XOR2_X1 u_xor_module_35_U1 ( .A(p_rand_4), .B(n_xor_module_34_res), .Z(
        n_xor_module_35_res) );
  XOR2_X1 u_xor_module_36_U1 ( .A(p_rand_5), .B(n_xor_module_35_res), .Z(
        n_xor_module_36_res) );
  AND2_X1 u_majority3_module_0__and_module_1_U1 ( .A1(n_xor_module_27_res), 
        .A2(n_xor_module_3_res), .ZN(n_majority3_module_0__and_module_1_res)
         );
  OR2_X1 u_majority3_module_0__or_module_1_U1 ( .A1(n_xor_module_3_res), .A2(
        n_xor_module_27_res), .ZN(n_majority3_module_0__or_module_1_res) );
  OR2_X1 u_majority3_module_0__or_module_2_U1 ( .A1(
        n_majority3_module_0__and_module_1_res), .A2(n_xor_module_15_res), 
        .ZN(n_majority3_module_0__or_module_2_res) );
  AND2_X1 u_majority3_module_0__and_module_2_U1 ( .A1(
        n_majority3_module_0__or_module_1_res), .A2(
        n_majority3_module_0__or_module_2_res), .ZN(n_majority3_module_0_res)
         );
  DFF_X1 u_reg_module_1__cini_mul_v00_reg ( .D(n_majority3_module_0_res), .CK(
        clock_0), .Q(n_reg_module_1_res), .QN() );
  AND2_X1 u_majority3_module_1__and_module_1_U1 ( .A1(n_xor_module_30_res), 
        .A2(n_xor_module_6_res), .ZN(n_majority3_module_1__and_module_1_res)
         );
  OR2_X1 u_majority3_module_1__or_module_1_U1 ( .A1(n_xor_module_6_res), .A2(
        n_xor_module_30_res), .ZN(n_majority3_module_1__or_module_1_res) );
  OR2_X1 u_majority3_module_1__or_module_2_U1 ( .A1(
        n_majority3_module_1__and_module_1_res), .A2(n_xor_module_18_res), 
        .ZN(n_majority3_module_1__or_module_2_res) );
  AND2_X1 u_majority3_module_1__and_module_2_U1 ( .A1(
        n_majority3_module_1__or_module_1_res), .A2(
        n_majority3_module_1__or_module_2_res), .ZN(n_majority3_module_1_res)
         );
  DFF_X1 u_reg_module_2__cini_mul_v00_reg ( .D(n_majority3_module_1_res), .CK(
        clock_0), .Q(n_reg_module_2_res), .QN() );
  AND2_X1 u_majority3_module_2__and_module_1_U1 ( .A1(n_xor_module_33_res), 
        .A2(n_xor_module_9_res), .ZN(n_majority3_module_2__and_module_1_res)
         );
  OR2_X1 u_majority3_module_2__or_module_1_U1 ( .A1(n_xor_module_9_res), .A2(
        n_xor_module_33_res), .ZN(n_majority3_module_2__or_module_1_res) );
  OR2_X1 u_majority3_module_2__or_module_2_U1 ( .A1(
        n_majority3_module_2__and_module_1_res), .A2(n_xor_module_21_res), 
        .ZN(n_majority3_module_2__or_module_2_res) );
  AND2_X1 u_majority3_module_2__and_module_2_U1 ( .A1(
        n_majority3_module_2__or_module_1_res), .A2(
        n_majority3_module_2__or_module_2_res), .ZN(n_majority3_module_2_res)
         );
  DFF_X1 u_reg_module_3__cini_mul_v00_reg ( .D(n_majority3_module_2_res), .CK(
        clock_0), .Q(n_reg_module_3_res), .QN() );
  AND2_X1 u_majority3_module_3__and_module_1_U1 ( .A1(n_xor_module_36_res), 
        .A2(n_xor_module_12_res), .ZN(n_majority3_module_3__and_module_1_res)
         );
  OR2_X1 u_majority3_module_3__or_module_1_U1 ( .A1(n_xor_module_12_res), .A2(
        n_xor_module_36_res), .ZN(n_majority3_module_3__or_module_1_res) );
  OR2_X1 u_majority3_module_3__or_module_2_U1 ( .A1(
        n_majority3_module_3__and_module_1_res), .A2(n_xor_module_24_res), 
        .ZN(n_majority3_module_3__or_module_2_res) );
  AND2_X1 u_majority3_module_3__and_module_2_U1 ( .A1(
        n_majority3_module_3__or_module_1_res), .A2(
        n_majority3_module_3__or_module_2_res), .ZN(n_majority3_module_3_res)
         );
  DFF_X1 u_reg_module_4__cini_mul_v00_reg ( .D(n_majority3_module_3_res), .CK(
        clock_0), .Q(n_reg_module_4_res), .QN() );
  AND2_X1 u_majority3_module_4__and_module_1_U1 ( .A1(n_xor_module_27_res), 
        .A2(n_xor_module_3_res), .ZN(n_majority3_module_4__and_module_1_res)
         );
  OR2_X1 u_majority3_module_4__or_module_1_U1 ( .A1(n_xor_module_3_res), .A2(
        n_xor_module_27_res), .ZN(n_majority3_module_4__or_module_1_res) );
  OR2_X1 u_majority3_module_4__or_module_2_U1 ( .A1(
        n_majority3_module_4__and_module_1_res), .A2(n_xor_module_15_res), 
        .ZN(n_majority3_module_4__or_module_2_res) );
  AND2_X1 u_majority3_module_4__and_module_2_U1 ( .A1(
        n_majority3_module_4__or_module_1_res), .A2(
        n_majority3_module_4__or_module_2_res), .ZN(n_majority3_module_4_res)
         );
  DFF_X1 u_reg_module_5__cini_mul_v00_reg ( .D(n_majority3_module_4_res), .CK(
        clock_1), .Q(n_reg_module_5_res), .QN() );
  AND2_X1 u_majority3_module_5__and_module_1_U1 ( .A1(n_xor_module_30_res), 
        .A2(n_xor_module_6_res), .ZN(n_majority3_module_5__and_module_1_res)
         );
  OR2_X1 u_majority3_module_5__or_module_1_U1 ( .A1(n_xor_module_6_res), .A2(
        n_xor_module_30_res), .ZN(n_majority3_module_5__or_module_1_res) );
  OR2_X1 u_majority3_module_5__or_module_2_U1 ( .A1(
        n_majority3_module_5__and_module_1_res), .A2(n_xor_module_18_res), 
        .ZN(n_majority3_module_5__or_module_2_res) );
  AND2_X1 u_majority3_module_5__and_module_2_U1 ( .A1(
        n_majority3_module_5__or_module_1_res), .A2(
        n_majority3_module_5__or_module_2_res), .ZN(n_majority3_module_5_res)
         );
  DFF_X1 u_reg_module_6__cini_mul_v00_reg ( .D(n_majority3_module_5_res), .CK(
        clock_1), .Q(n_reg_module_6_res), .QN() );
  AND2_X1 u_majority3_module_6__and_module_1_U1 ( .A1(n_xor_module_33_res), 
        .A2(n_xor_module_9_res), .ZN(n_majority3_module_6__and_module_1_res)
         );
  OR2_X1 u_majority3_module_6__or_module_1_U1 ( .A1(n_xor_module_9_res), .A2(
        n_xor_module_33_res), .ZN(n_majority3_module_6__or_module_1_res) );
  OR2_X1 u_majority3_module_6__or_module_2_U1 ( .A1(
        n_majority3_module_6__and_module_1_res), .A2(n_xor_module_21_res), 
        .ZN(n_majority3_module_6__or_module_2_res) );
  AND2_X1 u_majority3_module_6__and_module_2_U1 ( .A1(
        n_majority3_module_6__or_module_1_res), .A2(
        n_majority3_module_6__or_module_2_res), .ZN(n_majority3_module_6_res)
         );
  DFF_X1 u_reg_module_7__cini_mul_v00_reg ( .D(n_majority3_module_6_res), .CK(
        clock_1), .Q(n_reg_module_7_res), .QN() );
  AND2_X1 u_majority3_module_7__and_module_1_U1 ( .A1(n_xor_module_36_res), 
        .A2(n_xor_module_12_res), .ZN(n_majority3_module_7__and_module_1_res)
         );
  OR2_X1 u_majority3_module_7__or_module_1_U1 ( .A1(n_xor_module_12_res), .A2(
        n_xor_module_36_res), .ZN(n_majority3_module_7__or_module_1_res) );
  OR2_X1 u_majority3_module_7__or_module_2_U1 ( .A1(
        n_majority3_module_7__and_module_1_res), .A2(n_xor_module_24_res), 
        .ZN(n_majority3_module_7__or_module_2_res) );
  AND2_X1 u_majority3_module_7__and_module_2_U1 ( .A1(
        n_majority3_module_7__or_module_1_res), .A2(
        n_majority3_module_7__or_module_2_res), .ZN(n_majority3_module_7_res)
         );
  DFF_X1 u_reg_module_8__cini_mul_v00_reg ( .D(n_majority3_module_7_res), .CK(
        clock_1), .Q(n_reg_module_8_res), .QN() );
  AND2_X1 u_majority3_module_8__and_module_1_U1 ( .A1(n_xor_module_27_res), 
        .A2(n_xor_module_3_res), .ZN(n_majority3_module_8__and_module_1_res)
         );
  OR2_X1 u_majority3_module_8__or_module_1_U1 ( .A1(n_xor_module_3_res), .A2(
        n_xor_module_27_res), .ZN(n_majority3_module_8__or_module_1_res) );
  OR2_X1 u_majority3_module_8__or_module_2_U1 ( .A1(
        n_majority3_module_8__and_module_1_res), .A2(n_xor_module_15_res), 
        .ZN(n_majority3_module_8__or_module_2_res) );
  AND2_X1 u_majority3_module_8__and_module_2_U1 ( .A1(
        n_majority3_module_8__or_module_1_res), .A2(
        n_majority3_module_8__or_module_2_res), .ZN(n_majority3_module_8_res)
         );
  DFF_X1 u_reg_module_9__cini_mul_v00_reg ( .D(n_majority3_module_8_res), .CK(
        clock_2), .Q(n_reg_module_9_res), .QN() );
  AND2_X1 u_majority3_module_9__and_module_1_U1 ( .A1(n_xor_module_30_res), 
        .A2(n_xor_module_6_res), .ZN(n_majority3_module_9__and_module_1_res)
         );
  OR2_X1 u_majority3_module_9__or_module_1_U1 ( .A1(n_xor_module_6_res), .A2(
        n_xor_module_30_res), .ZN(n_majority3_module_9__or_module_1_res) );
  OR2_X1 u_majority3_module_9__or_module_2_U1 ( .A1(
        n_majority3_module_9__and_module_1_res), .A2(n_xor_module_18_res), 
        .ZN(n_majority3_module_9__or_module_2_res) );
  AND2_X1 u_majority3_module_9__and_module_2_U1 ( .A1(
        n_majority3_module_9__or_module_1_res), .A2(
        n_majority3_module_9__or_module_2_res), .ZN(n_majority3_module_9_res)
         );
  DFF_X1 u_reg_module_10__cini_mul_v00_reg ( .D(n_majority3_module_9_res), 
        .CK(clock_2), .Q(n_reg_module_10_res), .QN() );
  AND2_X1 u_majority3_module_10__and_module_1_U1 ( .A1(n_xor_module_33_res), 
        .A2(n_xor_module_9_res), .ZN(n_majority3_module_10__and_module_1_res)
         );
  OR2_X1 u_majority3_module_10__or_module_1_U1 ( .A1(n_xor_module_9_res), .A2(
        n_xor_module_33_res), .ZN(n_majority3_module_10__or_module_1_res) );
  OR2_X1 u_majority3_module_10__or_module_2_U1 ( .A1(
        n_majority3_module_10__and_module_1_res), .A2(n_xor_module_21_res), 
        .ZN(n_majority3_module_10__or_module_2_res) );
  AND2_X1 u_majority3_module_10__and_module_2_U1 ( .A1(
        n_majority3_module_10__or_module_1_res), .A2(
        n_majority3_module_10__or_module_2_res), .ZN(n_majority3_module_10_res) );
  DFF_X1 u_reg_module_11__cini_mul_v00_reg ( .D(n_majority3_module_10_res), 
        .CK(clock_2), .Q(n_reg_module_11_res), .QN() );
  AND2_X1 u_majority3_module_11__and_module_1_U1 ( .A1(n_xor_module_36_res), 
        .A2(n_xor_module_12_res), .ZN(n_majority3_module_11__and_module_1_res)
         );
  OR2_X1 u_majority3_module_11__or_module_1_U1 ( .A1(n_xor_module_12_res), 
        .A2(n_xor_module_36_res), .ZN(n_majority3_module_11__or_module_1_res)
         );
  OR2_X1 u_majority3_module_11__or_module_2_U1 ( .A1(
        n_majority3_module_11__and_module_1_res), .A2(n_xor_module_24_res), 
        .ZN(n_majority3_module_11__or_module_2_res) );
  AND2_X1 u_majority3_module_11__and_module_2_U1 ( .A1(
        n_majority3_module_11__or_module_1_res), .A2(
        n_majority3_module_11__or_module_2_res), .ZN(n_majority3_module_11_res) );
  DFF_X1 u_reg_module_12__cini_mul_v00_reg ( .D(n_majority3_module_11_res), 
        .CK(clock_2), .Q(n_reg_module_12_res), .QN() );
  AND2_X1 u_and_module_1_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s0_d0), .ZN(
        n_and_module_1_res) );
  AND2_X1 u_and_module_2_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s0_d0), .ZN(
        n_and_module_2_res) );
  XOR2_X1 u_xor_module_37_U1 ( .A(p_rand_6), .B(n_and_module_2_res), .Z(
        n_xor_module_37_res) );
  AND2_X1 u_and_module_3_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s0_d0), .ZN(
        n_and_module_3_res) );
  XOR2_X1 u_xor_module_38_U1 ( .A(p_rand_7), .B(n_and_module_3_res), .Z(
        n_xor_module_38_res) );
  AND2_X1 u_and_module_4_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s0_d0), .ZN(
        n_and_module_4_res) );
  XOR2_X1 u_xor_module_39_U1 ( .A(p_rand_8), .B(n_and_module_4_res), .Z(
        n_xor_module_39_res) );
  AND2_X1 u_and_module_5_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s1_d0), .ZN(
        n_and_module_5_res) );
  XOR2_X1 u_xor_module_40_U1 ( .A(p_rand_6), .B(n_and_module_5_res), .Z(
        n_xor_module_40_res) );
  AND2_X1 u_and_module_6_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s1_d0), .ZN(
        n_and_module_6_res) );
  AND2_X1 u_and_module_7_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s1_d0), .ZN(
        n_and_module_7_res) );
  XOR2_X1 u_xor_module_41_U1 ( .A(p_rand_9), .B(n_and_module_7_res), .Z(
        n_xor_module_41_res) );
  AND2_X1 u_and_module_8_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s1_d0), .ZN(
        n_and_module_8_res) );
  XOR2_X1 u_xor_module_42_U1 ( .A(p_rand_10), .B(n_and_module_8_res), .Z(
        n_xor_module_42_res) );
  AND2_X1 u_and_module_9_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s2_d0), .ZN(
        n_and_module_9_res) );
  XOR2_X1 u_xor_module_43_U1 ( .A(p_rand_7), .B(n_and_module_9_res), .Z(
        n_xor_module_43_res) );
  AND2_X1 u_and_module_10_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s2_d0), .ZN(
        n_and_module_10_res) );
  XOR2_X1 u_xor_module_44_U1 ( .A(p_rand_9), .B(n_and_module_10_res), .Z(
        n_xor_module_44_res) );
  AND2_X1 u_and_module_11_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s2_d0), .ZN(
        n_and_module_11_res) );
  AND2_X1 u_and_module_12_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s2_d0), .ZN(
        n_and_module_12_res) );
  XOR2_X1 u_xor_module_45_U1 ( .A(p_rand_11), .B(n_and_module_12_res), .Z(
        n_xor_module_45_res) );
  AND2_X1 u_and_module_13_U1 ( .A1(n_reg_module_1_res), .A2(io_i0_s3_d0), .ZN(
        n_and_module_13_res) );
  XOR2_X1 u_xor_module_46_U1 ( .A(p_rand_8), .B(n_and_module_13_res), .Z(
        n_xor_module_46_res) );
  AND2_X1 u_and_module_14_U1 ( .A1(n_reg_module_2_res), .A2(io_i0_s3_d0), .ZN(
        n_and_module_14_res) );
  XOR2_X1 u_xor_module_47_U1 ( .A(p_rand_10), .B(n_and_module_14_res), .Z(
        n_xor_module_47_res) );
  AND2_X1 u_and_module_15_U1 ( .A1(n_reg_module_3_res), .A2(io_i0_s3_d0), .ZN(
        n_and_module_15_res) );
  XOR2_X1 u_xor_module_48_U1 ( .A(p_rand_11), .B(n_and_module_15_res), .Z(
        n_xor_module_48_res) );
  AND2_X1 u_and_module_16_U1 ( .A1(n_reg_module_4_res), .A2(io_i0_s3_d0), .ZN(
        n_and_module_16_res) );
  AND2_X1 u_and_module_17_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s0_d1), .ZN(
        n_and_module_17_res) );
  AND2_X1 u_and_module_18_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s0_d1), .ZN(
        n_and_module_18_res) );
  XOR2_X1 u_xor_module_49_U1 ( .A(p_rand_6), .B(n_and_module_18_res), .Z(
        n_xor_module_49_res) );
  AND2_X1 u_and_module_19_U1 ( .A1(n_reg_module_7_res), .A2(io_i0_s0_d1), .ZN(
        n_and_module_19_res) );
  XOR2_X1 u_xor_module_50_U1 ( .A(p_rand_7), .B(n_and_module_19_res), .Z(
        n_xor_module_50_res) );
  AND2_X1 u_and_module_20_U1 ( .A1(n_reg_module_8_res), .A2(io_i0_s0_d1), .ZN(
        n_and_module_20_res) );
  XOR2_X1 u_xor_module_51_U1 ( .A(p_rand_8), .B(n_and_module_20_res), .Z(
        n_xor_module_51_res) );
  AND2_X1 u_and_module_21_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s1_d1), .ZN(
        n_and_module_21_res) );
  XOR2_X1 u_xor_module_52_U1 ( .A(p_rand_6), .B(n_and_module_21_res), .Z(
        n_xor_module_52_res) );
  AND2_X1 u_and_module_22_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s1_d1), .ZN(
        n_and_module_22_res) );
  AND2_X1 u_and_module_23_U1 ( .A1(n_reg_module_7_res), .A2(io_i0_s1_d1), .ZN(
        n_and_module_23_res) );
  XOR2_X1 u_xor_module_53_U1 ( .A(p_rand_9), .B(n_and_module_23_res), .Z(
        n_xor_module_53_res) );
  AND2_X1 u_and_module_24_U1 ( .A1(n_reg_module_8_res), .A2(io_i0_s1_d1), .ZN(
        n_and_module_24_res) );
  XOR2_X1 u_xor_module_54_U1 ( .A(p_rand_10), .B(n_and_module_24_res), .Z(
        n_xor_module_54_res) );
  AND2_X1 u_and_module_25_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s2_d1), .ZN(
        n_and_module_25_res) );
  XOR2_X1 u_xor_module_55_U1 ( .A(p_rand_7), .B(n_and_module_25_res), .Z(
        n_xor_module_55_res) );
  AND2_X1 u_and_module_26_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s2_d1), .ZN(
        n_and_module_26_res) );
  XOR2_X1 u_xor_module_56_U1 ( .A(p_rand_9), .B(n_and_module_26_res), .Z(
        n_xor_module_56_res) );
  AND2_X1 u_and_module_27_U1 ( .A1(n_reg_module_7_res), .A2(io_i0_s2_d1), .ZN(
        n_and_module_27_res) );
  AND2_X1 u_and_module_28_U1 ( .A1(n_reg_module_8_res), .A2(io_i0_s2_d1), .ZN(
        n_and_module_28_res) );
  XOR2_X1 u_xor_module_57_U1 ( .A(p_rand_11), .B(n_and_module_28_res), .Z(
        n_xor_module_57_res) );
  AND2_X1 u_and_module_29_U1 ( .A1(n_reg_module_5_res), .A2(io_i0_s3_d1), .ZN(
        n_and_module_29_res) );
  XOR2_X1 u_xor_module_58_U1 ( .A(p_rand_8), .B(n_and_module_29_res), .Z(
        n_xor_module_58_res) );
  AND2_X1 u_and_module_30_U1 ( .A1(n_reg_module_6_res), .A2(io_i0_s3_d1), .ZN(
        n_and_module_30_res) );
  XOR2_X1 u_xor_module_59_U1 ( .A(p_rand_10), .B(n_and_module_30_res), .Z(
        n_xor_module_59_res) );
  AND2_X1 u_and_module_31_U1 ( .A1(n_reg_module_7_res), .A2(io_i0_s3_d1), .ZN(
        n_and_module_31_res) );
  XOR2_X1 u_xor_module_60_U1 ( .A(p_rand_11), .B(n_and_module_31_res), .Z(
        n_xor_module_60_res) );
  AND2_X1 u_and_module_32_U1 ( .A1(n_reg_module_8_res), .A2(io_i0_s3_d1), .ZN(
        n_and_module_32_res) );
  AND2_X1 u_and_module_33_U1 ( .A1(n_reg_module_9_res), .A2(io_i0_s0_d2), .ZN(
        n_and_module_33_res) );
  AND2_X1 u_and_module_34_U1 ( .A1(n_reg_module_10_res), .A2(io_i0_s0_d2), 
        .ZN(n_and_module_34_res) );
  XOR2_X1 u_xor_module_61_U1 ( .A(p_rand_6), .B(n_and_module_34_res), .Z(
        n_xor_module_61_res) );
  AND2_X1 u_and_module_35_U1 ( .A1(n_reg_module_11_res), .A2(io_i0_s0_d2), 
        .ZN(n_and_module_35_res) );
  XOR2_X1 u_xor_module_62_U1 ( .A(p_rand_7), .B(n_and_module_35_res), .Z(
        n_xor_module_62_res) );
  AND2_X1 u_and_module_36_U1 ( .A1(n_reg_module_12_res), .A2(io_i0_s0_d2), 
        .ZN(n_and_module_36_res) );
  XOR2_X1 u_xor_module_63_U1 ( .A(p_rand_8), .B(n_and_module_36_res), .Z(
        n_xor_module_63_res) );
  AND2_X1 u_and_module_37_U1 ( .A1(n_reg_module_9_res), .A2(io_i0_s1_d2), .ZN(
        n_and_module_37_res) );
  XOR2_X1 u_xor_module_64_U1 ( .A(p_rand_6), .B(n_and_module_37_res), .Z(
        n_xor_module_64_res) );
  AND2_X1 u_and_module_38_U1 ( .A1(n_reg_module_10_res), .A2(io_i0_s1_d2), 
        .ZN(n_and_module_38_res) );
  AND2_X1 u_and_module_39_U1 ( .A1(n_reg_module_11_res), .A2(io_i0_s1_d2), 
        .ZN(n_and_module_39_res) );
  XOR2_X1 u_xor_module_65_U1 ( .A(p_rand_9), .B(n_and_module_39_res), .Z(
        n_xor_module_65_res) );
  AND2_X1 u_and_module_40_U1 ( .A1(n_reg_module_12_res), .A2(io_i0_s1_d2), 
        .ZN(n_and_module_40_res) );
  XOR2_X1 u_xor_module_66_U1 ( .A(p_rand_10), .B(n_and_module_40_res), .Z(
        n_xor_module_66_res) );
  AND2_X1 u_and_module_41_U1 ( .A1(n_reg_module_9_res), .A2(io_i0_s2_d2), .ZN(
        n_and_module_41_res) );
  XOR2_X1 u_xor_module_67_U1 ( .A(p_rand_7), .B(n_and_module_41_res), .Z(
        n_xor_module_67_res) );
  AND2_X1 u_and_module_42_U1 ( .A1(n_reg_module_10_res), .A2(io_i0_s2_d2), 
        .ZN(n_and_module_42_res) );
  XOR2_X1 u_xor_module_68_U1 ( .A(p_rand_9), .B(n_and_module_42_res), .Z(
        n_xor_module_68_res) );
  AND2_X1 u_and_module_43_U1 ( .A1(n_reg_module_11_res), .A2(io_i0_s2_d2), 
        .ZN(n_and_module_43_res) );
  AND2_X1 u_and_module_44_U1 ( .A1(n_reg_module_12_res), .A2(io_i0_s2_d2), 
        .ZN(n_and_module_44_res) );
  XOR2_X1 u_xor_module_69_U1 ( .A(p_rand_11), .B(n_and_module_44_res), .Z(
        n_xor_module_69_res) );
  AND2_X1 u_and_module_45_U1 ( .A1(n_reg_module_9_res), .A2(io_i0_s3_d2), .ZN(
        n_and_module_45_res) );
  XOR2_X1 u_xor_module_70_U1 ( .A(p_rand_8), .B(n_and_module_45_res), .Z(
        n_xor_module_70_res) );
  AND2_X1 u_and_module_46_U1 ( .A1(n_reg_module_10_res), .A2(io_i0_s3_d2), 
        .ZN(n_and_module_46_res) );
  XOR2_X1 u_xor_module_71_U1 ( .A(p_rand_10), .B(n_and_module_46_res), .Z(
        n_xor_module_71_res) );
  AND2_X1 u_and_module_47_U1 ( .A1(n_reg_module_11_res), .A2(io_i0_s3_d2), 
        .ZN(n_and_module_47_res) );
  XOR2_X1 u_xor_module_72_U1 ( .A(p_rand_11), .B(n_and_module_47_res), .Z(
        n_xor_module_72_res) );
  AND2_X1 u_and_module_48_U1 ( .A1(n_reg_module_12_res), .A2(io_i0_s3_d2), 
        .ZN(n_and_module_48_res) );
  DFF_X1 u_reg_module_13__cini_mul_v00_reg ( .D(n_and_module_1_res), .CK(
        clock_0), .Q(n_reg_module_13_res), .QN() );
  AND2_X1 u_majority3_module_12__and_module_1_U1 ( .A1(n_xor_module_61_res), 
        .A2(n_xor_module_37_res), .ZN(n_majority3_module_12__and_module_1_res)
         );
  OR2_X1 u_majority3_module_12__or_module_1_U1 ( .A1(n_xor_module_37_res), 
        .A2(n_xor_module_61_res), .ZN(n_majority3_module_12__or_module_1_res)
         );
  OR2_X1 u_majority3_module_12__or_module_2_U1 ( .A1(
        n_majority3_module_12__and_module_1_res), .A2(n_xor_module_49_res), 
        .ZN(n_majority3_module_12__or_module_2_res) );
  AND2_X1 u_majority3_module_12__and_module_2_U1 ( .A1(
        n_majority3_module_12__or_module_1_res), .A2(
        n_majority3_module_12__or_module_2_res), .ZN(n_majority3_module_12_res) );
  DFF_X1 u_reg_module_14__cini_mul_v00_reg ( .D(n_majority3_module_12_res), 
        .CK(clock_0), .Q(n_reg_module_14_res), .QN() );
  AND2_X1 u_majority3_module_13__and_module_1_U1 ( .A1(n_xor_module_62_res), 
        .A2(n_xor_module_38_res), .ZN(n_majority3_module_13__and_module_1_res)
         );
  OR2_X1 u_majority3_module_13__or_module_1_U1 ( .A1(n_xor_module_38_res), 
        .A2(n_xor_module_62_res), .ZN(n_majority3_module_13__or_module_1_res)
         );
  OR2_X1 u_majority3_module_13__or_module_2_U1 ( .A1(
        n_majority3_module_13__and_module_1_res), .A2(n_xor_module_50_res), 
        .ZN(n_majority3_module_13__or_module_2_res) );
  AND2_X1 u_majority3_module_13__and_module_2_U1 ( .A1(
        n_majority3_module_13__or_module_1_res), .A2(
        n_majority3_module_13__or_module_2_res), .ZN(n_majority3_module_13_res) );
  DFF_X1 u_reg_module_15__cini_mul_v00_reg ( .D(n_majority3_module_13_res), 
        .CK(clock_0), .Q(n_reg_module_15_res), .QN() );
  AND2_X1 u_majority3_module_14__and_module_1_U1 ( .A1(n_xor_module_63_res), 
        .A2(n_xor_module_39_res), .ZN(n_majority3_module_14__and_module_1_res)
         );
  OR2_X1 u_majority3_module_14__or_module_1_U1 ( .A1(n_xor_module_39_res), 
        .A2(n_xor_module_63_res), .ZN(n_majority3_module_14__or_module_1_res)
         );
  OR2_X1 u_majority3_module_14__or_module_2_U1 ( .A1(
        n_majority3_module_14__and_module_1_res), .A2(n_xor_module_51_res), 
        .ZN(n_majority3_module_14__or_module_2_res) );
  AND2_X1 u_majority3_module_14__and_module_2_U1 ( .A1(
        n_majority3_module_14__or_module_1_res), .A2(
        n_majority3_module_14__or_module_2_res), .ZN(n_majority3_module_14_res) );
  DFF_X1 u_reg_module_16__cini_mul_v00_reg ( .D(n_majority3_module_14_res), 
        .CK(clock_0), .Q(n_reg_module_16_res), .QN() );
  AND2_X1 u_majority3_module_15__and_module_1_U1 ( .A1(n_xor_module_64_res), 
        .A2(n_xor_module_40_res), .ZN(n_majority3_module_15__and_module_1_res)
         );
  OR2_X1 u_majority3_module_15__or_module_1_U1 ( .A1(n_xor_module_40_res), 
        .A2(n_xor_module_64_res), .ZN(n_majority3_module_15__or_module_1_res)
         );
  OR2_X1 u_majority3_module_15__or_module_2_U1 ( .A1(
        n_majority3_module_15__and_module_1_res), .A2(n_xor_module_52_res), 
        .ZN(n_majority3_module_15__or_module_2_res) );
  AND2_X1 u_majority3_module_15__and_module_2_U1 ( .A1(
        n_majority3_module_15__or_module_1_res), .A2(
        n_majority3_module_15__or_module_2_res), .ZN(n_majority3_module_15_res) );
  DFF_X1 u_reg_module_17__cini_mul_v00_reg ( .D(n_majority3_module_15_res), 
        .CK(clock_0), .Q(n_reg_module_17_res), .QN() );
  DFF_X1 u_reg_module_18__cini_mul_v00_reg ( .D(n_and_module_6_res), .CK(
        clock_0), .Q(n_reg_module_18_res), .QN() );
  AND2_X1 u_majority3_module_16__and_module_1_U1 ( .A1(n_xor_module_65_res), 
        .A2(n_xor_module_41_res), .ZN(n_majority3_module_16__and_module_1_res)
         );
  OR2_X1 u_majority3_module_16__or_module_1_U1 ( .A1(n_xor_module_41_res), 
        .A2(n_xor_module_65_res), .ZN(n_majority3_module_16__or_module_1_res)
         );
  OR2_X1 u_majority3_module_16__or_module_2_U1 ( .A1(
        n_majority3_module_16__and_module_1_res), .A2(n_xor_module_53_res), 
        .ZN(n_majority3_module_16__or_module_2_res) );
  AND2_X1 u_majority3_module_16__and_module_2_U1 ( .A1(
        n_majority3_module_16__or_module_1_res), .A2(
        n_majority3_module_16__or_module_2_res), .ZN(n_majority3_module_16_res) );
  DFF_X1 u_reg_module_19__cini_mul_v00_reg ( .D(n_majority3_module_16_res), 
        .CK(clock_0), .Q(n_reg_module_19_res), .QN() );
  AND2_X1 u_majority3_module_17__and_module_1_U1 ( .A1(n_xor_module_66_res), 
        .A2(n_xor_module_42_res), .ZN(n_majority3_module_17__and_module_1_res)
         );
  OR2_X1 u_majority3_module_17__or_module_1_U1 ( .A1(n_xor_module_42_res), 
        .A2(n_xor_module_66_res), .ZN(n_majority3_module_17__or_module_1_res)
         );
  OR2_X1 u_majority3_module_17__or_module_2_U1 ( .A1(
        n_majority3_module_17__and_module_1_res), .A2(n_xor_module_54_res), 
        .ZN(n_majority3_module_17__or_module_2_res) );
  AND2_X1 u_majority3_module_17__and_module_2_U1 ( .A1(
        n_majority3_module_17__or_module_1_res), .A2(
        n_majority3_module_17__or_module_2_res), .ZN(n_majority3_module_17_res) );
  DFF_X1 u_reg_module_20__cini_mul_v00_reg ( .D(n_majority3_module_17_res), 
        .CK(clock_0), .Q(n_reg_module_20_res), .QN() );
  AND2_X1 u_majority3_module_18__and_module_1_U1 ( .A1(n_xor_module_67_res), 
        .A2(n_xor_module_43_res), .ZN(n_majority3_module_18__and_module_1_res)
         );
  OR2_X1 u_majority3_module_18__or_module_1_U1 ( .A1(n_xor_module_43_res), 
        .A2(n_xor_module_67_res), .ZN(n_majority3_module_18__or_module_1_res)
         );
  OR2_X1 u_majority3_module_18__or_module_2_U1 ( .A1(
        n_majority3_module_18__and_module_1_res), .A2(n_xor_module_55_res), 
        .ZN(n_majority3_module_18__or_module_2_res) );
  AND2_X1 u_majority3_module_18__and_module_2_U1 ( .A1(
        n_majority3_module_18__or_module_1_res), .A2(
        n_majority3_module_18__or_module_2_res), .ZN(n_majority3_module_18_res) );
  DFF_X1 u_reg_module_21__cini_mul_v00_reg ( .D(n_majority3_module_18_res), 
        .CK(clock_0), .Q(n_reg_module_21_res), .QN() );
  AND2_X1 u_majority3_module_19__and_module_1_U1 ( .A1(n_xor_module_68_res), 
        .A2(n_xor_module_44_res), .ZN(n_majority3_module_19__and_module_1_res)
         );
  OR2_X1 u_majority3_module_19__or_module_1_U1 ( .A1(n_xor_module_44_res), 
        .A2(n_xor_module_68_res), .ZN(n_majority3_module_19__or_module_1_res)
         );
  OR2_X1 u_majority3_module_19__or_module_2_U1 ( .A1(
        n_majority3_module_19__and_module_1_res), .A2(n_xor_module_56_res), 
        .ZN(n_majority3_module_19__or_module_2_res) );
  AND2_X1 u_majority3_module_19__and_module_2_U1 ( .A1(
        n_majority3_module_19__or_module_1_res), .A2(
        n_majority3_module_19__or_module_2_res), .ZN(n_majority3_module_19_res) );
  DFF_X1 u_reg_module_22__cini_mul_v00_reg ( .D(n_majority3_module_19_res), 
        .CK(clock_0), .Q(n_reg_module_22_res), .QN() );
  DFF_X1 u_reg_module_23__cini_mul_v00_reg ( .D(n_and_module_11_res), .CK(
        clock_0), .Q(n_reg_module_23_res), .QN() );
  AND2_X1 u_majority3_module_20__and_module_1_U1 ( .A1(n_xor_module_69_res), 
        .A2(n_xor_module_45_res), .ZN(n_majority3_module_20__and_module_1_res)
         );
  OR2_X1 u_majority3_module_20__or_module_1_U1 ( .A1(n_xor_module_45_res), 
        .A2(n_xor_module_69_res), .ZN(n_majority3_module_20__or_module_1_res)
         );
  OR2_X1 u_majority3_module_20__or_module_2_U1 ( .A1(
        n_majority3_module_20__and_module_1_res), .A2(n_xor_module_57_res), 
        .ZN(n_majority3_module_20__or_module_2_res) );
  AND2_X1 u_majority3_module_20__and_module_2_U1 ( .A1(
        n_majority3_module_20__or_module_1_res), .A2(
        n_majority3_module_20__or_module_2_res), .ZN(n_majority3_module_20_res) );
  DFF_X1 u_reg_module_24__cini_mul_v00_reg ( .D(n_majority3_module_20_res), 
        .CK(clock_0), .Q(n_reg_module_24_res), .QN() );
  AND2_X1 u_majority3_module_21__and_module_1_U1 ( .A1(n_xor_module_70_res), 
        .A2(n_xor_module_46_res), .ZN(n_majority3_module_21__and_module_1_res)
         );
  OR2_X1 u_majority3_module_21__or_module_1_U1 ( .A1(n_xor_module_46_res), 
        .A2(n_xor_module_70_res), .ZN(n_majority3_module_21__or_module_1_res)
         );
  OR2_X1 u_majority3_module_21__or_module_2_U1 ( .A1(
        n_majority3_module_21__and_module_1_res), .A2(n_xor_module_58_res), 
        .ZN(n_majority3_module_21__or_module_2_res) );
  AND2_X1 u_majority3_module_21__and_module_2_U1 ( .A1(
        n_majority3_module_21__or_module_1_res), .A2(
        n_majority3_module_21__or_module_2_res), .ZN(n_majority3_module_21_res) );
  DFF_X1 u_reg_module_25__cini_mul_v00_reg ( .D(n_majority3_module_21_res), 
        .CK(clock_0), .Q(n_reg_module_25_res), .QN() );
  AND2_X1 u_majority3_module_22__and_module_1_U1 ( .A1(n_xor_module_71_res), 
        .A2(n_xor_module_47_res), .ZN(n_majority3_module_22__and_module_1_res)
         );
  OR2_X1 u_majority3_module_22__or_module_1_U1 ( .A1(n_xor_module_47_res), 
        .A2(n_xor_module_71_res), .ZN(n_majority3_module_22__or_module_1_res)
         );
  OR2_X1 u_majority3_module_22__or_module_2_U1 ( .A1(
        n_majority3_module_22__and_module_1_res), .A2(n_xor_module_59_res), 
        .ZN(n_majority3_module_22__or_module_2_res) );
  AND2_X1 u_majority3_module_22__and_module_2_U1 ( .A1(
        n_majority3_module_22__or_module_1_res), .A2(
        n_majority3_module_22__or_module_2_res), .ZN(n_majority3_module_22_res) );
  DFF_X1 u_reg_module_26__cini_mul_v00_reg ( .D(n_majority3_module_22_res), 
        .CK(clock_0), .Q(n_reg_module_26_res), .QN() );
  AND2_X1 u_majority3_module_23__and_module_1_U1 ( .A1(n_xor_module_72_res), 
        .A2(n_xor_module_48_res), .ZN(n_majority3_module_23__and_module_1_res)
         );
  OR2_X1 u_majority3_module_23__or_module_1_U1 ( .A1(n_xor_module_48_res), 
        .A2(n_xor_module_72_res), .ZN(n_majority3_module_23__or_module_1_res)
         );
  OR2_X1 u_majority3_module_23__or_module_2_U1 ( .A1(
        n_majority3_module_23__and_module_1_res), .A2(n_xor_module_60_res), 
        .ZN(n_majority3_module_23__or_module_2_res) );
  AND2_X1 u_majority3_module_23__and_module_2_U1 ( .A1(
        n_majority3_module_23__or_module_1_res), .A2(
        n_majority3_module_23__or_module_2_res), .ZN(n_majority3_module_23_res) );
  DFF_X1 u_reg_module_27__cini_mul_v00_reg ( .D(n_majority3_module_23_res), 
        .CK(clock_0), .Q(n_reg_module_27_res), .QN() );
  DFF_X1 u_reg_module_28__cini_mul_v00_reg ( .D(n_and_module_16_res), .CK(
        clock_0), .Q(n_reg_module_28_res), .QN() );
  DFF_X1 u_reg_module_29__cini_mul_v00_reg ( .D(n_and_module_17_res), .CK(
        clock_1), .Q(n_reg_module_29_res), .QN() );
  AND2_X1 u_majority3_module_24__and_module_1_U1 ( .A1(n_xor_module_61_res), 
        .A2(n_xor_module_37_res), .ZN(n_majority3_module_24__and_module_1_res)
         );
  OR2_X1 u_majority3_module_24__or_module_1_U1 ( .A1(n_xor_module_37_res), 
        .A2(n_xor_module_61_res), .ZN(n_majority3_module_24__or_module_1_res)
         );
  OR2_X1 u_majority3_module_24__or_module_2_U1 ( .A1(
        n_majority3_module_24__and_module_1_res), .A2(n_xor_module_49_res), 
        .ZN(n_majority3_module_24__or_module_2_res) );
  AND2_X1 u_majority3_module_24__and_module_2_U1 ( .A1(
        n_majority3_module_24__or_module_1_res), .A2(
        n_majority3_module_24__or_module_2_res), .ZN(n_majority3_module_24_res) );
  DFF_X1 u_reg_module_30__cini_mul_v00_reg ( .D(n_majority3_module_24_res), 
        .CK(clock_1), .Q(n_reg_module_30_res), .QN() );
  AND2_X1 u_majority3_module_25__and_module_1_U1 ( .A1(n_xor_module_62_res), 
        .A2(n_xor_module_38_res), .ZN(n_majority3_module_25__and_module_1_res)
         );
  OR2_X1 u_majority3_module_25__or_module_1_U1 ( .A1(n_xor_module_38_res), 
        .A2(n_xor_module_62_res), .ZN(n_majority3_module_25__or_module_1_res)
         );
  OR2_X1 u_majority3_module_25__or_module_2_U1 ( .A1(
        n_majority3_module_25__and_module_1_res), .A2(n_xor_module_50_res), 
        .ZN(n_majority3_module_25__or_module_2_res) );
  AND2_X1 u_majority3_module_25__and_module_2_U1 ( .A1(
        n_majority3_module_25__or_module_1_res), .A2(
        n_majority3_module_25__or_module_2_res), .ZN(n_majority3_module_25_res) );
  DFF_X1 u_reg_module_31__cini_mul_v00_reg ( .D(n_majority3_module_25_res), 
        .CK(clock_1), .Q(n_reg_module_31_res), .QN() );
  AND2_X1 u_majority3_module_26__and_module_1_U1 ( .A1(n_xor_module_63_res), 
        .A2(n_xor_module_39_res), .ZN(n_majority3_module_26__and_module_1_res)
         );
  OR2_X1 u_majority3_module_26__or_module_1_U1 ( .A1(n_xor_module_39_res), 
        .A2(n_xor_module_63_res), .ZN(n_majority3_module_26__or_module_1_res)
         );
  OR2_X1 u_majority3_module_26__or_module_2_U1 ( .A1(
        n_majority3_module_26__and_module_1_res), .A2(n_xor_module_51_res), 
        .ZN(n_majority3_module_26__or_module_2_res) );
  AND2_X1 u_majority3_module_26__and_module_2_U1 ( .A1(
        n_majority3_module_26__or_module_1_res), .A2(
        n_majority3_module_26__or_module_2_res), .ZN(n_majority3_module_26_res) );
  DFF_X1 u_reg_module_32__cini_mul_v00_reg ( .D(n_majority3_module_26_res), 
        .CK(clock_1), .Q(n_reg_module_32_res), .QN() );
  AND2_X1 u_majority3_module_27__and_module_1_U1 ( .A1(n_xor_module_64_res), 
        .A2(n_xor_module_40_res), .ZN(n_majority3_module_27__and_module_1_res)
         );
  OR2_X1 u_majority3_module_27__or_module_1_U1 ( .A1(n_xor_module_40_res), 
        .A2(n_xor_module_64_res), .ZN(n_majority3_module_27__or_module_1_res)
         );
  OR2_X1 u_majority3_module_27__or_module_2_U1 ( .A1(
        n_majority3_module_27__and_module_1_res), .A2(n_xor_module_52_res), 
        .ZN(n_majority3_module_27__or_module_2_res) );
  AND2_X1 u_majority3_module_27__and_module_2_U1 ( .A1(
        n_majority3_module_27__or_module_1_res), .A2(
        n_majority3_module_27__or_module_2_res), .ZN(n_majority3_module_27_res) );
  DFF_X1 u_reg_module_33__cini_mul_v00_reg ( .D(n_majority3_module_27_res), 
        .CK(clock_1), .Q(n_reg_module_33_res), .QN() );
  DFF_X1 u_reg_module_34__cini_mul_v00_reg ( .D(n_and_module_22_res), .CK(
        clock_1), .Q(n_reg_module_34_res), .QN() );
  AND2_X1 u_majority3_module_28__and_module_1_U1 ( .A1(n_xor_module_65_res), 
        .A2(n_xor_module_41_res), .ZN(n_majority3_module_28__and_module_1_res)
         );
  OR2_X1 u_majority3_module_28__or_module_1_U1 ( .A1(n_xor_module_41_res), 
        .A2(n_xor_module_65_res), .ZN(n_majority3_module_28__or_module_1_res)
         );
  OR2_X1 u_majority3_module_28__or_module_2_U1 ( .A1(
        n_majority3_module_28__and_module_1_res), .A2(n_xor_module_53_res), 
        .ZN(n_majority3_module_28__or_module_2_res) );
  AND2_X1 u_majority3_module_28__and_module_2_U1 ( .A1(
        n_majority3_module_28__or_module_1_res), .A2(
        n_majority3_module_28__or_module_2_res), .ZN(n_majority3_module_28_res) );
  DFF_X1 u_reg_module_35__cini_mul_v00_reg ( .D(n_majority3_module_28_res), 
        .CK(clock_1), .Q(n_reg_module_35_res), .QN() );
  AND2_X1 u_majority3_module_29__and_module_1_U1 ( .A1(n_xor_module_66_res), 
        .A2(n_xor_module_42_res), .ZN(n_majority3_module_29__and_module_1_res)
         );
  OR2_X1 u_majority3_module_29__or_module_1_U1 ( .A1(n_xor_module_42_res), 
        .A2(n_xor_module_66_res), .ZN(n_majority3_module_29__or_module_1_res)
         );
  OR2_X1 u_majority3_module_29__or_module_2_U1 ( .A1(
        n_majority3_module_29__and_module_1_res), .A2(n_xor_module_54_res), 
        .ZN(n_majority3_module_29__or_module_2_res) );
  AND2_X1 u_majority3_module_29__and_module_2_U1 ( .A1(
        n_majority3_module_29__or_module_1_res), .A2(
        n_majority3_module_29__or_module_2_res), .ZN(n_majority3_module_29_res) );
  DFF_X1 u_reg_module_36__cini_mul_v00_reg ( .D(n_majority3_module_29_res), 
        .CK(clock_1), .Q(n_reg_module_36_res), .QN() );
  AND2_X1 u_majority3_module_30__and_module_1_U1 ( .A1(n_xor_module_67_res), 
        .A2(n_xor_module_43_res), .ZN(n_majority3_module_30__and_module_1_res)
         );
  OR2_X1 u_majority3_module_30__or_module_1_U1 ( .A1(n_xor_module_43_res), 
        .A2(n_xor_module_67_res), .ZN(n_majority3_module_30__or_module_1_res)
         );
  OR2_X1 u_majority3_module_30__or_module_2_U1 ( .A1(
        n_majority3_module_30__and_module_1_res), .A2(n_xor_module_55_res), 
        .ZN(n_majority3_module_30__or_module_2_res) );
  AND2_X1 u_majority3_module_30__and_module_2_U1 ( .A1(
        n_majority3_module_30__or_module_1_res), .A2(
        n_majority3_module_30__or_module_2_res), .ZN(n_majority3_module_30_res) );
  DFF_X1 u_reg_module_37__cini_mul_v00_reg ( .D(n_majority3_module_30_res), 
        .CK(clock_1), .Q(n_reg_module_37_res), .QN() );
  AND2_X1 u_majority3_module_31__and_module_1_U1 ( .A1(n_xor_module_68_res), 
        .A2(n_xor_module_44_res), .ZN(n_majority3_module_31__and_module_1_res)
         );
  OR2_X1 u_majority3_module_31__or_module_1_U1 ( .A1(n_xor_module_44_res), 
        .A2(n_xor_module_68_res), .ZN(n_majority3_module_31__or_module_1_res)
         );
  OR2_X1 u_majority3_module_31__or_module_2_U1 ( .A1(
        n_majority3_module_31__and_module_1_res), .A2(n_xor_module_56_res), 
        .ZN(n_majority3_module_31__or_module_2_res) );
  AND2_X1 u_majority3_module_31__and_module_2_U1 ( .A1(
        n_majority3_module_31__or_module_1_res), .A2(
        n_majority3_module_31__or_module_2_res), .ZN(n_majority3_module_31_res) );
  DFF_X1 u_reg_module_38__cini_mul_v00_reg ( .D(n_majority3_module_31_res), 
        .CK(clock_1), .Q(n_reg_module_38_res), .QN() );
  DFF_X1 u_reg_module_39__cini_mul_v00_reg ( .D(n_and_module_27_res), .CK(
        clock_1), .Q(n_reg_module_39_res), .QN() );
  AND2_X1 u_majority3_module_32__and_module_1_U1 ( .A1(n_xor_module_69_res), 
        .A2(n_xor_module_45_res), .ZN(n_majority3_module_32__and_module_1_res)
         );
  OR2_X1 u_majority3_module_32__or_module_1_U1 ( .A1(n_xor_module_45_res), 
        .A2(n_xor_module_69_res), .ZN(n_majority3_module_32__or_module_1_res)
         );
  OR2_X1 u_majority3_module_32__or_module_2_U1 ( .A1(
        n_majority3_module_32__and_module_1_res), .A2(n_xor_module_57_res), 
        .ZN(n_majority3_module_32__or_module_2_res) );
  AND2_X1 u_majority3_module_32__and_module_2_U1 ( .A1(
        n_majority3_module_32__or_module_1_res), .A2(
        n_majority3_module_32__or_module_2_res), .ZN(n_majority3_module_32_res) );
  DFF_X1 u_reg_module_40__cini_mul_v00_reg ( .D(n_majority3_module_32_res), 
        .CK(clock_1), .Q(n_reg_module_40_res), .QN() );
  AND2_X1 u_majority3_module_33__and_module_1_U1 ( .A1(n_xor_module_70_res), 
        .A2(n_xor_module_46_res), .ZN(n_majority3_module_33__and_module_1_res)
         );
  OR2_X1 u_majority3_module_33__or_module_1_U1 ( .A1(n_xor_module_46_res), 
        .A2(n_xor_module_70_res), .ZN(n_majority3_module_33__or_module_1_res)
         );
  OR2_X1 u_majority3_module_33__or_module_2_U1 ( .A1(
        n_majority3_module_33__and_module_1_res), .A2(n_xor_module_58_res), 
        .ZN(n_majority3_module_33__or_module_2_res) );
  AND2_X1 u_majority3_module_33__and_module_2_U1 ( .A1(
        n_majority3_module_33__or_module_1_res), .A2(
        n_majority3_module_33__or_module_2_res), .ZN(n_majority3_module_33_res) );
  DFF_X1 u_reg_module_41__cini_mul_v00_reg ( .D(n_majority3_module_33_res), 
        .CK(clock_1), .Q(n_reg_module_41_res), .QN() );
  AND2_X1 u_majority3_module_34__and_module_1_U1 ( .A1(n_xor_module_71_res), 
        .A2(n_xor_module_47_res), .ZN(n_majority3_module_34__and_module_1_res)
         );
  OR2_X1 u_majority3_module_34__or_module_1_U1 ( .A1(n_xor_module_47_res), 
        .A2(n_xor_module_71_res), .ZN(n_majority3_module_34__or_module_1_res)
         );
  OR2_X1 u_majority3_module_34__or_module_2_U1 ( .A1(
        n_majority3_module_34__and_module_1_res), .A2(n_xor_module_59_res), 
        .ZN(n_majority3_module_34__or_module_2_res) );
  AND2_X1 u_majority3_module_34__and_module_2_U1 ( .A1(
        n_majority3_module_34__or_module_1_res), .A2(
        n_majority3_module_34__or_module_2_res), .ZN(n_majority3_module_34_res) );
  DFF_X1 u_reg_module_42__cini_mul_v00_reg ( .D(n_majority3_module_34_res), 
        .CK(clock_1), .Q(n_reg_module_42_res), .QN() );
  AND2_X1 u_majority3_module_35__and_module_1_U1 ( .A1(n_xor_module_72_res), 
        .A2(n_xor_module_48_res), .ZN(n_majority3_module_35__and_module_1_res)
         );
  OR2_X1 u_majority3_module_35__or_module_1_U1 ( .A1(n_xor_module_48_res), 
        .A2(n_xor_module_72_res), .ZN(n_majority3_module_35__or_module_1_res)
         );
  OR2_X1 u_majority3_module_35__or_module_2_U1 ( .A1(
        n_majority3_module_35__and_module_1_res), .A2(n_xor_module_60_res), 
        .ZN(n_majority3_module_35__or_module_2_res) );
  AND2_X1 u_majority3_module_35__and_module_2_U1 ( .A1(
        n_majority3_module_35__or_module_1_res), .A2(
        n_majority3_module_35__or_module_2_res), .ZN(n_majority3_module_35_res) );
  DFF_X1 u_reg_module_43__cini_mul_v00_reg ( .D(n_majority3_module_35_res), 
        .CK(clock_1), .Q(n_reg_module_43_res), .QN() );
  DFF_X1 u_reg_module_44__cini_mul_v00_reg ( .D(n_and_module_32_res), .CK(
        clock_1), .Q(n_reg_module_44_res), .QN() );
  DFF_X1 u_reg_module_45__cini_mul_v00_reg ( .D(n_and_module_33_res), .CK(
        clock_2), .Q(n_reg_module_45_res), .QN() );
  AND2_X1 u_majority3_module_36__and_module_1_U1 ( .A1(n_xor_module_61_res), 
        .A2(n_xor_module_37_res), .ZN(n_majority3_module_36__and_module_1_res)
         );
  OR2_X1 u_majority3_module_36__or_module_1_U1 ( .A1(n_xor_module_37_res), 
        .A2(n_xor_module_61_res), .ZN(n_majority3_module_36__or_module_1_res)
         );
  OR2_X1 u_majority3_module_36__or_module_2_U1 ( .A1(
        n_majority3_module_36__and_module_1_res), .A2(n_xor_module_49_res), 
        .ZN(n_majority3_module_36__or_module_2_res) );
  AND2_X1 u_majority3_module_36__and_module_2_U1 ( .A1(
        n_majority3_module_36__or_module_1_res), .A2(
        n_majority3_module_36__or_module_2_res), .ZN(n_majority3_module_36_res) );
  DFF_X1 u_reg_module_46__cini_mul_v00_reg ( .D(n_majority3_module_36_res), 
        .CK(clock_2), .Q(n_reg_module_46_res), .QN() );
  AND2_X1 u_majority3_module_37__and_module_1_U1 ( .A1(n_xor_module_62_res), 
        .A2(n_xor_module_38_res), .ZN(n_majority3_module_37__and_module_1_res)
         );
  OR2_X1 u_majority3_module_37__or_module_1_U1 ( .A1(n_xor_module_38_res), 
        .A2(n_xor_module_62_res), .ZN(n_majority3_module_37__or_module_1_res)
         );
  OR2_X1 u_majority3_module_37__or_module_2_U1 ( .A1(
        n_majority3_module_37__and_module_1_res), .A2(n_xor_module_50_res), 
        .ZN(n_majority3_module_37__or_module_2_res) );
  AND2_X1 u_majority3_module_37__and_module_2_U1 ( .A1(
        n_majority3_module_37__or_module_1_res), .A2(
        n_majority3_module_37__or_module_2_res), .ZN(n_majority3_module_37_res) );
  DFF_X1 u_reg_module_47__cini_mul_v00_reg ( .D(n_majority3_module_37_res), 
        .CK(clock_2), .Q(n_reg_module_47_res), .QN() );
  AND2_X1 u_majority3_module_38__and_module_1_U1 ( .A1(n_xor_module_63_res), 
        .A2(n_xor_module_39_res), .ZN(n_majority3_module_38__and_module_1_res)
         );
  OR2_X1 u_majority3_module_38__or_module_1_U1 ( .A1(n_xor_module_39_res), 
        .A2(n_xor_module_63_res), .ZN(n_majority3_module_38__or_module_1_res)
         );
  OR2_X1 u_majority3_module_38__or_module_2_U1 ( .A1(
        n_majority3_module_38__and_module_1_res), .A2(n_xor_module_51_res), 
        .ZN(n_majority3_module_38__or_module_2_res) );
  AND2_X1 u_majority3_module_38__and_module_2_U1 ( .A1(
        n_majority3_module_38__or_module_1_res), .A2(
        n_majority3_module_38__or_module_2_res), .ZN(n_majority3_module_38_res) );
  DFF_X1 u_reg_module_48__cini_mul_v00_reg ( .D(n_majority3_module_38_res), 
        .CK(clock_2), .Q(n_reg_module_48_res), .QN() );
  AND2_X1 u_majority3_module_39__and_module_1_U1 ( .A1(n_xor_module_64_res), 
        .A2(n_xor_module_40_res), .ZN(n_majority3_module_39__and_module_1_res)
         );
  OR2_X1 u_majority3_module_39__or_module_1_U1 ( .A1(n_xor_module_40_res), 
        .A2(n_xor_module_64_res), .ZN(n_majority3_module_39__or_module_1_res)
         );
  OR2_X1 u_majority3_module_39__or_module_2_U1 ( .A1(
        n_majority3_module_39__and_module_1_res), .A2(n_xor_module_52_res), 
        .ZN(n_majority3_module_39__or_module_2_res) );
  AND2_X1 u_majority3_module_39__and_module_2_U1 ( .A1(
        n_majority3_module_39__or_module_1_res), .A2(
        n_majority3_module_39__or_module_2_res), .ZN(n_majority3_module_39_res) );
  DFF_X1 u_reg_module_49__cini_mul_v00_reg ( .D(n_majority3_module_39_res), 
        .CK(clock_2), .Q(n_reg_module_49_res), .QN() );
  DFF_X1 u_reg_module_50__cini_mul_v00_reg ( .D(n_and_module_38_res), .CK(
        clock_2), .Q(n_reg_module_50_res), .QN() );
  AND2_X1 u_majority3_module_40__and_module_1_U1 ( .A1(n_xor_module_65_res), 
        .A2(n_xor_module_41_res), .ZN(n_majority3_module_40__and_module_1_res)
         );
  OR2_X1 u_majority3_module_40__or_module_1_U1 ( .A1(n_xor_module_41_res), 
        .A2(n_xor_module_65_res), .ZN(n_majority3_module_40__or_module_1_res)
         );
  OR2_X1 u_majority3_module_40__or_module_2_U1 ( .A1(
        n_majority3_module_40__and_module_1_res), .A2(n_xor_module_53_res), 
        .ZN(n_majority3_module_40__or_module_2_res) );
  AND2_X1 u_majority3_module_40__and_module_2_U1 ( .A1(
        n_majority3_module_40__or_module_1_res), .A2(
        n_majority3_module_40__or_module_2_res), .ZN(n_majority3_module_40_res) );
  DFF_X1 u_reg_module_51__cini_mul_v00_reg ( .D(n_majority3_module_40_res), 
        .CK(clock_2), .Q(n_reg_module_51_res), .QN() );
  AND2_X1 u_majority3_module_41__and_module_1_U1 ( .A1(n_xor_module_66_res), 
        .A2(n_xor_module_42_res), .ZN(n_majority3_module_41__and_module_1_res)
         );
  OR2_X1 u_majority3_module_41__or_module_1_U1 ( .A1(n_xor_module_42_res), 
        .A2(n_xor_module_66_res), .ZN(n_majority3_module_41__or_module_1_res)
         );
  OR2_X1 u_majority3_module_41__or_module_2_U1 ( .A1(
        n_majority3_module_41__and_module_1_res), .A2(n_xor_module_54_res), 
        .ZN(n_majority3_module_41__or_module_2_res) );
  AND2_X1 u_majority3_module_41__and_module_2_U1 ( .A1(
        n_majority3_module_41__or_module_1_res), .A2(
        n_majority3_module_41__or_module_2_res), .ZN(n_majority3_module_41_res) );
  DFF_X1 u_reg_module_52__cini_mul_v00_reg ( .D(n_majority3_module_41_res), 
        .CK(clock_2), .Q(n_reg_module_52_res), .QN() );
  AND2_X1 u_majority3_module_42__and_module_1_U1 ( .A1(n_xor_module_67_res), 
        .A2(n_xor_module_43_res), .ZN(n_majority3_module_42__and_module_1_res)
         );
  OR2_X1 u_majority3_module_42__or_module_1_U1 ( .A1(n_xor_module_43_res), 
        .A2(n_xor_module_67_res), .ZN(n_majority3_module_42__or_module_1_res)
         );
  OR2_X1 u_majority3_module_42__or_module_2_U1 ( .A1(
        n_majority3_module_42__and_module_1_res), .A2(n_xor_module_55_res), 
        .ZN(n_majority3_module_42__or_module_2_res) );
  AND2_X1 u_majority3_module_42__and_module_2_U1 ( .A1(
        n_majority3_module_42__or_module_1_res), .A2(
        n_majority3_module_42__or_module_2_res), .ZN(n_majority3_module_42_res) );
  DFF_X1 u_reg_module_53__cini_mul_v00_reg ( .D(n_majority3_module_42_res), 
        .CK(clock_2), .Q(n_reg_module_53_res), .QN() );
  AND2_X1 u_majority3_module_43__and_module_1_U1 ( .A1(n_xor_module_68_res), 
        .A2(n_xor_module_44_res), .ZN(n_majority3_module_43__and_module_1_res)
         );
  OR2_X1 u_majority3_module_43__or_module_1_U1 ( .A1(n_xor_module_44_res), 
        .A2(n_xor_module_68_res), .ZN(n_majority3_module_43__or_module_1_res)
         );
  OR2_X1 u_majority3_module_43__or_module_2_U1 ( .A1(
        n_majority3_module_43__and_module_1_res), .A2(n_xor_module_56_res), 
        .ZN(n_majority3_module_43__or_module_2_res) );
  AND2_X1 u_majority3_module_43__and_module_2_U1 ( .A1(
        n_majority3_module_43__or_module_1_res), .A2(
        n_majority3_module_43__or_module_2_res), .ZN(n_majority3_module_43_res) );
  DFF_X1 u_reg_module_54__cini_mul_v00_reg ( .D(n_majority3_module_43_res), 
        .CK(clock_2), .Q(n_reg_module_54_res), .QN() );
  DFF_X1 u_reg_module_55__cini_mul_v00_reg ( .D(n_and_module_43_res), .CK(
        clock_2), .Q(n_reg_module_55_res), .QN() );
  AND2_X1 u_majority3_module_44__and_module_1_U1 ( .A1(n_xor_module_69_res), 
        .A2(n_xor_module_45_res), .ZN(n_majority3_module_44__and_module_1_res)
         );
  OR2_X1 u_majority3_module_44__or_module_1_U1 ( .A1(n_xor_module_45_res), 
        .A2(n_xor_module_69_res), .ZN(n_majority3_module_44__or_module_1_res)
         );
  OR2_X1 u_majority3_module_44__or_module_2_U1 ( .A1(
        n_majority3_module_44__and_module_1_res), .A2(n_xor_module_57_res), 
        .ZN(n_majority3_module_44__or_module_2_res) );
  AND2_X1 u_majority3_module_44__and_module_2_U1 ( .A1(
        n_majority3_module_44__or_module_1_res), .A2(
        n_majority3_module_44__or_module_2_res), .ZN(n_majority3_module_44_res) );
  DFF_X1 u_reg_module_56__cini_mul_v00_reg ( .D(n_majority3_module_44_res), 
        .CK(clock_2), .Q(n_reg_module_56_res), .QN() );
  AND2_X1 u_majority3_module_45__and_module_1_U1 ( .A1(n_xor_module_70_res), 
        .A2(n_xor_module_46_res), .ZN(n_majority3_module_45__and_module_1_res)
         );
  OR2_X1 u_majority3_module_45__or_module_1_U1 ( .A1(n_xor_module_46_res), 
        .A2(n_xor_module_70_res), .ZN(n_majority3_module_45__or_module_1_res)
         );
  OR2_X1 u_majority3_module_45__or_module_2_U1 ( .A1(
        n_majority3_module_45__and_module_1_res), .A2(n_xor_module_58_res), 
        .ZN(n_majority3_module_45__or_module_2_res) );
  AND2_X1 u_majority3_module_45__and_module_2_U1 ( .A1(
        n_majority3_module_45__or_module_1_res), .A2(
        n_majority3_module_45__or_module_2_res), .ZN(n_majority3_module_45_res) );
  DFF_X1 u_reg_module_57__cini_mul_v00_reg ( .D(n_majority3_module_45_res), 
        .CK(clock_2), .Q(n_reg_module_57_res), .QN() );
  AND2_X1 u_majority3_module_46__and_module_1_U1 ( .A1(n_xor_module_71_res), 
        .A2(n_xor_module_47_res), .ZN(n_majority3_module_46__and_module_1_res)
         );
  OR2_X1 u_majority3_module_46__or_module_1_U1 ( .A1(n_xor_module_47_res), 
        .A2(n_xor_module_71_res), .ZN(n_majority3_module_46__or_module_1_res)
         );
  OR2_X1 u_majority3_module_46__or_module_2_U1 ( .A1(
        n_majority3_module_46__and_module_1_res), .A2(n_xor_module_59_res), 
        .ZN(n_majority3_module_46__or_module_2_res) );
  AND2_X1 u_majority3_module_46__and_module_2_U1 ( .A1(
        n_majority3_module_46__or_module_1_res), .A2(
        n_majority3_module_46__or_module_2_res), .ZN(n_majority3_module_46_res) );
  DFF_X1 u_reg_module_58__cini_mul_v00_reg ( .D(n_majority3_module_46_res), 
        .CK(clock_2), .Q(n_reg_module_58_res), .QN() );
  AND2_X1 u_majority3_module_47__and_module_1_U1 ( .A1(n_xor_module_72_res), 
        .A2(n_xor_module_48_res), .ZN(n_majority3_module_47__and_module_1_res)
         );
  OR2_X1 u_majority3_module_47__or_module_1_U1 ( .A1(n_xor_module_48_res), 
        .A2(n_xor_module_72_res), .ZN(n_majority3_module_47__or_module_1_res)
         );
  OR2_X1 u_majority3_module_47__or_module_2_U1 ( .A1(
        n_majority3_module_47__and_module_1_res), .A2(n_xor_module_60_res), 
        .ZN(n_majority3_module_47__or_module_2_res) );
  AND2_X1 u_majority3_module_47__and_module_2_U1 ( .A1(
        n_majority3_module_47__or_module_1_res), .A2(
        n_majority3_module_47__or_module_2_res), .ZN(n_majority3_module_47_res) );
  DFF_X1 u_reg_module_59__cini_mul_v00_reg ( .D(n_majority3_module_47_res), 
        .CK(clock_2), .Q(n_reg_module_59_res), .QN() );
  DFF_X1 u_reg_module_60__cini_mul_v00_reg ( .D(n_and_module_48_res), .CK(
        clock_2), .Q(n_reg_module_60_res), .QN() );
  XOR2_X1 u_xor_module_73_U1 ( .A(n_reg_module_14_res), .B(n_reg_module_13_res), .Z(n_xor_module_73_res) );
  XOR2_X1 u_xor_module_74_U1 ( .A(n_reg_module_15_res), .B(n_xor_module_73_res), .Z(n_xor_module_74_res) );
  XOR2_X1 u_xor_module_75_U1 ( .A(n_reg_module_16_res), .B(n_xor_module_74_res), .Z(io_o0_s0_d0) );
  XOR2_X1 u_xor_module_76_U1 ( .A(n_reg_module_17_res), .B(n_reg_module_18_res), .Z(n_xor_module_76_res) );
  XOR2_X1 u_xor_module_77_U1 ( .A(n_reg_module_19_res), .B(n_xor_module_76_res), .Z(n_xor_module_77_res) );
  XOR2_X1 u_xor_module_78_U1 ( .A(n_reg_module_20_res), .B(n_xor_module_77_res), .Z(io_o0_s1_d0) );
  XOR2_X1 u_xor_module_79_U1 ( .A(n_reg_module_21_res), .B(n_reg_module_23_res), .Z(n_xor_module_79_res) );
  XOR2_X1 u_xor_module_80_U1 ( .A(n_reg_module_22_res), .B(n_xor_module_79_res), .Z(n_xor_module_80_res) );
  XOR2_X1 u_xor_module_81_U1 ( .A(n_reg_module_24_res), .B(n_xor_module_80_res), .Z(io_o0_s2_d0) );
  XOR2_X1 u_xor_module_82_U1 ( .A(n_reg_module_25_res), .B(n_reg_module_28_res), .Z(n_xor_module_82_res) );
  XOR2_X1 u_xor_module_83_U1 ( .A(n_reg_module_26_res), .B(n_xor_module_82_res), .Z(n_xor_module_83_res) );
  XOR2_X1 u_xor_module_84_U1 ( .A(n_reg_module_27_res), .B(n_xor_module_83_res), .Z(io_o0_s3_d0) );
  XOR2_X1 u_xor_module_85_U1 ( .A(n_reg_module_30_res), .B(n_reg_module_29_res), .Z(n_xor_module_85_res) );
  XOR2_X1 u_xor_module_86_U1 ( .A(n_reg_module_31_res), .B(n_xor_module_85_res), .Z(n_xor_module_86_res) );
  XOR2_X1 u_xor_module_87_U1 ( .A(n_reg_module_32_res), .B(n_xor_module_86_res), .Z(io_o0_s0_d1) );
  XOR2_X1 u_xor_module_88_U1 ( .A(n_reg_module_33_res), .B(n_reg_module_34_res), .Z(n_xor_module_88_res) );
  XOR2_X1 u_xor_module_89_U1 ( .A(n_reg_module_35_res), .B(n_xor_module_88_res), .Z(n_xor_module_89_res) );
  XOR2_X1 u_xor_module_90_U1 ( .A(n_reg_module_36_res), .B(n_xor_module_89_res), .Z(io_o0_s1_d1) );
  XOR2_X1 u_xor_module_91_U1 ( .A(n_reg_module_37_res), .B(n_reg_module_39_res), .Z(n_xor_module_91_res) );
  XOR2_X1 u_xor_module_92_U1 ( .A(n_reg_module_38_res), .B(n_xor_module_91_res), .Z(n_xor_module_92_res) );
  XOR2_X1 u_xor_module_93_U1 ( .A(n_reg_module_40_res), .B(n_xor_module_92_res), .Z(io_o0_s2_d1) );
  XOR2_X1 u_xor_module_94_U1 ( .A(n_reg_module_41_res), .B(n_reg_module_44_res), .Z(n_xor_module_94_res) );
  XOR2_X1 u_xor_module_95_U1 ( .A(n_reg_module_42_res), .B(n_xor_module_94_res), .Z(n_xor_module_95_res) );
  XOR2_X1 u_xor_module_96_U1 ( .A(n_reg_module_43_res), .B(n_xor_module_95_res), .Z(io_o0_s3_d1) );
  XOR2_X1 u_xor_module_97_U1 ( .A(n_reg_module_46_res), .B(n_reg_module_45_res), .Z(n_xor_module_97_res) );
  XOR2_X1 u_xor_module_98_U1 ( .A(n_reg_module_47_res), .B(n_xor_module_97_res), .Z(n_xor_module_98_res) );
  XOR2_X1 u_xor_module_99_U1 ( .A(n_reg_module_48_res), .B(n_xor_module_98_res), .Z(io_o0_s0_d2) );
  XOR2_X1 u_xor_module_100_U1 ( .A(n_reg_module_49_res), .B(
        n_reg_module_50_res), .Z(n_xor_module_100_res) );
  XOR2_X1 u_xor_module_101_U1 ( .A(n_reg_module_51_res), .B(
        n_xor_module_100_res), .Z(n_xor_module_101_res) );
  XOR2_X1 u_xor_module_102_U1 ( .A(n_reg_module_52_res), .B(
        n_xor_module_101_res), .Z(io_o0_s1_d2) );
  XOR2_X1 u_xor_module_103_U1 ( .A(n_reg_module_53_res), .B(
        n_reg_module_55_res), .Z(n_xor_module_103_res) );
  XOR2_X1 u_xor_module_104_U1 ( .A(n_reg_module_54_res), .B(
        n_xor_module_103_res), .Z(n_xor_module_104_res) );
  XOR2_X1 u_xor_module_105_U1 ( .A(n_reg_module_56_res), .B(
        n_xor_module_104_res), .Z(io_o0_s2_d2) );
  XOR2_X1 u_xor_module_106_U1 ( .A(n_reg_module_57_res), .B(
        n_reg_module_60_res), .Z(n_xor_module_106_res) );
  XOR2_X1 u_xor_module_107_U1 ( .A(n_reg_module_58_res), .B(
        n_xor_module_106_res), .Z(n_xor_module_107_res) );
  XOR2_X1 u_xor_module_108_U1 ( .A(n_reg_module_59_res), .B(
        n_xor_module_107_res), .Z(io_o0_s3_d2) );
endmodule

