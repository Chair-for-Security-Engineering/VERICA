
module ICINI4 ( port_a_0, port_a_1, port_a_2, port_a_3, port_b_0, port_b_1, 
        port_b_2, port_b_3, port_c_0, port_c_1, port_c_2, port_c_3, 
        port_rand_ref, port_rand_mul_0, port_rand_mul_1, port_rand_mul_2, 
        port_rand_mul_3, port_rand_mul_4, port_rand_mul_5, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_a_2;
  input [2:0] port_a_3;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  input [2:0] port_b_2;
  input [2:0] port_b_3;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  output [2:0] port_c_2;
  output [2:0] port_c_3;
  input [5:0] port_rand_ref;
  input [0:0] port_rand_mul_0;
  input [0:0] port_rand_mul_1;
  input [0:0] port_rand_mul_2;
  input [0:0] port_rand_mul_3;
  input [0:0] port_rand_mul_4;
  input [0:0] port_rand_mul_5;
  input clk, reset;
  wire   simpleXor_72_port_a0, simpleXor_72_port_z, simpleXor_73_port_a0,
         simpleXor_73_port_z, simpleXor_74_port_a0, simpleXor_74_port_z,
         simpleXor_75_port_a0, simpleXor_75_port_z, simpleXor_76_port_a0,
         simpleXor_76_port_z, simpleXor_77_port_a0, simpleXor_77_port_z,
         simpleXor_78_port_a0, simpleXor_78_port_z, simpleXor_79_port_a0,
         simpleXor_79_port_z, simpleXor_80_port_a0, simpleXor_80_port_z,
         simpleXor_81_port_a0, simpleXor_81_port_z, simpleXor_82_port_a0,
         simpleXor_82_port_z, simpleXor_83_port_a0, simpleXor_83_port_z,
         simpleXor_84_port_a0, simpleXor_84_port_z, simpleXor_85_port_a0,
         simpleXor_85_port_z, simpleXor_86_port_a0, simpleXor_86_port_z,
         simpleXor_87_port_a0, simpleXor_87_port_z, simpleXor_88_port_a0,
         simpleXor_88_port_z, simpleXor_89_port_a0, simpleXor_89_port_z,
         simpleXor_90_port_a0, simpleXor_90_port_z, simpleXor_91_port_a0,
         simpleXor_91_port_z, simpleXor_92_port_a0, simpleXor_92_port_z,
         simpleXor_93_port_a0, simpleXor_93_port_z, simpleXor_94_port_a0,
         simpleXor_94_port_z, simpleXor_95_port_a0, simpleXor_95_port_z,
         simpleXor_96_port_a0, simpleXor_96_port_z, simpleXor_97_port_a0,
         simpleXor_97_port_z, simpleXor_98_port_a0, simpleXor_98_port_z,
         simpleXor_99_port_a0, simpleXor_99_port_z, simpleXor_100_port_a0,
         simpleXor_100_port_z, simpleXor_101_port_a0, simpleXor_101_port_z,
         simpleXor_102_port_a0, simpleXor_102_port_z, simpleXor_103_port_a0,
         simpleXor_103_port_z, simpleXor_104_port_a0, simpleXor_104_port_z,
         simpleXor_105_port_a0, simpleXor_105_port_z, simpleXor_106_port_a0,
         simpleXor_106_port_z, simpleXor_107_port_a0, simpleXor_107_port_z, N0,
         N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, ref_1_n8, ref_1_n7, ref_1_n6, ref_1_n5, ref_1_n4,
         ref_1_n3, ref_1_n2, ref_1_n1, ref_1_maj_95_port_o,
         ref_1_maj_94_port_o, ref_1_maj_93_port_o, ref_1_maj_92_port_o,
         ref_1_maj_91_port_o, ref_1_maj_90_port_o, ref_1_maj_89_port_o,
         ref_1_maj_88_port_o, ref_1_maj_87_port_o, ref_1_maj_86_port_o,
         ref_1_maj_85_port_o, ref_1_maj_84_port_o, ref_1_maj_83_port_o,
         ref_1_maj_82_port_o, ref_1_maj_81_port_o, ref_1_maj_80_port_o,
         ref_1_maj_79_port_o, ref_1_maj_78_port_o, ref_1_maj_77_port_o,
         ref_1_maj_76_port_o, ref_1_maj_75_port_o, ref_1_maj_74_port_o,
         ref_1_maj_73_port_o, ref_1_maj_72_port_o, ref_1_maj_71_port_o,
         ref_1_maj_70_port_o, ref_1_maj_69_port_o, ref_1_maj_68_port_o,
         ref_1_maj_67_port_o, ref_1_maj_66_port_o, ref_1_maj_65_port_o,
         ref_1_maj_64_port_o, ref_1_maj_63_port_o, ref_1_maj_62_port_o,
         ref_1_maj_61_port_o, ref_1_maj_60_port_o, ref_1_refreshed_3_0_,
         ref_1_refreshed_3_1_, ref_1_refreshed_3_2_, ref_1_maj_59_port_o,
         ref_1_maj_58_port_o, ref_1_maj_57_port_o, ref_1_maj_56_port_o,
         ref_1_refreshed_2_0_, ref_1_refreshed_2_1_, ref_1_refreshed_2_2_,
         ref_1_maj_55_port_o, ref_1_maj_54_port_o, ref_1_maj_53_port_o,
         ref_1_maj_52_port_o, ref_1_refreshed_1_0_, ref_1_refreshed_1_1_,
         ref_1_refreshed_1_2_, ref_1_maj_51_port_o, ref_1_maj_50_port_o,
         ref_1_maj_49_port_o, ref_1_maj_48_port_o, ref_1_refreshed_0_0_,
         ref_1_refreshed_0_1_, ref_1_refreshed_0_2_,
         ref_1_simpleXor_106_port_z, ref_1_simpleXor_105_port_z,
         ref_1_simpleXor_103_port_z, ref_1_simpleXor_102_port_z,
         ref_1_simpleXor_100_port_z, ref_1_simpleXor_99_port_z,
         ref_1_simpleXor_97_port_z, ref_1_simpleXor_96_port_z,
         ref_1_simpleXor_94_port_z, ref_1_simpleXor_93_port_z,
         ref_1_simpleXor_91_port_z, ref_1_simpleXor_90_port_z,
         ref_1_simpleXor_88_port_z, ref_1_simpleXor_87_port_z,
         ref_1_simpleXor_85_port_z, ref_1_simpleXor_84_port_z,
         ref_1_simpleXor_82_port_z, ref_1_simpleXor_81_port_z,
         ref_1_simpleXor_79_port_z, ref_1_simpleXor_78_port_z,
         ref_1_simpleXor_76_port_z, ref_1_simpleXor_75_port_z,
         ref_1_simpleXor_73_port_z, ref_1_simpleXor_72_port_z, ref_1_maj_48_n3,
         ref_1_maj_48_n2, ref_1_maj_48_n1, ref_1_maj_49_n6, ref_1_maj_49_n5,
         ref_1_maj_49_n4, ref_1_maj_50_n6, ref_1_maj_50_n5, ref_1_maj_50_n4,
         ref_1_maj_51_n6, ref_1_maj_51_n5, ref_1_maj_51_n4, ref_1_maj_52_n6,
         ref_1_maj_52_n5, ref_1_maj_52_n4, ref_1_maj_53_n6, ref_1_maj_53_n5,
         ref_1_maj_53_n4, ref_1_maj_54_n6, ref_1_maj_54_n5, ref_1_maj_54_n4,
         ref_1_maj_55_n6, ref_1_maj_55_n5, ref_1_maj_55_n4, ref_1_maj_56_n6,
         ref_1_maj_56_n5, ref_1_maj_56_n4, ref_1_maj_57_n6, ref_1_maj_57_n5,
         ref_1_maj_57_n4, ref_1_maj_58_n6, ref_1_maj_58_n5, ref_1_maj_58_n4,
         ref_1_maj_59_n6, ref_1_maj_59_n5, ref_1_maj_59_n4, ref_1_maj_60_n6,
         ref_1_maj_60_n5, ref_1_maj_60_n4, ref_1_maj_61_n6, ref_1_maj_61_n5,
         ref_1_maj_61_n4, ref_1_maj_62_n6, ref_1_maj_62_n5, ref_1_maj_62_n4,
         ref_1_maj_63_n6, ref_1_maj_63_n5, ref_1_maj_63_n4, ref_1_maj_64_n6,
         ref_1_maj_64_n5, ref_1_maj_64_n4, ref_1_maj_65_n6, ref_1_maj_65_n5,
         ref_1_maj_65_n4, ref_1_maj_66_n6, ref_1_maj_66_n5, ref_1_maj_66_n4,
         ref_1_maj_67_n6, ref_1_maj_67_n5, ref_1_maj_67_n4, ref_1_maj_68_n6,
         ref_1_maj_68_n5, ref_1_maj_68_n4, ref_1_maj_69_n6, ref_1_maj_69_n5,
         ref_1_maj_69_n4, ref_1_maj_70_n6, ref_1_maj_70_n5, ref_1_maj_70_n4,
         ref_1_maj_71_n6, ref_1_maj_71_n5, ref_1_maj_71_n4, ref_1_maj_72_n6,
         ref_1_maj_72_n5, ref_1_maj_72_n4, ref_1_maj_73_n6, ref_1_maj_73_n5,
         ref_1_maj_73_n4, ref_1_maj_74_n6, ref_1_maj_74_n5, ref_1_maj_74_n4,
         ref_1_maj_75_n6, ref_1_maj_75_n5, ref_1_maj_75_n4, ref_1_maj_76_n6,
         ref_1_maj_76_n5, ref_1_maj_76_n4, ref_1_maj_77_n6, ref_1_maj_77_n5,
         ref_1_maj_77_n4, ref_1_maj_78_n6, ref_1_maj_78_n5, ref_1_maj_78_n4,
         ref_1_maj_79_n6, ref_1_maj_79_n5, ref_1_maj_79_n4, ref_1_maj_80_n6,
         ref_1_maj_80_n5, ref_1_maj_80_n4, ref_1_maj_81_n6, ref_1_maj_81_n5,
         ref_1_maj_81_n4, ref_1_maj_82_n6, ref_1_maj_82_n5, ref_1_maj_82_n4,
         ref_1_maj_83_n6, ref_1_maj_83_n5, ref_1_maj_83_n4, ref_1_maj_84_n6,
         ref_1_maj_84_n5, ref_1_maj_84_n4, ref_1_maj_85_n6, ref_1_maj_85_n5,
         ref_1_maj_85_n4, ref_1_maj_86_n6, ref_1_maj_86_n5, ref_1_maj_86_n4,
         ref_1_maj_87_n6, ref_1_maj_87_n5, ref_1_maj_87_n4, ref_1_maj_88_n6,
         ref_1_maj_88_n5, ref_1_maj_88_n4, ref_1_maj_89_n6, ref_1_maj_89_n5,
         ref_1_maj_89_n4, ref_1_maj_90_n6, ref_1_maj_90_n5, ref_1_maj_90_n4,
         ref_1_maj_91_n6, ref_1_maj_91_n5, ref_1_maj_91_n4, ref_1_maj_92_n6,
         ref_1_maj_92_n5, ref_1_maj_92_n4, ref_1_maj_93_n6, ref_1_maj_93_n5,
         ref_1_maj_93_n4, ref_1_maj_94_n6, ref_1_maj_94_n5, ref_1_maj_94_n4,
         ref_1_maj_95_n6, ref_1_maj_95_n5, ref_1_maj_95_n4;
  wire   [2:0] ref_1_port_o_0_0;
  wire   [2:0] ref_1_port_o_0_1;
  wire   [2:0] ref_1_port_o_0_2;
  wire   [2:0] ref_1_port_o_0_3;
  wire   [2:0] ref_1_port_o_1_0;
  wire   [2:0] ref_1_port_o_1_1;
  wire   [2:0] ref_1_port_o_1_2;
  wire   [2:0] ref_1_port_o_1_3;
  wire   [2:0] ref_1_port_o_2_0;
  wire   [2:0] ref_1_port_o_2_1;
  wire   [2:0] ref_1_port_o_2_2;
  wire   [2:0] ref_1_port_o_2_3;
  wire   [2:0] ref_1_port_o_3_0;
  wire   [2:0] ref_1_port_o_3_1;
  wire   [2:0] ref_1_port_o_3_2;
  wire   [2:0] ref_1_port_o_3_3;
  wire   [2:0] temp_0_0;
  wire   [2:0] mult_ab_0_1;
  wire   [2:0] mult_ab_0_2;
  wire   [2:0] mult_ab_0_3;
  wire   [2:0] temp_0_1;
  wire   [2:0] mult_ab_1_0;
  wire   [2:0] mult_ab_1_2;
  wire   [2:0] mult_ab_1_3;
  wire   [2:0] temp_0_2;
  wire   [2:0] mult_ab_2_0;
  wire   [2:0] mult_ab_2_1;
  wire   [2:0] mult_ab_2_3;
  wire   [2:0] temp_0_3;
  wire   [2:0] mult_ab_3_0;
  wire   [2:0] mult_ab_3_1;
  wire   [2:0] mult_ab_3_2;

  DFF_X1 mult_ab_3_2_reg_2_ ( .D(simpleXor_107_port_z), .CK(clk), .Q(
        mult_ab_3_2[2]), .QN() );
  DFF_X1 mult_ab_3_2_reg_1_ ( .D(simpleXor_95_port_z), .CK(clk), .Q(
        mult_ab_3_2[1]), .QN() );
  DFF_X1 mult_ab_3_2_reg_0_ ( .D(simpleXor_83_port_z), .CK(clk), .Q(
        mult_ab_3_2[0]), .QN() );
  DFF_X1 mult_ab_3_3_reg_2_ ( .D(N11), .CK(clk), .Q(temp_0_3[2]), .QN() );
  DFF_X1 mult_ab_3_3_reg_1_ ( .D(N7), .CK(clk), .Q(temp_0_3[1]), .QN() );
  DFF_X1 mult_ab_3_3_reg_0_ ( .D(N3), .CK(clk), .Q(temp_0_3[0]), .QN() );
  DFF_X1 mult_ab_3_0_reg_2_ ( .D(simpleXor_105_port_z), .CK(clk), .Q(
        mult_ab_3_0[2]), .QN() );
  DFF_X1 mult_ab_3_0_reg_1_ ( .D(simpleXor_93_port_z), .CK(clk), .Q(
        mult_ab_3_0[1]), .QN() );
  DFF_X1 mult_ab_3_0_reg_0_ ( .D(simpleXor_81_port_z), .CK(clk), .Q(
        mult_ab_3_0[0]), .QN() );
  DFF_X1 mult_ab_3_1_reg_2_ ( .D(simpleXor_106_port_z), .CK(clk), .Q(
        mult_ab_3_1[2]), .QN() );
  DFF_X1 mult_ab_3_1_reg_1_ ( .D(simpleXor_94_port_z), .CK(clk), .Q(
        mult_ab_3_1[1]), .QN() );
  DFF_X1 mult_ab_3_1_reg_0_ ( .D(simpleXor_82_port_z), .CK(clk), .Q(
        mult_ab_3_1[0]), .QN() );
  DFF_X1 mult_ab_2_2_reg_2_ ( .D(N10), .CK(clk), .Q(temp_0_2[2]), .QN() );
  DFF_X1 mult_ab_2_2_reg_1_ ( .D(N6), .CK(clk), .Q(temp_0_2[1]), .QN() );
  DFF_X1 mult_ab_2_2_reg_0_ ( .D(N2), .CK(clk), .Q(temp_0_2[0]), .QN() );
  DFF_X1 mult_ab_2_3_reg_2_ ( .D(simpleXor_104_port_z), .CK(clk), .Q(
        mult_ab_2_3[2]), .QN() );
  DFF_X1 mult_ab_2_3_reg_1_ ( .D(simpleXor_92_port_z), .CK(clk), .Q(
        mult_ab_2_3[1]), .QN() );
  DFF_X1 mult_ab_2_3_reg_0_ ( .D(simpleXor_80_port_z), .CK(clk), .Q(
        mult_ab_2_3[0]), .QN() );
  DFF_X1 mult_ab_2_0_reg_2_ ( .D(simpleXor_102_port_z), .CK(clk), .Q(
        mult_ab_2_0[2]), .QN() );
  DFF_X1 mult_ab_2_0_reg_1_ ( .D(simpleXor_90_port_z), .CK(clk), .Q(
        mult_ab_2_0[1]), .QN() );
  DFF_X1 mult_ab_2_0_reg_0_ ( .D(simpleXor_78_port_z), .CK(clk), .Q(
        mult_ab_2_0[0]), .QN() );
  DFF_X1 mult_ab_2_1_reg_2_ ( .D(simpleXor_103_port_z), .CK(clk), .Q(
        mult_ab_2_1[2]), .QN() );
  DFF_X1 mult_ab_2_1_reg_1_ ( .D(simpleXor_91_port_z), .CK(clk), .Q(
        mult_ab_2_1[1]), .QN() );
  DFF_X1 mult_ab_2_1_reg_0_ ( .D(simpleXor_79_port_z), .CK(clk), .Q(
        mult_ab_2_1[0]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N8), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N4), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(simpleXor_96_port_z), .CK(clk), .Q(
        mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(simpleXor_84_port_z), .CK(clk), .Q(
        mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(simpleXor_72_port_z), .CK(clk), .Q(
        mult_ab_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_2_reg_2_ ( .D(simpleXor_97_port_z), .CK(clk), .Q(
        mult_ab_0_2[2]), .QN() );
  DFF_X1 mult_ab_0_2_reg_1_ ( .D(simpleXor_85_port_z), .CK(clk), .Q(
        mult_ab_0_2[1]), .QN() );
  DFF_X1 mult_ab_0_2_reg_0_ ( .D(simpleXor_73_port_z), .CK(clk), .Q(
        mult_ab_0_2[0]), .QN() );
  DFF_X1 mult_ab_0_3_reg_2_ ( .D(simpleXor_98_port_z), .CK(clk), .Q(
        mult_ab_0_3[2]), .QN() );
  DFF_X1 mult_ab_0_3_reg_1_ ( .D(simpleXor_86_port_z), .CK(clk), .Q(
        mult_ab_0_3[1]), .QN() );
  DFF_X1 mult_ab_0_3_reg_0_ ( .D(simpleXor_74_port_z), .CK(clk), .Q(
        mult_ab_0_3[0]), .QN() );
  DFF_X1 mult_ab_1_0_reg_2_ ( .D(simpleXor_99_port_z), .CK(clk), .Q(
        mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(simpleXor_87_port_z), .CK(clk), .Q(
        mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(simpleXor_75_port_z), .CK(clk), .Q(
        mult_ab_1_0[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N9), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N5), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_1_2_reg_2_ ( .D(simpleXor_100_port_z), .CK(clk), .Q(
        mult_ab_1_2[2]), .QN() );
  DFF_X1 mult_ab_1_2_reg_1_ ( .D(simpleXor_88_port_z), .CK(clk), .Q(
        mult_ab_1_2[1]), .QN() );
  DFF_X1 mult_ab_1_2_reg_0_ ( .D(simpleXor_76_port_z), .CK(clk), .Q(
        mult_ab_1_2[0]), .QN() );
  DFF_X1 mult_ab_1_3_reg_2_ ( .D(simpleXor_101_port_z), .CK(clk), .Q(
        mult_ab_1_3[2]), .QN() );
  DFF_X1 mult_ab_1_3_reg_1_ ( .D(simpleXor_89_port_z), .CK(clk), .Q(
        mult_ab_1_3[1]), .QN() );
  DFF_X1 mult_ab_1_3_reg_0_ ( .D(simpleXor_77_port_z), .CK(clk), .Q(
        mult_ab_1_3[0]), .QN() );
  AND2_X1 U87 ( .A1(ref_1_port_o_1_3[0]), .A2(port_a_1[0]), .ZN(
        simpleXor_77_port_a0) );
  AND2_X1 U88 ( .A1(ref_1_port_o_1_3[1]), .A2(port_a_1[1]), .ZN(
        simpleXor_89_port_a0) );
  AND2_X1 U89 ( .A1(ref_1_port_o_1_3[2]), .A2(port_a_1[2]), .ZN(
        simpleXor_101_port_a0) );
  AND2_X1 U90 ( .A1(ref_1_port_o_1_2[0]), .A2(port_a_1[0]), .ZN(
        simpleXor_76_port_a0) );
  AND2_X1 U91 ( .A1(ref_1_port_o_1_2[1]), .A2(port_a_1[1]), .ZN(
        simpleXor_88_port_a0) );
  AND2_X1 U92 ( .A1(ref_1_port_o_1_2[2]), .A2(port_a_1[2]), .ZN(
        simpleXor_100_port_a0) );
  AND2_X1 U93 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(
        simpleXor_75_port_a0) );
  AND2_X1 U94 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(
        simpleXor_87_port_a0) );
  AND2_X1 U95 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(
        simpleXor_99_port_a0) );
  AND2_X1 U96 ( .A1(ref_1_port_o_0_3[0]), .A2(port_a_0[0]), .ZN(
        simpleXor_74_port_a0) );
  AND2_X1 U97 ( .A1(ref_1_port_o_0_3[1]), .A2(port_a_0[1]), .ZN(
        simpleXor_86_port_a0) );
  AND2_X1 U98 ( .A1(ref_1_port_o_0_3[2]), .A2(port_a_0[2]), .ZN(
        simpleXor_98_port_a0) );
  AND2_X1 U99 ( .A1(ref_1_port_o_0_2[0]), .A2(port_a_0[0]), .ZN(
        simpleXor_73_port_a0) );
  AND2_X1 U100 ( .A1(ref_1_port_o_0_2[1]), .A2(port_a_0[1]), .ZN(
        simpleXor_85_port_a0) );
  AND2_X1 U101 ( .A1(ref_1_port_o_0_2[2]), .A2(port_a_0[2]), .ZN(
        simpleXor_97_port_a0) );
  AND2_X1 U102 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(
        simpleXor_72_port_a0) );
  AND2_X1 U103 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(
        simpleXor_84_port_a0) );
  AND2_X1 U104 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(
        simpleXor_96_port_a0) );
  AND2_X1 U105 ( .A1(ref_1_port_o_2_1[0]), .A2(port_a_2[0]), .ZN(
        simpleXor_79_port_a0) );
  AND2_X1 U106 ( .A1(ref_1_port_o_2_1[1]), .A2(port_a_2[1]), .ZN(
        simpleXor_91_port_a0) );
  AND2_X1 U107 ( .A1(ref_1_port_o_2_1[2]), .A2(port_a_2[2]), .ZN(
        simpleXor_103_port_a0) );
  AND2_X1 U108 ( .A1(ref_1_port_o_2_0[0]), .A2(port_a_2[0]), .ZN(
        simpleXor_78_port_a0) );
  AND2_X1 U109 ( .A1(ref_1_port_o_2_0[1]), .A2(port_a_2[1]), .ZN(
        simpleXor_90_port_a0) );
  AND2_X1 U110 ( .A1(ref_1_port_o_2_0[2]), .A2(port_a_2[2]), .ZN(
        simpleXor_102_port_a0) );
  AND2_X1 U111 ( .A1(ref_1_port_o_2_3[0]), .A2(port_a_2[0]), .ZN(
        simpleXor_80_port_a0) );
  AND2_X1 U112 ( .A1(ref_1_port_o_2_3[1]), .A2(port_a_2[1]), .ZN(
        simpleXor_92_port_a0) );
  AND2_X1 U113 ( .A1(ref_1_port_o_2_3[2]), .A2(port_a_2[2]), .ZN(
        simpleXor_104_port_a0) );
  AND2_X1 U114 ( .A1(ref_1_port_o_3_1[0]), .A2(port_a_3[0]), .ZN(
        simpleXor_82_port_a0) );
  AND2_X1 U115 ( .A1(ref_1_port_o_3_1[1]), .A2(port_a_3[1]), .ZN(
        simpleXor_94_port_a0) );
  AND2_X1 U116 ( .A1(ref_1_port_o_3_1[2]), .A2(port_a_3[2]), .ZN(
        simpleXor_106_port_a0) );
  AND2_X1 U117 ( .A1(ref_1_port_o_3_0[0]), .A2(port_a_3[0]), .ZN(
        simpleXor_81_port_a0) );
  AND2_X1 U118 ( .A1(ref_1_port_o_3_0[1]), .A2(port_a_3[1]), .ZN(
        simpleXor_93_port_a0) );
  AND2_X1 U119 ( .A1(ref_1_port_o_3_0[2]), .A2(port_a_3[2]), .ZN(
        simpleXor_105_port_a0) );
  AND2_X1 U120 ( .A1(ref_1_port_o_3_2[0]), .A2(port_a_3[0]), .ZN(
        simpleXor_83_port_a0) );
  AND2_X1 U121 ( .A1(ref_1_port_o_3_2[1]), .A2(port_a_3[1]), .ZN(
        simpleXor_95_port_a0) );
  AND2_X1 U122 ( .A1(ref_1_port_o_3_2[2]), .A2(port_a_3[2]), .ZN(
        simpleXor_107_port_a0) );
  AND2_X1 U123 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U124 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N5) );
  AND2_X1 U125 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N9) );
  AND2_X1 U126 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U127 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N4) );
  AND2_X1 U128 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N8) );
  AND2_X1 U129 ( .A1(ref_1_port_o_2_2[0]), .A2(port_a_2[0]), .ZN(N2) );
  AND2_X1 U130 ( .A1(ref_1_port_o_2_2[1]), .A2(port_a_2[1]), .ZN(N6) );
  AND2_X1 U131 ( .A1(ref_1_port_o_2_2[2]), .A2(port_a_2[2]), .ZN(N10) );
  AND2_X1 U132 ( .A1(ref_1_port_o_3_3[0]), .A2(port_a_3[0]), .ZN(N3) );
  AND2_X1 U133 ( .A1(ref_1_port_o_3_3[1]), .A2(port_a_3[1]), .ZN(N7) );
  AND2_X1 U134 ( .A1(ref_1_port_o_3_3[2]), .A2(port_a_3[2]), .ZN(N11) );
  XOR2_X1 U135 ( .A(n5), .B(n6), .Z(port_c_3[0]) );
  XNOR2_X1 U136 ( .A(temp_0_3[0]), .B(mult_ab_3_2[0]), .ZN(n5) );
  XNOR2_X1 U137 ( .A(mult_ab_3_1[0]), .B(mult_ab_3_0[0]), .ZN(n6) );
  XOR2_X1 U138 ( .A(n3), .B(n4), .Z(port_c_3[1]) );
  XNOR2_X1 U139 ( .A(temp_0_3[1]), .B(mult_ab_3_2[1]), .ZN(n3) );
  XNOR2_X1 U140 ( .A(mult_ab_3_1[1]), .B(mult_ab_3_0[1]), .ZN(n4) );
  XOR2_X1 U141 ( .A(n1), .B(n2), .Z(port_c_3[2]) );
  XNOR2_X1 U142 ( .A(temp_0_3[2]), .B(mult_ab_3_2[2]), .ZN(n1) );
  XNOR2_X1 U143 ( .A(mult_ab_3_1[2]), .B(mult_ab_3_0[2]), .ZN(n2) );
  XOR2_X1 U144 ( .A(n11), .B(n12), .Z(port_c_2[0]) );
  XNOR2_X1 U145 ( .A(temp_0_2[0]), .B(mult_ab_2_3[0]), .ZN(n11) );
  XNOR2_X1 U146 ( .A(mult_ab_2_1[0]), .B(mult_ab_2_0[0]), .ZN(n12) );
  XOR2_X1 U147 ( .A(n9), .B(n10), .Z(port_c_2[1]) );
  XNOR2_X1 U148 ( .A(temp_0_2[1]), .B(mult_ab_2_3[1]), .ZN(n9) );
  XNOR2_X1 U149 ( .A(mult_ab_2_1[1]), .B(mult_ab_2_0[1]), .ZN(n10) );
  XOR2_X1 U150 ( .A(n7), .B(n8), .Z(port_c_2[2]) );
  XNOR2_X1 U151 ( .A(temp_0_2[2]), .B(mult_ab_2_3[2]), .ZN(n7) );
  XNOR2_X1 U152 ( .A(mult_ab_2_1[2]), .B(mult_ab_2_0[2]), .ZN(n8) );
  XOR2_X1 U153 ( .A(n17), .B(n18), .Z(port_c_1[0]) );
  XNOR2_X1 U154 ( .A(temp_0_1[0]), .B(mult_ab_1_3[0]), .ZN(n17) );
  XNOR2_X1 U155 ( .A(mult_ab_1_2[0]), .B(mult_ab_1_0[0]), .ZN(n18) );
  XOR2_X1 U156 ( .A(n15), .B(n16), .Z(port_c_1[1]) );
  XNOR2_X1 U157 ( .A(temp_0_1[1]), .B(mult_ab_1_3[1]), .ZN(n15) );
  XNOR2_X1 U158 ( .A(mult_ab_1_2[1]), .B(mult_ab_1_0[1]), .ZN(n16) );
  XOR2_X1 U159 ( .A(n13), .B(n14), .Z(port_c_1[2]) );
  XNOR2_X1 U160 ( .A(temp_0_1[2]), .B(mult_ab_1_3[2]), .ZN(n13) );
  XNOR2_X1 U161 ( .A(mult_ab_1_2[2]), .B(mult_ab_1_0[2]), .ZN(n14) );
  XOR2_X1 U162 ( .A(n23), .B(n24), .Z(port_c_0[0]) );
  XNOR2_X1 U163 ( .A(temp_0_0[0]), .B(mult_ab_0_3[0]), .ZN(n23) );
  XNOR2_X1 U164 ( .A(mult_ab_0_2[0]), .B(mult_ab_0_1[0]), .ZN(n24) );
  XOR2_X1 U165 ( .A(n21), .B(n22), .Z(port_c_0[1]) );
  XNOR2_X1 U166 ( .A(temp_0_0[1]), .B(mult_ab_0_3[1]), .ZN(n21) );
  XNOR2_X1 U167 ( .A(mult_ab_0_2[1]), .B(mult_ab_0_1[1]), .ZN(n22) );
  XOR2_X1 U168 ( .A(n19), .B(n20), .Z(port_c_0[2]) );
  XNOR2_X1 U169 ( .A(temp_0_0[2]), .B(mult_ab_0_3[2]), .ZN(n19) );
  XNOR2_X1 U170 ( .A(mult_ab_0_2[2]), .B(mult_ab_0_1[2]), .ZN(n20) );
  BUF_X1 ref_1_U10 ( .A(ref_1_refreshed_0_0_), .Z(ref_1_n7) );
  BUF_X1 ref_1_U9 ( .A(ref_1_refreshed_1_0_), .Z(ref_1_n5) );
  BUF_X1 ref_1_U8 ( .A(ref_1_refreshed_2_0_), .Z(ref_1_n3) );
  BUF_X1 ref_1_U7 ( .A(ref_1_refreshed_3_0_), .Z(ref_1_n1) );
  BUF_X1 ref_1_U6 ( .A(ref_1_refreshed_0_1_), .Z(ref_1_n8) );
  BUF_X1 ref_1_U5 ( .A(ref_1_refreshed_1_1_), .Z(ref_1_n6) );
  BUF_X1 ref_1_U4 ( .A(ref_1_refreshed_2_1_), .Z(ref_1_n4) );
  BUF_X1 ref_1_U3 ( .A(ref_1_refreshed_3_1_), .Z(ref_1_n2) );
  DFF_X1 ref_1_reg_out_3_3_reg_0_ ( .D(ref_1_maj_63_port_o), .CK(clk), .Q(
        ref_1_port_o_3_3[0]), .QN() );
  DFF_X1 ref_1_reg_out_3_3_reg_1_ ( .D(ref_1_maj_79_port_o), .CK(clk), .Q(
        ref_1_port_o_3_3[1]), .QN() );
  DFF_X1 ref_1_reg_out_3_3_reg_2_ ( .D(ref_1_maj_95_port_o), .CK(clk), .Q(
        ref_1_port_o_3_3[2]), .QN() );
  DFF_X1 ref_1_reg_out_3_2_reg_0_ ( .D(ref_1_maj_62_port_o), .CK(clk), .Q(
        ref_1_port_o_3_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_3_2_reg_1_ ( .D(ref_1_maj_78_port_o), .CK(clk), .Q(
        ref_1_port_o_3_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_3_2_reg_2_ ( .D(ref_1_maj_94_port_o), .CK(clk), .Q(
        ref_1_port_o_3_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_3_1_reg_0_ ( .D(ref_1_maj_61_port_o), .CK(clk), .Q(
        ref_1_port_o_3_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_3_1_reg_1_ ( .D(ref_1_maj_77_port_o), .CK(clk), .Q(
        ref_1_port_o_3_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_3_1_reg_2_ ( .D(ref_1_maj_93_port_o), .CK(clk), .Q(
        ref_1_port_o_3_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_3_0_reg_0_ ( .D(ref_1_maj_60_port_o), .CK(clk), .Q(
        ref_1_port_o_3_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_3_0_reg_1_ ( .D(ref_1_maj_76_port_o), .CK(clk), .Q(
        ref_1_port_o_3_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_3_0_reg_2_ ( .D(ref_1_maj_92_port_o), .CK(clk), .Q(
        ref_1_port_o_3_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_3_reg_0_ ( .D(ref_1_maj_59_port_o), .CK(clk), .Q(
        ref_1_port_o_2_3[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_3_reg_1_ ( .D(ref_1_maj_75_port_o), .CK(clk), .Q(
        ref_1_port_o_2_3[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_3_reg_2_ ( .D(ref_1_maj_91_port_o), .CK(clk), .Q(
        ref_1_port_o_2_3[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_0_ ( .D(ref_1_maj_58_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_1_ ( .D(ref_1_maj_74_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_2_ ( .D(ref_1_maj_90_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_0_ ( .D(ref_1_maj_57_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_1_ ( .D(ref_1_maj_73_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_2_ ( .D(ref_1_maj_89_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_0_ ( .D(ref_1_maj_56_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_1_ ( .D(ref_1_maj_72_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_2_ ( .D(ref_1_maj_88_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_3_reg_0_ ( .D(ref_1_maj_55_port_o), .CK(clk), .Q(
        ref_1_port_o_1_3[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_3_reg_1_ ( .D(ref_1_maj_71_port_o), .CK(clk), .Q(
        ref_1_port_o_1_3[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_3_reg_2_ ( .D(ref_1_maj_87_port_o), .CK(clk), .Q(
        ref_1_port_o_1_3[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_0_ ( .D(ref_1_maj_54_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_1_ ( .D(ref_1_maj_70_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_2_ ( .D(ref_1_maj_86_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_0_ ( .D(ref_1_maj_53_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_1_ ( .D(ref_1_maj_69_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_2_ ( .D(ref_1_maj_85_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_0_ ( .D(ref_1_maj_52_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_1_ ( .D(ref_1_maj_68_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_2_ ( .D(ref_1_maj_84_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_3_reg_0_ ( .D(ref_1_maj_51_port_o), .CK(clk), .Q(
        ref_1_port_o_0_3[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_3_reg_1_ ( .D(ref_1_maj_67_port_o), .CK(clk), .Q(
        ref_1_port_o_0_3[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_3_reg_2_ ( .D(ref_1_maj_83_port_o), .CK(clk), .Q(
        ref_1_port_o_0_3[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_0_ ( .D(ref_1_maj_50_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_1_ ( .D(ref_1_maj_66_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_2_ ( .D(ref_1_maj_82_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_0_ ( .D(ref_1_maj_49_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_1_ ( .D(ref_1_maj_65_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_2_ ( .D(ref_1_maj_81_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_0_ ( .D(ref_1_maj_48_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_1_ ( .D(ref_1_maj_64_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_2_ ( .D(ref_1_maj_80_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[2]), .QN() );
  XOR2_X1 ref_1_simpleXor_72_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_simpleXor_72_port_z) );
  XOR2_X1 ref_1_simpleXor_73_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_72_port_z), .Z(ref_1_simpleXor_73_port_z) );
  XOR2_X1 ref_1_simpleXor_74_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_73_port_z), .Z(ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_75_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_simpleXor_75_port_z) );
  XOR2_X1 ref_1_simpleXor_76_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_75_port_z), .Z(ref_1_simpleXor_76_port_z) );
  XOR2_X1 ref_1_simpleXor_77_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_76_port_z), .Z(ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_78_U1 ( .A(port_rand_ref[1]), .B(port_b_2[0]), .Z(
        ref_1_simpleXor_78_port_z) );
  XOR2_X1 ref_1_simpleXor_79_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_78_port_z), .Z(ref_1_simpleXor_79_port_z) );
  XOR2_X1 ref_1_simpleXor_80_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_79_port_z), .Z(ref_1_refreshed_2_0_) );
  XOR2_X1 ref_1_simpleXor_81_U1 ( .A(port_rand_ref[2]), .B(port_b_3[0]), .Z(
        ref_1_simpleXor_81_port_z) );
  XOR2_X1 ref_1_simpleXor_82_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_81_port_z), .Z(ref_1_simpleXor_82_port_z) );
  XOR2_X1 ref_1_simpleXor_83_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_82_port_z), .Z(ref_1_refreshed_3_0_) );
  XOR2_X1 ref_1_simpleXor_84_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_simpleXor_84_port_z) );
  XOR2_X1 ref_1_simpleXor_85_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_84_port_z), .Z(ref_1_simpleXor_85_port_z) );
  XOR2_X1 ref_1_simpleXor_86_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_85_port_z), .Z(ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_87_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_simpleXor_87_port_z) );
  XOR2_X1 ref_1_simpleXor_88_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_87_port_z), .Z(ref_1_simpleXor_88_port_z) );
  XOR2_X1 ref_1_simpleXor_89_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_88_port_z), .Z(ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_90_U1 ( .A(port_rand_ref[1]), .B(port_b_2[1]), .Z(
        ref_1_simpleXor_90_port_z) );
  XOR2_X1 ref_1_simpleXor_91_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_90_port_z), .Z(ref_1_simpleXor_91_port_z) );
  XOR2_X1 ref_1_simpleXor_92_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_91_port_z), .Z(ref_1_refreshed_2_1_) );
  XOR2_X1 ref_1_simpleXor_93_U1 ( .A(port_rand_ref[2]), .B(port_b_3[1]), .Z(
        ref_1_simpleXor_93_port_z) );
  XOR2_X1 ref_1_simpleXor_94_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_93_port_z), .Z(ref_1_simpleXor_94_port_z) );
  XOR2_X1 ref_1_simpleXor_95_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_94_port_z), .Z(ref_1_refreshed_3_1_) );
  XOR2_X1 ref_1_simpleXor_96_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_simpleXor_96_port_z) );
  XOR2_X1 ref_1_simpleXor_97_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_96_port_z), .Z(ref_1_simpleXor_97_port_z) );
  XOR2_X2 ref_1_simpleXor_98_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_97_port_z), .Z(ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_99_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_simpleXor_99_port_z) );
  XOR2_X1 ref_1_simpleXor_100_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_99_port_z), .Z(ref_1_simpleXor_100_port_z) );
  XOR2_X2 ref_1_simpleXor_101_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_100_port_z), .Z(ref_1_refreshed_1_2_) );
  XOR2_X1 ref_1_simpleXor_102_U1 ( .A(port_rand_ref[1]), .B(port_b_2[2]), .Z(
        ref_1_simpleXor_102_port_z) );
  XOR2_X1 ref_1_simpleXor_103_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_102_port_z), .Z(ref_1_simpleXor_103_port_z) );
  XOR2_X2 ref_1_simpleXor_104_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_103_port_z), .Z(ref_1_refreshed_2_2_) );
  XOR2_X1 ref_1_simpleXor_105_U1 ( .A(port_rand_ref[2]), .B(port_b_3[2]), .Z(
        ref_1_simpleXor_105_port_z) );
  XOR2_X1 ref_1_simpleXor_106_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_105_port_z), .Z(ref_1_simpleXor_106_port_z) );
  XOR2_X2 ref_1_simpleXor_107_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_106_port_z), .Z(ref_1_refreshed_3_2_) );
  OR2_X1 ref_1_maj_48_U4 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_48_n3) );
  NAND2_X1 ref_1_maj_48_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_48_n3), 
        .ZN(ref_1_maj_48_n2) );
  NAND2_X1 ref_1_maj_48_U2 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_48_n1) );
  NAND2_X1 ref_1_maj_48_U1 ( .A1(ref_1_maj_48_n1), .A2(ref_1_maj_48_n2), .ZN(
        ref_1_maj_48_port_o) );
  OR2_X1 ref_1_maj_49_U4 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_49_n4)
         );
  NAND2_X1 ref_1_maj_49_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_49_n4), 
        .ZN(ref_1_maj_49_n5) );
  NAND2_X1 ref_1_maj_49_U2 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_49_n6) );
  NAND2_X1 ref_1_maj_49_U1 ( .A1(ref_1_maj_49_n6), .A2(ref_1_maj_49_n5), .ZN(
        ref_1_maj_49_port_o) );
  OR2_X1 ref_1_maj_50_U4 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_50_n4)
         );
  NAND2_X1 ref_1_maj_50_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_50_n4), 
        .ZN(ref_1_maj_50_n5) );
  NAND2_X1 ref_1_maj_50_U2 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_50_n6) );
  NAND2_X1 ref_1_maj_50_U1 ( .A1(ref_1_maj_50_n6), .A2(ref_1_maj_50_n5), .ZN(
        ref_1_maj_50_port_o) );
  OR2_X1 ref_1_maj_51_U4 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_51_n4) );
  NAND2_X1 ref_1_maj_51_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_51_n4), 
        .ZN(ref_1_maj_51_n5) );
  NAND2_X1 ref_1_maj_51_U2 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_51_n6) );
  NAND2_X1 ref_1_maj_51_U1 ( .A1(ref_1_maj_51_n6), .A2(ref_1_maj_51_n5), .ZN(
        ref_1_maj_51_port_o) );
  OR2_X1 ref_1_maj_52_U4 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_52_n4) );
  NAND2_X1 ref_1_maj_52_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_52_n4), 
        .ZN(ref_1_maj_52_n5) );
  NAND2_X1 ref_1_maj_52_U2 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_52_n6) );
  NAND2_X1 ref_1_maj_52_U1 ( .A1(ref_1_maj_52_n6), .A2(ref_1_maj_52_n5), .ZN(
        ref_1_maj_52_port_o) );
  OR2_X1 ref_1_maj_53_U4 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_53_n4) );
  NAND2_X1 ref_1_maj_53_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_53_n4), 
        .ZN(ref_1_maj_53_n5) );
  NAND2_X1 ref_1_maj_53_U2 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_53_n6) );
  NAND2_X1 ref_1_maj_53_U1 ( .A1(ref_1_maj_53_n6), .A2(ref_1_maj_53_n5), .ZN(
        ref_1_maj_53_port_o) );
  OR2_X1 ref_1_maj_54_U4 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_54_n4) );
  NAND2_X1 ref_1_maj_54_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_54_n4), 
        .ZN(ref_1_maj_54_n5) );
  NAND2_X1 ref_1_maj_54_U2 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_54_n6) );
  NAND2_X1 ref_1_maj_54_U1 ( .A1(ref_1_maj_54_n6), .A2(ref_1_maj_54_n5), .ZN(
        ref_1_maj_54_port_o) );
  OR2_X1 ref_1_maj_55_U4 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_55_n4) );
  NAND2_X1 ref_1_maj_55_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_55_n4), 
        .ZN(ref_1_maj_55_n5) );
  NAND2_X1 ref_1_maj_55_U2 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_55_n6) );
  NAND2_X1 ref_1_maj_55_U1 ( .A1(ref_1_maj_55_n6), .A2(ref_1_maj_55_n5), .ZN(
        ref_1_maj_55_port_o) );
  OR2_X1 ref_1_maj_56_U4 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_56_n4) );
  NAND2_X1 ref_1_maj_56_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_56_n4), 
        .ZN(ref_1_maj_56_n5) );
  NAND2_X1 ref_1_maj_56_U2 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_56_n6) );
  NAND2_X1 ref_1_maj_56_U1 ( .A1(ref_1_maj_56_n6), .A2(ref_1_maj_56_n5), .ZN(
        ref_1_maj_56_port_o) );
  OR2_X1 ref_1_maj_57_U4 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_57_n4) );
  NAND2_X1 ref_1_maj_57_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_57_n4), 
        .ZN(ref_1_maj_57_n5) );
  NAND2_X1 ref_1_maj_57_U2 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_57_n6) );
  NAND2_X1 ref_1_maj_57_U1 ( .A1(ref_1_maj_57_n6), .A2(ref_1_maj_57_n5), .ZN(
        ref_1_maj_57_port_o) );
  OR2_X1 ref_1_maj_58_U4 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_58_n4) );
  NAND2_X1 ref_1_maj_58_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_58_n4), 
        .ZN(ref_1_maj_58_n5) );
  NAND2_X1 ref_1_maj_58_U2 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_58_n6) );
  NAND2_X1 ref_1_maj_58_U1 ( .A1(ref_1_maj_58_n6), .A2(ref_1_maj_58_n5), .ZN(
        ref_1_maj_58_port_o) );
  OR2_X1 ref_1_maj_59_U4 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_59_n4) );
  NAND2_X1 ref_1_maj_59_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_59_n4), 
        .ZN(ref_1_maj_59_n5) );
  NAND2_X1 ref_1_maj_59_U2 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_59_n6) );
  NAND2_X1 ref_1_maj_59_U1 ( .A1(ref_1_maj_59_n6), .A2(ref_1_maj_59_n5), .ZN(
        ref_1_maj_59_port_o) );
  OR2_X1 ref_1_maj_60_U4 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_60_n4) );
  NAND2_X1 ref_1_maj_60_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_60_n4), 
        .ZN(ref_1_maj_60_n5) );
  NAND2_X1 ref_1_maj_60_U2 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_60_n6) );
  NAND2_X1 ref_1_maj_60_U1 ( .A1(ref_1_maj_60_n6), .A2(ref_1_maj_60_n5), .ZN(
        ref_1_maj_60_port_o) );
  OR2_X1 ref_1_maj_61_U4 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_61_n4) );
  NAND2_X1 ref_1_maj_61_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_61_n4), 
        .ZN(ref_1_maj_61_n5) );
  NAND2_X1 ref_1_maj_61_U2 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_61_n6) );
  NAND2_X1 ref_1_maj_61_U1 ( .A1(ref_1_maj_61_n6), .A2(ref_1_maj_61_n5), .ZN(
        ref_1_maj_61_port_o) );
  OR2_X1 ref_1_maj_62_U4 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_62_n4) );
  NAND2_X1 ref_1_maj_62_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_62_n4), 
        .ZN(ref_1_maj_62_n5) );
  NAND2_X1 ref_1_maj_62_U2 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_62_n6) );
  NAND2_X1 ref_1_maj_62_U1 ( .A1(ref_1_maj_62_n6), .A2(ref_1_maj_62_n5), .ZN(
        ref_1_maj_62_port_o) );
  OR2_X1 ref_1_maj_63_U4 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_63_n4) );
  NAND2_X1 ref_1_maj_63_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_63_n4), 
        .ZN(ref_1_maj_63_n5) );
  NAND2_X1 ref_1_maj_63_U2 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_63_n6) );
  NAND2_X1 ref_1_maj_63_U1 ( .A1(ref_1_maj_63_n6), .A2(ref_1_maj_63_n5), .ZN(
        ref_1_maj_63_port_o) );
  OR2_X1 ref_1_maj_64_U4 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_64_n4)
         );
  NAND2_X1 ref_1_maj_64_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_64_n4), 
        .ZN(ref_1_maj_64_n5) );
  NAND2_X1 ref_1_maj_64_U2 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_64_n6) );
  NAND2_X1 ref_1_maj_64_U1 ( .A1(ref_1_maj_64_n6), .A2(ref_1_maj_64_n5), .ZN(
        ref_1_maj_64_port_o) );
  OR2_X1 ref_1_maj_65_U4 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_65_n4)
         );
  NAND2_X1 ref_1_maj_65_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_65_n4), 
        .ZN(ref_1_maj_65_n5) );
  NAND2_X1 ref_1_maj_65_U2 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_65_n6) );
  NAND2_X1 ref_1_maj_65_U1 ( .A1(ref_1_maj_65_n6), .A2(ref_1_maj_65_n5), .ZN(
        ref_1_maj_65_port_o) );
  OR2_X1 ref_1_maj_66_U4 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_66_n4)
         );
  NAND2_X1 ref_1_maj_66_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_66_n4), 
        .ZN(ref_1_maj_66_n5) );
  NAND2_X1 ref_1_maj_66_U2 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_66_n6) );
  NAND2_X1 ref_1_maj_66_U1 ( .A1(ref_1_maj_66_n6), .A2(ref_1_maj_66_n5), .ZN(
        ref_1_maj_66_port_o) );
  OR2_X1 ref_1_maj_67_U4 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_67_n4)
         );
  NAND2_X1 ref_1_maj_67_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_67_n4), 
        .ZN(ref_1_maj_67_n5) );
  NAND2_X1 ref_1_maj_67_U2 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_67_n6) );
  NAND2_X1 ref_1_maj_67_U1 ( .A1(ref_1_maj_67_n6), .A2(ref_1_maj_67_n5), .ZN(
        ref_1_maj_67_port_o) );
  OR2_X1 ref_1_maj_68_U4 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_68_n4)
         );
  NAND2_X1 ref_1_maj_68_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_68_n4), 
        .ZN(ref_1_maj_68_n5) );
  NAND2_X1 ref_1_maj_68_U2 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_68_n6) );
  NAND2_X1 ref_1_maj_68_U1 ( .A1(ref_1_maj_68_n6), .A2(ref_1_maj_68_n5), .ZN(
        ref_1_maj_68_port_o) );
  OR2_X1 ref_1_maj_69_U4 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_69_n4)
         );
  NAND2_X1 ref_1_maj_69_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_69_n4), 
        .ZN(ref_1_maj_69_n5) );
  NAND2_X1 ref_1_maj_69_U2 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_69_n6) );
  NAND2_X1 ref_1_maj_69_U1 ( .A1(ref_1_maj_69_n6), .A2(ref_1_maj_69_n5), .ZN(
        ref_1_maj_69_port_o) );
  OR2_X1 ref_1_maj_70_U4 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_70_n4) );
  NAND2_X1 ref_1_maj_70_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_70_n4), 
        .ZN(ref_1_maj_70_n5) );
  NAND2_X1 ref_1_maj_70_U2 ( .A1(ref_1_n6), .A2(ref_1_refreshed_1_0_), .ZN(
        ref_1_maj_70_n6) );
  NAND2_X1 ref_1_maj_70_U1 ( .A1(ref_1_maj_70_n6), .A2(ref_1_maj_70_n5), .ZN(
        ref_1_maj_70_port_o) );
  OR2_X1 ref_1_maj_71_U4 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_71_n4)
         );
  NAND2_X1 ref_1_maj_71_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_71_n4), 
        .ZN(ref_1_maj_71_n5) );
  NAND2_X1 ref_1_maj_71_U2 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_71_n6) );
  NAND2_X1 ref_1_maj_71_U1 ( .A1(ref_1_maj_71_n6), .A2(ref_1_maj_71_n5), .ZN(
        ref_1_maj_71_port_o) );
  OR2_X1 ref_1_maj_72_U4 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_72_n4)
         );
  NAND2_X1 ref_1_maj_72_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_72_n4), 
        .ZN(ref_1_maj_72_n5) );
  NAND2_X1 ref_1_maj_72_U2 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_72_n6) );
  NAND2_X1 ref_1_maj_72_U1 ( .A1(ref_1_maj_72_n6), .A2(ref_1_maj_72_n5), .ZN(
        ref_1_maj_72_port_o) );
  OR2_X1 ref_1_maj_73_U4 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_73_n4)
         );
  NAND2_X1 ref_1_maj_73_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_73_n4), 
        .ZN(ref_1_maj_73_n5) );
  NAND2_X1 ref_1_maj_73_U2 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_73_n6) );
  NAND2_X1 ref_1_maj_73_U1 ( .A1(ref_1_maj_73_n6), .A2(ref_1_maj_73_n5), .ZN(
        ref_1_maj_73_port_o) );
  OR2_X1 ref_1_maj_74_U4 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_74_n4) );
  NAND2_X1 ref_1_maj_74_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_74_n4), 
        .ZN(ref_1_maj_74_n5) );
  NAND2_X1 ref_1_maj_74_U2 ( .A1(ref_1_n4), .A2(ref_1_refreshed_2_0_), .ZN(
        ref_1_maj_74_n6) );
  NAND2_X1 ref_1_maj_74_U1 ( .A1(ref_1_maj_74_n6), .A2(ref_1_maj_74_n5), .ZN(
        ref_1_maj_74_port_o) );
  OR2_X1 ref_1_maj_75_U4 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_75_n4)
         );
  NAND2_X1 ref_1_maj_75_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_75_n4), 
        .ZN(ref_1_maj_75_n5) );
  NAND2_X1 ref_1_maj_75_U2 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_75_n6) );
  NAND2_X1 ref_1_maj_75_U1 ( .A1(ref_1_maj_75_n6), .A2(ref_1_maj_75_n5), .ZN(
        ref_1_maj_75_port_o) );
  OR2_X1 ref_1_maj_76_U4 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_76_n4)
         );
  NAND2_X1 ref_1_maj_76_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_76_n4), 
        .ZN(ref_1_maj_76_n5) );
  NAND2_X1 ref_1_maj_76_U2 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_76_n6) );
  NAND2_X1 ref_1_maj_76_U1 ( .A1(ref_1_maj_76_n6), .A2(ref_1_maj_76_n5), .ZN(
        ref_1_maj_76_port_o) );
  OR2_X1 ref_1_maj_77_U4 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_77_n4)
         );
  NAND2_X1 ref_1_maj_77_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_77_n4), 
        .ZN(ref_1_maj_77_n5) );
  NAND2_X1 ref_1_maj_77_U2 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_77_n6) );
  NAND2_X1 ref_1_maj_77_U1 ( .A1(ref_1_maj_77_n6), .A2(ref_1_maj_77_n5), .ZN(
        ref_1_maj_77_port_o) );
  OR2_X1 ref_1_maj_78_U4 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_78_n4) );
  NAND2_X1 ref_1_maj_78_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_78_n4), 
        .ZN(ref_1_maj_78_n5) );
  NAND2_X1 ref_1_maj_78_U2 ( .A1(ref_1_n2), .A2(ref_1_refreshed_3_0_), .ZN(
        ref_1_maj_78_n6) );
  NAND2_X1 ref_1_maj_78_U1 ( .A1(ref_1_maj_78_n6), .A2(ref_1_maj_78_n5), .ZN(
        ref_1_maj_78_port_o) );
  OR2_X1 ref_1_maj_79_U4 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_79_n4)
         );
  NAND2_X1 ref_1_maj_79_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_79_n4), 
        .ZN(ref_1_maj_79_n5) );
  NAND2_X1 ref_1_maj_79_U2 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_79_n6) );
  NAND2_X1 ref_1_maj_79_U1 ( .A1(ref_1_maj_79_n6), .A2(ref_1_maj_79_n5), .ZN(
        ref_1_maj_79_port_o) );
  OR2_X1 ref_1_maj_80_U4 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_80_n4)
         );
  NAND2_X1 ref_1_maj_80_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_80_n4), 
        .ZN(ref_1_maj_80_n5) );
  NAND2_X1 ref_1_maj_80_U2 ( .A1(ref_1_n8), .A2(ref_1_n7), .ZN(ref_1_maj_80_n6) );
  NAND2_X1 ref_1_maj_80_U1 ( .A1(ref_1_maj_80_n6), .A2(ref_1_maj_80_n5), .ZN(
        ref_1_maj_80_port_o) );
  OR2_X1 ref_1_maj_81_U4 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_81_n4) );
  NAND2_X1 ref_1_maj_81_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_81_n4), 
        .ZN(ref_1_maj_81_n5) );
  NAND2_X1 ref_1_maj_81_U2 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_81_n6) );
  NAND2_X1 ref_1_maj_81_U1 ( .A1(ref_1_maj_81_n6), .A2(ref_1_maj_81_n5), .ZN(
        ref_1_maj_81_port_o) );
  OR2_X1 ref_1_maj_82_U4 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_82_n4) );
  NAND2_X1 ref_1_maj_82_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_82_n4), 
        .ZN(ref_1_maj_82_n5) );
  NAND2_X1 ref_1_maj_82_U2 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_82_n6) );
  NAND2_X1 ref_1_maj_82_U1 ( .A1(ref_1_maj_82_n6), .A2(ref_1_maj_82_n5), .ZN(
        ref_1_maj_82_port_o) );
  OR2_X1 ref_1_maj_83_U4 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_83_n4) );
  NAND2_X1 ref_1_maj_83_U3 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_83_n4), 
        .ZN(ref_1_maj_83_n5) );
  NAND2_X1 ref_1_maj_83_U2 ( .A1(ref_1_n8), .A2(ref_1_refreshed_0_0_), .ZN(
        ref_1_maj_83_n6) );
  NAND2_X1 ref_1_maj_83_U1 ( .A1(ref_1_maj_83_n6), .A2(ref_1_maj_83_n5), .ZN(
        ref_1_maj_83_port_o) );
  OR2_X1 ref_1_maj_84_U4 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_84_n4)
         );
  NAND2_X1 ref_1_maj_84_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_84_n4), 
        .ZN(ref_1_maj_84_n5) );
  NAND2_X1 ref_1_maj_84_U2 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_84_n6) );
  NAND2_X1 ref_1_maj_84_U1 ( .A1(ref_1_maj_84_n6), .A2(ref_1_maj_84_n5), .ZN(
        ref_1_maj_84_port_o) );
  OR2_X1 ref_1_maj_85_U4 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_85_n4)
         );
  NAND2_X1 ref_1_maj_85_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_85_n4), 
        .ZN(ref_1_maj_85_n5) );
  NAND2_X1 ref_1_maj_85_U2 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_85_n6) );
  NAND2_X1 ref_1_maj_85_U1 ( .A1(ref_1_maj_85_n6), .A2(ref_1_maj_85_n5), .ZN(
        ref_1_maj_85_port_o) );
  OR2_X1 ref_1_maj_86_U4 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_86_n4)
         );
  NAND2_X1 ref_1_maj_86_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_86_n4), 
        .ZN(ref_1_maj_86_n5) );
  NAND2_X1 ref_1_maj_86_U2 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_86_n6) );
  NAND2_X1 ref_1_maj_86_U1 ( .A1(ref_1_maj_86_n6), .A2(ref_1_maj_86_n5), .ZN(
        ref_1_maj_86_port_o) );
  OR2_X1 ref_1_maj_87_U4 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_87_n4)
         );
  NAND2_X1 ref_1_maj_87_U3 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_87_n4), 
        .ZN(ref_1_maj_87_n5) );
  NAND2_X1 ref_1_maj_87_U2 ( .A1(ref_1_n6), .A2(ref_1_n5), .ZN(ref_1_maj_87_n6) );
  NAND2_X1 ref_1_maj_87_U1 ( .A1(ref_1_maj_87_n6), .A2(ref_1_maj_87_n5), .ZN(
        ref_1_maj_87_port_o) );
  OR2_X1 ref_1_maj_88_U4 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_88_n4)
         );
  NAND2_X1 ref_1_maj_88_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_88_n4), 
        .ZN(ref_1_maj_88_n5) );
  NAND2_X1 ref_1_maj_88_U2 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_88_n6) );
  NAND2_X1 ref_1_maj_88_U1 ( .A1(ref_1_maj_88_n6), .A2(ref_1_maj_88_n5), .ZN(
        ref_1_maj_88_port_o) );
  OR2_X1 ref_1_maj_89_U4 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_89_n4)
         );
  NAND2_X1 ref_1_maj_89_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_89_n4), 
        .ZN(ref_1_maj_89_n5) );
  NAND2_X1 ref_1_maj_89_U2 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_89_n6) );
  NAND2_X1 ref_1_maj_89_U1 ( .A1(ref_1_maj_89_n6), .A2(ref_1_maj_89_n5), .ZN(
        ref_1_maj_89_port_o) );
  OR2_X1 ref_1_maj_90_U4 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_90_n4)
         );
  NAND2_X1 ref_1_maj_90_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_90_n4), 
        .ZN(ref_1_maj_90_n5) );
  NAND2_X1 ref_1_maj_90_U2 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_90_n6) );
  NAND2_X1 ref_1_maj_90_U1 ( .A1(ref_1_maj_90_n6), .A2(ref_1_maj_90_n5), .ZN(
        ref_1_maj_90_port_o) );
  OR2_X1 ref_1_maj_91_U4 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_91_n4)
         );
  NAND2_X1 ref_1_maj_91_U3 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_91_n4), 
        .ZN(ref_1_maj_91_n5) );
  NAND2_X1 ref_1_maj_91_U2 ( .A1(ref_1_n4), .A2(ref_1_n3), .ZN(ref_1_maj_91_n6) );
  NAND2_X1 ref_1_maj_91_U1 ( .A1(ref_1_maj_91_n6), .A2(ref_1_maj_91_n5), .ZN(
        ref_1_maj_91_port_o) );
  OR2_X1 ref_1_maj_92_U4 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_92_n4)
         );
  NAND2_X1 ref_1_maj_92_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_92_n4), 
        .ZN(ref_1_maj_92_n5) );
  NAND2_X1 ref_1_maj_92_U2 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_92_n6) );
  NAND2_X1 ref_1_maj_92_U1 ( .A1(ref_1_maj_92_n6), .A2(ref_1_maj_92_n5), .ZN(
        ref_1_maj_92_port_o) );
  OR2_X1 ref_1_maj_93_U4 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_93_n4)
         );
  NAND2_X1 ref_1_maj_93_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_93_n4), 
        .ZN(ref_1_maj_93_n5) );
  NAND2_X1 ref_1_maj_93_U2 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_93_n6) );
  NAND2_X1 ref_1_maj_93_U1 ( .A1(ref_1_maj_93_n6), .A2(ref_1_maj_93_n5), .ZN(
        ref_1_maj_93_port_o) );
  OR2_X1 ref_1_maj_94_U4 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_94_n4)
         );
  NAND2_X1 ref_1_maj_94_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_94_n4), 
        .ZN(ref_1_maj_94_n5) );
  NAND2_X1 ref_1_maj_94_U2 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_94_n6) );
  NAND2_X1 ref_1_maj_94_U1 ( .A1(ref_1_maj_94_n6), .A2(ref_1_maj_94_n5), .ZN(
        ref_1_maj_94_port_o) );
  OR2_X1 ref_1_maj_95_U4 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_95_n4)
         );
  NAND2_X1 ref_1_maj_95_U3 ( .A1(ref_1_refreshed_3_2_), .A2(ref_1_maj_95_n4), 
        .ZN(ref_1_maj_95_n5) );
  NAND2_X1 ref_1_maj_95_U2 ( .A1(ref_1_n2), .A2(ref_1_n1), .ZN(ref_1_maj_95_n6) );
  NAND2_X1 ref_1_maj_95_U1 ( .A1(ref_1_maj_95_n6), .A2(ref_1_maj_95_n5), .ZN(
        ref_1_maj_95_port_o) );
  XOR2_X1 simpleXor_72_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_72_port_a0), 
        .Z(simpleXor_72_port_z) );
  XOR2_X1 simpleXor_73_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_73_port_a0), 
        .Z(simpleXor_73_port_z) );
  XOR2_X1 simpleXor_74_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_74_port_a0), 
        .Z(simpleXor_74_port_z) );
  XOR2_X1 simpleXor_75_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_75_port_a0), 
        .Z(simpleXor_75_port_z) );
  XOR2_X1 simpleXor_76_U1 ( .A(port_rand_mul_3[0]), .B(simpleXor_76_port_a0), 
        .Z(simpleXor_76_port_z) );
  XOR2_X1 simpleXor_77_U1 ( .A(port_rand_mul_4[0]), .B(simpleXor_77_port_a0), 
        .Z(simpleXor_77_port_z) );
  XOR2_X1 simpleXor_78_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_78_port_a0), 
        .Z(simpleXor_78_port_z) );
  XOR2_X1 simpleXor_79_U1 ( .A(port_rand_mul_3[0]), .B(simpleXor_79_port_a0), 
        .Z(simpleXor_79_port_z) );
  XOR2_X1 simpleXor_80_U1 ( .A(port_rand_mul_5[0]), .B(simpleXor_80_port_a0), 
        .Z(simpleXor_80_port_z) );
  XOR2_X1 simpleXor_81_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_81_port_a0), 
        .Z(simpleXor_81_port_z) );
  XOR2_X1 simpleXor_82_U1 ( .A(port_rand_mul_4[0]), .B(simpleXor_82_port_a0), 
        .Z(simpleXor_82_port_z) );
  XOR2_X1 simpleXor_83_U1 ( .A(port_rand_mul_5[0]), .B(simpleXor_83_port_a0), 
        .Z(simpleXor_83_port_z) );
  XOR2_X1 simpleXor_84_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_84_port_a0), 
        .Z(simpleXor_84_port_z) );
  XOR2_X1 simpleXor_85_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_85_port_a0), 
        .Z(simpleXor_85_port_z) );
  XOR2_X1 simpleXor_86_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_86_port_a0), 
        .Z(simpleXor_86_port_z) );
  XOR2_X1 simpleXor_87_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_87_port_a0), 
        .Z(simpleXor_87_port_z) );
  XOR2_X1 simpleXor_88_U1 ( .A(port_rand_mul_3[0]), .B(simpleXor_88_port_a0), 
        .Z(simpleXor_88_port_z) );
  XOR2_X1 simpleXor_89_U1 ( .A(port_rand_mul_4[0]), .B(simpleXor_89_port_a0), 
        .Z(simpleXor_89_port_z) );
  XOR2_X1 simpleXor_90_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_90_port_a0), 
        .Z(simpleXor_90_port_z) );
  XOR2_X1 simpleXor_91_U1 ( .A(port_rand_mul_3[0]), .B(simpleXor_91_port_a0), 
        .Z(simpleXor_91_port_z) );
  XOR2_X1 simpleXor_92_U1 ( .A(port_rand_mul_5[0]), .B(simpleXor_92_port_a0), 
        .Z(simpleXor_92_port_z) );
  XOR2_X1 simpleXor_93_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_93_port_a0), 
        .Z(simpleXor_93_port_z) );
  XOR2_X1 simpleXor_94_U1 ( .A(port_rand_mul_4[0]), .B(simpleXor_94_port_a0), 
        .Z(simpleXor_94_port_z) );
  XOR2_X1 simpleXor_95_U1 ( .A(port_rand_mul_5[0]), .B(simpleXor_95_port_a0), 
        .Z(simpleXor_95_port_z) );
  XOR2_X1 simpleXor_96_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_96_port_a0), 
        .Z(simpleXor_96_port_z) );
  XOR2_X1 simpleXor_97_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_97_port_a0), 
        .Z(simpleXor_97_port_z) );
  XOR2_X1 simpleXor_98_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_98_port_a0), 
        .Z(simpleXor_98_port_z) );
  XOR2_X1 simpleXor_99_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_99_port_a0), 
        .Z(simpleXor_99_port_z) );
  XOR2_X1 simpleXor_100_U1 ( .A(port_rand_mul_3[0]), .B(simpleXor_100_port_a0), 
        .Z(simpleXor_100_port_z) );
  XOR2_X1 simpleXor_101_U1 ( .A(port_rand_mul_4[0]), .B(simpleXor_101_port_a0), 
        .Z(simpleXor_101_port_z) );
  XOR2_X1 simpleXor_102_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_102_port_a0), 
        .Z(simpleXor_102_port_z) );
  XOR2_X1 simpleXor_103_U1 ( .A(port_rand_mul_3[0]), .B(simpleXor_103_port_a0), 
        .Z(simpleXor_103_port_z) );
  XOR2_X1 simpleXor_104_U1 ( .A(port_rand_mul_5[0]), .B(simpleXor_104_port_a0), 
        .Z(simpleXor_104_port_z) );
  XOR2_X1 simpleXor_105_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_105_port_a0), 
        .Z(simpleXor_105_port_z) );
  XOR2_X1 simpleXor_106_U1 ( .A(port_rand_mul_4[0]), .B(simpleXor_106_port_a0), 
        .Z(simpleXor_106_port_z) );
  XOR2_X1 simpleXor_107_U1 ( .A(port_rand_mul_5[0]), .B(simpleXor_107_port_a0), 
        .Z(simpleXor_107_port_z) );
endmodule

