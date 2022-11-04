
module CINI3 ( port_a_0, port_a_1, port_a_2, port_a_3, port_b_0, port_b_1, 
        port_b_2, port_b_3, port_c_0, port_c_1, port_c_2, port_c_3, 
        port_rand_ref, port_rand_mul, clk, reset );
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
  input [5:0] port_rand_mul;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, ref_1_n8, ref_1_n7, ref_1_n6, ref_1_n5,
         ref_1_n4, ref_1_n3, ref_1_n2, ref_1_n1, ref_1_maj_95_port_o,
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
         ref_1_refreshed_0_1_, ref_1_refreshed_0_2_, ref_1_simpleXor_70_port_z,
         ref_1_simpleXor_69_port_z, ref_1_simpleXor_67_port_z,
         ref_1_simpleXor_66_port_z, ref_1_simpleXor_64_port_z,
         ref_1_simpleXor_63_port_z, ref_1_simpleXor_61_port_z,
         ref_1_simpleXor_60_port_z, ref_1_simpleXor_58_port_z,
         ref_1_simpleXor_57_port_z, ref_1_simpleXor_55_port_z,
         ref_1_simpleXor_54_port_z, ref_1_simpleXor_52_port_z,
         ref_1_simpleXor_51_port_z, ref_1_simpleXor_49_port_z,
         ref_1_simpleXor_48_port_z, ref_1_simpleXor_46_port_z,
         ref_1_simpleXor_45_port_z, ref_1_simpleXor_43_port_z,
         ref_1_simpleXor_42_port_z, ref_1_simpleXor_40_port_z,
         ref_1_simpleXor_39_port_z, ref_1_simpleXor_37_port_z,
         ref_1_simpleXor_36_port_z, ref_1_maj_48_n3, ref_1_maj_48_n2,
         ref_1_maj_48_n1, ref_1_maj_49_n6, ref_1_maj_49_n5, ref_1_maj_49_n4,
         ref_1_maj_50_n6, ref_1_maj_50_n5, ref_1_maj_50_n4, ref_1_maj_51_n6,
         ref_1_maj_51_n5, ref_1_maj_51_n4, ref_1_maj_52_n6, ref_1_maj_52_n5,
         ref_1_maj_52_n4, ref_1_maj_53_n6, ref_1_maj_53_n5, ref_1_maj_53_n4,
         ref_1_maj_54_n6, ref_1_maj_54_n5, ref_1_maj_54_n4, ref_1_maj_55_n6,
         ref_1_maj_55_n5, ref_1_maj_55_n4, ref_1_maj_56_n6, ref_1_maj_56_n5,
         ref_1_maj_56_n4, ref_1_maj_57_n6, ref_1_maj_57_n5, ref_1_maj_57_n4,
         ref_1_maj_58_n6, ref_1_maj_58_n5, ref_1_maj_58_n4, ref_1_maj_59_n6,
         ref_1_maj_59_n5, ref_1_maj_59_n4, ref_1_maj_60_n6, ref_1_maj_60_n5,
         ref_1_maj_60_n4, ref_1_maj_61_n6, ref_1_maj_61_n5, ref_1_maj_61_n4,
         ref_1_maj_62_n6, ref_1_maj_62_n5, ref_1_maj_62_n4, ref_1_maj_63_n6,
         ref_1_maj_63_n5, ref_1_maj_63_n4, ref_1_maj_64_n6, ref_1_maj_64_n5,
         ref_1_maj_64_n4, ref_1_maj_65_n6, ref_1_maj_65_n5, ref_1_maj_65_n4,
         ref_1_maj_66_n6, ref_1_maj_66_n5, ref_1_maj_66_n4, ref_1_maj_67_n6,
         ref_1_maj_67_n5, ref_1_maj_67_n4, ref_1_maj_68_n6, ref_1_maj_68_n5,
         ref_1_maj_68_n4, ref_1_maj_69_n6, ref_1_maj_69_n5, ref_1_maj_69_n4,
         ref_1_maj_70_n6, ref_1_maj_70_n5, ref_1_maj_70_n4, ref_1_maj_71_n6,
         ref_1_maj_71_n5, ref_1_maj_71_n4, ref_1_maj_72_n6, ref_1_maj_72_n5,
         ref_1_maj_72_n4, ref_1_maj_73_n6, ref_1_maj_73_n5, ref_1_maj_73_n4,
         ref_1_maj_74_n6, ref_1_maj_74_n5, ref_1_maj_74_n4, ref_1_maj_75_n6,
         ref_1_maj_75_n5, ref_1_maj_75_n4, ref_1_maj_76_n6, ref_1_maj_76_n5,
         ref_1_maj_76_n4, ref_1_maj_77_n6, ref_1_maj_77_n5, ref_1_maj_77_n4,
         ref_1_maj_78_n6, ref_1_maj_78_n5, ref_1_maj_78_n4, ref_1_maj_79_n6,
         ref_1_maj_79_n5, ref_1_maj_79_n4, ref_1_maj_80_n6, ref_1_maj_80_n5,
         ref_1_maj_80_n4, ref_1_maj_81_n6, ref_1_maj_81_n5, ref_1_maj_81_n4,
         ref_1_maj_82_n6, ref_1_maj_82_n5, ref_1_maj_82_n4, ref_1_maj_83_n6,
         ref_1_maj_83_n5, ref_1_maj_83_n4, ref_1_maj_84_n6, ref_1_maj_84_n5,
         ref_1_maj_84_n4, ref_1_maj_85_n6, ref_1_maj_85_n5, ref_1_maj_85_n4,
         ref_1_maj_86_n6, ref_1_maj_86_n5, ref_1_maj_86_n4, ref_1_maj_87_n6,
         ref_1_maj_87_n5, ref_1_maj_87_n4, ref_1_maj_88_n6, ref_1_maj_88_n5,
         ref_1_maj_88_n4, ref_1_maj_89_n6, ref_1_maj_89_n5, ref_1_maj_89_n4,
         ref_1_maj_90_n6, ref_1_maj_90_n5, ref_1_maj_90_n4, ref_1_maj_91_n6,
         ref_1_maj_91_n5, ref_1_maj_91_n4, ref_1_maj_92_n6, ref_1_maj_92_n5,
         ref_1_maj_92_n4, ref_1_maj_93_n6, ref_1_maj_93_n5, ref_1_maj_93_n4,
         ref_1_maj_94_n6, ref_1_maj_94_n5, ref_1_maj_94_n4, ref_1_maj_95_n6,
         ref_1_maj_95_n5, ref_1_maj_95_n4;
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

  DFF_X1 mult_ab_2_0_reg_2_ ( .D(N40), .CK(clk), .Q(mult_ab_2_0[2]), .QN() );
  DFF_X1 mult_ab_2_0_reg_1_ ( .D(N24), .CK(clk), .Q(mult_ab_2_0[1]), .QN() );
  DFF_X1 mult_ab_2_0_reg_0_ ( .D(N8), .CK(clk), .Q(mult_ab_2_0[0]), .QN() );
  DFF_X1 mult_ab_3_3_reg_2_ ( .D(N47), .CK(clk), .Q(temp_0_3[2]), .QN() );
  DFF_X1 mult_ab_3_3_reg_1_ ( .D(N31), .CK(clk), .Q(temp_0_3[1]), .QN() );
  DFF_X1 mult_ab_3_3_reg_0_ ( .D(N15), .CK(clk), .Q(temp_0_3[0]), .QN() );
  DFF_X1 mult_ab_1_3_reg_2_ ( .D(N39), .CK(clk), .Q(mult_ab_1_3[2]), .QN() );
  DFF_X1 mult_ab_1_3_reg_1_ ( .D(N23), .CK(clk), .Q(mult_ab_1_3[1]), .QN() );
  DFF_X1 mult_ab_1_3_reg_0_ ( .D(N7), .CK(clk), .Q(mult_ab_1_3[0]), .QN() );
  DFF_X1 mult_ab_1_2_reg_2_ ( .D(N38), .CK(clk), .Q(mult_ab_1_2[2]), .QN() );
  DFF_X1 mult_ab_1_2_reg_1_ ( .D(N22), .CK(clk), .Q(mult_ab_1_2[1]), .QN() );
  DFF_X1 mult_ab_1_2_reg_0_ ( .D(N6), .CK(clk), .Q(mult_ab_1_2[0]), .QN() );
  DFF_X1 mult_ab_2_3_reg_2_ ( .D(N43), .CK(clk), .Q(mult_ab_2_3[2]), .QN() );
  DFF_X1 mult_ab_2_3_reg_1_ ( .D(N27), .CK(clk), .Q(mult_ab_2_3[1]), .QN() );
  DFF_X1 mult_ab_2_3_reg_0_ ( .D(N11), .CK(clk), .Q(mult_ab_2_3[0]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(N33), .CK(clk), .Q(mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(N17), .CK(clk), .Q(mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(N1), .CK(clk), .Q(mult_ab_0_1[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N37), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N21), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N5), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_3_1_reg_2_ ( .D(N45), .CK(clk), .Q(mult_ab_3_1[2]), .QN() );
  DFF_X1 mult_ab_3_1_reg_1_ ( .D(N29), .CK(clk), .Q(mult_ab_3_1[1]), .QN() );
  DFF_X1 mult_ab_3_1_reg_0_ ( .D(N13), .CK(clk), .Q(mult_ab_3_1[0]), .QN() );
  DFF_X1 mult_ab_0_3_reg_2_ ( .D(N35), .CK(clk), .Q(mult_ab_0_3[2]), .QN() );
  DFF_X1 mult_ab_0_3_reg_1_ ( .D(N19), .CK(clk), .Q(mult_ab_0_3[1]), .QN() );
  DFF_X1 mult_ab_0_3_reg_0_ ( .D(N3), .CK(clk), .Q(mult_ab_0_3[0]), .QN() );
  DFF_X1 mult_ab_3_0_reg_2_ ( .D(N44), .CK(clk), .Q(mult_ab_3_0[2]), .QN() );
  DFF_X1 mult_ab_3_0_reg_1_ ( .D(N28), .CK(clk), .Q(mult_ab_3_0[1]), .QN() );
  DFF_X1 mult_ab_3_0_reg_0_ ( .D(N12), .CK(clk), .Q(mult_ab_3_0[0]), .QN() );
  DFF_X1 mult_ab_2_2_reg_2_ ( .D(N42), .CK(clk), .Q(temp_0_2[2]), .QN() );
  DFF_X1 mult_ab_2_2_reg_1_ ( .D(N26), .CK(clk), .Q(temp_0_2[1]), .QN() );
  DFF_X1 mult_ab_2_2_reg_0_ ( .D(N10), .CK(clk), .Q(temp_0_2[0]), .QN() );
  DFF_X1 mult_ab_3_2_reg_2_ ( .D(N46), .CK(clk), .Q(mult_ab_3_2[2]), .QN() );
  DFF_X1 mult_ab_3_2_reg_1_ ( .D(N30), .CK(clk), .Q(mult_ab_3_2[1]), .QN() );
  DFF_X1 mult_ab_3_2_reg_0_ ( .D(N14), .CK(clk), .Q(mult_ab_3_2[0]), .QN() );
  DFF_X1 mult_ab_0_2_reg_2_ ( .D(N34), .CK(clk), .Q(mult_ab_0_2[2]), .QN() );
  DFF_X1 mult_ab_0_2_reg_1_ ( .D(N18), .CK(clk), .Q(mult_ab_0_2[1]), .QN() );
  DFF_X1 mult_ab_0_2_reg_0_ ( .D(N2), .CK(clk), .Q(mult_ab_0_2[0]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N32), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N16), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_2_1_reg_2_ ( .D(N41), .CK(clk), .Q(mult_ab_2_1[2]), .QN() );
  DFF_X1 mult_ab_2_1_reg_1_ ( .D(N25), .CK(clk), .Q(mult_ab_2_1[1]), .QN() );
  DFF_X1 mult_ab_2_1_reg_0_ ( .D(N9), .CK(clk), .Q(mult_ab_2_1[0]), .QN() );
  DFF_X1 mult_ab_1_0_reg_2_ ( .D(N36), .CK(clk), .Q(mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(N20), .CK(clk), .Q(mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(N4), .CK(clk), .Q(mult_ab_1_0[0]), .QN() );
  XNOR2_X1 U123 ( .A(port_rand_mul[0]), .B(n35), .ZN(N4) );
  NAND2_X1 U124 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(n35) );
  XNOR2_X1 U125 ( .A(port_rand_mul[0]), .B(n51), .ZN(N20) );
  NAND2_X1 U126 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(n51) );
  XNOR2_X1 U127 ( .A(port_rand_mul[0]), .B(n38), .ZN(N36) );
  NAND2_X1 U128 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(n38) );
  XNOR2_X1 U129 ( .A(port_rand_mul[3]), .B(n25), .ZN(N9) );
  NAND2_X1 U130 ( .A1(ref_1_port_o_2_1[0]), .A2(port_a_2[0]), .ZN(n25) );
  XNOR2_X1 U131 ( .A(port_rand_mul[3]), .B(n47), .ZN(N25) );
  NAND2_X1 U132 ( .A1(ref_1_port_o_2_1[1]), .A2(port_a_2[1]), .ZN(n47) );
  XNOR2_X1 U133 ( .A(port_rand_mul[3]), .B(n33), .ZN(N41) );
  NAND2_X1 U134 ( .A1(ref_1_port_o_2_1[2]), .A2(port_a_2[2]), .ZN(n33) );
  XNOR2_X1 U135 ( .A(port_rand_mul[1]), .B(n52), .ZN(N2) );
  NAND2_X1 U136 ( .A1(ref_1_port_o_0_2[0]), .A2(port_a_0[0]), .ZN(n52) );
  XNOR2_X1 U137 ( .A(port_rand_mul[1]), .B(n54), .ZN(N18) );
  NAND2_X1 U138 ( .A1(ref_1_port_o_0_2[1]), .A2(port_a_0[1]), .ZN(n54) );
  XNOR2_X1 U139 ( .A(port_rand_mul[1]), .B(n40), .ZN(N34) );
  NAND2_X1 U140 ( .A1(ref_1_port_o_0_2[2]), .A2(port_a_0[2]), .ZN(n40) );
  XNOR2_X1 U141 ( .A(port_rand_mul[5]), .B(n56), .ZN(N14) );
  NAND2_X1 U142 ( .A1(ref_1_port_o_3_2[0]), .A2(port_a_3[0]), .ZN(n56) );
  XNOR2_X1 U143 ( .A(port_rand_mul[5]), .B(n42), .ZN(N30) );
  NAND2_X1 U144 ( .A1(ref_1_port_o_3_2[1]), .A2(port_a_3[1]), .ZN(n42) );
  XNOR2_X1 U145 ( .A(port_rand_mul[5]), .B(n29), .ZN(N46) );
  NAND2_X1 U146 ( .A1(ref_1_port_o_3_2[2]), .A2(port_a_3[2]), .ZN(n29) );
  XNOR2_X1 U147 ( .A(port_rand_mul[2]), .B(n58), .ZN(N12) );
  NAND2_X1 U148 ( .A1(ref_1_port_o_3_0[0]), .A2(port_a_3[0]), .ZN(n58) );
  XNOR2_X1 U149 ( .A(port_rand_mul[2]), .B(n45), .ZN(N28) );
  NAND2_X1 U150 ( .A1(ref_1_port_o_3_0[1]), .A2(port_a_3[1]), .ZN(n45) );
  XNOR2_X1 U151 ( .A(port_rand_mul[2]), .B(n31), .ZN(N44) );
  NAND2_X1 U152 ( .A1(ref_1_port_o_3_0[2]), .A2(port_a_3[2]), .ZN(n31) );
  XNOR2_X1 U153 ( .A(port_rand_mul[2]), .B(n43), .ZN(N3) );
  NAND2_X1 U154 ( .A1(ref_1_port_o_0_3[0]), .A2(port_a_0[0]), .ZN(n43) );
  XNOR2_X1 U155 ( .A(port_rand_mul[2]), .B(n53), .ZN(N19) );
  NAND2_X1 U156 ( .A1(ref_1_port_o_0_3[1]), .A2(port_a_0[1]), .ZN(n53) );
  XNOR2_X1 U157 ( .A(port_rand_mul[2]), .B(n39), .ZN(N35) );
  NAND2_X1 U158 ( .A1(ref_1_port_o_0_3[2]), .A2(port_a_0[2]), .ZN(n39) );
  XNOR2_X1 U159 ( .A(port_rand_mul[4]), .B(n57), .ZN(N13) );
  NAND2_X1 U160 ( .A1(ref_1_port_o_3_1[0]), .A2(port_a_3[0]), .ZN(n57) );
  XNOR2_X1 U161 ( .A(port_rand_mul[4]), .B(n44), .ZN(N29) );
  NAND2_X1 U162 ( .A1(ref_1_port_o_3_1[1]), .A2(port_a_3[1]), .ZN(n44) );
  XNOR2_X1 U163 ( .A(port_rand_mul[4]), .B(n30), .ZN(N45) );
  NAND2_X1 U164 ( .A1(ref_1_port_o_3_1[2]), .A2(port_a_3[2]), .ZN(n30) );
  XNOR2_X1 U165 ( .A(port_rand_mul[0]), .B(n60), .ZN(N1) );
  NAND2_X1 U166 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(n60) );
  XNOR2_X1 U167 ( .A(port_rand_mul[0]), .B(n55), .ZN(N17) );
  NAND2_X1 U168 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(n55) );
  XNOR2_X1 U169 ( .A(port_rand_mul[0]), .B(n41), .ZN(N33) );
  NAND2_X1 U170 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(n41) );
  XNOR2_X1 U171 ( .A(port_rand_mul[5]), .B(n59), .ZN(N11) );
  NAND2_X1 U172 ( .A1(ref_1_port_o_2_3[0]), .A2(port_a_2[0]), .ZN(n59) );
  XNOR2_X1 U173 ( .A(port_rand_mul[5]), .B(n46), .ZN(N27) );
  NAND2_X1 U174 ( .A1(ref_1_port_o_2_3[1]), .A2(port_a_2[1]), .ZN(n46) );
  XNOR2_X1 U175 ( .A(port_rand_mul[5]), .B(n32), .ZN(N43) );
  NAND2_X1 U176 ( .A1(ref_1_port_o_2_3[2]), .A2(port_a_2[2]), .ZN(n32) );
  XNOR2_X1 U177 ( .A(port_rand_mul[3]), .B(n28), .ZN(N6) );
  NAND2_X1 U178 ( .A1(ref_1_port_o_1_2[0]), .A2(port_a_1[0]), .ZN(n28) );
  XNOR2_X1 U179 ( .A(port_rand_mul[3]), .B(n50), .ZN(N22) );
  NAND2_X1 U180 ( .A1(ref_1_port_o_1_2[1]), .A2(port_a_1[1]), .ZN(n50) );
  XNOR2_X1 U181 ( .A(port_rand_mul[3]), .B(n37), .ZN(N38) );
  NAND2_X1 U182 ( .A1(ref_1_port_o_1_2[2]), .A2(port_a_1[2]), .ZN(n37) );
  XNOR2_X1 U183 ( .A(port_rand_mul[4]), .B(n27), .ZN(N7) );
  NAND2_X1 U184 ( .A1(ref_1_port_o_1_3[0]), .A2(port_a_1[0]), .ZN(n27) );
  XNOR2_X1 U185 ( .A(port_rand_mul[4]), .B(n49), .ZN(N23) );
  NAND2_X1 U186 ( .A1(ref_1_port_o_1_3[1]), .A2(port_a_1[1]), .ZN(n49) );
  XNOR2_X1 U187 ( .A(port_rand_mul[4]), .B(n36), .ZN(N39) );
  NAND2_X1 U188 ( .A1(ref_1_port_o_1_3[2]), .A2(port_a_1[2]), .ZN(n36) );
  XNOR2_X1 U189 ( .A(port_rand_mul[1]), .B(n26), .ZN(N8) );
  NAND2_X1 U190 ( .A1(ref_1_port_o_2_0[0]), .A2(port_a_2[0]), .ZN(n26) );
  XNOR2_X1 U191 ( .A(port_rand_mul[1]), .B(n48), .ZN(N24) );
  NAND2_X1 U192 ( .A1(ref_1_port_o_2_0[1]), .A2(port_a_2[1]), .ZN(n48) );
  XNOR2_X1 U193 ( .A(port_rand_mul[1]), .B(n34), .ZN(N40) );
  NAND2_X1 U194 ( .A1(ref_1_port_o_2_0[2]), .A2(port_a_2[2]), .ZN(n34) );
  AND2_X1 U195 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U196 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N16) );
  AND2_X1 U197 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N32) );
  AND2_X1 U198 ( .A1(ref_1_port_o_2_2[0]), .A2(port_a_2[0]), .ZN(N10) );
  AND2_X1 U199 ( .A1(ref_1_port_o_2_2[1]), .A2(port_a_2[1]), .ZN(N26) );
  AND2_X1 U200 ( .A1(ref_1_port_o_2_2[2]), .A2(port_a_2[2]), .ZN(N42) );
  AND2_X1 U201 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N5) );
  AND2_X1 U202 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N21) );
  AND2_X1 U203 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N37) );
  AND2_X1 U204 ( .A1(ref_1_port_o_3_3[0]), .A2(port_a_3[0]), .ZN(N15) );
  AND2_X1 U205 ( .A1(ref_1_port_o_3_3[1]), .A2(port_a_3[1]), .ZN(N31) );
  AND2_X1 U206 ( .A1(ref_1_port_o_3_3[2]), .A2(port_a_3[2]), .ZN(N47) );
  XOR2_X1 U207 ( .A(n5), .B(n6), .Z(port_c_3[0]) );
  XNOR2_X1 U208 ( .A(temp_0_3[0]), .B(mult_ab_3_2[0]), .ZN(n5) );
  XNOR2_X1 U209 ( .A(mult_ab_3_1[0]), .B(mult_ab_3_0[0]), .ZN(n6) );
  XOR2_X1 U210 ( .A(n3), .B(n4), .Z(port_c_3[1]) );
  XNOR2_X1 U211 ( .A(temp_0_3[1]), .B(mult_ab_3_2[1]), .ZN(n3) );
  XNOR2_X1 U212 ( .A(mult_ab_3_1[1]), .B(mult_ab_3_0[1]), .ZN(n4) );
  XOR2_X1 U213 ( .A(n1), .B(n2), .Z(port_c_3[2]) );
  XNOR2_X1 U214 ( .A(temp_0_3[2]), .B(mult_ab_3_2[2]), .ZN(n1) );
  XNOR2_X1 U215 ( .A(mult_ab_3_1[2]), .B(mult_ab_3_0[2]), .ZN(n2) );
  XOR2_X1 U216 ( .A(n11), .B(n12), .Z(port_c_2[0]) );
  XNOR2_X1 U217 ( .A(temp_0_2[0]), .B(mult_ab_2_3[0]), .ZN(n11) );
  XNOR2_X1 U218 ( .A(mult_ab_2_1[0]), .B(mult_ab_2_0[0]), .ZN(n12) );
  XOR2_X1 U219 ( .A(n9), .B(n10), .Z(port_c_2[1]) );
  XNOR2_X1 U220 ( .A(temp_0_2[1]), .B(mult_ab_2_3[1]), .ZN(n9) );
  XNOR2_X1 U221 ( .A(mult_ab_2_1[1]), .B(mult_ab_2_0[1]), .ZN(n10) );
  XOR2_X1 U222 ( .A(n7), .B(n8), .Z(port_c_2[2]) );
  XNOR2_X1 U223 ( .A(temp_0_2[2]), .B(mult_ab_2_3[2]), .ZN(n7) );
  XNOR2_X1 U224 ( .A(mult_ab_2_1[2]), .B(mult_ab_2_0[2]), .ZN(n8) );
  XOR2_X1 U225 ( .A(n17), .B(n18), .Z(port_c_1[0]) );
  XNOR2_X1 U226 ( .A(temp_0_1[0]), .B(mult_ab_1_3[0]), .ZN(n17) );
  XNOR2_X1 U227 ( .A(mult_ab_1_2[0]), .B(mult_ab_1_0[0]), .ZN(n18) );
  XOR2_X1 U228 ( .A(n15), .B(n16), .Z(port_c_1[1]) );
  XNOR2_X1 U229 ( .A(temp_0_1[1]), .B(mult_ab_1_3[1]), .ZN(n15) );
  XNOR2_X1 U230 ( .A(mult_ab_1_2[1]), .B(mult_ab_1_0[1]), .ZN(n16) );
  XOR2_X1 U231 ( .A(n13), .B(n14), .Z(port_c_1[2]) );
  XNOR2_X1 U232 ( .A(temp_0_1[2]), .B(mult_ab_1_3[2]), .ZN(n13) );
  XNOR2_X1 U233 ( .A(mult_ab_1_2[2]), .B(mult_ab_1_0[2]), .ZN(n14) );
  XOR2_X1 U234 ( .A(n23), .B(n24), .Z(port_c_0[0]) );
  XNOR2_X1 U235 ( .A(temp_0_0[0]), .B(mult_ab_0_3[0]), .ZN(n23) );
  XNOR2_X1 U236 ( .A(mult_ab_0_2[0]), .B(mult_ab_0_1[0]), .ZN(n24) );
  XOR2_X1 U237 ( .A(n21), .B(n22), .Z(port_c_0[1]) );
  XNOR2_X1 U238 ( .A(temp_0_0[1]), .B(mult_ab_0_3[1]), .ZN(n21) );
  XNOR2_X1 U239 ( .A(mult_ab_0_2[1]), .B(mult_ab_0_1[1]), .ZN(n22) );
  XOR2_X1 U240 ( .A(n19), .B(n20), .Z(port_c_0[2]) );
  XNOR2_X1 U241 ( .A(temp_0_0[2]), .B(mult_ab_0_3[2]), .ZN(n19) );
  XNOR2_X1 U242 ( .A(mult_ab_0_2[2]), .B(mult_ab_0_1[2]), .ZN(n20) );
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
  XOR2_X1 ref_1_simpleXor_36_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_simpleXor_36_port_z) );
  XOR2_X1 ref_1_simpleXor_37_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_36_port_z), .Z(ref_1_simpleXor_37_port_z) );
  XOR2_X1 ref_1_simpleXor_38_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_37_port_z), .Z(ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_39_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_simpleXor_39_port_z) );
  XOR2_X1 ref_1_simpleXor_40_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_39_port_z), .Z(ref_1_simpleXor_40_port_z) );
  XOR2_X1 ref_1_simpleXor_41_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_40_port_z), .Z(ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_42_U1 ( .A(port_rand_ref[1]), .B(port_b_2[0]), .Z(
        ref_1_simpleXor_42_port_z) );
  XOR2_X1 ref_1_simpleXor_43_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_42_port_z), .Z(ref_1_simpleXor_43_port_z) );
  XOR2_X1 ref_1_simpleXor_44_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_43_port_z), .Z(ref_1_refreshed_2_0_) );
  XOR2_X1 ref_1_simpleXor_45_U1 ( .A(port_rand_ref[2]), .B(port_b_3[0]), .Z(
        ref_1_simpleXor_45_port_z) );
  XOR2_X1 ref_1_simpleXor_46_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_45_port_z), .Z(ref_1_simpleXor_46_port_z) );
  XOR2_X1 ref_1_simpleXor_47_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_46_port_z), .Z(ref_1_refreshed_3_0_) );
  XOR2_X1 ref_1_simpleXor_48_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_simpleXor_48_port_z) );
  XOR2_X1 ref_1_simpleXor_49_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_48_port_z), .Z(ref_1_simpleXor_49_port_z) );
  XOR2_X1 ref_1_simpleXor_50_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_49_port_z), .Z(ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_51_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_simpleXor_51_port_z) );
  XOR2_X1 ref_1_simpleXor_52_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_51_port_z), .Z(ref_1_simpleXor_52_port_z) );
  XOR2_X1 ref_1_simpleXor_53_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_52_port_z), .Z(ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_54_U1 ( .A(port_rand_ref[1]), .B(port_b_2[1]), .Z(
        ref_1_simpleXor_54_port_z) );
  XOR2_X1 ref_1_simpleXor_55_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_54_port_z), .Z(ref_1_simpleXor_55_port_z) );
  XOR2_X1 ref_1_simpleXor_56_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_55_port_z), .Z(ref_1_refreshed_2_1_) );
  XOR2_X1 ref_1_simpleXor_57_U1 ( .A(port_rand_ref[2]), .B(port_b_3[1]), .Z(
        ref_1_simpleXor_57_port_z) );
  XOR2_X1 ref_1_simpleXor_58_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_57_port_z), .Z(ref_1_simpleXor_58_port_z) );
  XOR2_X1 ref_1_simpleXor_59_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_58_port_z), .Z(ref_1_refreshed_3_1_) );
  XOR2_X1 ref_1_simpleXor_60_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_simpleXor_60_port_z) );
  XOR2_X1 ref_1_simpleXor_61_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_60_port_z), .Z(ref_1_simpleXor_61_port_z) );
  XOR2_X2 ref_1_simpleXor_62_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_61_port_z), .Z(ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_63_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_simpleXor_63_port_z) );
  XOR2_X1 ref_1_simpleXor_64_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_63_port_z), .Z(ref_1_simpleXor_64_port_z) );
  XOR2_X2 ref_1_simpleXor_65_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_64_port_z), .Z(ref_1_refreshed_1_2_) );
  XOR2_X1 ref_1_simpleXor_66_U1 ( .A(port_rand_ref[1]), .B(port_b_2[2]), .Z(
        ref_1_simpleXor_66_port_z) );
  XOR2_X1 ref_1_simpleXor_67_U1 ( .A(port_rand_ref[3]), .B(
        ref_1_simpleXor_66_port_z), .Z(ref_1_simpleXor_67_port_z) );
  XOR2_X2 ref_1_simpleXor_68_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_67_port_z), .Z(ref_1_refreshed_2_2_) );
  XOR2_X1 ref_1_simpleXor_69_U1 ( .A(port_rand_ref[2]), .B(port_b_3[2]), .Z(
        ref_1_simpleXor_69_port_z) );
  XOR2_X1 ref_1_simpleXor_70_U1 ( .A(port_rand_ref[4]), .B(
        ref_1_simpleXor_69_port_z), .Z(ref_1_simpleXor_70_port_z) );
  XOR2_X2 ref_1_simpleXor_71_U1 ( .A(port_rand_ref[5]), .B(
        ref_1_simpleXor_70_port_z), .Z(ref_1_refreshed_3_2_) );
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
endmodule

