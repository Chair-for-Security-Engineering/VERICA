
module CINI_HPC3 ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
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
  wire   simpleAnd_18_port_z, simpleAnd_19_port_z, simpleAnd_20_port_z,
         simpleAnd_21_port_z, simpleAnd_22_port_z, simpleAnd_23_port_z,
         simpleAnd_24_port_z, simpleAnd_25_port_z, simpleAnd_26_port_z,
         simpleAnd_27_port_z, simpleAnd_28_port_z, simpleAnd_29_port_z,
         simpleAnd_30_port_z, simpleAnd_31_port_z, simpleAnd_32_port_z,
         simpleAnd_33_port_z, simpleAnd_34_port_z, simpleAnd_35_port_z,
         maj_36_port_o, maj_37_port_o, maj_38_port_o, maj_39_port_o,
         maj_40_port_o, maj_41_port_o, maj_42_port_o, maj_43_port_o,
         maj_44_port_o, maj_45_port_o, maj_46_port_o, maj_47_port_o,
         maj_48_port_o, maj_49_port_o, maj_50_port_o, maj_51_port_o,
         maj_52_port_o, maj_53_port_o, maj_54_port_o, maj_55_port_o,
         maj_56_port_o, maj_57_port_o, maj_58_port_o, maj_59_port_o,
         maj_60_port_o, maj_61_port_o, maj_62_port_o, maj_63_port_o,
         maj_64_port_o, maj_65_port_o, maj_66_port_o, maj_67_port_o,
         maj_68_port_o, maj_69_port_o, maj_70_port_o, maj_71_port_o, N0, N1,
         N2, N3, N4, N5, N6, N7, N8, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, maj_36_n3, maj_36_n2, maj_36_n1, maj_37_n6, maj_37_n5,
         maj_37_n4, maj_38_n6, maj_38_n5, maj_38_n4, maj_39_n6, maj_39_n5,
         maj_39_n4, maj_40_n6, maj_40_n5, maj_40_n4, maj_41_n6, maj_41_n5,
         maj_41_n4, maj_42_n6, maj_42_n5, maj_42_n4, maj_43_n6, maj_43_n5,
         maj_43_n4, maj_44_n6, maj_44_n5, maj_44_n4, maj_45_n6, maj_45_n5,
         maj_45_n4, maj_46_n6, maj_46_n5, maj_46_n4, maj_47_n6, maj_47_n5,
         maj_47_n4, maj_48_n6, maj_48_n5, maj_48_n4, maj_49_n6, maj_49_n5,
         maj_49_n4, maj_50_n6, maj_50_n5, maj_50_n4, maj_51_n6, maj_51_n5,
         maj_51_n4, maj_52_n6, maj_52_n5, maj_52_n4, maj_53_n6, maj_53_n5,
         maj_53_n4, maj_54_n6, maj_54_n5, maj_54_n4, maj_55_n6, maj_55_n5,
         maj_55_n4, maj_56_n6, maj_56_n5, maj_56_n4, maj_57_n6, maj_57_n5,
         maj_57_n4, maj_58_n6, maj_58_n5, maj_58_n4, maj_59_n6, maj_59_n5,
         maj_59_n4, maj_60_n6, maj_60_n5, maj_60_n4, maj_61_n6, maj_61_n5,
         maj_61_n4, maj_62_n6, maj_62_n5, maj_62_n4, maj_63_n6, maj_63_n5,
         maj_63_n4, maj_64_n6, maj_64_n5, maj_64_n4, maj_65_n6, maj_65_n5,
         maj_65_n4, maj_66_n6, maj_66_n5, maj_66_n4, maj_67_n6, maj_67_n5,
         maj_67_n4, maj_68_n6, maj_68_n5, maj_68_n4, maj_69_n6, maj_69_n5,
         maj_69_n4, maj_70_n6, maj_70_n5, maj_70_n4, maj_71_n6, maj_71_n5,
         maj_71_n4;
  wire   [2:0] u_0_0;
  wire   [2:0] v_0_0;
  wire   [2:0] u_0_1;
  wire   [2:0] v_0_1;
  wire   [2:0] u_1_0;
  wire   [2:0] v_1_0;
  wire   [2:0] u_1_1;
  wire   [2:0] v_1_1;
  wire   [2:0] u_2_0;
  wire   [2:0] v_2_0;
  wire   [2:0] u_2_1;
  wire   [2:0] v_2_1;
  wire   [2:0] temp_0_0;
  wire   [2:0] a_reg_0;
  wire   [2:0] v_reg_0_0;
  wire   [2:0] u_reg_0_0;
  wire   [2:0] v_reg_0_1;
  wire   [2:0] u_reg_0_1;
  wire   [2:0] temp_0_1;
  wire   [2:0] a_reg_1;
  wire   [2:0] v_reg_1_0;
  wire   [2:0] u_reg_1_0;
  wire   [2:0] v_reg_1_1;
  wire   [2:0] u_reg_1_1;
  wire   [2:0] temp_0_2;
  wire   [2:0] a_reg_2;
  wire   [2:0] v_reg_2_0;
  wire   [2:0] u_reg_2_0;
  wire   [2:0] v_reg_2_1;
  wire   [2:0] u_reg_2_1;

  DFF_X1 u_reg_1_1_reg_2_ ( .D(maj_66_port_o), .CK(clk), .Q(u_reg_1_1[2]), 
        .QN() );
  DFF_X1 u_reg_1_1_reg_1_ ( .D(maj_54_port_o), .CK(clk), .Q(u_reg_1_1[1]), 
        .QN() );
  DFF_X1 u_reg_1_1_reg_0_ ( .D(maj_42_port_o), .CK(clk), .Q(u_reg_1_1[0]), 
        .QN() );
  DFF_X1 a_reg_2_reg_2_ ( .D(port_a_2[2]), .CK(clk), .Q(a_reg_2[2]), .QN() );
  DFF_X1 a_reg_2_reg_1_ ( .D(port_a_2[1]), .CK(clk), .Q(a_reg_2[1]), .QN() );
  DFF_X1 a_reg_2_reg_0_ ( .D(port_a_2[0]), .CK(clk), .Q(a_reg_2[0]), .QN() );
  DFF_X1 v_reg_2_1_reg_2_ ( .D(maj_71_port_o), .CK(clk), .Q(v_reg_2_1[2]), 
        .QN() );
  DFF_X1 v_reg_2_1_reg_1_ ( .D(maj_59_port_o), .CK(clk), .Q(v_reg_2_1[1]), 
        .QN() );
  DFF_X1 v_reg_2_1_reg_0_ ( .D(maj_47_port_o), .CK(clk), .Q(v_reg_2_1[0]), 
        .QN() );
  DFF_X1 u_reg_2_0_reg_2_ ( .D(maj_68_port_o), .CK(clk), .Q(u_reg_2_0[2]), 
        .QN() );
  DFF_X1 u_reg_2_0_reg_1_ ( .D(maj_56_port_o), .CK(clk), .Q(u_reg_2_0[1]), 
        .QN() );
  DFF_X1 u_reg_2_0_reg_0_ ( .D(maj_44_port_o), .CK(clk), .Q(u_reg_2_0[0]), 
        .QN() );
  DFF_X1 ab_reg_2_reg_2_ ( .D(N8), .CK(clk), .Q(temp_0_2[2]), .QN() );
  DFF_X1 ab_reg_2_reg_1_ ( .D(N5), .CK(clk), .Q(temp_0_2[1]), .QN() );
  DFF_X1 ab_reg_2_reg_0_ ( .D(N2), .CK(clk), .Q(temp_0_2[0]), .QN() );
  DFF_X1 v_reg_2_0_reg_2_ ( .D(maj_69_port_o), .CK(clk), .Q(v_reg_2_0[2]), 
        .QN() );
  DFF_X1 v_reg_2_0_reg_1_ ( .D(maj_57_port_o), .CK(clk), .Q(v_reg_2_0[1]), 
        .QN() );
  DFF_X1 v_reg_2_0_reg_0_ ( .D(maj_45_port_o), .CK(clk), .Q(v_reg_2_0[0]), 
        .QN() );
  DFF_X1 u_reg_2_1_reg_2_ ( .D(maj_70_port_o), .CK(clk), .Q(u_reg_2_1[2]), 
        .QN() );
  DFF_X1 u_reg_2_1_reg_1_ ( .D(maj_58_port_o), .CK(clk), .Q(u_reg_2_1[1]), 
        .QN() );
  DFF_X1 u_reg_2_1_reg_0_ ( .D(maj_46_port_o), .CK(clk), .Q(u_reg_2_1[0]), 
        .QN() );
  DFF_X1 a_reg_1_reg_2_ ( .D(port_a_1[2]), .CK(clk), .Q(a_reg_1[2]), .QN() );
  DFF_X1 a_reg_1_reg_1_ ( .D(port_a_1[1]), .CK(clk), .Q(a_reg_1[1]), .QN() );
  DFF_X1 a_reg_1_reg_0_ ( .D(port_a_1[0]), .CK(clk), .Q(a_reg_1[0]), .QN() );
  DFF_X1 v_reg_1_1_reg_2_ ( .D(maj_67_port_o), .CK(clk), .Q(v_reg_1_1[2]), 
        .QN() );
  DFF_X1 v_reg_1_1_reg_1_ ( .D(maj_55_port_o), .CK(clk), .Q(v_reg_1_1[1]), 
        .QN() );
  DFF_X1 v_reg_1_1_reg_0_ ( .D(maj_43_port_o), .CK(clk), .Q(v_reg_1_1[0]), 
        .QN() );
  DFF_X1 ab_reg_1_reg_2_ ( .D(N7), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 ab_reg_1_reg_1_ ( .D(N4), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 ab_reg_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 a_reg_0_reg_2_ ( .D(port_a_0[2]), .CK(clk), .Q(a_reg_0[2]), .QN() );
  DFF_X1 a_reg_0_reg_1_ ( .D(port_a_0[1]), .CK(clk), .Q(a_reg_0[1]), .QN() );
  DFF_X1 a_reg_0_reg_0_ ( .D(port_a_0[0]), .CK(clk), .Q(a_reg_0[0]), .QN() );
  DFF_X1 ab_reg_0_reg_2_ ( .D(N6), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 ab_reg_0_reg_1_ ( .D(N3), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 ab_reg_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 u_reg_0_0_reg_2_ ( .D(maj_60_port_o), .CK(clk), .Q(u_reg_0_0[2]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_1_ ( .D(maj_48_port_o), .CK(clk), .Q(u_reg_0_0[1]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_0_ ( .D(maj_36_port_o), .CK(clk), .Q(u_reg_0_0[0]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_2_ ( .D(maj_61_port_o), .CK(clk), .Q(v_reg_0_0[2]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_1_ ( .D(maj_49_port_o), .CK(clk), .Q(v_reg_0_0[1]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_0_ ( .D(maj_37_port_o), .CK(clk), .Q(v_reg_0_0[0]), 
        .QN() );
  DFF_X1 u_reg_0_1_reg_2_ ( .D(maj_62_port_o), .CK(clk), .Q(u_reg_0_1[2]), 
        .QN() );
  DFF_X1 u_reg_0_1_reg_1_ ( .D(maj_50_port_o), .CK(clk), .Q(u_reg_0_1[1]), 
        .QN() );
  DFF_X1 u_reg_0_1_reg_0_ ( .D(maj_38_port_o), .CK(clk), .Q(u_reg_0_1[0]), 
        .QN() );
  DFF_X1 v_reg_0_1_reg_2_ ( .D(maj_63_port_o), .CK(clk), .Q(v_reg_0_1[2]), 
        .QN() );
  DFF_X1 v_reg_0_1_reg_1_ ( .D(maj_51_port_o), .CK(clk), .Q(v_reg_0_1[1]), 
        .QN() );
  DFF_X1 v_reg_0_1_reg_0_ ( .D(maj_39_port_o), .CK(clk), .Q(v_reg_0_1[0]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_2_ ( .D(maj_64_port_o), .CK(clk), .Q(u_reg_1_0[2]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_1_ ( .D(maj_52_port_o), .CK(clk), .Q(u_reg_1_0[1]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_0_ ( .D(maj_40_port_o), .CK(clk), .Q(u_reg_1_0[0]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_2_ ( .D(maj_65_port_o), .CK(clk), .Q(v_reg_1_0[2]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_1_ ( .D(maj_53_port_o), .CK(clk), .Q(v_reg_1_0[1]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_0_ ( .D(maj_41_port_o), .CK(clk), .Q(v_reg_1_0[0]), 
        .QN() );
  XNOR2_X1 U75 ( .A(u_reg_2_1[0]), .B(u_reg_2_0[0]), .ZN(n24) );
  XNOR2_X1 U76 ( .A(u_reg_2_1[1]), .B(u_reg_2_0[1]), .ZN(n19) );
  XNOR2_X1 U77 ( .A(u_reg_2_1[2]), .B(u_reg_2_0[2]), .ZN(n14) );
  XNOR2_X1 U78 ( .A(u_reg_1_1[0]), .B(u_reg_1_0[0]), .ZN(n39) );
  XNOR2_X1 U79 ( .A(u_reg_1_1[1]), .B(u_reg_1_0[1]), .ZN(n34) );
  XNOR2_X1 U80 ( .A(u_reg_1_1[2]), .B(u_reg_1_0[2]), .ZN(n29) );
  XNOR2_X1 U81 ( .A(u_reg_0_1[0]), .B(u_reg_0_0[0]), .ZN(n54) );
  XNOR2_X1 U82 ( .A(u_reg_0_1[1]), .B(u_reg_0_0[1]), .ZN(n49) );
  XNOR2_X1 U83 ( .A(u_reg_0_1[2]), .B(u_reg_0_0[2]), .ZN(n44) );
  XOR2_X1 U84 ( .A(n20), .B(n21), .Z(port_c_2[0]) );
  XNOR2_X1 U85 ( .A(n22), .B(n23), .ZN(n21) );
  XOR2_X1 U86 ( .A(n24), .B(temp_0_2[0]), .Z(n20) );
  NAND2_X1 U87 ( .A1(v_reg_2_1[0]), .A2(a_reg_2[0]), .ZN(n22) );
  XOR2_X1 U88 ( .A(n15), .B(n16), .Z(port_c_2[1]) );
  XNOR2_X1 U89 ( .A(n17), .B(n18), .ZN(n16) );
  XOR2_X1 U90 ( .A(n19), .B(temp_0_2[1]), .Z(n15) );
  NAND2_X1 U91 ( .A1(v_reg_2_1[1]), .A2(a_reg_2[1]), .ZN(n17) );
  XOR2_X1 U92 ( .A(n10), .B(n11), .Z(port_c_2[2]) );
  XNOR2_X1 U93 ( .A(n12), .B(n13), .ZN(n11) );
  XOR2_X1 U94 ( .A(n14), .B(temp_0_2[2]), .Z(n10) );
  NAND2_X1 U95 ( .A1(v_reg_2_1[2]), .A2(a_reg_2[2]), .ZN(n12) );
  XOR2_X1 U96 ( .A(n35), .B(n36), .Z(port_c_1[0]) );
  XNOR2_X1 U97 ( .A(n37), .B(n38), .ZN(n36) );
  XOR2_X1 U98 ( .A(n39), .B(temp_0_1[0]), .Z(n35) );
  NAND2_X1 U99 ( .A1(v_reg_1_1[0]), .A2(a_reg_1[0]), .ZN(n37) );
  XOR2_X1 U100 ( .A(n30), .B(n31), .Z(port_c_1[1]) );
  XNOR2_X1 U101 ( .A(n32), .B(n33), .ZN(n31) );
  XOR2_X1 U102 ( .A(n34), .B(temp_0_1[1]), .Z(n30) );
  NAND2_X1 U103 ( .A1(v_reg_1_1[1]), .A2(a_reg_1[1]), .ZN(n32) );
  XOR2_X1 U104 ( .A(n25), .B(n26), .Z(port_c_1[2]) );
  XNOR2_X1 U105 ( .A(n27), .B(n28), .ZN(n26) );
  XOR2_X1 U106 ( .A(n29), .B(temp_0_1[2]), .Z(n25) );
  NAND2_X1 U107 ( .A1(v_reg_1_1[2]), .A2(a_reg_1[2]), .ZN(n27) );
  XOR2_X1 U108 ( .A(n50), .B(n51), .Z(port_c_0[0]) );
  XNOR2_X1 U109 ( .A(n52), .B(n53), .ZN(n51) );
  XOR2_X1 U110 ( .A(n54), .B(temp_0_0[0]), .Z(n50) );
  NAND2_X1 U111 ( .A1(v_reg_0_1[0]), .A2(a_reg_0[0]), .ZN(n52) );
  XOR2_X1 U112 ( .A(n45), .B(n46), .Z(port_c_0[1]) );
  XNOR2_X1 U113 ( .A(n47), .B(n48), .ZN(n46) );
  XOR2_X1 U114 ( .A(n49), .B(temp_0_0[1]), .Z(n45) );
  NAND2_X1 U115 ( .A1(v_reg_0_1[1]), .A2(a_reg_0[1]), .ZN(n47) );
  XOR2_X1 U116 ( .A(n40), .B(n41), .Z(port_c_0[2]) );
  XNOR2_X1 U117 ( .A(n42), .B(n43), .ZN(n41) );
  XOR2_X1 U118 ( .A(n44), .B(temp_0_0[2]), .Z(n40) );
  NAND2_X1 U119 ( .A1(v_reg_0_1[2]), .A2(a_reg_0[2]), .ZN(n42) );
  NAND2_X1 U120 ( .A1(v_reg_2_0[0]), .A2(a_reg_2[0]), .ZN(n23) );
  NAND2_X1 U121 ( .A1(v_reg_2_0[1]), .A2(a_reg_2[1]), .ZN(n18) );
  NAND2_X1 U122 ( .A1(v_reg_2_0[2]), .A2(a_reg_2[2]), .ZN(n13) );
  NAND2_X1 U123 ( .A1(v_reg_1_0[0]), .A2(a_reg_1[0]), .ZN(n38) );
  NAND2_X1 U124 ( .A1(v_reg_1_0[1]), .A2(a_reg_1[1]), .ZN(n33) );
  NAND2_X1 U125 ( .A1(v_reg_1_0[2]), .A2(a_reg_1[2]), .ZN(n28) );
  NAND2_X1 U126 ( .A1(v_reg_0_0[0]), .A2(a_reg_0[0]), .ZN(n53) );
  NAND2_X1 U127 ( .A1(v_reg_0_0[1]), .A2(a_reg_0[1]), .ZN(n48) );
  NAND2_X1 U128 ( .A1(v_reg_0_0[2]), .A2(a_reg_0[2]), .ZN(n43) );
  INV_X1 U129 ( .A(port_a_0[0]), .ZN(n3) );
  INV_X1 U130 ( .A(port_a_0[1]), .ZN(n2) );
  INV_X1 U131 ( .A(port_a_0[2]), .ZN(n1) );
  INV_X1 U132 ( .A(port_a_2[0]), .ZN(n9) );
  INV_X1 U133 ( .A(port_a_2[1]), .ZN(n8) );
  INV_X1 U134 ( .A(port_a_2[2]), .ZN(n7) );
  INV_X1 U135 ( .A(port_a_1[0]), .ZN(n6) );
  INV_X1 U136 ( .A(port_a_1[1]), .ZN(n5) );
  INV_X1 U137 ( .A(port_a_1[2]), .ZN(n4) );
  AND2_X1 U138 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U139 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N3) );
  AND2_X1 U140 ( .A1(port_b_0[2]), .A2(port_a_0[2]), .ZN(N6) );
  AND2_X1 U141 ( .A1(port_b_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U142 ( .A1(port_b_1[1]), .A2(port_a_1[1]), .ZN(N4) );
  AND2_X1 U143 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N7) );
  AND2_X1 U144 ( .A1(port_b_2[0]), .A2(port_a_2[0]), .ZN(N2) );
  AND2_X1 U145 ( .A1(port_b_2[1]), .A2(port_a_2[1]), .ZN(N5) );
  AND2_X1 U146 ( .A1(port_b_2[2]), .A2(port_a_2[2]), .ZN(N8) );
  AND2_X1 simpleAnd_18_U1 ( .A1(port_rand_mul[0]), .A2(n3), .ZN(
        simpleAnd_18_port_z) );
  XOR2_X1 simpleXor_36_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_18_port_z), .Z(
        u_0_0[0]) );
  XOR2_X1 simpleXor_37_U1 ( .A(port_rand_mul[0]), .B(port_b_1[0]), .Z(v_0_0[0]) );
  AND2_X1 simpleAnd_19_U1 ( .A1(port_rand_mul[1]), .A2(n3), .ZN(
        simpleAnd_19_port_z) );
  XOR2_X1 simpleXor_38_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_19_port_z), .Z(
        u_0_1[0]) );
  XOR2_X1 simpleXor_39_U1 ( .A(port_rand_mul[1]), .B(port_b_2[0]), .Z(v_0_1[0]) );
  AND2_X1 simpleAnd_20_U1 ( .A1(port_rand_mul[0]), .A2(n6), .ZN(
        simpleAnd_20_port_z) );
  XOR2_X1 simpleXor_40_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_20_port_z), .Z(
        u_1_0[0]) );
  XOR2_X1 simpleXor_41_U1 ( .A(port_rand_mul[0]), .B(port_b_0[0]), .Z(v_1_0[0]) );
  AND2_X1 simpleAnd_21_U1 ( .A1(port_rand_mul[2]), .A2(n6), .ZN(
        simpleAnd_21_port_z) );
  XOR2_X1 simpleXor_42_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_21_port_z), .Z(
        u_1_1[0]) );
  XOR2_X1 simpleXor_43_U1 ( .A(port_rand_mul[2]), .B(port_b_2[0]), .Z(v_1_1[0]) );
  AND2_X1 simpleAnd_22_U1 ( .A1(port_rand_mul[1]), .A2(n9), .ZN(
        simpleAnd_22_port_z) );
  XOR2_X1 simpleXor_44_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_22_port_z), .Z(
        u_2_0[0]) );
  XOR2_X1 simpleXor_45_U1 ( .A(port_rand_mul[1]), .B(port_b_0[0]), .Z(v_2_0[0]) );
  AND2_X1 simpleAnd_23_U1 ( .A1(port_rand_mul[2]), .A2(n9), .ZN(
        simpleAnd_23_port_z) );
  XOR2_X1 simpleXor_46_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_23_port_z), .Z(
        u_2_1[0]) );
  XOR2_X1 simpleXor_47_U1 ( .A(port_rand_mul[2]), .B(port_b_1[0]), .Z(v_2_1[0]) );
  AND2_X1 simpleAnd_24_U1 ( .A1(port_rand_mul[0]), .A2(n2), .ZN(
        simpleAnd_24_port_z) );
  XOR2_X1 simpleXor_48_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_24_port_z), .Z(
        u_0_0[1]) );
  XOR2_X1 simpleXor_49_U1 ( .A(port_rand_mul[0]), .B(port_b_1[1]), .Z(v_0_0[1]) );
  AND2_X1 simpleAnd_25_U1 ( .A1(port_rand_mul[1]), .A2(n2), .ZN(
        simpleAnd_25_port_z) );
  XOR2_X1 simpleXor_50_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_25_port_z), .Z(
        u_0_1[1]) );
  XOR2_X1 simpleXor_51_U1 ( .A(port_rand_mul[1]), .B(port_b_2[1]), .Z(v_0_1[1]) );
  AND2_X1 simpleAnd_26_U1 ( .A1(port_rand_mul[0]), .A2(n5), .ZN(
        simpleAnd_26_port_z) );
  XOR2_X1 simpleXor_52_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_26_port_z), .Z(
        u_1_0[1]) );
  XOR2_X1 simpleXor_53_U1 ( .A(port_rand_mul[0]), .B(port_b_0[1]), .Z(v_1_0[1]) );
  AND2_X1 simpleAnd_27_U1 ( .A1(port_rand_mul[2]), .A2(n5), .ZN(
        simpleAnd_27_port_z) );
  XOR2_X1 simpleXor_54_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_27_port_z), .Z(
        u_1_1[1]) );
  XOR2_X1 simpleXor_55_U1 ( .A(port_rand_mul[2]), .B(port_b_2[1]), .Z(v_1_1[1]) );
  AND2_X1 simpleAnd_28_U1 ( .A1(port_rand_mul[1]), .A2(n8), .ZN(
        simpleAnd_28_port_z) );
  XOR2_X1 simpleXor_56_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_28_port_z), .Z(
        u_2_0[1]) );
  XOR2_X1 simpleXor_57_U1 ( .A(port_rand_mul[1]), .B(port_b_0[1]), .Z(v_2_0[1]) );
  AND2_X1 simpleAnd_29_U1 ( .A1(port_rand_mul[2]), .A2(n8), .ZN(
        simpleAnd_29_port_z) );
  XOR2_X1 simpleXor_58_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_29_port_z), .Z(
        u_2_1[1]) );
  XOR2_X1 simpleXor_59_U1 ( .A(port_rand_mul[2]), .B(port_b_1[1]), .Z(v_2_1[1]) );
  AND2_X1 simpleAnd_30_U1 ( .A1(port_rand_mul[0]), .A2(n1), .ZN(
        simpleAnd_30_port_z) );
  XOR2_X1 simpleXor_60_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_30_port_z), .Z(
        u_0_0[2]) );
  XOR2_X1 simpleXor_61_U1 ( .A(port_rand_mul[0]), .B(port_b_1[2]), .Z(v_0_0[2]) );
  AND2_X1 simpleAnd_31_U1 ( .A1(port_rand_mul[1]), .A2(n1), .ZN(
        simpleAnd_31_port_z) );
  XOR2_X1 simpleXor_62_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_31_port_z), .Z(
        u_0_1[2]) );
  XOR2_X1 simpleXor_63_U1 ( .A(port_rand_mul[1]), .B(port_b_2[2]), .Z(v_0_1[2]) );
  AND2_X1 simpleAnd_32_U1 ( .A1(port_rand_mul[0]), .A2(n4), .ZN(
        simpleAnd_32_port_z) );
  XOR2_X1 simpleXor_64_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_32_port_z), .Z(
        u_1_0[2]) );
  XOR2_X1 simpleXor_65_U1 ( .A(port_rand_mul[0]), .B(port_b_0[2]), .Z(v_1_0[2]) );
  AND2_X1 simpleAnd_33_U1 ( .A1(port_rand_mul[2]), .A2(n4), .ZN(
        simpleAnd_33_port_z) );
  XOR2_X1 simpleXor_66_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_33_port_z), .Z(
        u_1_1[2]) );
  XOR2_X1 simpleXor_67_U1 ( .A(port_rand_mul[2]), .B(port_b_2[2]), .Z(v_1_1[2]) );
  AND2_X1 simpleAnd_34_U1 ( .A1(port_rand_mul[1]), .A2(n7), .ZN(
        simpleAnd_34_port_z) );
  XOR2_X1 simpleXor_68_U1 ( .A(port_rand_ref[1]), .B(simpleAnd_34_port_z), .Z(
        u_2_0[2]) );
  XOR2_X1 simpleXor_69_U1 ( .A(port_rand_mul[1]), .B(port_b_0[2]), .Z(v_2_0[2]) );
  AND2_X1 simpleAnd_35_U1 ( .A1(port_rand_mul[2]), .A2(n7), .ZN(
        simpleAnd_35_port_z) );
  XOR2_X1 simpleXor_70_U1 ( .A(port_rand_ref[2]), .B(simpleAnd_35_port_z), .Z(
        u_2_1[2]) );
  XOR2_X1 simpleXor_71_U1 ( .A(port_rand_mul[2]), .B(port_b_1[2]), .Z(v_2_1[2]) );
  OR2_X1 maj_36_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_36_n3) );
  NAND2_X1 maj_36_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_36_n1) );
  NAND2_X1 maj_36_U2 ( .A1(u_0_0[2]), .A2(maj_36_n3), .ZN(maj_36_n2) );
  NAND2_X1 maj_36_U1 ( .A1(maj_36_n1), .A2(maj_36_n2), .ZN(maj_36_port_o) );
  OR2_X1 maj_37_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_37_n4) );
  NAND2_X1 maj_37_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_37_n6) );
  NAND2_X1 maj_37_U2 ( .A1(v_0_0[2]), .A2(maj_37_n4), .ZN(maj_37_n5) );
  NAND2_X1 maj_37_U1 ( .A1(maj_37_n6), .A2(maj_37_n5), .ZN(maj_37_port_o) );
  OR2_X1 maj_38_U4 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_38_n4) );
  NAND2_X1 maj_38_U3 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_38_n6) );
  NAND2_X1 maj_38_U2 ( .A1(u_0_1[2]), .A2(maj_38_n4), .ZN(maj_38_n5) );
  NAND2_X1 maj_38_U1 ( .A1(maj_38_n6), .A2(maj_38_n5), .ZN(maj_38_port_o) );
  OR2_X1 maj_39_U4 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_39_n4) );
  NAND2_X1 maj_39_U3 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_39_n6) );
  NAND2_X1 maj_39_U2 ( .A1(v_0_1[2]), .A2(maj_39_n4), .ZN(maj_39_n5) );
  NAND2_X1 maj_39_U1 ( .A1(maj_39_n6), .A2(maj_39_n5), .ZN(maj_39_port_o) );
  OR2_X1 maj_40_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_40_n4) );
  NAND2_X1 maj_40_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_40_n6) );
  NAND2_X1 maj_40_U2 ( .A1(u_1_0[2]), .A2(maj_40_n4), .ZN(maj_40_n5) );
  NAND2_X1 maj_40_U1 ( .A1(maj_40_n6), .A2(maj_40_n5), .ZN(maj_40_port_o) );
  OR2_X1 maj_41_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_41_n4) );
  NAND2_X1 maj_41_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_41_n6) );
  NAND2_X1 maj_41_U2 ( .A1(v_1_0[2]), .A2(maj_41_n4), .ZN(maj_41_n5) );
  NAND2_X1 maj_41_U1 ( .A1(maj_41_n6), .A2(maj_41_n5), .ZN(maj_41_port_o) );
  OR2_X1 maj_42_U4 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_42_n4) );
  NAND2_X1 maj_42_U3 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_42_n6) );
  NAND2_X1 maj_42_U2 ( .A1(u_1_1[2]), .A2(maj_42_n4), .ZN(maj_42_n5) );
  NAND2_X1 maj_42_U1 ( .A1(maj_42_n6), .A2(maj_42_n5), .ZN(maj_42_port_o) );
  OR2_X1 maj_43_U4 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_43_n4) );
  NAND2_X1 maj_43_U3 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_43_n6) );
  NAND2_X1 maj_43_U2 ( .A1(v_1_1[2]), .A2(maj_43_n4), .ZN(maj_43_n5) );
  NAND2_X1 maj_43_U1 ( .A1(maj_43_n6), .A2(maj_43_n5), .ZN(maj_43_port_o) );
  OR2_X1 maj_44_U4 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_44_n4) );
  NAND2_X1 maj_44_U3 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_44_n6) );
  NAND2_X1 maj_44_U2 ( .A1(u_2_0[2]), .A2(maj_44_n4), .ZN(maj_44_n5) );
  NAND2_X1 maj_44_U1 ( .A1(maj_44_n6), .A2(maj_44_n5), .ZN(maj_44_port_o) );
  OR2_X1 maj_45_U4 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_45_n4) );
  NAND2_X1 maj_45_U3 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_45_n6) );
  NAND2_X1 maj_45_U2 ( .A1(v_2_0[2]), .A2(maj_45_n4), .ZN(maj_45_n5) );
  NAND2_X1 maj_45_U1 ( .A1(maj_45_n6), .A2(maj_45_n5), .ZN(maj_45_port_o) );
  OR2_X1 maj_46_U4 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_46_n4) );
  NAND2_X1 maj_46_U3 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_46_n6) );
  NAND2_X1 maj_46_U2 ( .A1(u_2_1[2]), .A2(maj_46_n4), .ZN(maj_46_n5) );
  NAND2_X1 maj_46_U1 ( .A1(maj_46_n6), .A2(maj_46_n5), .ZN(maj_46_port_o) );
  OR2_X1 maj_47_U4 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_47_n4) );
  NAND2_X1 maj_47_U3 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_47_n6) );
  NAND2_X1 maj_47_U2 ( .A1(v_2_1[2]), .A2(maj_47_n4), .ZN(maj_47_n5) );
  NAND2_X1 maj_47_U1 ( .A1(maj_47_n6), .A2(maj_47_n5), .ZN(maj_47_port_o) );
  OR2_X1 maj_48_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_48_n4) );
  NAND2_X1 maj_48_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_48_n6) );
  NAND2_X1 maj_48_U2 ( .A1(u_0_0[2]), .A2(maj_48_n4), .ZN(maj_48_n5) );
  NAND2_X1 maj_48_U1 ( .A1(maj_48_n6), .A2(maj_48_n5), .ZN(maj_48_port_o) );
  OR2_X1 maj_49_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_49_n4) );
  NAND2_X1 maj_49_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_49_n6) );
  NAND2_X1 maj_49_U2 ( .A1(v_0_0[2]), .A2(maj_49_n4), .ZN(maj_49_n5) );
  NAND2_X1 maj_49_U1 ( .A1(maj_49_n6), .A2(maj_49_n5), .ZN(maj_49_port_o) );
  OR2_X1 maj_50_U4 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_50_n4) );
  NAND2_X1 maj_50_U3 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_50_n6) );
  NAND2_X1 maj_50_U2 ( .A1(u_0_1[2]), .A2(maj_50_n4), .ZN(maj_50_n5) );
  NAND2_X1 maj_50_U1 ( .A1(maj_50_n6), .A2(maj_50_n5), .ZN(maj_50_port_o) );
  OR2_X1 maj_51_U4 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_51_n4) );
  NAND2_X1 maj_51_U3 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_51_n6) );
  NAND2_X1 maj_51_U2 ( .A1(v_0_1[2]), .A2(maj_51_n4), .ZN(maj_51_n5) );
  NAND2_X1 maj_51_U1 ( .A1(maj_51_n6), .A2(maj_51_n5), .ZN(maj_51_port_o) );
  OR2_X1 maj_52_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_52_n4) );
  NAND2_X1 maj_52_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_52_n6) );
  NAND2_X1 maj_52_U2 ( .A1(u_1_0[2]), .A2(maj_52_n4), .ZN(maj_52_n5) );
  NAND2_X1 maj_52_U1 ( .A1(maj_52_n6), .A2(maj_52_n5), .ZN(maj_52_port_o) );
  OR2_X1 maj_53_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_53_n4) );
  NAND2_X1 maj_53_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_53_n6) );
  NAND2_X1 maj_53_U2 ( .A1(v_1_0[2]), .A2(maj_53_n4), .ZN(maj_53_n5) );
  NAND2_X1 maj_53_U1 ( .A1(maj_53_n6), .A2(maj_53_n5), .ZN(maj_53_port_o) );
  OR2_X1 maj_54_U4 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_54_n4) );
  NAND2_X1 maj_54_U3 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_54_n6) );
  NAND2_X1 maj_54_U2 ( .A1(u_1_1[2]), .A2(maj_54_n4), .ZN(maj_54_n5) );
  NAND2_X1 maj_54_U1 ( .A1(maj_54_n6), .A2(maj_54_n5), .ZN(maj_54_port_o) );
  OR2_X1 maj_55_U4 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_55_n4) );
  NAND2_X1 maj_55_U3 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_55_n6) );
  NAND2_X1 maj_55_U2 ( .A1(v_1_1[2]), .A2(maj_55_n4), .ZN(maj_55_n5) );
  NAND2_X1 maj_55_U1 ( .A1(maj_55_n6), .A2(maj_55_n5), .ZN(maj_55_port_o) );
  OR2_X1 maj_56_U4 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_56_n4) );
  NAND2_X1 maj_56_U3 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_56_n6) );
  NAND2_X1 maj_56_U2 ( .A1(u_2_0[2]), .A2(maj_56_n4), .ZN(maj_56_n5) );
  NAND2_X1 maj_56_U1 ( .A1(maj_56_n6), .A2(maj_56_n5), .ZN(maj_56_port_o) );
  OR2_X1 maj_57_U4 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_57_n4) );
  NAND2_X1 maj_57_U3 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_57_n6) );
  NAND2_X1 maj_57_U2 ( .A1(v_2_0[2]), .A2(maj_57_n4), .ZN(maj_57_n5) );
  NAND2_X1 maj_57_U1 ( .A1(maj_57_n6), .A2(maj_57_n5), .ZN(maj_57_port_o) );
  OR2_X1 maj_58_U4 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_58_n4) );
  NAND2_X1 maj_58_U3 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_58_n6) );
  NAND2_X1 maj_58_U2 ( .A1(u_2_1[2]), .A2(maj_58_n4), .ZN(maj_58_n5) );
  NAND2_X1 maj_58_U1 ( .A1(maj_58_n6), .A2(maj_58_n5), .ZN(maj_58_port_o) );
  OR2_X1 maj_59_U4 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_59_n4) );
  NAND2_X1 maj_59_U3 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_59_n6) );
  NAND2_X1 maj_59_U2 ( .A1(v_2_1[2]), .A2(maj_59_n4), .ZN(maj_59_n5) );
  NAND2_X1 maj_59_U1 ( .A1(maj_59_n6), .A2(maj_59_n5), .ZN(maj_59_port_o) );
  OR2_X1 maj_60_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_60_n4) );
  NAND2_X1 maj_60_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_60_n6) );
  NAND2_X1 maj_60_U2 ( .A1(u_0_0[2]), .A2(maj_60_n4), .ZN(maj_60_n5) );
  NAND2_X1 maj_60_U1 ( .A1(maj_60_n6), .A2(maj_60_n5), .ZN(maj_60_port_o) );
  OR2_X1 maj_61_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_61_n4) );
  NAND2_X1 maj_61_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_61_n6) );
  NAND2_X1 maj_61_U2 ( .A1(v_0_0[2]), .A2(maj_61_n4), .ZN(maj_61_n5) );
  NAND2_X1 maj_61_U1 ( .A1(maj_61_n6), .A2(maj_61_n5), .ZN(maj_61_port_o) );
  OR2_X1 maj_62_U4 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_62_n4) );
  NAND2_X1 maj_62_U3 ( .A1(u_0_1[1]), .A2(u_0_1[0]), .ZN(maj_62_n6) );
  NAND2_X1 maj_62_U2 ( .A1(u_0_1[2]), .A2(maj_62_n4), .ZN(maj_62_n5) );
  NAND2_X1 maj_62_U1 ( .A1(maj_62_n6), .A2(maj_62_n5), .ZN(maj_62_port_o) );
  OR2_X1 maj_63_U4 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_63_n4) );
  NAND2_X1 maj_63_U3 ( .A1(v_0_1[1]), .A2(v_0_1[0]), .ZN(maj_63_n6) );
  NAND2_X1 maj_63_U2 ( .A1(v_0_1[2]), .A2(maj_63_n4), .ZN(maj_63_n5) );
  NAND2_X1 maj_63_U1 ( .A1(maj_63_n6), .A2(maj_63_n5), .ZN(maj_63_port_o) );
  OR2_X1 maj_64_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_64_n4) );
  NAND2_X1 maj_64_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_64_n6) );
  NAND2_X1 maj_64_U2 ( .A1(u_1_0[2]), .A2(maj_64_n4), .ZN(maj_64_n5) );
  NAND2_X1 maj_64_U1 ( .A1(maj_64_n6), .A2(maj_64_n5), .ZN(maj_64_port_o) );
  OR2_X1 maj_65_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_65_n4) );
  NAND2_X1 maj_65_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_65_n6) );
  NAND2_X1 maj_65_U2 ( .A1(v_1_0[2]), .A2(maj_65_n4), .ZN(maj_65_n5) );
  NAND2_X1 maj_65_U1 ( .A1(maj_65_n6), .A2(maj_65_n5), .ZN(maj_65_port_o) );
  OR2_X1 maj_66_U4 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_66_n4) );
  NAND2_X1 maj_66_U3 ( .A1(u_1_1[1]), .A2(u_1_1[0]), .ZN(maj_66_n6) );
  NAND2_X1 maj_66_U2 ( .A1(u_1_1[2]), .A2(maj_66_n4), .ZN(maj_66_n5) );
  NAND2_X1 maj_66_U1 ( .A1(maj_66_n6), .A2(maj_66_n5), .ZN(maj_66_port_o) );
  OR2_X1 maj_67_U4 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_67_n4) );
  NAND2_X1 maj_67_U3 ( .A1(v_1_1[1]), .A2(v_1_1[0]), .ZN(maj_67_n6) );
  NAND2_X1 maj_67_U2 ( .A1(v_1_1[2]), .A2(maj_67_n4), .ZN(maj_67_n5) );
  NAND2_X1 maj_67_U1 ( .A1(maj_67_n6), .A2(maj_67_n5), .ZN(maj_67_port_o) );
  OR2_X1 maj_68_U4 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_68_n4) );
  NAND2_X1 maj_68_U3 ( .A1(u_2_0[1]), .A2(u_2_0[0]), .ZN(maj_68_n6) );
  NAND2_X1 maj_68_U2 ( .A1(u_2_0[2]), .A2(maj_68_n4), .ZN(maj_68_n5) );
  NAND2_X1 maj_68_U1 ( .A1(maj_68_n6), .A2(maj_68_n5), .ZN(maj_68_port_o) );
  OR2_X1 maj_69_U4 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_69_n4) );
  NAND2_X1 maj_69_U3 ( .A1(v_2_0[1]), .A2(v_2_0[0]), .ZN(maj_69_n6) );
  NAND2_X1 maj_69_U2 ( .A1(v_2_0[2]), .A2(maj_69_n4), .ZN(maj_69_n5) );
  NAND2_X1 maj_69_U1 ( .A1(maj_69_n6), .A2(maj_69_n5), .ZN(maj_69_port_o) );
  OR2_X1 maj_70_U4 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_70_n4) );
  NAND2_X1 maj_70_U3 ( .A1(u_2_1[1]), .A2(u_2_1[0]), .ZN(maj_70_n6) );
  NAND2_X1 maj_70_U2 ( .A1(u_2_1[2]), .A2(maj_70_n4), .ZN(maj_70_n5) );
  NAND2_X1 maj_70_U1 ( .A1(maj_70_n6), .A2(maj_70_n5), .ZN(maj_70_port_o) );
  OR2_X1 maj_71_U4 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_71_n4) );
  NAND2_X1 maj_71_U3 ( .A1(v_2_1[1]), .A2(v_2_1[0]), .ZN(maj_71_n6) );
  NAND2_X1 maj_71_U2 ( .A1(v_2_1[2]), .A2(maj_71_n4), .ZN(maj_71_n5) );
  NAND2_X1 maj_71_U1 ( .A1(maj_71_n6), .A2(maj_71_n5), .ZN(maj_71_port_o) );
endmodule

