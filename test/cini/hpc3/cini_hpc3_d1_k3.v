
module CINI_HPC3 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_rand_ref, port_rand_mul, clk, reset );
  input [6:0] port_a_0;
  input [6:0] port_a_1;
  input [6:0] port_b_0;
  input [6:0] port_b_1;
  output [6:0] port_c_0;
  output [6:0] port_c_1;
  input [0:0] port_rand_ref;
  input [0:0] port_rand_mul;
  input clk, reset;
  wire   simpleAnd_14_port_z, simpleAnd_15_port_z, simpleAnd_16_port_z,
         simpleAnd_17_port_z, simpleAnd_18_port_z, simpleAnd_19_port_z,
         simpleAnd_20_port_z, simpleAnd_21_port_z, simpleAnd_22_port_z,
         simpleAnd_23_port_z, simpleAnd_24_port_z, simpleAnd_25_port_z,
         simpleAnd_26_port_z, simpleAnd_27_port_z, maj_28_port_o,
         maj_29_port_o, maj_30_port_o, maj_31_port_o, maj_32_port_o,
         maj_33_port_o, maj_34_port_o, maj_35_port_o, maj_36_port_o,
         maj_37_port_o, maj_38_port_o, maj_39_port_o, maj_40_port_o,
         maj_41_port_o, maj_42_port_o, maj_43_port_o, maj_44_port_o,
         maj_45_port_o, maj_46_port_o, maj_47_port_o, maj_48_port_o,
         maj_49_port_o, maj_50_port_o, maj_51_port_o, maj_52_port_o,
         maj_53_port_o, maj_54_port_o, maj_55_port_o, N0, N1, N2, N3, N4, N5,
         N6, N7, N8, N9, N10, N11, N12, N13, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, maj_28_n17, maj_28_n16, maj_28_n15,
         maj_28_n14, maj_28_n13, maj_28_n12, maj_28_n11, maj_28_n10, maj_28_n9,
         maj_28_n8, maj_28_n7, maj_28_n6, maj_28_n5, maj_28_n4, maj_28_n3,
         maj_28_n2, maj_28_n1, maj_29_n34, maj_29_n33, maj_29_n32, maj_29_n31,
         maj_29_n30, maj_29_n29, maj_29_n28, maj_29_n27, maj_29_n26,
         maj_29_n25, maj_29_n24, maj_29_n23, maj_29_n22, maj_29_n21,
         maj_29_n20, maj_29_n19, maj_29_n18, maj_30_n34, maj_30_n33,
         maj_30_n32, maj_30_n31, maj_30_n30, maj_30_n29, maj_30_n28,
         maj_30_n27, maj_30_n26, maj_30_n25, maj_30_n24, maj_30_n23,
         maj_30_n22, maj_30_n21, maj_30_n20, maj_30_n19, maj_30_n18,
         maj_31_n34, maj_31_n33, maj_31_n32, maj_31_n31, maj_31_n30,
         maj_31_n29, maj_31_n28, maj_31_n27, maj_31_n26, maj_31_n25,
         maj_31_n24, maj_31_n23, maj_31_n22, maj_31_n21, maj_31_n20,
         maj_31_n19, maj_31_n18, maj_32_n34, maj_32_n33, maj_32_n32,
         maj_32_n31, maj_32_n30, maj_32_n29, maj_32_n28, maj_32_n27,
         maj_32_n26, maj_32_n25, maj_32_n24, maj_32_n23, maj_32_n22,
         maj_32_n21, maj_32_n20, maj_32_n19, maj_32_n18, maj_33_n34,
         maj_33_n33, maj_33_n32, maj_33_n31, maj_33_n30, maj_33_n29,
         maj_33_n28, maj_33_n27, maj_33_n26, maj_33_n25, maj_33_n24,
         maj_33_n23, maj_33_n22, maj_33_n21, maj_33_n20, maj_33_n19,
         maj_33_n18, maj_34_n34, maj_34_n33, maj_34_n32, maj_34_n31,
         maj_34_n30, maj_34_n29, maj_34_n28, maj_34_n27, maj_34_n26,
         maj_34_n25, maj_34_n24, maj_34_n23, maj_34_n22, maj_34_n21,
         maj_34_n20, maj_34_n19, maj_34_n18, maj_35_n34, maj_35_n33,
         maj_35_n32, maj_35_n31, maj_35_n30, maj_35_n29, maj_35_n28,
         maj_35_n27, maj_35_n26, maj_35_n25, maj_35_n24, maj_35_n23,
         maj_35_n22, maj_35_n21, maj_35_n20, maj_35_n19, maj_35_n18,
         maj_36_n34, maj_36_n33, maj_36_n32, maj_36_n31, maj_36_n30,
         maj_36_n29, maj_36_n28, maj_36_n27, maj_36_n26, maj_36_n25,
         maj_36_n24, maj_36_n23, maj_36_n22, maj_36_n21, maj_36_n20,
         maj_36_n19, maj_36_n18, maj_37_n34, maj_37_n33, maj_37_n32,
         maj_37_n31, maj_37_n30, maj_37_n29, maj_37_n28, maj_37_n27,
         maj_37_n26, maj_37_n25, maj_37_n24, maj_37_n23, maj_37_n22,
         maj_37_n21, maj_37_n20, maj_37_n19, maj_37_n18, maj_38_n34,
         maj_38_n33, maj_38_n32, maj_38_n31, maj_38_n30, maj_38_n29,
         maj_38_n28, maj_38_n27, maj_38_n26, maj_38_n25, maj_38_n24,
         maj_38_n23, maj_38_n22, maj_38_n21, maj_38_n20, maj_38_n19,
         maj_38_n18, maj_39_n34, maj_39_n33, maj_39_n32, maj_39_n31,
         maj_39_n30, maj_39_n29, maj_39_n28, maj_39_n27, maj_39_n26,
         maj_39_n25, maj_39_n24, maj_39_n23, maj_39_n22, maj_39_n21,
         maj_39_n20, maj_39_n19, maj_39_n18, maj_40_n34, maj_40_n33,
         maj_40_n32, maj_40_n31, maj_40_n30, maj_40_n29, maj_40_n28,
         maj_40_n27, maj_40_n26, maj_40_n25, maj_40_n24, maj_40_n23,
         maj_40_n22, maj_40_n21, maj_40_n20, maj_40_n19, maj_40_n18,
         maj_41_n34, maj_41_n33, maj_41_n32, maj_41_n31, maj_41_n30,
         maj_41_n29, maj_41_n28, maj_41_n27, maj_41_n26, maj_41_n25,
         maj_41_n24, maj_41_n23, maj_41_n22, maj_41_n21, maj_41_n20,
         maj_41_n19, maj_41_n18, maj_42_n34, maj_42_n33, maj_42_n32,
         maj_42_n31, maj_42_n30, maj_42_n29, maj_42_n28, maj_42_n27,
         maj_42_n26, maj_42_n25, maj_42_n24, maj_42_n23, maj_42_n22,
         maj_42_n21, maj_42_n20, maj_42_n19, maj_42_n18, maj_43_n34,
         maj_43_n33, maj_43_n32, maj_43_n31, maj_43_n30, maj_43_n29,
         maj_43_n28, maj_43_n27, maj_43_n26, maj_43_n25, maj_43_n24,
         maj_43_n23, maj_43_n22, maj_43_n21, maj_43_n20, maj_43_n19,
         maj_43_n18, maj_44_n34, maj_44_n33, maj_44_n32, maj_44_n31,
         maj_44_n30, maj_44_n29, maj_44_n28, maj_44_n27, maj_44_n26,
         maj_44_n25, maj_44_n24, maj_44_n23, maj_44_n22, maj_44_n21,
         maj_44_n20, maj_44_n19, maj_44_n18, maj_45_n34, maj_45_n33,
         maj_45_n32, maj_45_n31, maj_45_n30, maj_45_n29, maj_45_n28,
         maj_45_n27, maj_45_n26, maj_45_n25, maj_45_n24, maj_45_n23,
         maj_45_n22, maj_45_n21, maj_45_n20, maj_45_n19, maj_45_n18,
         maj_46_n34, maj_46_n33, maj_46_n32, maj_46_n31, maj_46_n30,
         maj_46_n29, maj_46_n28, maj_46_n27, maj_46_n26, maj_46_n25,
         maj_46_n24, maj_46_n23, maj_46_n22, maj_46_n21, maj_46_n20,
         maj_46_n19, maj_46_n18, maj_47_n34, maj_47_n33, maj_47_n32,
         maj_47_n31, maj_47_n30, maj_47_n29, maj_47_n28, maj_47_n27,
         maj_47_n26, maj_47_n25, maj_47_n24, maj_47_n23, maj_47_n22,
         maj_47_n21, maj_47_n20, maj_47_n19, maj_47_n18, maj_48_n34,
         maj_48_n33, maj_48_n32, maj_48_n31, maj_48_n30, maj_48_n29,
         maj_48_n28, maj_48_n27, maj_48_n26, maj_48_n25, maj_48_n24,
         maj_48_n23, maj_48_n22, maj_48_n21, maj_48_n20, maj_48_n19,
         maj_48_n18, maj_49_n34, maj_49_n33, maj_49_n32, maj_49_n31,
         maj_49_n30, maj_49_n29, maj_49_n28, maj_49_n27, maj_49_n26,
         maj_49_n25, maj_49_n24, maj_49_n23, maj_49_n22, maj_49_n21,
         maj_49_n20, maj_49_n19, maj_49_n18, maj_50_n34, maj_50_n33,
         maj_50_n32, maj_50_n31, maj_50_n30, maj_50_n29, maj_50_n28,
         maj_50_n27, maj_50_n26, maj_50_n25, maj_50_n24, maj_50_n23,
         maj_50_n22, maj_50_n21, maj_50_n20, maj_50_n19, maj_50_n18,
         maj_51_n34, maj_51_n33, maj_51_n32, maj_51_n31, maj_51_n30,
         maj_51_n29, maj_51_n28, maj_51_n27, maj_51_n26, maj_51_n25,
         maj_51_n24, maj_51_n23, maj_51_n22, maj_51_n21, maj_51_n20,
         maj_51_n19, maj_51_n18, maj_52_n34, maj_52_n33, maj_52_n32,
         maj_52_n31, maj_52_n30, maj_52_n29, maj_52_n28, maj_52_n27,
         maj_52_n26, maj_52_n25, maj_52_n24, maj_52_n23, maj_52_n22,
         maj_52_n21, maj_52_n20, maj_52_n19, maj_52_n18, maj_53_n34,
         maj_53_n33, maj_53_n32, maj_53_n31, maj_53_n30, maj_53_n29,
         maj_53_n28, maj_53_n27, maj_53_n26, maj_53_n25, maj_53_n24,
         maj_53_n23, maj_53_n22, maj_53_n21, maj_53_n20, maj_53_n19,
         maj_53_n18, maj_54_n34, maj_54_n33, maj_54_n32, maj_54_n31,
         maj_54_n30, maj_54_n29, maj_54_n28, maj_54_n27, maj_54_n26,
         maj_54_n25, maj_54_n24, maj_54_n23, maj_54_n22, maj_54_n21,
         maj_54_n20, maj_54_n19, maj_54_n18, maj_55_n34, maj_55_n33,
         maj_55_n32, maj_55_n31, maj_55_n30, maj_55_n29, maj_55_n28,
         maj_55_n27, maj_55_n26, maj_55_n25, maj_55_n24, maj_55_n23,
         maj_55_n22, maj_55_n21, maj_55_n20, maj_55_n19, maj_55_n18;
  wire   [6:0] u_0_0;
  wire   [6:0] v_0_0;
  wire   [6:0] u_1_0;
  wire   [6:0] v_1_0;
  wire   [6:0] temp_0_0;
  wire   [6:0] a_reg_0;
  wire   [6:0] v_reg_0_0;
  wire   [6:0] u_reg_0_0;
  wire   [6:0] temp_0_1;
  wire   [6:0] a_reg_1;
  wire   [6:0] v_reg_1_0;
  wire   [6:0] u_reg_1_0;

  DFF_X1 v_reg_1_0_reg_6_ ( .D(maj_55_port_o), .CK(clk), .Q(v_reg_1_0[6]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_5_ ( .D(maj_51_port_o), .CK(clk), .Q(v_reg_1_0[5]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_4_ ( .D(maj_47_port_o), .CK(clk), .Q(v_reg_1_0[4]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_3_ ( .D(maj_43_port_o), .CK(clk), .Q(v_reg_1_0[3]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_2_ ( .D(maj_39_port_o), .CK(clk), .Q(v_reg_1_0[2]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_1_ ( .D(maj_35_port_o), .CK(clk), .Q(v_reg_1_0[1]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_0_ ( .D(maj_31_port_o), .CK(clk), .Q(v_reg_1_0[0]), 
        .QN() );
  DFF_X1 a_reg_1_reg_6_ ( .D(port_a_1[6]), .CK(clk), .Q(a_reg_1[6]), .QN() );
  DFF_X1 a_reg_1_reg_5_ ( .D(port_a_1[5]), .CK(clk), .Q(a_reg_1[5]), .QN() );
  DFF_X1 a_reg_1_reg_4_ ( .D(port_a_1[4]), .CK(clk), .Q(a_reg_1[4]), .QN() );
  DFF_X1 a_reg_1_reg_3_ ( .D(port_a_1[3]), .CK(clk), .Q(a_reg_1[3]), .QN() );
  DFF_X1 a_reg_1_reg_2_ ( .D(port_a_1[2]), .CK(clk), .Q(a_reg_1[2]), .QN() );
  DFF_X1 a_reg_1_reg_1_ ( .D(port_a_1[1]), .CK(clk), .Q(a_reg_1[1]), .QN() );
  DFF_X1 a_reg_1_reg_0_ ( .D(port_a_1[0]), .CK(clk), .Q(a_reg_1[0]), .QN() );
  DFF_X1 u_reg_0_0_reg_6_ ( .D(maj_52_port_o), .CK(clk), .Q(u_reg_0_0[6]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_5_ ( .D(maj_48_port_o), .CK(clk), .Q(u_reg_0_0[5]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_4_ ( .D(maj_44_port_o), .CK(clk), .Q(u_reg_0_0[4]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_3_ ( .D(maj_40_port_o), .CK(clk), .Q(u_reg_0_0[3]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_2_ ( .D(maj_36_port_o), .CK(clk), .Q(u_reg_0_0[2]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_1_ ( .D(maj_32_port_o), .CK(clk), .Q(u_reg_0_0[1]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_0_ ( .D(maj_28_port_o), .CK(clk), .Q(u_reg_0_0[0]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_6_ ( .D(maj_53_port_o), .CK(clk), .Q(v_reg_0_0[6]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_5_ ( .D(maj_49_port_o), .CK(clk), .Q(v_reg_0_0[5]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_4_ ( .D(maj_45_port_o), .CK(clk), .Q(v_reg_0_0[4]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_3_ ( .D(maj_41_port_o), .CK(clk), .Q(v_reg_0_0[3]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_2_ ( .D(maj_37_port_o), .CK(clk), .Q(v_reg_0_0[2]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_1_ ( .D(maj_33_port_o), .CK(clk), .Q(v_reg_0_0[1]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_0_ ( .D(maj_29_port_o), .CK(clk), .Q(v_reg_0_0[0]), 
        .QN() );
  DFF_X1 ab_reg_1_reg_6_ ( .D(N13), .CK(clk), .Q(temp_0_1[6]), .QN() );
  DFF_X1 ab_reg_1_reg_5_ ( .D(N11), .CK(clk), .Q(temp_0_1[5]), .QN() );
  DFF_X1 ab_reg_1_reg_4_ ( .D(N9), .CK(clk), .Q(temp_0_1[4]), .QN() );
  DFF_X1 ab_reg_1_reg_3_ ( .D(N7), .CK(clk), .Q(temp_0_1[3]), .QN() );
  DFF_X1 ab_reg_1_reg_2_ ( .D(N5), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 ab_reg_1_reg_1_ ( .D(N3), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 ab_reg_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 u_reg_1_0_reg_6_ ( .D(maj_54_port_o), .CK(clk), .Q(u_reg_1_0[6]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_5_ ( .D(maj_50_port_o), .CK(clk), .Q(u_reg_1_0[5]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_4_ ( .D(maj_46_port_o), .CK(clk), .Q(u_reg_1_0[4]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_3_ ( .D(maj_42_port_o), .CK(clk), .Q(u_reg_1_0[3]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_2_ ( .D(maj_38_port_o), .CK(clk), .Q(u_reg_1_0[2]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_1_ ( .D(maj_34_port_o), .CK(clk), .Q(u_reg_1_0[1]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_0_ ( .D(maj_30_port_o), .CK(clk), .Q(u_reg_1_0[0]), 
        .QN() );
  DFF_X1 a_reg_0_reg_6_ ( .D(port_a_0[6]), .CK(clk), .Q(a_reg_0[6]), .QN() );
  DFF_X1 a_reg_0_reg_5_ ( .D(port_a_0[5]), .CK(clk), .Q(a_reg_0[5]), .QN() );
  DFF_X1 a_reg_0_reg_4_ ( .D(port_a_0[4]), .CK(clk), .Q(a_reg_0[4]), .QN() );
  DFF_X1 a_reg_0_reg_3_ ( .D(port_a_0[3]), .CK(clk), .Q(a_reg_0[3]), .QN() );
  DFF_X1 a_reg_0_reg_2_ ( .D(port_a_0[2]), .CK(clk), .Q(a_reg_0[2]), .QN() );
  DFF_X1 a_reg_0_reg_1_ ( .D(port_a_0[1]), .CK(clk), .Q(a_reg_0[1]), .QN() );
  DFF_X1 a_reg_0_reg_0_ ( .D(port_a_0[0]), .CK(clk), .Q(a_reg_0[0]), .QN() );
  DFF_X1 ab_reg_0_reg_6_ ( .D(N12), .CK(clk), .Q(temp_0_0[6]), .QN() );
  DFF_X1 ab_reg_0_reg_5_ ( .D(N10), .CK(clk), .Q(temp_0_0[5]), .QN() );
  DFF_X1 ab_reg_0_reg_4_ ( .D(N8), .CK(clk), .Q(temp_0_0[4]), .QN() );
  DFF_X1 ab_reg_0_reg_3_ ( .D(N6), .CK(clk), .Q(temp_0_0[3]), .QN() );
  DFF_X1 ab_reg_0_reg_2_ ( .D(N4), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 ab_reg_0_reg_1_ ( .D(N2), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 ab_reg_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  INV_X1 U73 ( .A(port_a_1[1]), .ZN(n13) );
  INV_X1 U74 ( .A(port_a_1[4]), .ZN(n10) );
  INV_X1 U75 ( .A(port_a_0[1]), .ZN(n6) );
  INV_X1 U76 ( .A(port_a_0[4]), .ZN(n3) );
  INV_X1 U77 ( .A(port_a_1[2]), .ZN(n12) );
  INV_X1 U78 ( .A(port_a_1[0]), .ZN(n14) );
  INV_X1 U79 ( .A(port_a_1[5]), .ZN(n9) );
  INV_X1 U80 ( .A(port_a_1[3]), .ZN(n11) );
  INV_X1 U81 ( .A(port_a_0[2]), .ZN(n5) );
  INV_X1 U82 ( .A(port_a_0[0]), .ZN(n7) );
  INV_X1 U83 ( .A(port_a_0[5]), .ZN(n2) );
  INV_X1 U84 ( .A(port_a_0[3]), .ZN(n4) );
  INV_X1 U85 ( .A(port_a_1[6]), .ZN(n8) );
  INV_X1 U86 ( .A(port_a_0[6]), .ZN(n1) );
  XOR2_X1 U87 ( .A(n27), .B(n28), .Z(port_c_1[0]) );
  NAND2_X1 U88 ( .A1(v_reg_1_0[0]), .A2(a_reg_1[0]), .ZN(n27) );
  XNOR2_X1 U89 ( .A(u_reg_1_0[0]), .B(temp_0_1[0]), .ZN(n28) );
  XOR2_X1 U90 ( .A(n25), .B(n26), .Z(port_c_1[1]) );
  NAND2_X1 U91 ( .A1(v_reg_1_0[1]), .A2(a_reg_1[1]), .ZN(n25) );
  XNOR2_X1 U92 ( .A(u_reg_1_0[1]), .B(temp_0_1[1]), .ZN(n26) );
  XOR2_X1 U93 ( .A(n23), .B(n24), .Z(port_c_1[2]) );
  NAND2_X1 U94 ( .A1(v_reg_1_0[2]), .A2(a_reg_1[2]), .ZN(n23) );
  XNOR2_X1 U95 ( .A(u_reg_1_0[2]), .B(temp_0_1[2]), .ZN(n24) );
  XOR2_X1 U96 ( .A(n21), .B(n22), .Z(port_c_1[3]) );
  NAND2_X1 U97 ( .A1(v_reg_1_0[3]), .A2(a_reg_1[3]), .ZN(n21) );
  XNOR2_X1 U98 ( .A(u_reg_1_0[3]), .B(temp_0_1[3]), .ZN(n22) );
  XOR2_X1 U99 ( .A(n19), .B(n20), .Z(port_c_1[4]) );
  NAND2_X1 U100 ( .A1(v_reg_1_0[4]), .A2(a_reg_1[4]), .ZN(n19) );
  XNOR2_X1 U101 ( .A(u_reg_1_0[4]), .B(temp_0_1[4]), .ZN(n20) );
  XOR2_X1 U102 ( .A(n17), .B(n18), .Z(port_c_1[5]) );
  NAND2_X1 U103 ( .A1(v_reg_1_0[5]), .A2(a_reg_1[5]), .ZN(n17) );
  XNOR2_X1 U104 ( .A(u_reg_1_0[5]), .B(temp_0_1[5]), .ZN(n18) );
  XOR2_X1 U105 ( .A(n15), .B(n16), .Z(port_c_1[6]) );
  NAND2_X1 U106 ( .A1(v_reg_1_0[6]), .A2(a_reg_1[6]), .ZN(n15) );
  XNOR2_X1 U107 ( .A(u_reg_1_0[6]), .B(temp_0_1[6]), .ZN(n16) );
  XOR2_X1 U108 ( .A(n41), .B(n42), .Z(port_c_0[0]) );
  NAND2_X1 U109 ( .A1(v_reg_0_0[0]), .A2(a_reg_0[0]), .ZN(n41) );
  XNOR2_X1 U110 ( .A(u_reg_0_0[0]), .B(temp_0_0[0]), .ZN(n42) );
  XOR2_X1 U111 ( .A(n39), .B(n40), .Z(port_c_0[1]) );
  NAND2_X1 U112 ( .A1(v_reg_0_0[1]), .A2(a_reg_0[1]), .ZN(n39) );
  XNOR2_X1 U113 ( .A(u_reg_0_0[1]), .B(temp_0_0[1]), .ZN(n40) );
  XOR2_X1 U114 ( .A(n37), .B(n38), .Z(port_c_0[2]) );
  NAND2_X1 U115 ( .A1(v_reg_0_0[2]), .A2(a_reg_0[2]), .ZN(n37) );
  XNOR2_X1 U116 ( .A(u_reg_0_0[2]), .B(temp_0_0[2]), .ZN(n38) );
  XOR2_X1 U117 ( .A(n35), .B(n36), .Z(port_c_0[3]) );
  NAND2_X1 U118 ( .A1(v_reg_0_0[3]), .A2(a_reg_0[3]), .ZN(n35) );
  XNOR2_X1 U119 ( .A(u_reg_0_0[3]), .B(temp_0_0[3]), .ZN(n36) );
  XOR2_X1 U120 ( .A(n33), .B(n34), .Z(port_c_0[4]) );
  NAND2_X1 U121 ( .A1(v_reg_0_0[4]), .A2(a_reg_0[4]), .ZN(n33) );
  XNOR2_X1 U122 ( .A(u_reg_0_0[4]), .B(temp_0_0[4]), .ZN(n34) );
  XOR2_X1 U123 ( .A(n31), .B(n32), .Z(port_c_0[5]) );
  NAND2_X1 U124 ( .A1(v_reg_0_0[5]), .A2(a_reg_0[5]), .ZN(n31) );
  XNOR2_X1 U125 ( .A(u_reg_0_0[5]), .B(temp_0_0[5]), .ZN(n32) );
  XOR2_X1 U126 ( .A(n29), .B(n30), .Z(port_c_0[6]) );
  NAND2_X1 U127 ( .A1(v_reg_0_0[6]), .A2(a_reg_0[6]), .ZN(n29) );
  XNOR2_X1 U128 ( .A(u_reg_0_0[6]), .B(temp_0_0[6]), .ZN(n30) );
  AND2_X1 U129 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U130 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N2) );
  AND2_X1 U131 ( .A1(port_b_0[2]), .A2(port_a_0[2]), .ZN(N4) );
  AND2_X1 U132 ( .A1(port_b_0[3]), .A2(port_a_0[3]), .ZN(N6) );
  AND2_X1 U133 ( .A1(port_b_0[4]), .A2(port_a_0[4]), .ZN(N8) );
  AND2_X1 U134 ( .A1(port_b_0[5]), .A2(port_a_0[5]), .ZN(N10) );
  AND2_X1 U135 ( .A1(port_b_0[6]), .A2(port_a_0[6]), .ZN(N12) );
  AND2_X1 U136 ( .A1(port_b_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U137 ( .A1(port_b_1[1]), .A2(port_a_1[1]), .ZN(N3) );
  AND2_X1 U138 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N5) );
  AND2_X1 U139 ( .A1(port_b_1[3]), .A2(port_a_1[3]), .ZN(N7) );
  AND2_X1 U140 ( .A1(port_b_1[4]), .A2(port_a_1[4]), .ZN(N9) );
  AND2_X1 U141 ( .A1(port_b_1[5]), .A2(port_a_1[5]), .ZN(N11) );
  AND2_X1 U142 ( .A1(port_b_1[6]), .A2(port_a_1[6]), .ZN(N13) );
  AND2_X1 simpleAnd_14_U1 ( .A1(port_rand_mul[0]), .A2(n7), .ZN(
        simpleAnd_14_port_z) );
  XOR2_X2 simpleXor_28_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_14_port_z), .Z(
        u_0_0[0]) );
  XOR2_X2 simpleXor_29_U1 ( .A(port_rand_mul[0]), .B(port_b_1[0]), .Z(v_0_0[0]) );
  AND2_X1 simpleAnd_15_U1 ( .A1(port_rand_mul[0]), .A2(n14), .ZN(
        simpleAnd_15_port_z) );
  XOR2_X2 simpleXor_30_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_15_port_z), .Z(
        u_1_0[0]) );
  XOR2_X2 simpleXor_31_U1 ( .A(port_rand_mul[0]), .B(port_b_0[0]), .Z(v_1_0[0]) );
  AND2_X1 simpleAnd_16_U1 ( .A1(port_rand_mul[0]), .A2(n6), .ZN(
        simpleAnd_16_port_z) );
  XOR2_X2 simpleXor_32_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_16_port_z), .Z(
        u_0_0[1]) );
  XOR2_X2 simpleXor_33_U1 ( .A(port_rand_mul[0]), .B(port_b_1[1]), .Z(v_0_0[1]) );
  AND2_X1 simpleAnd_17_U1 ( .A1(port_rand_mul[0]), .A2(n13), .ZN(
        simpleAnd_17_port_z) );
  XOR2_X2 simpleXor_34_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_17_port_z), .Z(
        u_1_0[1]) );
  XOR2_X2 simpleXor_35_U1 ( .A(port_rand_mul[0]), .B(port_b_0[1]), .Z(v_1_0[1]) );
  AND2_X1 simpleAnd_18_U1 ( .A1(port_rand_mul[0]), .A2(n5), .ZN(
        simpleAnd_18_port_z) );
  XOR2_X2 simpleXor_36_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_18_port_z), .Z(
        u_0_0[2]) );
  XOR2_X2 simpleXor_37_U1 ( .A(port_rand_mul[0]), .B(port_b_1[2]), .Z(v_0_0[2]) );
  AND2_X1 simpleAnd_19_U1 ( .A1(port_rand_mul[0]), .A2(n12), .ZN(
        simpleAnd_19_port_z) );
  XOR2_X2 simpleXor_38_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_19_port_z), .Z(
        u_1_0[2]) );
  XOR2_X2 simpleXor_39_U1 ( .A(port_rand_mul[0]), .B(port_b_0[2]), .Z(v_1_0[2]) );
  AND2_X1 simpleAnd_20_U1 ( .A1(port_rand_mul[0]), .A2(n4), .ZN(
        simpleAnd_20_port_z) );
  XOR2_X2 simpleXor_40_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_20_port_z), .Z(
        u_0_0[3]) );
  XOR2_X2 simpleXor_41_U1 ( .A(port_rand_mul[0]), .B(port_b_1[3]), .Z(v_0_0[3]) );
  AND2_X1 simpleAnd_21_U1 ( .A1(port_rand_mul[0]), .A2(n11), .ZN(
        simpleAnd_21_port_z) );
  XOR2_X2 simpleXor_42_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_21_port_z), .Z(
        u_1_0[3]) );
  XOR2_X2 simpleXor_43_U1 ( .A(port_rand_mul[0]), .B(port_b_0[3]), .Z(v_1_0[3]) );
  AND2_X1 simpleAnd_22_U1 ( .A1(port_rand_mul[0]), .A2(n3), .ZN(
        simpleAnd_22_port_z) );
  XOR2_X2 simpleXor_44_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_22_port_z), .Z(
        u_0_0[4]) );
  XOR2_X2 simpleXor_45_U1 ( .A(port_rand_mul[0]), .B(port_b_1[4]), .Z(v_0_0[4]) );
  AND2_X1 simpleAnd_23_U1 ( .A1(port_rand_mul[0]), .A2(n10), .ZN(
        simpleAnd_23_port_z) );
  XOR2_X2 simpleXor_46_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_23_port_z), .Z(
        u_1_0[4]) );
  XOR2_X2 simpleXor_47_U1 ( .A(port_rand_mul[0]), .B(port_b_0[4]), .Z(v_1_0[4]) );
  AND2_X1 simpleAnd_24_U1 ( .A1(port_rand_mul[0]), .A2(n2), .ZN(
        simpleAnd_24_port_z) );
  XOR2_X2 simpleXor_48_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_24_port_z), .Z(
        u_0_0[5]) );
  XOR2_X2 simpleXor_49_U1 ( .A(port_rand_mul[0]), .B(port_b_1[5]), .Z(v_0_0[5]) );
  AND2_X1 simpleAnd_25_U1 ( .A1(port_rand_mul[0]), .A2(n9), .ZN(
        simpleAnd_25_port_z) );
  XOR2_X2 simpleXor_50_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_25_port_z), .Z(
        u_1_0[5]) );
  XOR2_X2 simpleXor_51_U1 ( .A(port_rand_mul[0]), .B(port_b_0[5]), .Z(v_1_0[5]) );
  AND2_X1 simpleAnd_26_U1 ( .A1(port_rand_mul[0]), .A2(n1), .ZN(
        simpleAnd_26_port_z) );
  XOR2_X1 simpleXor_52_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_26_port_z), .Z(
        u_0_0[6]) );
  XOR2_X1 simpleXor_53_U1 ( .A(port_rand_mul[0]), .B(port_b_1[6]), .Z(v_0_0[6]) );
  AND2_X1 simpleAnd_27_U1 ( .A1(port_rand_mul[0]), .A2(n8), .ZN(
        simpleAnd_27_port_z) );
  XOR2_X1 simpleXor_54_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_27_port_z), .Z(
        u_1_0[6]) );
  XOR2_X1 simpleXor_55_U1 ( .A(port_rand_mul[0]), .B(port_b_0[6]), .Z(v_1_0[6]) );
  OR2_X1 maj_28_U19 ( .A1(maj_28_n8), .A2(maj_28_n9), .ZN(maj_28_n7) );
  NAND2_X1 maj_28_U18 ( .A1(u_0_0[6]), .A2(maj_28_n7), .ZN(maj_28_n6) );
  NAND2_X1 maj_28_U17 ( .A1(maj_28_n9), .A2(maj_28_n8), .ZN(maj_28_n5) );
  NAND2_X1 maj_28_U16 ( .A1(maj_28_n5), .A2(maj_28_n6), .ZN(maj_28_n4) );
  NAND2_X1 maj_28_U15 ( .A1(u_0_0[5]), .A2(maj_28_n10), .ZN(maj_28_n17) );
  NAND2_X1 maj_28_U14 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_28_n16) );
  NAND2_X1 maj_28_U13 ( .A1(maj_28_n16), .A2(maj_28_n17), .ZN(maj_28_n13) );
  NAND2_X1 maj_28_U12 ( .A1(u_0_0[2]), .A2(maj_28_n11), .ZN(maj_28_n15) );
  NAND2_X1 maj_28_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_28_n14) );
  NAND2_X1 maj_28_U10 ( .A1(maj_28_n14), .A2(maj_28_n15), .ZN(maj_28_n12) );
  XOR2_X1 maj_28_U9 ( .A(u_0_0[2]), .B(maj_28_n11), .Z(maj_28_n9) );
  XOR2_X1 maj_28_U8 ( .A(u_0_0[5]), .B(maj_28_n10), .Z(maj_28_n8) );
  XOR2_X1 maj_28_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_28_n11) );
  XOR2_X1 maj_28_U6 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_28_n10) );
  OR2_X1 maj_28_U5 ( .A1(maj_28_n12), .A2(maj_28_n13), .ZN(maj_28_n3) );
  NAND2_X1 maj_28_U4 ( .A1(maj_28_n13), .A2(maj_28_n12), .ZN(maj_28_n1) );
  NAND2_X1 maj_28_U3 ( .A1(maj_28_n3), .A2(maj_28_n4), .ZN(maj_28_n2) );
  NAND2_X1 maj_28_U2 ( .A1(maj_28_n1), .A2(maj_28_n2), .ZN(maj_28_port_o) );
  OR2_X1 maj_29_U19 ( .A1(maj_29_n27), .A2(maj_29_n26), .ZN(maj_29_n28) );
  NAND2_X1 maj_29_U18 ( .A1(v_0_0[6]), .A2(maj_29_n28), .ZN(maj_29_n29) );
  NAND2_X1 maj_29_U17 ( .A1(maj_29_n26), .A2(maj_29_n27), .ZN(maj_29_n30) );
  NAND2_X1 maj_29_U16 ( .A1(maj_29_n30), .A2(maj_29_n29), .ZN(maj_29_n31) );
  NAND2_X1 maj_29_U15 ( .A1(v_0_0[5]), .A2(maj_29_n25), .ZN(maj_29_n18) );
  NAND2_X1 maj_29_U14 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_29_n19) );
  NAND2_X1 maj_29_U13 ( .A1(maj_29_n19), .A2(maj_29_n18), .ZN(maj_29_n22) );
  NAND2_X1 maj_29_U12 ( .A1(v_0_0[2]), .A2(maj_29_n24), .ZN(maj_29_n20) );
  NAND2_X1 maj_29_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_29_n21) );
  NAND2_X1 maj_29_U10 ( .A1(maj_29_n21), .A2(maj_29_n20), .ZN(maj_29_n23) );
  XOR2_X1 maj_29_U9 ( .A(v_0_0[2]), .B(maj_29_n24), .Z(maj_29_n26) );
  XOR2_X1 maj_29_U8 ( .A(v_0_0[5]), .B(maj_29_n25), .Z(maj_29_n27) );
  XOR2_X1 maj_29_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_29_n24) );
  XOR2_X1 maj_29_U6 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_29_n25) );
  OR2_X1 maj_29_U5 ( .A1(maj_29_n23), .A2(maj_29_n22), .ZN(maj_29_n32) );
  NAND2_X1 maj_29_U4 ( .A1(maj_29_n22), .A2(maj_29_n23), .ZN(maj_29_n34) );
  NAND2_X1 maj_29_U3 ( .A1(maj_29_n32), .A2(maj_29_n31), .ZN(maj_29_n33) );
  NAND2_X1 maj_29_U2 ( .A1(maj_29_n34), .A2(maj_29_n33), .ZN(maj_29_port_o) );
  OR2_X1 maj_30_U19 ( .A1(maj_30_n27), .A2(maj_30_n26), .ZN(maj_30_n28) );
  NAND2_X1 maj_30_U18 ( .A1(u_1_0[6]), .A2(maj_30_n28), .ZN(maj_30_n29) );
  NAND2_X1 maj_30_U17 ( .A1(maj_30_n26), .A2(maj_30_n27), .ZN(maj_30_n30) );
  NAND2_X1 maj_30_U16 ( .A1(maj_30_n30), .A2(maj_30_n29), .ZN(maj_30_n31) );
  NAND2_X1 maj_30_U15 ( .A1(u_1_0[5]), .A2(maj_30_n25), .ZN(maj_30_n18) );
  NAND2_X1 maj_30_U14 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_30_n19) );
  NAND2_X1 maj_30_U13 ( .A1(maj_30_n19), .A2(maj_30_n18), .ZN(maj_30_n22) );
  NAND2_X1 maj_30_U12 ( .A1(u_1_0[2]), .A2(maj_30_n24), .ZN(maj_30_n20) );
  NAND2_X1 maj_30_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_30_n21) );
  NAND2_X1 maj_30_U10 ( .A1(maj_30_n21), .A2(maj_30_n20), .ZN(maj_30_n23) );
  XOR2_X1 maj_30_U9 ( .A(u_1_0[2]), .B(maj_30_n24), .Z(maj_30_n26) );
  XOR2_X1 maj_30_U8 ( .A(u_1_0[5]), .B(maj_30_n25), .Z(maj_30_n27) );
  XOR2_X1 maj_30_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_30_n24) );
  XOR2_X1 maj_30_U6 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_30_n25) );
  OR2_X1 maj_30_U5 ( .A1(maj_30_n23), .A2(maj_30_n22), .ZN(maj_30_n32) );
  NAND2_X1 maj_30_U4 ( .A1(maj_30_n22), .A2(maj_30_n23), .ZN(maj_30_n34) );
  NAND2_X1 maj_30_U3 ( .A1(maj_30_n32), .A2(maj_30_n31), .ZN(maj_30_n33) );
  NAND2_X1 maj_30_U2 ( .A1(maj_30_n34), .A2(maj_30_n33), .ZN(maj_30_port_o) );
  OR2_X1 maj_31_U19 ( .A1(maj_31_n27), .A2(maj_31_n26), .ZN(maj_31_n28) );
  NAND2_X1 maj_31_U18 ( .A1(v_1_0[6]), .A2(maj_31_n28), .ZN(maj_31_n29) );
  NAND2_X1 maj_31_U17 ( .A1(maj_31_n26), .A2(maj_31_n27), .ZN(maj_31_n30) );
  NAND2_X1 maj_31_U16 ( .A1(maj_31_n30), .A2(maj_31_n29), .ZN(maj_31_n31) );
  NAND2_X1 maj_31_U15 ( .A1(v_1_0[5]), .A2(maj_31_n25), .ZN(maj_31_n18) );
  NAND2_X1 maj_31_U14 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_31_n19) );
  NAND2_X1 maj_31_U13 ( .A1(maj_31_n19), .A2(maj_31_n18), .ZN(maj_31_n22) );
  NAND2_X1 maj_31_U12 ( .A1(v_1_0[2]), .A2(maj_31_n24), .ZN(maj_31_n20) );
  NAND2_X1 maj_31_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_31_n21) );
  NAND2_X1 maj_31_U10 ( .A1(maj_31_n21), .A2(maj_31_n20), .ZN(maj_31_n23) );
  XOR2_X1 maj_31_U9 ( .A(v_1_0[2]), .B(maj_31_n24), .Z(maj_31_n26) );
  XOR2_X1 maj_31_U8 ( .A(v_1_0[5]), .B(maj_31_n25), .Z(maj_31_n27) );
  XOR2_X1 maj_31_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_31_n24) );
  XOR2_X1 maj_31_U6 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_31_n25) );
  OR2_X1 maj_31_U5 ( .A1(maj_31_n23), .A2(maj_31_n22), .ZN(maj_31_n32) );
  NAND2_X1 maj_31_U4 ( .A1(maj_31_n22), .A2(maj_31_n23), .ZN(maj_31_n34) );
  NAND2_X1 maj_31_U3 ( .A1(maj_31_n32), .A2(maj_31_n31), .ZN(maj_31_n33) );
  NAND2_X1 maj_31_U2 ( .A1(maj_31_n34), .A2(maj_31_n33), .ZN(maj_31_port_o) );
  OR2_X1 maj_32_U19 ( .A1(maj_32_n27), .A2(maj_32_n26), .ZN(maj_32_n28) );
  NAND2_X1 maj_32_U18 ( .A1(u_0_0[6]), .A2(maj_32_n28), .ZN(maj_32_n29) );
  NAND2_X1 maj_32_U17 ( .A1(maj_32_n26), .A2(maj_32_n27), .ZN(maj_32_n30) );
  NAND2_X1 maj_32_U16 ( .A1(maj_32_n30), .A2(maj_32_n29), .ZN(maj_32_n31) );
  NAND2_X1 maj_32_U15 ( .A1(u_0_0[5]), .A2(maj_32_n25), .ZN(maj_32_n18) );
  NAND2_X1 maj_32_U14 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_32_n19) );
  NAND2_X1 maj_32_U13 ( .A1(maj_32_n19), .A2(maj_32_n18), .ZN(maj_32_n22) );
  NAND2_X1 maj_32_U12 ( .A1(u_0_0[2]), .A2(maj_32_n24), .ZN(maj_32_n20) );
  NAND2_X1 maj_32_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_32_n21) );
  NAND2_X1 maj_32_U10 ( .A1(maj_32_n21), .A2(maj_32_n20), .ZN(maj_32_n23) );
  XOR2_X1 maj_32_U9 ( .A(u_0_0[2]), .B(maj_32_n24), .Z(maj_32_n26) );
  XOR2_X1 maj_32_U8 ( .A(u_0_0[5]), .B(maj_32_n25), .Z(maj_32_n27) );
  XOR2_X1 maj_32_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_32_n24) );
  XOR2_X1 maj_32_U6 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_32_n25) );
  OR2_X1 maj_32_U5 ( .A1(maj_32_n23), .A2(maj_32_n22), .ZN(maj_32_n32) );
  NAND2_X1 maj_32_U4 ( .A1(maj_32_n22), .A2(maj_32_n23), .ZN(maj_32_n34) );
  NAND2_X1 maj_32_U3 ( .A1(maj_32_n32), .A2(maj_32_n31), .ZN(maj_32_n33) );
  NAND2_X1 maj_32_U2 ( .A1(maj_32_n34), .A2(maj_32_n33), .ZN(maj_32_port_o) );
  OR2_X1 maj_33_U19 ( .A1(maj_33_n27), .A2(maj_33_n26), .ZN(maj_33_n28) );
  NAND2_X1 maj_33_U18 ( .A1(v_0_0[6]), .A2(maj_33_n28), .ZN(maj_33_n29) );
  NAND2_X1 maj_33_U17 ( .A1(maj_33_n26), .A2(maj_33_n27), .ZN(maj_33_n30) );
  NAND2_X1 maj_33_U16 ( .A1(maj_33_n30), .A2(maj_33_n29), .ZN(maj_33_n31) );
  NAND2_X1 maj_33_U15 ( .A1(v_0_0[5]), .A2(maj_33_n25), .ZN(maj_33_n18) );
  NAND2_X1 maj_33_U14 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_33_n19) );
  NAND2_X1 maj_33_U13 ( .A1(maj_33_n19), .A2(maj_33_n18), .ZN(maj_33_n22) );
  NAND2_X1 maj_33_U12 ( .A1(v_0_0[2]), .A2(maj_33_n24), .ZN(maj_33_n20) );
  NAND2_X1 maj_33_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_33_n21) );
  NAND2_X1 maj_33_U10 ( .A1(maj_33_n21), .A2(maj_33_n20), .ZN(maj_33_n23) );
  XOR2_X1 maj_33_U9 ( .A(v_0_0[2]), .B(maj_33_n24), .Z(maj_33_n26) );
  XOR2_X1 maj_33_U8 ( .A(v_0_0[5]), .B(maj_33_n25), .Z(maj_33_n27) );
  XOR2_X1 maj_33_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_33_n24) );
  XOR2_X1 maj_33_U6 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_33_n25) );
  OR2_X1 maj_33_U5 ( .A1(maj_33_n23), .A2(maj_33_n22), .ZN(maj_33_n32) );
  NAND2_X1 maj_33_U4 ( .A1(maj_33_n22), .A2(maj_33_n23), .ZN(maj_33_n34) );
  NAND2_X1 maj_33_U3 ( .A1(maj_33_n32), .A2(maj_33_n31), .ZN(maj_33_n33) );
  NAND2_X1 maj_33_U2 ( .A1(maj_33_n34), .A2(maj_33_n33), .ZN(maj_33_port_o) );
  OR2_X1 maj_34_U19 ( .A1(maj_34_n27), .A2(maj_34_n26), .ZN(maj_34_n28) );
  NAND2_X1 maj_34_U18 ( .A1(u_1_0[6]), .A2(maj_34_n28), .ZN(maj_34_n29) );
  NAND2_X1 maj_34_U17 ( .A1(maj_34_n26), .A2(maj_34_n27), .ZN(maj_34_n30) );
  NAND2_X1 maj_34_U16 ( .A1(maj_34_n30), .A2(maj_34_n29), .ZN(maj_34_n31) );
  NAND2_X1 maj_34_U15 ( .A1(u_1_0[5]), .A2(maj_34_n25), .ZN(maj_34_n18) );
  NAND2_X1 maj_34_U14 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_34_n19) );
  NAND2_X1 maj_34_U13 ( .A1(maj_34_n19), .A2(maj_34_n18), .ZN(maj_34_n22) );
  NAND2_X1 maj_34_U12 ( .A1(u_1_0[2]), .A2(maj_34_n24), .ZN(maj_34_n20) );
  NAND2_X1 maj_34_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_34_n21) );
  NAND2_X1 maj_34_U10 ( .A1(maj_34_n21), .A2(maj_34_n20), .ZN(maj_34_n23) );
  XOR2_X1 maj_34_U9 ( .A(u_1_0[2]), .B(maj_34_n24), .Z(maj_34_n26) );
  XOR2_X1 maj_34_U8 ( .A(u_1_0[5]), .B(maj_34_n25), .Z(maj_34_n27) );
  XOR2_X1 maj_34_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_34_n24) );
  XOR2_X1 maj_34_U6 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_34_n25) );
  OR2_X1 maj_34_U5 ( .A1(maj_34_n23), .A2(maj_34_n22), .ZN(maj_34_n32) );
  NAND2_X1 maj_34_U4 ( .A1(maj_34_n22), .A2(maj_34_n23), .ZN(maj_34_n34) );
  NAND2_X1 maj_34_U3 ( .A1(maj_34_n32), .A2(maj_34_n31), .ZN(maj_34_n33) );
  NAND2_X1 maj_34_U2 ( .A1(maj_34_n34), .A2(maj_34_n33), .ZN(maj_34_port_o) );
  OR2_X1 maj_35_U19 ( .A1(maj_35_n27), .A2(maj_35_n26), .ZN(maj_35_n28) );
  NAND2_X1 maj_35_U18 ( .A1(v_1_0[6]), .A2(maj_35_n28), .ZN(maj_35_n29) );
  NAND2_X1 maj_35_U17 ( .A1(maj_35_n26), .A2(maj_35_n27), .ZN(maj_35_n30) );
  NAND2_X1 maj_35_U16 ( .A1(maj_35_n30), .A2(maj_35_n29), .ZN(maj_35_n31) );
  NAND2_X1 maj_35_U15 ( .A1(v_1_0[5]), .A2(maj_35_n25), .ZN(maj_35_n18) );
  NAND2_X1 maj_35_U14 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_35_n19) );
  NAND2_X1 maj_35_U13 ( .A1(maj_35_n19), .A2(maj_35_n18), .ZN(maj_35_n22) );
  NAND2_X1 maj_35_U12 ( .A1(v_1_0[2]), .A2(maj_35_n24), .ZN(maj_35_n20) );
  NAND2_X1 maj_35_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_35_n21) );
  NAND2_X1 maj_35_U10 ( .A1(maj_35_n21), .A2(maj_35_n20), .ZN(maj_35_n23) );
  XOR2_X1 maj_35_U9 ( .A(v_1_0[2]), .B(maj_35_n24), .Z(maj_35_n26) );
  XOR2_X1 maj_35_U8 ( .A(v_1_0[5]), .B(maj_35_n25), .Z(maj_35_n27) );
  XOR2_X1 maj_35_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_35_n24) );
  XOR2_X1 maj_35_U6 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_35_n25) );
  OR2_X1 maj_35_U5 ( .A1(maj_35_n23), .A2(maj_35_n22), .ZN(maj_35_n32) );
  NAND2_X1 maj_35_U4 ( .A1(maj_35_n22), .A2(maj_35_n23), .ZN(maj_35_n34) );
  NAND2_X1 maj_35_U3 ( .A1(maj_35_n32), .A2(maj_35_n31), .ZN(maj_35_n33) );
  NAND2_X1 maj_35_U2 ( .A1(maj_35_n34), .A2(maj_35_n33), .ZN(maj_35_port_o) );
  OR2_X1 maj_36_U19 ( .A1(maj_36_n27), .A2(maj_36_n26), .ZN(maj_36_n28) );
  NAND2_X1 maj_36_U18 ( .A1(u_0_0[6]), .A2(maj_36_n28), .ZN(maj_36_n29) );
  NAND2_X1 maj_36_U17 ( .A1(maj_36_n26), .A2(maj_36_n27), .ZN(maj_36_n30) );
  NAND2_X1 maj_36_U16 ( .A1(maj_36_n30), .A2(maj_36_n29), .ZN(maj_36_n31) );
  NAND2_X1 maj_36_U15 ( .A1(u_0_0[5]), .A2(maj_36_n25), .ZN(maj_36_n18) );
  NAND2_X1 maj_36_U14 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_36_n19) );
  NAND2_X1 maj_36_U13 ( .A1(maj_36_n19), .A2(maj_36_n18), .ZN(maj_36_n22) );
  NAND2_X1 maj_36_U12 ( .A1(u_0_0[2]), .A2(maj_36_n24), .ZN(maj_36_n20) );
  NAND2_X1 maj_36_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_36_n21) );
  NAND2_X1 maj_36_U10 ( .A1(maj_36_n21), .A2(maj_36_n20), .ZN(maj_36_n23) );
  XOR2_X1 maj_36_U9 ( .A(u_0_0[2]), .B(maj_36_n24), .Z(maj_36_n26) );
  XOR2_X1 maj_36_U8 ( .A(u_0_0[5]), .B(maj_36_n25), .Z(maj_36_n27) );
  XOR2_X1 maj_36_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_36_n24) );
  XOR2_X1 maj_36_U6 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_36_n25) );
  OR2_X1 maj_36_U5 ( .A1(maj_36_n23), .A2(maj_36_n22), .ZN(maj_36_n32) );
  NAND2_X1 maj_36_U4 ( .A1(maj_36_n22), .A2(maj_36_n23), .ZN(maj_36_n34) );
  NAND2_X1 maj_36_U3 ( .A1(maj_36_n32), .A2(maj_36_n31), .ZN(maj_36_n33) );
  NAND2_X1 maj_36_U2 ( .A1(maj_36_n34), .A2(maj_36_n33), .ZN(maj_36_port_o) );
  OR2_X1 maj_37_U19 ( .A1(maj_37_n27), .A2(maj_37_n26), .ZN(maj_37_n28) );
  NAND2_X1 maj_37_U18 ( .A1(v_0_0[6]), .A2(maj_37_n28), .ZN(maj_37_n29) );
  NAND2_X1 maj_37_U17 ( .A1(maj_37_n26), .A2(maj_37_n27), .ZN(maj_37_n30) );
  NAND2_X1 maj_37_U16 ( .A1(maj_37_n30), .A2(maj_37_n29), .ZN(maj_37_n31) );
  NAND2_X1 maj_37_U15 ( .A1(v_0_0[5]), .A2(maj_37_n25), .ZN(maj_37_n18) );
  NAND2_X1 maj_37_U14 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_37_n19) );
  NAND2_X1 maj_37_U13 ( .A1(maj_37_n19), .A2(maj_37_n18), .ZN(maj_37_n22) );
  NAND2_X1 maj_37_U12 ( .A1(v_0_0[2]), .A2(maj_37_n24), .ZN(maj_37_n20) );
  NAND2_X1 maj_37_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_37_n21) );
  NAND2_X1 maj_37_U10 ( .A1(maj_37_n21), .A2(maj_37_n20), .ZN(maj_37_n23) );
  XOR2_X1 maj_37_U9 ( .A(v_0_0[2]), .B(maj_37_n24), .Z(maj_37_n26) );
  XOR2_X1 maj_37_U8 ( .A(v_0_0[5]), .B(maj_37_n25), .Z(maj_37_n27) );
  XOR2_X1 maj_37_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_37_n24) );
  XOR2_X1 maj_37_U6 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_37_n25) );
  OR2_X1 maj_37_U5 ( .A1(maj_37_n23), .A2(maj_37_n22), .ZN(maj_37_n32) );
  NAND2_X1 maj_37_U4 ( .A1(maj_37_n22), .A2(maj_37_n23), .ZN(maj_37_n34) );
  NAND2_X1 maj_37_U3 ( .A1(maj_37_n32), .A2(maj_37_n31), .ZN(maj_37_n33) );
  NAND2_X1 maj_37_U2 ( .A1(maj_37_n34), .A2(maj_37_n33), .ZN(maj_37_port_o) );
  OR2_X1 maj_38_U19 ( .A1(maj_38_n27), .A2(maj_38_n26), .ZN(maj_38_n28) );
  NAND2_X1 maj_38_U18 ( .A1(u_1_0[6]), .A2(maj_38_n28), .ZN(maj_38_n29) );
  NAND2_X1 maj_38_U17 ( .A1(maj_38_n26), .A2(maj_38_n27), .ZN(maj_38_n30) );
  NAND2_X1 maj_38_U16 ( .A1(maj_38_n30), .A2(maj_38_n29), .ZN(maj_38_n31) );
  NAND2_X1 maj_38_U15 ( .A1(u_1_0[5]), .A2(maj_38_n25), .ZN(maj_38_n18) );
  NAND2_X1 maj_38_U14 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_38_n19) );
  NAND2_X1 maj_38_U13 ( .A1(maj_38_n19), .A2(maj_38_n18), .ZN(maj_38_n22) );
  NAND2_X1 maj_38_U12 ( .A1(u_1_0[2]), .A2(maj_38_n24), .ZN(maj_38_n20) );
  NAND2_X1 maj_38_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_38_n21) );
  NAND2_X1 maj_38_U10 ( .A1(maj_38_n21), .A2(maj_38_n20), .ZN(maj_38_n23) );
  XOR2_X1 maj_38_U9 ( .A(u_1_0[2]), .B(maj_38_n24), .Z(maj_38_n26) );
  XOR2_X1 maj_38_U8 ( .A(u_1_0[5]), .B(maj_38_n25), .Z(maj_38_n27) );
  XOR2_X1 maj_38_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_38_n24) );
  XOR2_X1 maj_38_U6 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_38_n25) );
  OR2_X1 maj_38_U5 ( .A1(maj_38_n23), .A2(maj_38_n22), .ZN(maj_38_n32) );
  NAND2_X1 maj_38_U4 ( .A1(maj_38_n22), .A2(maj_38_n23), .ZN(maj_38_n34) );
  NAND2_X1 maj_38_U3 ( .A1(maj_38_n32), .A2(maj_38_n31), .ZN(maj_38_n33) );
  NAND2_X1 maj_38_U2 ( .A1(maj_38_n34), .A2(maj_38_n33), .ZN(maj_38_port_o) );
  OR2_X1 maj_39_U19 ( .A1(maj_39_n27), .A2(maj_39_n26), .ZN(maj_39_n28) );
  NAND2_X1 maj_39_U18 ( .A1(v_1_0[6]), .A2(maj_39_n28), .ZN(maj_39_n29) );
  NAND2_X1 maj_39_U17 ( .A1(maj_39_n26), .A2(maj_39_n27), .ZN(maj_39_n30) );
  NAND2_X1 maj_39_U16 ( .A1(maj_39_n30), .A2(maj_39_n29), .ZN(maj_39_n31) );
  NAND2_X1 maj_39_U15 ( .A1(v_1_0[5]), .A2(maj_39_n25), .ZN(maj_39_n18) );
  NAND2_X1 maj_39_U14 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_39_n19) );
  NAND2_X1 maj_39_U13 ( .A1(maj_39_n19), .A2(maj_39_n18), .ZN(maj_39_n22) );
  NAND2_X1 maj_39_U12 ( .A1(v_1_0[2]), .A2(maj_39_n24), .ZN(maj_39_n20) );
  NAND2_X1 maj_39_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_39_n21) );
  NAND2_X1 maj_39_U10 ( .A1(maj_39_n21), .A2(maj_39_n20), .ZN(maj_39_n23) );
  XOR2_X1 maj_39_U9 ( .A(v_1_0[2]), .B(maj_39_n24), .Z(maj_39_n26) );
  XOR2_X1 maj_39_U8 ( .A(v_1_0[5]), .B(maj_39_n25), .Z(maj_39_n27) );
  XOR2_X1 maj_39_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_39_n24) );
  XOR2_X1 maj_39_U6 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_39_n25) );
  OR2_X1 maj_39_U5 ( .A1(maj_39_n23), .A2(maj_39_n22), .ZN(maj_39_n32) );
  NAND2_X1 maj_39_U4 ( .A1(maj_39_n22), .A2(maj_39_n23), .ZN(maj_39_n34) );
  NAND2_X1 maj_39_U3 ( .A1(maj_39_n32), .A2(maj_39_n31), .ZN(maj_39_n33) );
  NAND2_X1 maj_39_U2 ( .A1(maj_39_n34), .A2(maj_39_n33), .ZN(maj_39_port_o) );
  OR2_X1 maj_40_U19 ( .A1(maj_40_n27), .A2(maj_40_n26), .ZN(maj_40_n28) );
  NAND2_X1 maj_40_U18 ( .A1(u_0_0[6]), .A2(maj_40_n28), .ZN(maj_40_n29) );
  NAND2_X1 maj_40_U17 ( .A1(maj_40_n26), .A2(maj_40_n27), .ZN(maj_40_n30) );
  NAND2_X1 maj_40_U16 ( .A1(maj_40_n30), .A2(maj_40_n29), .ZN(maj_40_n31) );
  NAND2_X1 maj_40_U15 ( .A1(u_0_0[5]), .A2(maj_40_n25), .ZN(maj_40_n18) );
  NAND2_X1 maj_40_U14 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_40_n19) );
  NAND2_X1 maj_40_U13 ( .A1(maj_40_n19), .A2(maj_40_n18), .ZN(maj_40_n22) );
  NAND2_X1 maj_40_U12 ( .A1(u_0_0[2]), .A2(maj_40_n24), .ZN(maj_40_n20) );
  NAND2_X1 maj_40_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_40_n21) );
  NAND2_X1 maj_40_U10 ( .A1(maj_40_n21), .A2(maj_40_n20), .ZN(maj_40_n23) );
  XOR2_X1 maj_40_U9 ( .A(u_0_0[2]), .B(maj_40_n24), .Z(maj_40_n26) );
  XOR2_X1 maj_40_U8 ( .A(u_0_0[5]), .B(maj_40_n25), .Z(maj_40_n27) );
  XOR2_X1 maj_40_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_40_n24) );
  XOR2_X1 maj_40_U6 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_40_n25) );
  OR2_X1 maj_40_U5 ( .A1(maj_40_n23), .A2(maj_40_n22), .ZN(maj_40_n32) );
  NAND2_X1 maj_40_U4 ( .A1(maj_40_n22), .A2(maj_40_n23), .ZN(maj_40_n34) );
  NAND2_X1 maj_40_U3 ( .A1(maj_40_n32), .A2(maj_40_n31), .ZN(maj_40_n33) );
  NAND2_X1 maj_40_U2 ( .A1(maj_40_n34), .A2(maj_40_n33), .ZN(maj_40_port_o) );
  OR2_X1 maj_41_U19 ( .A1(maj_41_n27), .A2(maj_41_n26), .ZN(maj_41_n28) );
  NAND2_X1 maj_41_U18 ( .A1(v_0_0[6]), .A2(maj_41_n28), .ZN(maj_41_n29) );
  NAND2_X1 maj_41_U17 ( .A1(maj_41_n26), .A2(maj_41_n27), .ZN(maj_41_n30) );
  NAND2_X1 maj_41_U16 ( .A1(maj_41_n30), .A2(maj_41_n29), .ZN(maj_41_n31) );
  NAND2_X1 maj_41_U15 ( .A1(v_0_0[5]), .A2(maj_41_n25), .ZN(maj_41_n18) );
  NAND2_X1 maj_41_U14 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_41_n19) );
  NAND2_X1 maj_41_U13 ( .A1(maj_41_n19), .A2(maj_41_n18), .ZN(maj_41_n22) );
  NAND2_X1 maj_41_U12 ( .A1(v_0_0[2]), .A2(maj_41_n24), .ZN(maj_41_n20) );
  NAND2_X1 maj_41_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_41_n21) );
  NAND2_X1 maj_41_U10 ( .A1(maj_41_n21), .A2(maj_41_n20), .ZN(maj_41_n23) );
  XOR2_X1 maj_41_U9 ( .A(v_0_0[2]), .B(maj_41_n24), .Z(maj_41_n26) );
  XOR2_X1 maj_41_U8 ( .A(v_0_0[5]), .B(maj_41_n25), .Z(maj_41_n27) );
  XOR2_X1 maj_41_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_41_n24) );
  XOR2_X1 maj_41_U6 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_41_n25) );
  OR2_X1 maj_41_U5 ( .A1(maj_41_n23), .A2(maj_41_n22), .ZN(maj_41_n32) );
  NAND2_X1 maj_41_U4 ( .A1(maj_41_n22), .A2(maj_41_n23), .ZN(maj_41_n34) );
  NAND2_X1 maj_41_U3 ( .A1(maj_41_n32), .A2(maj_41_n31), .ZN(maj_41_n33) );
  NAND2_X1 maj_41_U2 ( .A1(maj_41_n34), .A2(maj_41_n33), .ZN(maj_41_port_o) );
  OR2_X1 maj_42_U19 ( .A1(maj_42_n27), .A2(maj_42_n26), .ZN(maj_42_n28) );
  NAND2_X1 maj_42_U18 ( .A1(u_1_0[6]), .A2(maj_42_n28), .ZN(maj_42_n29) );
  NAND2_X1 maj_42_U17 ( .A1(maj_42_n26), .A2(maj_42_n27), .ZN(maj_42_n30) );
  NAND2_X1 maj_42_U16 ( .A1(maj_42_n30), .A2(maj_42_n29), .ZN(maj_42_n31) );
  NAND2_X1 maj_42_U15 ( .A1(u_1_0[5]), .A2(maj_42_n25), .ZN(maj_42_n18) );
  NAND2_X1 maj_42_U14 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_42_n19) );
  NAND2_X1 maj_42_U13 ( .A1(maj_42_n19), .A2(maj_42_n18), .ZN(maj_42_n22) );
  NAND2_X1 maj_42_U12 ( .A1(u_1_0[2]), .A2(maj_42_n24), .ZN(maj_42_n20) );
  NAND2_X1 maj_42_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_42_n21) );
  NAND2_X1 maj_42_U10 ( .A1(maj_42_n21), .A2(maj_42_n20), .ZN(maj_42_n23) );
  XOR2_X1 maj_42_U9 ( .A(u_1_0[2]), .B(maj_42_n24), .Z(maj_42_n26) );
  XOR2_X1 maj_42_U8 ( .A(u_1_0[5]), .B(maj_42_n25), .Z(maj_42_n27) );
  XOR2_X1 maj_42_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_42_n24) );
  XOR2_X1 maj_42_U6 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_42_n25) );
  OR2_X1 maj_42_U5 ( .A1(maj_42_n23), .A2(maj_42_n22), .ZN(maj_42_n32) );
  NAND2_X1 maj_42_U4 ( .A1(maj_42_n22), .A2(maj_42_n23), .ZN(maj_42_n34) );
  NAND2_X1 maj_42_U3 ( .A1(maj_42_n32), .A2(maj_42_n31), .ZN(maj_42_n33) );
  NAND2_X1 maj_42_U2 ( .A1(maj_42_n34), .A2(maj_42_n33), .ZN(maj_42_port_o) );
  OR2_X1 maj_43_U19 ( .A1(maj_43_n27), .A2(maj_43_n26), .ZN(maj_43_n28) );
  NAND2_X1 maj_43_U18 ( .A1(v_1_0[6]), .A2(maj_43_n28), .ZN(maj_43_n29) );
  NAND2_X1 maj_43_U17 ( .A1(maj_43_n26), .A2(maj_43_n27), .ZN(maj_43_n30) );
  NAND2_X1 maj_43_U16 ( .A1(maj_43_n30), .A2(maj_43_n29), .ZN(maj_43_n31) );
  NAND2_X1 maj_43_U15 ( .A1(v_1_0[5]), .A2(maj_43_n25), .ZN(maj_43_n18) );
  NAND2_X1 maj_43_U14 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_43_n19) );
  NAND2_X1 maj_43_U13 ( .A1(maj_43_n19), .A2(maj_43_n18), .ZN(maj_43_n22) );
  NAND2_X1 maj_43_U12 ( .A1(v_1_0[2]), .A2(maj_43_n24), .ZN(maj_43_n20) );
  NAND2_X1 maj_43_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_43_n21) );
  NAND2_X1 maj_43_U10 ( .A1(maj_43_n21), .A2(maj_43_n20), .ZN(maj_43_n23) );
  XOR2_X1 maj_43_U9 ( .A(v_1_0[2]), .B(maj_43_n24), .Z(maj_43_n26) );
  XOR2_X1 maj_43_U8 ( .A(v_1_0[5]), .B(maj_43_n25), .Z(maj_43_n27) );
  XOR2_X1 maj_43_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_43_n24) );
  XOR2_X1 maj_43_U6 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_43_n25) );
  OR2_X1 maj_43_U5 ( .A1(maj_43_n23), .A2(maj_43_n22), .ZN(maj_43_n32) );
  NAND2_X1 maj_43_U4 ( .A1(maj_43_n22), .A2(maj_43_n23), .ZN(maj_43_n34) );
  NAND2_X1 maj_43_U3 ( .A1(maj_43_n32), .A2(maj_43_n31), .ZN(maj_43_n33) );
  NAND2_X1 maj_43_U2 ( .A1(maj_43_n34), .A2(maj_43_n33), .ZN(maj_43_port_o) );
  OR2_X1 maj_44_U19 ( .A1(maj_44_n27), .A2(maj_44_n26), .ZN(maj_44_n28) );
  NAND2_X1 maj_44_U18 ( .A1(u_0_0[6]), .A2(maj_44_n28), .ZN(maj_44_n29) );
  NAND2_X1 maj_44_U17 ( .A1(maj_44_n26), .A2(maj_44_n27), .ZN(maj_44_n30) );
  NAND2_X1 maj_44_U16 ( .A1(maj_44_n30), .A2(maj_44_n29), .ZN(maj_44_n31) );
  NAND2_X1 maj_44_U15 ( .A1(u_0_0[5]), .A2(maj_44_n25), .ZN(maj_44_n18) );
  NAND2_X1 maj_44_U14 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_44_n19) );
  NAND2_X1 maj_44_U13 ( .A1(maj_44_n19), .A2(maj_44_n18), .ZN(maj_44_n22) );
  NAND2_X1 maj_44_U12 ( .A1(u_0_0[2]), .A2(maj_44_n24), .ZN(maj_44_n20) );
  NAND2_X1 maj_44_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_44_n21) );
  NAND2_X1 maj_44_U10 ( .A1(maj_44_n21), .A2(maj_44_n20), .ZN(maj_44_n23) );
  XOR2_X1 maj_44_U9 ( .A(u_0_0[2]), .B(maj_44_n24), .Z(maj_44_n26) );
  XOR2_X1 maj_44_U8 ( .A(u_0_0[5]), .B(maj_44_n25), .Z(maj_44_n27) );
  XOR2_X1 maj_44_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_44_n24) );
  XOR2_X1 maj_44_U6 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_44_n25) );
  OR2_X1 maj_44_U5 ( .A1(maj_44_n23), .A2(maj_44_n22), .ZN(maj_44_n32) );
  NAND2_X1 maj_44_U4 ( .A1(maj_44_n22), .A2(maj_44_n23), .ZN(maj_44_n34) );
  NAND2_X1 maj_44_U3 ( .A1(maj_44_n32), .A2(maj_44_n31), .ZN(maj_44_n33) );
  NAND2_X1 maj_44_U2 ( .A1(maj_44_n34), .A2(maj_44_n33), .ZN(maj_44_port_o) );
  OR2_X1 maj_45_U19 ( .A1(maj_45_n27), .A2(maj_45_n26), .ZN(maj_45_n28) );
  NAND2_X1 maj_45_U18 ( .A1(v_0_0[6]), .A2(maj_45_n28), .ZN(maj_45_n29) );
  NAND2_X1 maj_45_U17 ( .A1(maj_45_n26), .A2(maj_45_n27), .ZN(maj_45_n30) );
  NAND2_X1 maj_45_U16 ( .A1(maj_45_n30), .A2(maj_45_n29), .ZN(maj_45_n31) );
  NAND2_X1 maj_45_U15 ( .A1(v_0_0[5]), .A2(maj_45_n25), .ZN(maj_45_n18) );
  NAND2_X1 maj_45_U14 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_45_n19) );
  NAND2_X1 maj_45_U13 ( .A1(maj_45_n19), .A2(maj_45_n18), .ZN(maj_45_n22) );
  NAND2_X1 maj_45_U12 ( .A1(v_0_0[2]), .A2(maj_45_n24), .ZN(maj_45_n20) );
  NAND2_X1 maj_45_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_45_n21) );
  NAND2_X1 maj_45_U10 ( .A1(maj_45_n21), .A2(maj_45_n20), .ZN(maj_45_n23) );
  XOR2_X1 maj_45_U9 ( .A(v_0_0[2]), .B(maj_45_n24), .Z(maj_45_n26) );
  XOR2_X1 maj_45_U8 ( .A(v_0_0[5]), .B(maj_45_n25), .Z(maj_45_n27) );
  XOR2_X1 maj_45_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_45_n24) );
  XOR2_X1 maj_45_U6 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_45_n25) );
  OR2_X1 maj_45_U5 ( .A1(maj_45_n23), .A2(maj_45_n22), .ZN(maj_45_n32) );
  NAND2_X1 maj_45_U4 ( .A1(maj_45_n22), .A2(maj_45_n23), .ZN(maj_45_n34) );
  NAND2_X1 maj_45_U3 ( .A1(maj_45_n32), .A2(maj_45_n31), .ZN(maj_45_n33) );
  NAND2_X1 maj_45_U2 ( .A1(maj_45_n34), .A2(maj_45_n33), .ZN(maj_45_port_o) );
  OR2_X1 maj_46_U19 ( .A1(maj_46_n27), .A2(maj_46_n26), .ZN(maj_46_n28) );
  NAND2_X1 maj_46_U18 ( .A1(u_1_0[6]), .A2(maj_46_n28), .ZN(maj_46_n29) );
  NAND2_X1 maj_46_U17 ( .A1(maj_46_n26), .A2(maj_46_n27), .ZN(maj_46_n30) );
  NAND2_X1 maj_46_U16 ( .A1(maj_46_n30), .A2(maj_46_n29), .ZN(maj_46_n31) );
  NAND2_X1 maj_46_U15 ( .A1(u_1_0[5]), .A2(maj_46_n25), .ZN(maj_46_n18) );
  NAND2_X1 maj_46_U14 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_46_n19) );
  NAND2_X1 maj_46_U13 ( .A1(maj_46_n19), .A2(maj_46_n18), .ZN(maj_46_n22) );
  NAND2_X1 maj_46_U12 ( .A1(u_1_0[2]), .A2(maj_46_n24), .ZN(maj_46_n20) );
  NAND2_X1 maj_46_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_46_n21) );
  NAND2_X1 maj_46_U10 ( .A1(maj_46_n21), .A2(maj_46_n20), .ZN(maj_46_n23) );
  XOR2_X1 maj_46_U9 ( .A(u_1_0[2]), .B(maj_46_n24), .Z(maj_46_n26) );
  XOR2_X1 maj_46_U8 ( .A(u_1_0[5]), .B(maj_46_n25), .Z(maj_46_n27) );
  XOR2_X1 maj_46_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_46_n24) );
  XOR2_X1 maj_46_U6 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_46_n25) );
  OR2_X1 maj_46_U5 ( .A1(maj_46_n23), .A2(maj_46_n22), .ZN(maj_46_n32) );
  NAND2_X1 maj_46_U4 ( .A1(maj_46_n22), .A2(maj_46_n23), .ZN(maj_46_n34) );
  NAND2_X1 maj_46_U3 ( .A1(maj_46_n32), .A2(maj_46_n31), .ZN(maj_46_n33) );
  NAND2_X1 maj_46_U2 ( .A1(maj_46_n34), .A2(maj_46_n33), .ZN(maj_46_port_o) );
  OR2_X1 maj_47_U19 ( .A1(maj_47_n27), .A2(maj_47_n26), .ZN(maj_47_n28) );
  NAND2_X1 maj_47_U18 ( .A1(v_1_0[6]), .A2(maj_47_n28), .ZN(maj_47_n29) );
  NAND2_X1 maj_47_U17 ( .A1(maj_47_n26), .A2(maj_47_n27), .ZN(maj_47_n30) );
  NAND2_X1 maj_47_U16 ( .A1(maj_47_n30), .A2(maj_47_n29), .ZN(maj_47_n31) );
  NAND2_X1 maj_47_U15 ( .A1(v_1_0[5]), .A2(maj_47_n25), .ZN(maj_47_n18) );
  NAND2_X1 maj_47_U14 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_47_n19) );
  NAND2_X1 maj_47_U13 ( .A1(maj_47_n19), .A2(maj_47_n18), .ZN(maj_47_n22) );
  NAND2_X1 maj_47_U12 ( .A1(v_1_0[2]), .A2(maj_47_n24), .ZN(maj_47_n20) );
  NAND2_X1 maj_47_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_47_n21) );
  NAND2_X1 maj_47_U10 ( .A1(maj_47_n21), .A2(maj_47_n20), .ZN(maj_47_n23) );
  XOR2_X1 maj_47_U9 ( .A(v_1_0[2]), .B(maj_47_n24), .Z(maj_47_n26) );
  XOR2_X1 maj_47_U8 ( .A(v_1_0[5]), .B(maj_47_n25), .Z(maj_47_n27) );
  XOR2_X1 maj_47_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_47_n24) );
  XOR2_X1 maj_47_U6 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_47_n25) );
  OR2_X1 maj_47_U5 ( .A1(maj_47_n23), .A2(maj_47_n22), .ZN(maj_47_n32) );
  NAND2_X1 maj_47_U4 ( .A1(maj_47_n22), .A2(maj_47_n23), .ZN(maj_47_n34) );
  NAND2_X1 maj_47_U3 ( .A1(maj_47_n32), .A2(maj_47_n31), .ZN(maj_47_n33) );
  NAND2_X1 maj_47_U2 ( .A1(maj_47_n34), .A2(maj_47_n33), .ZN(maj_47_port_o) );
  OR2_X1 maj_48_U19 ( .A1(maj_48_n27), .A2(maj_48_n26), .ZN(maj_48_n28) );
  NAND2_X1 maj_48_U18 ( .A1(u_0_0[6]), .A2(maj_48_n28), .ZN(maj_48_n29) );
  NAND2_X1 maj_48_U17 ( .A1(maj_48_n26), .A2(maj_48_n27), .ZN(maj_48_n30) );
  NAND2_X1 maj_48_U16 ( .A1(maj_48_n30), .A2(maj_48_n29), .ZN(maj_48_n31) );
  NAND2_X1 maj_48_U15 ( .A1(u_0_0[5]), .A2(maj_48_n25), .ZN(maj_48_n18) );
  NAND2_X1 maj_48_U14 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_48_n19) );
  NAND2_X1 maj_48_U13 ( .A1(maj_48_n19), .A2(maj_48_n18), .ZN(maj_48_n22) );
  NAND2_X1 maj_48_U12 ( .A1(u_0_0[2]), .A2(maj_48_n24), .ZN(maj_48_n20) );
  NAND2_X1 maj_48_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_48_n21) );
  NAND2_X1 maj_48_U10 ( .A1(maj_48_n21), .A2(maj_48_n20), .ZN(maj_48_n23) );
  XOR2_X1 maj_48_U9 ( .A(u_0_0[2]), .B(maj_48_n24), .Z(maj_48_n26) );
  XOR2_X1 maj_48_U8 ( .A(u_0_0[5]), .B(maj_48_n25), .Z(maj_48_n27) );
  XOR2_X1 maj_48_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_48_n24) );
  XOR2_X1 maj_48_U6 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_48_n25) );
  OR2_X1 maj_48_U5 ( .A1(maj_48_n23), .A2(maj_48_n22), .ZN(maj_48_n32) );
  NAND2_X1 maj_48_U4 ( .A1(maj_48_n22), .A2(maj_48_n23), .ZN(maj_48_n34) );
  NAND2_X1 maj_48_U3 ( .A1(maj_48_n32), .A2(maj_48_n31), .ZN(maj_48_n33) );
  NAND2_X1 maj_48_U2 ( .A1(maj_48_n34), .A2(maj_48_n33), .ZN(maj_48_port_o) );
  OR2_X1 maj_49_U19 ( .A1(maj_49_n27), .A2(maj_49_n26), .ZN(maj_49_n28) );
  NAND2_X1 maj_49_U18 ( .A1(v_0_0[6]), .A2(maj_49_n28), .ZN(maj_49_n29) );
  NAND2_X1 maj_49_U17 ( .A1(maj_49_n26), .A2(maj_49_n27), .ZN(maj_49_n30) );
  NAND2_X1 maj_49_U16 ( .A1(maj_49_n30), .A2(maj_49_n29), .ZN(maj_49_n31) );
  NAND2_X1 maj_49_U15 ( .A1(v_0_0[5]), .A2(maj_49_n25), .ZN(maj_49_n18) );
  NAND2_X1 maj_49_U14 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_49_n19) );
  NAND2_X1 maj_49_U13 ( .A1(maj_49_n19), .A2(maj_49_n18), .ZN(maj_49_n22) );
  NAND2_X1 maj_49_U12 ( .A1(v_0_0[2]), .A2(maj_49_n24), .ZN(maj_49_n20) );
  NAND2_X1 maj_49_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_49_n21) );
  NAND2_X1 maj_49_U10 ( .A1(maj_49_n21), .A2(maj_49_n20), .ZN(maj_49_n23) );
  XOR2_X1 maj_49_U9 ( .A(v_0_0[2]), .B(maj_49_n24), .Z(maj_49_n26) );
  XOR2_X1 maj_49_U8 ( .A(v_0_0[5]), .B(maj_49_n25), .Z(maj_49_n27) );
  XOR2_X1 maj_49_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_49_n24) );
  XOR2_X1 maj_49_U6 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_49_n25) );
  OR2_X1 maj_49_U5 ( .A1(maj_49_n23), .A2(maj_49_n22), .ZN(maj_49_n32) );
  NAND2_X1 maj_49_U4 ( .A1(maj_49_n22), .A2(maj_49_n23), .ZN(maj_49_n34) );
  NAND2_X1 maj_49_U3 ( .A1(maj_49_n32), .A2(maj_49_n31), .ZN(maj_49_n33) );
  NAND2_X1 maj_49_U2 ( .A1(maj_49_n34), .A2(maj_49_n33), .ZN(maj_49_port_o) );
  OR2_X1 maj_50_U19 ( .A1(maj_50_n27), .A2(maj_50_n26), .ZN(maj_50_n28) );
  NAND2_X1 maj_50_U18 ( .A1(u_1_0[6]), .A2(maj_50_n28), .ZN(maj_50_n29) );
  NAND2_X1 maj_50_U17 ( .A1(maj_50_n26), .A2(maj_50_n27), .ZN(maj_50_n30) );
  NAND2_X1 maj_50_U16 ( .A1(maj_50_n30), .A2(maj_50_n29), .ZN(maj_50_n31) );
  NAND2_X1 maj_50_U15 ( .A1(u_1_0[5]), .A2(maj_50_n25), .ZN(maj_50_n18) );
  NAND2_X1 maj_50_U14 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_50_n19) );
  NAND2_X1 maj_50_U13 ( .A1(maj_50_n19), .A2(maj_50_n18), .ZN(maj_50_n22) );
  NAND2_X1 maj_50_U12 ( .A1(u_1_0[2]), .A2(maj_50_n24), .ZN(maj_50_n20) );
  NAND2_X1 maj_50_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_50_n21) );
  NAND2_X1 maj_50_U10 ( .A1(maj_50_n21), .A2(maj_50_n20), .ZN(maj_50_n23) );
  XOR2_X1 maj_50_U9 ( .A(u_1_0[2]), .B(maj_50_n24), .Z(maj_50_n26) );
  XOR2_X1 maj_50_U8 ( .A(u_1_0[5]), .B(maj_50_n25), .Z(maj_50_n27) );
  XOR2_X1 maj_50_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_50_n24) );
  XOR2_X1 maj_50_U6 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_50_n25) );
  OR2_X1 maj_50_U5 ( .A1(maj_50_n23), .A2(maj_50_n22), .ZN(maj_50_n32) );
  NAND2_X1 maj_50_U4 ( .A1(maj_50_n22), .A2(maj_50_n23), .ZN(maj_50_n34) );
  NAND2_X1 maj_50_U3 ( .A1(maj_50_n32), .A2(maj_50_n31), .ZN(maj_50_n33) );
  NAND2_X1 maj_50_U2 ( .A1(maj_50_n34), .A2(maj_50_n33), .ZN(maj_50_port_o) );
  OR2_X1 maj_51_U19 ( .A1(maj_51_n27), .A2(maj_51_n26), .ZN(maj_51_n28) );
  NAND2_X1 maj_51_U18 ( .A1(v_1_0[6]), .A2(maj_51_n28), .ZN(maj_51_n29) );
  NAND2_X1 maj_51_U17 ( .A1(maj_51_n26), .A2(maj_51_n27), .ZN(maj_51_n30) );
  NAND2_X1 maj_51_U16 ( .A1(maj_51_n30), .A2(maj_51_n29), .ZN(maj_51_n31) );
  NAND2_X1 maj_51_U15 ( .A1(v_1_0[5]), .A2(maj_51_n25), .ZN(maj_51_n18) );
  NAND2_X1 maj_51_U14 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_51_n19) );
  NAND2_X1 maj_51_U13 ( .A1(maj_51_n19), .A2(maj_51_n18), .ZN(maj_51_n22) );
  NAND2_X1 maj_51_U12 ( .A1(v_1_0[2]), .A2(maj_51_n24), .ZN(maj_51_n20) );
  NAND2_X1 maj_51_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_51_n21) );
  NAND2_X1 maj_51_U10 ( .A1(maj_51_n21), .A2(maj_51_n20), .ZN(maj_51_n23) );
  XOR2_X1 maj_51_U9 ( .A(v_1_0[2]), .B(maj_51_n24), .Z(maj_51_n26) );
  XOR2_X1 maj_51_U8 ( .A(v_1_0[5]), .B(maj_51_n25), .Z(maj_51_n27) );
  XOR2_X1 maj_51_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_51_n24) );
  XOR2_X1 maj_51_U6 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_51_n25) );
  OR2_X1 maj_51_U5 ( .A1(maj_51_n23), .A2(maj_51_n22), .ZN(maj_51_n32) );
  NAND2_X1 maj_51_U4 ( .A1(maj_51_n22), .A2(maj_51_n23), .ZN(maj_51_n34) );
  NAND2_X1 maj_51_U3 ( .A1(maj_51_n32), .A2(maj_51_n31), .ZN(maj_51_n33) );
  NAND2_X1 maj_51_U2 ( .A1(maj_51_n34), .A2(maj_51_n33), .ZN(maj_51_port_o) );
  OR2_X1 maj_52_U19 ( .A1(maj_52_n27), .A2(maj_52_n26), .ZN(maj_52_n28) );
  NAND2_X1 maj_52_U18 ( .A1(u_0_0[6]), .A2(maj_52_n28), .ZN(maj_52_n29) );
  NAND2_X1 maj_52_U17 ( .A1(maj_52_n26), .A2(maj_52_n27), .ZN(maj_52_n30) );
  NAND2_X1 maj_52_U16 ( .A1(maj_52_n30), .A2(maj_52_n29), .ZN(maj_52_n31) );
  NAND2_X1 maj_52_U15 ( .A1(u_0_0[5]), .A2(maj_52_n25), .ZN(maj_52_n18) );
  NAND2_X1 maj_52_U14 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_52_n19) );
  NAND2_X1 maj_52_U13 ( .A1(maj_52_n19), .A2(maj_52_n18), .ZN(maj_52_n22) );
  NAND2_X1 maj_52_U12 ( .A1(u_0_0[2]), .A2(maj_52_n24), .ZN(maj_52_n20) );
  NAND2_X1 maj_52_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_52_n21) );
  NAND2_X1 maj_52_U10 ( .A1(maj_52_n21), .A2(maj_52_n20), .ZN(maj_52_n23) );
  XOR2_X1 maj_52_U9 ( .A(u_0_0[2]), .B(maj_52_n24), .Z(maj_52_n26) );
  XOR2_X1 maj_52_U8 ( .A(u_0_0[5]), .B(maj_52_n25), .Z(maj_52_n27) );
  XOR2_X1 maj_52_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_52_n24) );
  XOR2_X1 maj_52_U6 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_52_n25) );
  OR2_X1 maj_52_U5 ( .A1(maj_52_n23), .A2(maj_52_n22), .ZN(maj_52_n32) );
  NAND2_X1 maj_52_U4 ( .A1(maj_52_n22), .A2(maj_52_n23), .ZN(maj_52_n34) );
  NAND2_X1 maj_52_U3 ( .A1(maj_52_n32), .A2(maj_52_n31), .ZN(maj_52_n33) );
  NAND2_X1 maj_52_U2 ( .A1(maj_52_n34), .A2(maj_52_n33), .ZN(maj_52_port_o) );
  OR2_X1 maj_53_U19 ( .A1(maj_53_n27), .A2(maj_53_n26), .ZN(maj_53_n28) );
  NAND2_X1 maj_53_U18 ( .A1(v_0_0[6]), .A2(maj_53_n28), .ZN(maj_53_n29) );
  NAND2_X1 maj_53_U17 ( .A1(maj_53_n26), .A2(maj_53_n27), .ZN(maj_53_n30) );
  NAND2_X1 maj_53_U16 ( .A1(maj_53_n30), .A2(maj_53_n29), .ZN(maj_53_n31) );
  NAND2_X1 maj_53_U15 ( .A1(v_0_0[5]), .A2(maj_53_n25), .ZN(maj_53_n18) );
  NAND2_X1 maj_53_U14 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_53_n19) );
  NAND2_X1 maj_53_U13 ( .A1(maj_53_n19), .A2(maj_53_n18), .ZN(maj_53_n22) );
  NAND2_X1 maj_53_U12 ( .A1(v_0_0[2]), .A2(maj_53_n24), .ZN(maj_53_n20) );
  NAND2_X1 maj_53_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_53_n21) );
  NAND2_X1 maj_53_U10 ( .A1(maj_53_n21), .A2(maj_53_n20), .ZN(maj_53_n23) );
  XOR2_X1 maj_53_U9 ( .A(v_0_0[2]), .B(maj_53_n24), .Z(maj_53_n26) );
  XOR2_X1 maj_53_U8 ( .A(v_0_0[5]), .B(maj_53_n25), .Z(maj_53_n27) );
  XOR2_X1 maj_53_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_53_n24) );
  XOR2_X1 maj_53_U6 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_53_n25) );
  OR2_X1 maj_53_U5 ( .A1(maj_53_n23), .A2(maj_53_n22), .ZN(maj_53_n32) );
  NAND2_X1 maj_53_U4 ( .A1(maj_53_n22), .A2(maj_53_n23), .ZN(maj_53_n34) );
  NAND2_X1 maj_53_U3 ( .A1(maj_53_n32), .A2(maj_53_n31), .ZN(maj_53_n33) );
  NAND2_X1 maj_53_U2 ( .A1(maj_53_n34), .A2(maj_53_n33), .ZN(maj_53_port_o) );
  OR2_X1 maj_54_U19 ( .A1(maj_54_n27), .A2(maj_54_n26), .ZN(maj_54_n28) );
  NAND2_X1 maj_54_U18 ( .A1(u_1_0[6]), .A2(maj_54_n28), .ZN(maj_54_n29) );
  NAND2_X1 maj_54_U17 ( .A1(maj_54_n26), .A2(maj_54_n27), .ZN(maj_54_n30) );
  NAND2_X1 maj_54_U16 ( .A1(maj_54_n30), .A2(maj_54_n29), .ZN(maj_54_n31) );
  NAND2_X1 maj_54_U15 ( .A1(u_1_0[5]), .A2(maj_54_n25), .ZN(maj_54_n18) );
  NAND2_X1 maj_54_U14 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_54_n19) );
  NAND2_X1 maj_54_U13 ( .A1(maj_54_n19), .A2(maj_54_n18), .ZN(maj_54_n22) );
  NAND2_X1 maj_54_U12 ( .A1(u_1_0[2]), .A2(maj_54_n24), .ZN(maj_54_n20) );
  NAND2_X1 maj_54_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_54_n21) );
  NAND2_X1 maj_54_U10 ( .A1(maj_54_n21), .A2(maj_54_n20), .ZN(maj_54_n23) );
  XOR2_X1 maj_54_U9 ( .A(u_1_0[2]), .B(maj_54_n24), .Z(maj_54_n26) );
  XOR2_X1 maj_54_U8 ( .A(u_1_0[5]), .B(maj_54_n25), .Z(maj_54_n27) );
  XOR2_X1 maj_54_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_54_n24) );
  XOR2_X1 maj_54_U6 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_54_n25) );
  OR2_X1 maj_54_U5 ( .A1(maj_54_n23), .A2(maj_54_n22), .ZN(maj_54_n32) );
  NAND2_X1 maj_54_U4 ( .A1(maj_54_n22), .A2(maj_54_n23), .ZN(maj_54_n34) );
  NAND2_X1 maj_54_U3 ( .A1(maj_54_n32), .A2(maj_54_n31), .ZN(maj_54_n33) );
  NAND2_X1 maj_54_U2 ( .A1(maj_54_n34), .A2(maj_54_n33), .ZN(maj_54_port_o) );
  OR2_X1 maj_55_U19 ( .A1(maj_55_n27), .A2(maj_55_n26), .ZN(maj_55_n28) );
  NAND2_X1 maj_55_U18 ( .A1(v_1_0[6]), .A2(maj_55_n28), .ZN(maj_55_n29) );
  NAND2_X1 maj_55_U17 ( .A1(maj_55_n26), .A2(maj_55_n27), .ZN(maj_55_n30) );
  NAND2_X1 maj_55_U16 ( .A1(maj_55_n30), .A2(maj_55_n29), .ZN(maj_55_n31) );
  NAND2_X1 maj_55_U15 ( .A1(v_1_0[5]), .A2(maj_55_n25), .ZN(maj_55_n18) );
  NAND2_X1 maj_55_U14 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_55_n19) );
  NAND2_X1 maj_55_U13 ( .A1(maj_55_n19), .A2(maj_55_n18), .ZN(maj_55_n22) );
  NAND2_X1 maj_55_U12 ( .A1(v_1_0[2]), .A2(maj_55_n24), .ZN(maj_55_n20) );
  NAND2_X1 maj_55_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_55_n21) );
  NAND2_X1 maj_55_U10 ( .A1(maj_55_n21), .A2(maj_55_n20), .ZN(maj_55_n23) );
  XOR2_X1 maj_55_U9 ( .A(v_1_0[2]), .B(maj_55_n24), .Z(maj_55_n26) );
  XOR2_X1 maj_55_U8 ( .A(v_1_0[5]), .B(maj_55_n25), .Z(maj_55_n27) );
  XOR2_X1 maj_55_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_55_n24) );
  XOR2_X1 maj_55_U6 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_55_n25) );
  OR2_X1 maj_55_U5 ( .A1(maj_55_n23), .A2(maj_55_n22), .ZN(maj_55_n32) );
  NAND2_X1 maj_55_U4 ( .A1(maj_55_n22), .A2(maj_55_n23), .ZN(maj_55_n34) );
  NAND2_X1 maj_55_U3 ( .A1(maj_55_n32), .A2(maj_55_n31), .ZN(maj_55_n33) );
  NAND2_X1 maj_55_U2 ( .A1(maj_55_n34), .A2(maj_55_n33), .ZN(maj_55_port_o) );
endmodule

