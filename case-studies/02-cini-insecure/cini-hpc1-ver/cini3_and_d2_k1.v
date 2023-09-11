
module CINI3 ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2, port_rand_ref, port_rand_mul, clk, reset
 );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_a_2;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  input [2:0] port_b_2;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  output [2:0] port_c_2;
  input [2:0] port_rand_ref;
  input [2:0] port_rand_mul;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, ref_1_maj_53_port_o,
         ref_1_maj_52_port_o, ref_1_maj_51_port_o, ref_1_maj_50_port_o,
         ref_1_maj_49_port_o, ref_1_maj_48_port_o, ref_1_maj_47_port_o,
         ref_1_maj_46_port_o, ref_1_maj_45_port_o, ref_1_maj_44_port_o,
         ref_1_maj_43_port_o, ref_1_maj_42_port_o, ref_1_maj_41_port_o,
         ref_1_maj_40_port_o, ref_1_maj_39_port_o, ref_1_maj_38_port_o,
         ref_1_maj_37_port_o, ref_1_maj_36_port_o, ref_1_maj_35_port_o,
         ref_1_maj_34_port_o, ref_1_maj_33_port_o, ref_1_refreshed_2_0_,
         ref_1_refreshed_2_1_, ref_1_refreshed_2_2_, ref_1_maj_32_port_o,
         ref_1_maj_31_port_o, ref_1_maj_30_port_o, ref_1_refreshed_1_0_,
         ref_1_refreshed_1_1_, ref_1_refreshed_1_2_, ref_1_maj_29_port_o,
         ref_1_maj_28_port_o, ref_1_maj_27_port_o, ref_1_refreshed_0_0_,
         ref_1_refreshed_0_1_, ref_1_refreshed_0_2_, ref_1_simpleXor_34_port_z,
         ref_1_simpleXor_32_port_z, ref_1_simpleXor_30_port_z,
         ref_1_simpleXor_28_port_z, ref_1_simpleXor_26_port_z,
         ref_1_simpleXor_24_port_z, ref_1_simpleXor_22_port_z,
         ref_1_simpleXor_20_port_z, ref_1_simpleXor_18_port_z, ref_1_maj_27_n3,
         ref_1_maj_27_n2, ref_1_maj_27_n1, ref_1_maj_28_n6, ref_1_maj_28_n5,
         ref_1_maj_28_n4, ref_1_maj_29_n6, ref_1_maj_29_n5, ref_1_maj_29_n4,
         ref_1_maj_30_n6, ref_1_maj_30_n5, ref_1_maj_30_n4, ref_1_maj_31_n6,
         ref_1_maj_31_n5, ref_1_maj_31_n4, ref_1_maj_32_n6, ref_1_maj_32_n5,
         ref_1_maj_32_n4, ref_1_maj_33_n6, ref_1_maj_33_n5, ref_1_maj_33_n4,
         ref_1_maj_34_n6, ref_1_maj_34_n5, ref_1_maj_34_n4, ref_1_maj_35_n6,
         ref_1_maj_35_n5, ref_1_maj_35_n4, ref_1_maj_36_n6, ref_1_maj_36_n5,
         ref_1_maj_36_n4, ref_1_maj_37_n6, ref_1_maj_37_n5, ref_1_maj_37_n4,
         ref_1_maj_38_n6, ref_1_maj_38_n5, ref_1_maj_38_n4, ref_1_maj_39_n6,
         ref_1_maj_39_n5, ref_1_maj_39_n4, ref_1_maj_40_n6, ref_1_maj_40_n5,
         ref_1_maj_40_n4, ref_1_maj_41_n6, ref_1_maj_41_n5, ref_1_maj_41_n4,
         ref_1_maj_42_n6, ref_1_maj_42_n5, ref_1_maj_42_n4, ref_1_maj_43_n6,
         ref_1_maj_43_n5, ref_1_maj_43_n4, ref_1_maj_44_n6, ref_1_maj_44_n5,
         ref_1_maj_44_n4, ref_1_maj_45_n6, ref_1_maj_45_n5, ref_1_maj_45_n4,
         ref_1_maj_46_n6, ref_1_maj_46_n5, ref_1_maj_46_n4, ref_1_maj_47_n6,
         ref_1_maj_47_n5, ref_1_maj_47_n4, ref_1_maj_48_n6, ref_1_maj_48_n5,
         ref_1_maj_48_n4, ref_1_maj_49_n6, ref_1_maj_49_n5, ref_1_maj_49_n4,
         ref_1_maj_50_n6, ref_1_maj_50_n5, ref_1_maj_50_n4, ref_1_maj_51_n6,
         ref_1_maj_51_n5, ref_1_maj_51_n4, ref_1_maj_52_n6, ref_1_maj_52_n5,
         ref_1_maj_52_n4, ref_1_maj_53_n6, ref_1_maj_53_n5, ref_1_maj_53_n4;
  wire   [2:0] ref_1_port_o_0_0;
  wire   [2:0] ref_1_port_o_0_1;
  wire   [2:0] ref_1_port_o_0_2;
  wire   [2:0] ref_1_port_o_1_0;
  wire   [2:0] ref_1_port_o_1_1;
  wire   [2:0] ref_1_port_o_1_2;
  wire   [2:0] ref_1_port_o_2_0;
  wire   [2:0] ref_1_port_o_2_1;
  wire   [2:0] ref_1_port_o_2_2;
  wire   [2:0] temp_0_0;
  wire   [2:0] mult_ab_0_1;
  wire   [2:0] mult_ab_0_2;
  wire   [2:0] temp_0_1;
  wire   [2:0] mult_ab_1_0;
  wire   [2:0] mult_ab_1_2;
  wire   [2:0] temp_0_2;
  wire   [2:0] mult_ab_2_0;
  wire   [2:0] mult_ab_2_1;

  DFF_X1 mult_ab_1_0_reg_2_ ( .D(N21), .CK(clk), .Q(mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(N12), .CK(clk), .Q(mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(N3), .CK(clk), .Q(mult_ab_1_0[0]), .QN() );
  DFF_X1 mult_ab_2_2_reg_2_ ( .D(N26), .CK(clk), .Q(temp_0_2[2]), .QN() );
  DFF_X1 mult_ab_2_2_reg_1_ ( .D(N17), .CK(clk), .Q(temp_0_2[1]), .QN() );
  DFF_X1 mult_ab_2_2_reg_0_ ( .D(N8), .CK(clk), .Q(temp_0_2[0]), .QN() );
  DFF_X1 mult_ab_0_2_reg_2_ ( .D(N20), .CK(clk), .Q(mult_ab_0_2[2]), .QN() );
  DFF_X1 mult_ab_0_2_reg_1_ ( .D(N11), .CK(clk), .Q(mult_ab_0_2[1]), .QN() );
  DFF_X1 mult_ab_0_2_reg_0_ ( .D(N2), .CK(clk), .Q(mult_ab_0_2[0]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(N19), .CK(clk), .Q(mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(N10), .CK(clk), .Q(mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(N1), .CK(clk), .Q(mult_ab_0_1[0]), .QN() );
  DFF_X1 mult_ab_1_2_reg_2_ ( .D(N23), .CK(clk), .Q(mult_ab_1_2[2]), .QN() );
  DFF_X1 mult_ab_1_2_reg_1_ ( .D(N14), .CK(clk), .Q(mult_ab_1_2[1]), .QN() );
  DFF_X1 mult_ab_1_2_reg_0_ ( .D(N5), .CK(clk), .Q(mult_ab_1_2[0]), .QN() );
  DFF_X1 mult_ab_2_1_reg_2_ ( .D(N25), .CK(clk), .Q(mult_ab_2_1[2]), .QN() );
  DFF_X1 mult_ab_2_1_reg_1_ ( .D(N16), .CK(clk), .Q(mult_ab_2_1[1]), .QN() );
  DFF_X1 mult_ab_2_1_reg_0_ ( .D(N7), .CK(clk), .Q(mult_ab_2_1[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N22), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N13), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N4), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_2_0_reg_2_ ( .D(N24), .CK(clk), .Q(mult_ab_2_0[2]), .QN() );
  DFF_X1 mult_ab_2_0_reg_1_ ( .D(N15), .CK(clk), .Q(mult_ab_2_0[1]), .QN() );
  DFF_X1 mult_ab_2_0_reg_0_ ( .D(N6), .CK(clk), .Q(mult_ab_2_0[0]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N18), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N9), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  XNOR2_X1 U66 ( .A(port_rand_mul[1]), .B(n11), .ZN(N6) );
  NAND2_X1 U67 ( .A1(ref_1_port_o_2_0[0]), .A2(port_a_2[0]), .ZN(n11) );
  XNOR2_X1 U68 ( .A(port_rand_mul[1]), .B(n22), .ZN(N15) );
  NAND2_X1 U69 ( .A1(ref_1_port_o_2_0[1]), .A2(port_a_2[1]), .ZN(n22) );
  XNOR2_X1 U70 ( .A(port_rand_mul[1]), .B(n15), .ZN(N24) );
  NAND2_X1 U71 ( .A1(ref_1_port_o_2_0[2]), .A2(port_a_2[2]), .ZN(n15) );
  XNOR2_X1 U72 ( .A(port_rand_mul[2]), .B(n10), .ZN(N7) );
  NAND2_X1 U73 ( .A1(ref_1_port_o_2_1[0]), .A2(port_a_2[0]), .ZN(n10) );
  XNOR2_X1 U74 ( .A(port_rand_mul[2]), .B(n21), .ZN(N16) );
  NAND2_X1 U75 ( .A1(ref_1_port_o_2_1[1]), .A2(port_a_2[1]), .ZN(n21) );
  XNOR2_X1 U76 ( .A(port_rand_mul[2]), .B(n14), .ZN(N25) );
  NAND2_X1 U77 ( .A1(ref_1_port_o_2_1[2]), .A2(port_a_2[2]), .ZN(n14) );
  XNOR2_X1 U78 ( .A(port_rand_mul[2]), .B(n12), .ZN(N5) );
  NAND2_X1 U79 ( .A1(ref_1_port_o_1_2[0]), .A2(port_a_1[0]), .ZN(n12) );
  XNOR2_X1 U80 ( .A(port_rand_mul[2]), .B(n23), .ZN(N14) );
  NAND2_X1 U81 ( .A1(ref_1_port_o_1_2[1]), .A2(port_a_1[1]), .ZN(n23) );
  XNOR2_X1 U82 ( .A(port_rand_mul[2]), .B(n16), .ZN(N23) );
  NAND2_X1 U83 ( .A1(ref_1_port_o_1_2[2]), .A2(port_a_1[2]), .ZN(n16) );
  XNOR2_X1 U84 ( .A(port_rand_mul[0]), .B(n27), .ZN(N1) );
  NAND2_X1 U85 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(n27) );
  XNOR2_X1 U86 ( .A(port_rand_mul[0]), .B(n26), .ZN(N10) );
  NAND2_X1 U87 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(n26) );
  XNOR2_X1 U88 ( .A(port_rand_mul[0]), .B(n20), .ZN(N19) );
  NAND2_X1 U89 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(n20) );
  XNOR2_X1 U90 ( .A(port_rand_mul[1]), .B(n19), .ZN(N2) );
  NAND2_X1 U91 ( .A1(ref_1_port_o_0_2[0]), .A2(port_a_0[0]), .ZN(n19) );
  XNOR2_X1 U92 ( .A(port_rand_mul[1]), .B(n25), .ZN(N11) );
  NAND2_X1 U93 ( .A1(ref_1_port_o_0_2[1]), .A2(port_a_0[1]), .ZN(n25) );
  XNOR2_X1 U94 ( .A(port_rand_mul[1]), .B(n18), .ZN(N20) );
  NAND2_X1 U95 ( .A1(ref_1_port_o_0_2[2]), .A2(port_a_0[2]), .ZN(n18) );
  XNOR2_X1 U96 ( .A(port_rand_mul[0]), .B(n13), .ZN(N3) );
  NAND2_X1 U97 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(n13) );
  XNOR2_X1 U98 ( .A(port_rand_mul[0]), .B(n24), .ZN(N12) );
  NAND2_X1 U99 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(n24) );
  XNOR2_X1 U100 ( .A(port_rand_mul[0]), .B(n17), .ZN(N21) );
  NAND2_X1 U101 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(n17) );
  AND2_X1 U102 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U103 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N9) );
  AND2_X1 U104 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N18) );
  AND2_X1 U105 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N4) );
  AND2_X1 U106 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N13) );
  AND2_X1 U107 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N22) );
  AND2_X1 U108 ( .A1(ref_1_port_o_2_2[0]), .A2(port_a_2[0]), .ZN(N8) );
  AND2_X1 U109 ( .A1(ref_1_port_o_2_2[1]), .A2(port_a_2[1]), .ZN(N17) );
  AND2_X1 U110 ( .A1(ref_1_port_o_2_2[2]), .A2(port_a_2[2]), .ZN(N26) );
  XOR2_X1 U111 ( .A(mult_ab_2_0[0]), .B(n3), .Z(port_c_2[0]) );
  XOR2_X1 U112 ( .A(temp_0_2[0]), .B(mult_ab_2_1[0]), .Z(n3) );
  XOR2_X1 U113 ( .A(mult_ab_2_0[1]), .B(n2), .Z(port_c_2[1]) );
  XOR2_X1 U114 ( .A(temp_0_2[1]), .B(mult_ab_2_1[1]), .Z(n2) );
  XOR2_X1 U115 ( .A(mult_ab_2_0[2]), .B(n1), .Z(port_c_2[2]) );
  XOR2_X1 U116 ( .A(temp_0_2[2]), .B(mult_ab_2_1[2]), .Z(n1) );
  XOR2_X1 U117 ( .A(mult_ab_1_0[0]), .B(n6), .Z(port_c_1[0]) );
  XOR2_X1 U118 ( .A(temp_0_1[0]), .B(mult_ab_1_2[0]), .Z(n6) );
  XOR2_X1 U119 ( .A(mult_ab_1_0[1]), .B(n5), .Z(port_c_1[1]) );
  XOR2_X1 U120 ( .A(temp_0_1[1]), .B(mult_ab_1_2[1]), .Z(n5) );
  XOR2_X1 U121 ( .A(mult_ab_1_0[2]), .B(n4), .Z(port_c_1[2]) );
  XOR2_X1 U122 ( .A(temp_0_1[2]), .B(mult_ab_1_2[2]), .Z(n4) );
  XOR2_X1 U123 ( .A(mult_ab_0_1[0]), .B(n9), .Z(port_c_0[0]) );
  XOR2_X1 U124 ( .A(temp_0_0[0]), .B(mult_ab_0_2[0]), .Z(n9) );
  XOR2_X1 U125 ( .A(mult_ab_0_1[1]), .B(n8), .Z(port_c_0[1]) );
  XOR2_X1 U126 ( .A(temp_0_0[1]), .B(mult_ab_0_2[1]), .Z(n8) );
  XOR2_X1 U127 ( .A(mult_ab_0_1[2]), .B(n7), .Z(port_c_0[2]) );
  XOR2_X1 U128 ( .A(temp_0_0[2]), .B(mult_ab_0_2[2]), .Z(n7) );
  DFF_X1 ref_1_reg_out_2_2_reg_0_ ( .D(ref_1_maj_35_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_1_ ( .D(ref_1_maj_44_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_2_ ( .D(ref_1_maj_53_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_0_ ( .D(ref_1_maj_34_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_1_ ( .D(ref_1_maj_43_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_2_ ( .D(ref_1_maj_52_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_0_ ( .D(ref_1_maj_33_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_1_ ( .D(ref_1_maj_42_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_2_ ( .D(ref_1_maj_51_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_0_ ( .D(ref_1_maj_32_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_1_ ( .D(ref_1_maj_41_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_2_ ( .D(ref_1_maj_50_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_0_ ( .D(ref_1_maj_31_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_1_ ( .D(ref_1_maj_40_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_2_ ( .D(ref_1_maj_49_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_0_ ( .D(ref_1_maj_30_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_1_ ( .D(ref_1_maj_39_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_2_ ( .D(ref_1_maj_48_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_0_ ( .D(ref_1_maj_29_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_1_ ( .D(ref_1_maj_38_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_2_ ( .D(ref_1_maj_47_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_0_ ( .D(ref_1_maj_28_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_1_ ( .D(ref_1_maj_37_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_2_ ( .D(ref_1_maj_46_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_0_ ( .D(ref_1_maj_27_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_1_ ( .D(ref_1_maj_36_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_2_ ( .D(ref_1_maj_45_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[2]), .QN() );
  XOR2_X1 ref_1_simpleXor_18_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_simpleXor_18_port_z) );
  XOR2_X2 ref_1_simpleXor_19_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_18_port_z), .Z(ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_20_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_simpleXor_20_port_z) );
  XOR2_X2 ref_1_simpleXor_21_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_20_port_z), .Z(ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_22_U1 ( .A(port_rand_ref[1]), .B(port_b_2[0]), .Z(
        ref_1_simpleXor_22_port_z) );
  XOR2_X2 ref_1_simpleXor_23_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_22_port_z), .Z(ref_1_refreshed_2_0_) );
  XOR2_X1 ref_1_simpleXor_24_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_simpleXor_24_port_z) );
  XOR2_X2 ref_1_simpleXor_25_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_24_port_z), .Z(ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_26_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_simpleXor_26_port_z) );
  XOR2_X2 ref_1_simpleXor_27_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_26_port_z), .Z(ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_28_U1 ( .A(port_rand_ref[1]), .B(port_b_2[1]), .Z(
        ref_1_simpleXor_28_port_z) );
  XOR2_X2 ref_1_simpleXor_29_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_28_port_z), .Z(ref_1_refreshed_2_1_) );
  XOR2_X1 ref_1_simpleXor_30_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_simpleXor_30_port_z) );
  XOR2_X1 ref_1_simpleXor_31_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_30_port_z), .Z(ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_32_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_simpleXor_32_port_z) );
  XOR2_X1 ref_1_simpleXor_33_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_32_port_z), .Z(ref_1_refreshed_1_2_) );
  XOR2_X1 ref_1_simpleXor_34_U1 ( .A(port_rand_ref[1]), .B(port_b_2[2]), .Z(
        ref_1_simpleXor_34_port_z) );
  XOR2_X1 ref_1_simpleXor_35_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_34_port_z), .Z(ref_1_refreshed_2_2_) );
  OR2_X1 ref_1_maj_27_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_27_n3) );
  NAND2_X1 ref_1_maj_27_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_27_n1) );
  NAND2_X1 ref_1_maj_27_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_27_n3), 
        .ZN(ref_1_maj_27_n2) );
  NAND2_X1 ref_1_maj_27_U1 ( .A1(ref_1_maj_27_n1), .A2(ref_1_maj_27_n2), .ZN(
        ref_1_maj_27_port_o) );
  OR2_X1 ref_1_maj_28_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_28_n4) );
  NAND2_X1 ref_1_maj_28_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_28_n6) );
  NAND2_X1 ref_1_maj_28_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_28_n4), 
        .ZN(ref_1_maj_28_n5) );
  NAND2_X1 ref_1_maj_28_U1 ( .A1(ref_1_maj_28_n6), .A2(ref_1_maj_28_n5), .ZN(
        ref_1_maj_28_port_o) );
  OR2_X1 ref_1_maj_29_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_29_n4) );
  NAND2_X1 ref_1_maj_29_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_29_n6) );
  NAND2_X1 ref_1_maj_29_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_29_n4), 
        .ZN(ref_1_maj_29_n5) );
  NAND2_X1 ref_1_maj_29_U1 ( .A1(ref_1_maj_29_n6), .A2(ref_1_maj_29_n5), .ZN(
        ref_1_maj_29_port_o) );
  OR2_X1 ref_1_maj_30_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_30_n4) );
  NAND2_X1 ref_1_maj_30_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_30_n6) );
  NAND2_X1 ref_1_maj_30_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_30_n4), 
        .ZN(ref_1_maj_30_n5) );
  NAND2_X1 ref_1_maj_30_U1 ( .A1(ref_1_maj_30_n6), .A2(ref_1_maj_30_n5), .ZN(
        ref_1_maj_30_port_o) );
  OR2_X1 ref_1_maj_31_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_31_n4) );
  NAND2_X1 ref_1_maj_31_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_31_n6) );
  NAND2_X1 ref_1_maj_31_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_31_n4), 
        .ZN(ref_1_maj_31_n5) );
  NAND2_X1 ref_1_maj_31_U1 ( .A1(ref_1_maj_31_n6), .A2(ref_1_maj_31_n5), .ZN(
        ref_1_maj_31_port_o) );
  OR2_X1 ref_1_maj_32_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_32_n4) );
  NAND2_X1 ref_1_maj_32_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_32_n6) );
  NAND2_X1 ref_1_maj_32_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_32_n4), 
        .ZN(ref_1_maj_32_n5) );
  NAND2_X1 ref_1_maj_32_U1 ( .A1(ref_1_maj_32_n6), .A2(ref_1_maj_32_n5), .ZN(
        ref_1_maj_32_port_o) );
  OR2_X1 ref_1_maj_33_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_33_n4) );
  NAND2_X1 ref_1_maj_33_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_33_n6) );
  NAND2_X1 ref_1_maj_33_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_33_n4), 
        .ZN(ref_1_maj_33_n5) );
  NAND2_X1 ref_1_maj_33_U1 ( .A1(ref_1_maj_33_n6), .A2(ref_1_maj_33_n5), .ZN(
        ref_1_maj_33_port_o) );
  OR2_X1 ref_1_maj_34_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_34_n4) );
  NAND2_X1 ref_1_maj_34_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_34_n6) );
  NAND2_X1 ref_1_maj_34_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_34_n4), 
        .ZN(ref_1_maj_34_n5) );
  NAND2_X1 ref_1_maj_34_U1 ( .A1(ref_1_maj_34_n6), .A2(ref_1_maj_34_n5), .ZN(
        ref_1_maj_34_port_o) );
  OR2_X1 ref_1_maj_35_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_35_n4) );
  NAND2_X1 ref_1_maj_35_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_35_n6) );
  NAND2_X1 ref_1_maj_35_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_35_n4), 
        .ZN(ref_1_maj_35_n5) );
  NAND2_X1 ref_1_maj_35_U1 ( .A1(ref_1_maj_35_n6), .A2(ref_1_maj_35_n5), .ZN(
        ref_1_maj_35_port_o) );
  OR2_X1 ref_1_maj_36_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_36_n4) );
  NAND2_X1 ref_1_maj_36_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_36_n6) );
  NAND2_X1 ref_1_maj_36_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_36_n4), 
        .ZN(ref_1_maj_36_n5) );
  NAND2_X1 ref_1_maj_36_U1 ( .A1(ref_1_maj_36_n6), .A2(ref_1_maj_36_n5), .ZN(
        ref_1_maj_36_port_o) );
  OR2_X1 ref_1_maj_37_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_37_n4) );
  NAND2_X1 ref_1_maj_37_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_37_n6) );
  NAND2_X1 ref_1_maj_37_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_37_n4), 
        .ZN(ref_1_maj_37_n5) );
  NAND2_X1 ref_1_maj_37_U1 ( .A1(ref_1_maj_37_n6), .A2(ref_1_maj_37_n5), .ZN(
        ref_1_maj_37_port_o) );
  OR2_X1 ref_1_maj_38_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_38_n4) );
  NAND2_X1 ref_1_maj_38_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_38_n6) );
  NAND2_X1 ref_1_maj_38_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_38_n4), 
        .ZN(ref_1_maj_38_n5) );
  NAND2_X1 ref_1_maj_38_U1 ( .A1(ref_1_maj_38_n6), .A2(ref_1_maj_38_n5), .ZN(
        ref_1_maj_38_port_o) );
  OR2_X1 ref_1_maj_39_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_39_n4) );
  NAND2_X1 ref_1_maj_39_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_39_n6) );
  NAND2_X1 ref_1_maj_39_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_39_n4), 
        .ZN(ref_1_maj_39_n5) );
  NAND2_X1 ref_1_maj_39_U1 ( .A1(ref_1_maj_39_n6), .A2(ref_1_maj_39_n5), .ZN(
        ref_1_maj_39_port_o) );
  OR2_X1 ref_1_maj_40_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_40_n4) );
  NAND2_X1 ref_1_maj_40_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_40_n6) );
  NAND2_X1 ref_1_maj_40_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_40_n4), 
        .ZN(ref_1_maj_40_n5) );
  NAND2_X1 ref_1_maj_40_U1 ( .A1(ref_1_maj_40_n6), .A2(ref_1_maj_40_n5), .ZN(
        ref_1_maj_40_port_o) );
  OR2_X1 ref_1_maj_41_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_41_n4) );
  NAND2_X1 ref_1_maj_41_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_41_n6) );
  NAND2_X1 ref_1_maj_41_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_41_n4), 
        .ZN(ref_1_maj_41_n5) );
  NAND2_X1 ref_1_maj_41_U1 ( .A1(ref_1_maj_41_n6), .A2(ref_1_maj_41_n5), .ZN(
        ref_1_maj_41_port_o) );
  OR2_X1 ref_1_maj_42_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_42_n4) );
  NAND2_X1 ref_1_maj_42_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_42_n6) );
  NAND2_X1 ref_1_maj_42_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_42_n4), 
        .ZN(ref_1_maj_42_n5) );
  NAND2_X1 ref_1_maj_42_U1 ( .A1(ref_1_maj_42_n6), .A2(ref_1_maj_42_n5), .ZN(
        ref_1_maj_42_port_o) );
  OR2_X1 ref_1_maj_43_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_43_n4) );
  NAND2_X1 ref_1_maj_43_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_43_n6) );
  NAND2_X1 ref_1_maj_43_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_43_n4), 
        .ZN(ref_1_maj_43_n5) );
  NAND2_X1 ref_1_maj_43_U1 ( .A1(ref_1_maj_43_n6), .A2(ref_1_maj_43_n5), .ZN(
        ref_1_maj_43_port_o) );
  OR2_X1 ref_1_maj_44_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_44_n4) );
  NAND2_X1 ref_1_maj_44_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_44_n6) );
  NAND2_X1 ref_1_maj_44_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_44_n4), 
        .ZN(ref_1_maj_44_n5) );
  NAND2_X1 ref_1_maj_44_U1 ( .A1(ref_1_maj_44_n6), .A2(ref_1_maj_44_n5), .ZN(
        ref_1_maj_44_port_o) );
  OR2_X1 ref_1_maj_45_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_45_n4) );
  NAND2_X1 ref_1_maj_45_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_45_n6) );
  NAND2_X1 ref_1_maj_45_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_45_n4), 
        .ZN(ref_1_maj_45_n5) );
  NAND2_X1 ref_1_maj_45_U1 ( .A1(ref_1_maj_45_n6), .A2(ref_1_maj_45_n5), .ZN(
        ref_1_maj_45_port_o) );
  OR2_X1 ref_1_maj_46_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_46_n4) );
  NAND2_X1 ref_1_maj_46_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_46_n6) );
  NAND2_X1 ref_1_maj_46_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_46_n4), 
        .ZN(ref_1_maj_46_n5) );
  NAND2_X1 ref_1_maj_46_U1 ( .A1(ref_1_maj_46_n6), .A2(ref_1_maj_46_n5), .ZN(
        ref_1_maj_46_port_o) );
  OR2_X1 ref_1_maj_47_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_47_n4) );
  NAND2_X1 ref_1_maj_47_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_47_n6) );
  NAND2_X1 ref_1_maj_47_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_47_n4), 
        .ZN(ref_1_maj_47_n5) );
  NAND2_X1 ref_1_maj_47_U1 ( .A1(ref_1_maj_47_n6), .A2(ref_1_maj_47_n5), .ZN(
        ref_1_maj_47_port_o) );
  OR2_X1 ref_1_maj_48_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_48_n4) );
  NAND2_X1 ref_1_maj_48_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_48_n6) );
  NAND2_X1 ref_1_maj_48_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_48_n4), 
        .ZN(ref_1_maj_48_n5) );
  NAND2_X1 ref_1_maj_48_U1 ( .A1(ref_1_maj_48_n6), .A2(ref_1_maj_48_n5), .ZN(
        ref_1_maj_48_port_o) );
  OR2_X1 ref_1_maj_49_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_49_n4) );
  NAND2_X1 ref_1_maj_49_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_49_n6) );
  NAND2_X1 ref_1_maj_49_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_49_n4), 
        .ZN(ref_1_maj_49_n5) );
  NAND2_X1 ref_1_maj_49_U1 ( .A1(ref_1_maj_49_n6), .A2(ref_1_maj_49_n5), .ZN(
        ref_1_maj_49_port_o) );
  OR2_X1 ref_1_maj_50_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_50_n4) );
  NAND2_X1 ref_1_maj_50_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_50_n6) );
  NAND2_X1 ref_1_maj_50_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_50_n4), 
        .ZN(ref_1_maj_50_n5) );
  NAND2_X1 ref_1_maj_50_U1 ( .A1(ref_1_maj_50_n6), .A2(ref_1_maj_50_n5), .ZN(
        ref_1_maj_50_port_o) );
  OR2_X1 ref_1_maj_51_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_51_n4) );
  NAND2_X1 ref_1_maj_51_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_51_n6) );
  NAND2_X1 ref_1_maj_51_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_51_n4), 
        .ZN(ref_1_maj_51_n5) );
  NAND2_X1 ref_1_maj_51_U1 ( .A1(ref_1_maj_51_n6), .A2(ref_1_maj_51_n5), .ZN(
        ref_1_maj_51_port_o) );
  OR2_X1 ref_1_maj_52_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_52_n4) );
  NAND2_X1 ref_1_maj_52_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_52_n6) );
  NAND2_X1 ref_1_maj_52_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_52_n4), 
        .ZN(ref_1_maj_52_n5) );
  NAND2_X1 ref_1_maj_52_U1 ( .A1(ref_1_maj_52_n6), .A2(ref_1_maj_52_n5), .ZN(
        ref_1_maj_52_port_o) );
  OR2_X1 ref_1_maj_53_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_53_n4) );
  NAND2_X1 ref_1_maj_53_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_53_n6) );
  NAND2_X1 ref_1_maj_53_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_53_n4), 
        .ZN(ref_1_maj_53_n5) );
  NAND2_X1 ref_1_maj_53_U1 ( .A1(ref_1_maj_53_n6), .A2(ref_1_maj_53_n5), .ZN(
        ref_1_maj_53_port_o) );
endmodule

