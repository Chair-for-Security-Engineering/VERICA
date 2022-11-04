
module CINI_HPC3 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_rand_ref, port_rand_mul, clk, reset );
  input [4:0] port_a_0;
  input [4:0] port_a_1;
  input [4:0] port_b_0;
  input [4:0] port_b_1;
  output [4:0] port_c_0;
  output [4:0] port_c_1;
  input [0:0] port_rand_ref;
  input [0:0] port_rand_mul;
  input clk, reset;
  wire   simpleAnd_10_port_z, simpleAnd_11_port_z, simpleAnd_12_port_z,
         simpleAnd_13_port_z, simpleAnd_14_port_z, simpleAnd_15_port_z,
         simpleAnd_16_port_z, simpleAnd_17_port_z, simpleAnd_18_port_z,
         simpleAnd_19_port_z, maj_20_port_o, maj_21_port_o, maj_22_port_o,
         maj_23_port_o, maj_24_port_o, maj_25_port_o, maj_26_port_o,
         maj_27_port_o, maj_28_port_o, maj_29_port_o, maj_30_port_o,
         maj_31_port_o, maj_32_port_o, maj_33_port_o, maj_34_port_o,
         maj_35_port_o, maj_36_port_o, maj_37_port_o, maj_38_port_o,
         maj_39_port_o, N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, maj_20_n13,
         maj_20_n12, maj_20_n11, maj_20_n10, maj_20_n9, maj_20_n8, maj_20_n7,
         maj_20_n6, maj_20_n5, maj_20_n4, maj_20_n3, maj_20_n2, maj_20_n1,
         maj_21_n26, maj_21_n25, maj_21_n24, maj_21_n23, maj_21_n22,
         maj_21_n21, maj_21_n20, maj_21_n19, maj_21_n18, maj_21_n17,
         maj_21_n16, maj_21_n15, maj_21_n14, maj_22_n26, maj_22_n25,
         maj_22_n24, maj_22_n23, maj_22_n22, maj_22_n21, maj_22_n20,
         maj_22_n19, maj_22_n18, maj_22_n17, maj_22_n16, maj_22_n15,
         maj_22_n14, maj_23_n26, maj_23_n25, maj_23_n24, maj_23_n23,
         maj_23_n22, maj_23_n21, maj_23_n20, maj_23_n19, maj_23_n18,
         maj_23_n17, maj_23_n16, maj_23_n15, maj_23_n14, maj_24_n26,
         maj_24_n25, maj_24_n24, maj_24_n23, maj_24_n22, maj_24_n21,
         maj_24_n20, maj_24_n19, maj_24_n18, maj_24_n17, maj_24_n16,
         maj_24_n15, maj_24_n14, maj_25_n26, maj_25_n25, maj_25_n24,
         maj_25_n23, maj_25_n22, maj_25_n21, maj_25_n20, maj_25_n19,
         maj_25_n18, maj_25_n17, maj_25_n16, maj_25_n15, maj_25_n14,
         maj_26_n26, maj_26_n25, maj_26_n24, maj_26_n23, maj_26_n22,
         maj_26_n21, maj_26_n20, maj_26_n19, maj_26_n18, maj_26_n17,
         maj_26_n16, maj_26_n15, maj_26_n14, maj_27_n26, maj_27_n25,
         maj_27_n24, maj_27_n23, maj_27_n22, maj_27_n21, maj_27_n20,
         maj_27_n19, maj_27_n18, maj_27_n17, maj_27_n16, maj_27_n15,
         maj_27_n14, maj_28_n26, maj_28_n25, maj_28_n24, maj_28_n23,
         maj_28_n22, maj_28_n21, maj_28_n20, maj_28_n19, maj_28_n18,
         maj_28_n17, maj_28_n16, maj_28_n15, maj_28_n14, maj_29_n26,
         maj_29_n25, maj_29_n24, maj_29_n23, maj_29_n22, maj_29_n21,
         maj_29_n20, maj_29_n19, maj_29_n18, maj_29_n17, maj_29_n16,
         maj_29_n15, maj_29_n14, maj_30_n26, maj_30_n25, maj_30_n24,
         maj_30_n23, maj_30_n22, maj_30_n21, maj_30_n20, maj_30_n19,
         maj_30_n18, maj_30_n17, maj_30_n16, maj_30_n15, maj_30_n14,
         maj_31_n26, maj_31_n25, maj_31_n24, maj_31_n23, maj_31_n22,
         maj_31_n21, maj_31_n20, maj_31_n19, maj_31_n18, maj_31_n17,
         maj_31_n16, maj_31_n15, maj_31_n14, maj_32_n26, maj_32_n25,
         maj_32_n24, maj_32_n23, maj_32_n22, maj_32_n21, maj_32_n20,
         maj_32_n19, maj_32_n18, maj_32_n17, maj_32_n16, maj_32_n15,
         maj_32_n14, maj_33_n26, maj_33_n25, maj_33_n24, maj_33_n23,
         maj_33_n22, maj_33_n21, maj_33_n20, maj_33_n19, maj_33_n18,
         maj_33_n17, maj_33_n16, maj_33_n15, maj_33_n14, maj_34_n26,
         maj_34_n25, maj_34_n24, maj_34_n23, maj_34_n22, maj_34_n21,
         maj_34_n20, maj_34_n19, maj_34_n18, maj_34_n17, maj_34_n16,
         maj_34_n15, maj_34_n14, maj_35_n26, maj_35_n25, maj_35_n24,
         maj_35_n23, maj_35_n22, maj_35_n21, maj_35_n20, maj_35_n19,
         maj_35_n18, maj_35_n17, maj_35_n16, maj_35_n15, maj_35_n14,
         maj_36_n26, maj_36_n25, maj_36_n24, maj_36_n23, maj_36_n22,
         maj_36_n21, maj_36_n20, maj_36_n19, maj_36_n18, maj_36_n17,
         maj_36_n16, maj_36_n15, maj_36_n14, maj_37_n26, maj_37_n25,
         maj_37_n24, maj_37_n23, maj_37_n22, maj_37_n21, maj_37_n20,
         maj_37_n19, maj_37_n18, maj_37_n17, maj_37_n16, maj_37_n15,
         maj_37_n14, maj_38_n26, maj_38_n25, maj_38_n24, maj_38_n23,
         maj_38_n22, maj_38_n21, maj_38_n20, maj_38_n19, maj_38_n18,
         maj_38_n17, maj_38_n16, maj_38_n15, maj_38_n14, maj_39_n26,
         maj_39_n25, maj_39_n24, maj_39_n23, maj_39_n22, maj_39_n21,
         maj_39_n20, maj_39_n19, maj_39_n18, maj_39_n17, maj_39_n16,
         maj_39_n15, maj_39_n14;
  wire   [4:0] u_0_0;
  wire   [4:0] v_0_0;
  wire   [4:0] u_1_0;
  wire   [4:0] v_1_0;
  wire   [4:0] temp_0_0;
  wire   [4:0] a_reg_0;
  wire   [4:0] v_reg_0_0;
  wire   [4:0] u_reg_0_0;
  wire   [4:0] temp_0_1;
  wire   [4:0] a_reg_1;
  wire   [4:0] v_reg_1_0;
  wire   [4:0] u_reg_1_0;

  DFF_X1 v_reg_1_0_reg_4_ ( .D(maj_39_port_o), .CK(clk), .Q(v_reg_1_0[4]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_3_ ( .D(maj_35_port_o), .CK(clk), .Q(v_reg_1_0[3]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_2_ ( .D(maj_31_port_o), .CK(clk), .Q(v_reg_1_0[2]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_1_ ( .D(maj_27_port_o), .CK(clk), .Q(v_reg_1_0[1]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_0_ ( .D(maj_23_port_o), .CK(clk), .Q(v_reg_1_0[0]), 
        .QN() );
  DFF_X1 a_reg_1_reg_4_ ( .D(port_a_1[4]), .CK(clk), .Q(a_reg_1[4]), .QN() );
  DFF_X1 a_reg_1_reg_3_ ( .D(port_a_1[3]), .CK(clk), .Q(a_reg_1[3]), .QN() );
  DFF_X1 a_reg_1_reg_2_ ( .D(port_a_1[2]), .CK(clk), .Q(a_reg_1[2]), .QN() );
  DFF_X1 a_reg_1_reg_1_ ( .D(port_a_1[1]), .CK(clk), .Q(a_reg_1[1]), .QN() );
  DFF_X1 a_reg_1_reg_0_ ( .D(port_a_1[0]), .CK(clk), .Q(a_reg_1[0]), .QN() );
  DFF_X1 u_reg_0_0_reg_4_ ( .D(maj_36_port_o), .CK(clk), .Q(u_reg_0_0[4]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_3_ ( .D(maj_32_port_o), .CK(clk), .Q(u_reg_0_0[3]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_2_ ( .D(maj_28_port_o), .CK(clk), .Q(u_reg_0_0[2]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_1_ ( .D(maj_24_port_o), .CK(clk), .Q(u_reg_0_0[1]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_0_ ( .D(maj_20_port_o), .CK(clk), .Q(u_reg_0_0[0]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_4_ ( .D(maj_37_port_o), .CK(clk), .Q(v_reg_0_0[4]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_3_ ( .D(maj_33_port_o), .CK(clk), .Q(v_reg_0_0[3]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_2_ ( .D(maj_29_port_o), .CK(clk), .Q(v_reg_0_0[2]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_1_ ( .D(maj_25_port_o), .CK(clk), .Q(v_reg_0_0[1]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_0_ ( .D(maj_21_port_o), .CK(clk), .Q(v_reg_0_0[0]), 
        .QN() );
  DFF_X1 ab_reg_1_reg_4_ ( .D(N9), .CK(clk), .Q(temp_0_1[4]), .QN() );
  DFF_X1 ab_reg_1_reg_3_ ( .D(N7), .CK(clk), .Q(temp_0_1[3]), .QN() );
  DFF_X1 ab_reg_1_reg_2_ ( .D(N5), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 ab_reg_1_reg_1_ ( .D(N3), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 ab_reg_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 u_reg_1_0_reg_4_ ( .D(maj_38_port_o), .CK(clk), .Q(u_reg_1_0[4]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_3_ ( .D(maj_34_port_o), .CK(clk), .Q(u_reg_1_0[3]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_2_ ( .D(maj_30_port_o), .CK(clk), .Q(u_reg_1_0[2]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_1_ ( .D(maj_26_port_o), .CK(clk), .Q(u_reg_1_0[1]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_0_ ( .D(maj_22_port_o), .CK(clk), .Q(u_reg_1_0[0]), 
        .QN() );
  DFF_X1 a_reg_0_reg_4_ ( .D(port_a_0[4]), .CK(clk), .Q(a_reg_0[4]), .QN() );
  DFF_X1 a_reg_0_reg_3_ ( .D(port_a_0[3]), .CK(clk), .Q(a_reg_0[3]), .QN() );
  DFF_X1 a_reg_0_reg_2_ ( .D(port_a_0[2]), .CK(clk), .Q(a_reg_0[2]), .QN() );
  DFF_X1 a_reg_0_reg_1_ ( .D(port_a_0[1]), .CK(clk), .Q(a_reg_0[1]), .QN() );
  DFF_X1 a_reg_0_reg_0_ ( .D(port_a_0[0]), .CK(clk), .Q(a_reg_0[0]), .QN() );
  DFF_X1 ab_reg_0_reg_4_ ( .D(N8), .CK(clk), .Q(temp_0_0[4]), .QN() );
  DFF_X1 ab_reg_0_reg_3_ ( .D(N6), .CK(clk), .Q(temp_0_0[3]), .QN() );
  DFF_X1 ab_reg_0_reg_2_ ( .D(N4), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 ab_reg_0_reg_1_ ( .D(N2), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 ab_reg_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  INV_X1 U53 ( .A(port_a_1[1]), .ZN(n9) );
  INV_X1 U54 ( .A(port_a_1[4]), .ZN(n6) );
  INV_X1 U55 ( .A(port_a_0[1]), .ZN(n4) );
  INV_X1 U56 ( .A(port_a_0[4]), .ZN(n1) );
  INV_X1 U57 ( .A(port_a_1[2]), .ZN(n8) );
  INV_X1 U58 ( .A(port_a_1[0]), .ZN(n10) );
  INV_X1 U59 ( .A(port_a_1[3]), .ZN(n7) );
  INV_X1 U60 ( .A(port_a_0[2]), .ZN(n3) );
  INV_X1 U61 ( .A(port_a_0[0]), .ZN(n5) );
  INV_X1 U62 ( .A(port_a_0[3]), .ZN(n2) );
  XOR2_X1 U63 ( .A(n19), .B(n20), .Z(port_c_1[0]) );
  NAND2_X1 U64 ( .A1(v_reg_1_0[0]), .A2(a_reg_1[0]), .ZN(n19) );
  XNOR2_X1 U65 ( .A(u_reg_1_0[0]), .B(temp_0_1[0]), .ZN(n20) );
  XOR2_X1 U66 ( .A(n17), .B(n18), .Z(port_c_1[1]) );
  NAND2_X1 U67 ( .A1(v_reg_1_0[1]), .A2(a_reg_1[1]), .ZN(n17) );
  XNOR2_X1 U68 ( .A(u_reg_1_0[1]), .B(temp_0_1[1]), .ZN(n18) );
  XOR2_X1 U69 ( .A(n15), .B(n16), .Z(port_c_1[2]) );
  NAND2_X1 U70 ( .A1(v_reg_1_0[2]), .A2(a_reg_1[2]), .ZN(n15) );
  XNOR2_X1 U71 ( .A(u_reg_1_0[2]), .B(temp_0_1[2]), .ZN(n16) );
  XOR2_X1 U72 ( .A(n13), .B(n14), .Z(port_c_1[3]) );
  NAND2_X1 U73 ( .A1(v_reg_1_0[3]), .A2(a_reg_1[3]), .ZN(n13) );
  XNOR2_X1 U74 ( .A(u_reg_1_0[3]), .B(temp_0_1[3]), .ZN(n14) );
  XOR2_X1 U75 ( .A(n11), .B(n12), .Z(port_c_1[4]) );
  NAND2_X1 U76 ( .A1(v_reg_1_0[4]), .A2(a_reg_1[4]), .ZN(n11) );
  XNOR2_X1 U77 ( .A(u_reg_1_0[4]), .B(temp_0_1[4]), .ZN(n12) );
  XOR2_X1 U78 ( .A(n29), .B(n30), .Z(port_c_0[0]) );
  NAND2_X1 U79 ( .A1(v_reg_0_0[0]), .A2(a_reg_0[0]), .ZN(n29) );
  XNOR2_X1 U80 ( .A(u_reg_0_0[0]), .B(temp_0_0[0]), .ZN(n30) );
  XOR2_X1 U81 ( .A(n27), .B(n28), .Z(port_c_0[1]) );
  NAND2_X1 U82 ( .A1(v_reg_0_0[1]), .A2(a_reg_0[1]), .ZN(n27) );
  XNOR2_X1 U83 ( .A(u_reg_0_0[1]), .B(temp_0_0[1]), .ZN(n28) );
  XOR2_X1 U84 ( .A(n25), .B(n26), .Z(port_c_0[2]) );
  NAND2_X1 U85 ( .A1(v_reg_0_0[2]), .A2(a_reg_0[2]), .ZN(n25) );
  XNOR2_X1 U86 ( .A(u_reg_0_0[2]), .B(temp_0_0[2]), .ZN(n26) );
  XOR2_X1 U87 ( .A(n23), .B(n24), .Z(port_c_0[3]) );
  NAND2_X1 U88 ( .A1(v_reg_0_0[3]), .A2(a_reg_0[3]), .ZN(n23) );
  XNOR2_X1 U89 ( .A(u_reg_0_0[3]), .B(temp_0_0[3]), .ZN(n24) );
  XOR2_X1 U90 ( .A(n21), .B(n22), .Z(port_c_0[4]) );
  NAND2_X1 U91 ( .A1(v_reg_0_0[4]), .A2(a_reg_0[4]), .ZN(n21) );
  XNOR2_X1 U92 ( .A(u_reg_0_0[4]), .B(temp_0_0[4]), .ZN(n22) );
  AND2_X1 U93 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U94 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N2) );
  AND2_X1 U95 ( .A1(port_b_0[2]), .A2(port_a_0[2]), .ZN(N4) );
  AND2_X1 U96 ( .A1(port_b_0[3]), .A2(port_a_0[3]), .ZN(N6) );
  AND2_X1 U97 ( .A1(port_b_0[4]), .A2(port_a_0[4]), .ZN(N8) );
  AND2_X1 U98 ( .A1(port_b_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U99 ( .A1(port_b_1[1]), .A2(port_a_1[1]), .ZN(N3) );
  AND2_X1 U100 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N5) );
  AND2_X1 U101 ( .A1(port_b_1[3]), .A2(port_a_1[3]), .ZN(N7) );
  AND2_X1 U102 ( .A1(port_b_1[4]), .A2(port_a_1[4]), .ZN(N9) );
  AND2_X1 simpleAnd_10_U1 ( .A1(port_rand_mul[0]), .A2(n5), .ZN(
        simpleAnd_10_port_z) );
  XOR2_X2 simpleXor_20_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_10_port_z), .Z(
        u_0_0[0]) );
  XOR2_X2 simpleXor_21_U1 ( .A(port_rand_mul[0]), .B(port_b_1[0]), .Z(v_0_0[0]) );
  AND2_X1 simpleAnd_11_U1 ( .A1(port_rand_mul[0]), .A2(n10), .ZN(
        simpleAnd_11_port_z) );
  XOR2_X2 simpleXor_22_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_11_port_z), .Z(
        u_1_0[0]) );
  XOR2_X2 simpleXor_23_U1 ( .A(port_rand_mul[0]), .B(port_b_0[0]), .Z(v_1_0[0]) );
  AND2_X1 simpleAnd_12_U1 ( .A1(port_rand_mul[0]), .A2(n4), .ZN(
        simpleAnd_12_port_z) );
  XOR2_X2 simpleXor_24_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_12_port_z), .Z(
        u_0_0[1]) );
  XOR2_X2 simpleXor_25_U1 ( .A(port_rand_mul[0]), .B(port_b_1[1]), .Z(v_0_0[1]) );
  AND2_X1 simpleAnd_13_U1 ( .A1(port_rand_mul[0]), .A2(n9), .ZN(
        simpleAnd_13_port_z) );
  XOR2_X2 simpleXor_26_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_13_port_z), .Z(
        u_1_0[1]) );
  XOR2_X2 simpleXor_27_U1 ( .A(port_rand_mul[0]), .B(port_b_0[1]), .Z(v_1_0[1]) );
  AND2_X1 simpleAnd_14_U1 ( .A1(port_rand_mul[0]), .A2(n3), .ZN(
        simpleAnd_14_port_z) );
  XOR2_X2 simpleXor_28_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_14_port_z), .Z(
        u_0_0[2]) );
  XOR2_X2 simpleXor_29_U1 ( .A(port_rand_mul[0]), .B(port_b_1[2]), .Z(v_0_0[2]) );
  AND2_X1 simpleAnd_15_U1 ( .A1(port_rand_mul[0]), .A2(n8), .ZN(
        simpleAnd_15_port_z) );
  XOR2_X2 simpleXor_30_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_15_port_z), .Z(
        u_1_0[2]) );
  XOR2_X2 simpleXor_31_U1 ( .A(port_rand_mul[0]), .B(port_b_0[2]), .Z(v_1_0[2]) );
  AND2_X1 simpleAnd_16_U1 ( .A1(port_rand_mul[0]), .A2(n2), .ZN(
        simpleAnd_16_port_z) );
  XOR2_X2 simpleXor_32_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_16_port_z), .Z(
        u_0_0[3]) );
  XOR2_X2 simpleXor_33_U1 ( .A(port_rand_mul[0]), .B(port_b_1[3]), .Z(v_0_0[3]) );
  AND2_X1 simpleAnd_17_U1 ( .A1(port_rand_mul[0]), .A2(n7), .ZN(
        simpleAnd_17_port_z) );
  XOR2_X2 simpleXor_34_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_17_port_z), .Z(
        u_1_0[3]) );
  XOR2_X2 simpleXor_35_U1 ( .A(port_rand_mul[0]), .B(port_b_0[3]), .Z(v_1_0[3]) );
  AND2_X1 simpleAnd_18_U1 ( .A1(port_rand_mul[0]), .A2(n1), .ZN(
        simpleAnd_18_port_z) );
  XOR2_X2 simpleXor_36_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_18_port_z), .Z(
        u_0_0[4]) );
  XOR2_X2 simpleXor_37_U1 ( .A(port_rand_mul[0]), .B(port_b_1[4]), .Z(v_0_0[4]) );
  AND2_X1 simpleAnd_19_U1 ( .A1(port_rand_mul[0]), .A2(n6), .ZN(
        simpleAnd_19_port_z) );
  XOR2_X2 simpleXor_38_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_19_port_z), .Z(
        u_1_0[4]) );
  XOR2_X2 simpleXor_39_U1 ( .A(port_rand_mul[0]), .B(port_b_0[4]), .Z(v_1_0[4]) );
  NAND2_X1 maj_20_U15 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_20_n9) );
  NAND2_X1 maj_20_U14 ( .A1(maj_20_n6), .A2(maj_20_n5), .ZN(maj_20_n10) );
  NAND2_X1 maj_20_U13 ( .A1(maj_20_n9), .A2(maj_20_n10), .ZN(maj_20_n8) );
  NAND2_X1 maj_20_U12 ( .A1(u_0_0[2]), .A2(maj_20_n11), .ZN(maj_20_n13) );
  NAND2_X1 maj_20_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_20_n12) );
  NAND2_X1 maj_20_U10 ( .A1(maj_20_n12), .A2(maj_20_n13), .ZN(maj_20_n7) );
  XOR2_X1 maj_20_U9 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_20_n5) );
  XOR2_X1 maj_20_U8 ( .A(u_0_0[2]), .B(maj_20_n11), .Z(maj_20_n6) );
  XOR2_X1 maj_20_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_20_n11) );
  OR2_X1 maj_20_U6 ( .A1(maj_20_n7), .A2(maj_20_n8), .ZN(maj_20_n3) );
  NAND2_X1 maj_20_U5 ( .A1(maj_20_n3), .A2(maj_20_n4), .ZN(maj_20_n2) );
  NAND2_X1 maj_20_U4 ( .A1(maj_20_n7), .A2(maj_20_n8), .ZN(maj_20_n1) );
  NAND2_X1 maj_20_U3 ( .A1(maj_20_n1), .A2(maj_20_n2), .ZN(maj_20_port_o) );
  XOR2_X1 maj_20_U2 ( .A(maj_20_n5), .B(maj_20_n6), .Z(maj_20_n4) );
  NAND2_X1 maj_21_U15 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_21_n18) );
  NAND2_X1 maj_21_U14 ( .A1(maj_21_n21), .A2(maj_21_n22), .ZN(maj_21_n17) );
  NAND2_X1 maj_21_U13 ( .A1(maj_21_n18), .A2(maj_21_n17), .ZN(maj_21_n19) );
  NAND2_X1 maj_21_U12 ( .A1(v_0_0[2]), .A2(maj_21_n16), .ZN(maj_21_n14) );
  NAND2_X1 maj_21_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_21_n15) );
  NAND2_X1 maj_21_U10 ( .A1(maj_21_n15), .A2(maj_21_n14), .ZN(maj_21_n20) );
  XOR2_X1 maj_21_U9 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_21_n22) );
  XOR2_X1 maj_21_U8 ( .A(v_0_0[2]), .B(maj_21_n16), .Z(maj_21_n21) );
  XOR2_X1 maj_21_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_21_n16) );
  OR2_X1 maj_21_U6 ( .A1(maj_21_n20), .A2(maj_21_n19), .ZN(maj_21_n24) );
  NAND2_X1 maj_21_U5 ( .A1(maj_21_n24), .A2(maj_21_n23), .ZN(maj_21_n25) );
  NAND2_X1 maj_21_U4 ( .A1(maj_21_n20), .A2(maj_21_n19), .ZN(maj_21_n26) );
  NAND2_X1 maj_21_U3 ( .A1(maj_21_n26), .A2(maj_21_n25), .ZN(maj_21_port_o) );
  XOR2_X1 maj_21_U2 ( .A(maj_21_n22), .B(maj_21_n21), .Z(maj_21_n23) );
  NAND2_X1 maj_22_U15 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_22_n18) );
  NAND2_X1 maj_22_U14 ( .A1(maj_22_n21), .A2(maj_22_n22), .ZN(maj_22_n17) );
  NAND2_X1 maj_22_U13 ( .A1(maj_22_n18), .A2(maj_22_n17), .ZN(maj_22_n19) );
  NAND2_X1 maj_22_U12 ( .A1(u_1_0[2]), .A2(maj_22_n16), .ZN(maj_22_n14) );
  NAND2_X1 maj_22_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_22_n15) );
  NAND2_X1 maj_22_U10 ( .A1(maj_22_n15), .A2(maj_22_n14), .ZN(maj_22_n20) );
  XOR2_X1 maj_22_U9 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_22_n22) );
  XOR2_X1 maj_22_U8 ( .A(u_1_0[2]), .B(maj_22_n16), .Z(maj_22_n21) );
  XOR2_X1 maj_22_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_22_n16) );
  OR2_X1 maj_22_U6 ( .A1(maj_22_n20), .A2(maj_22_n19), .ZN(maj_22_n24) );
  NAND2_X1 maj_22_U5 ( .A1(maj_22_n24), .A2(maj_22_n23), .ZN(maj_22_n25) );
  NAND2_X1 maj_22_U4 ( .A1(maj_22_n20), .A2(maj_22_n19), .ZN(maj_22_n26) );
  NAND2_X1 maj_22_U3 ( .A1(maj_22_n26), .A2(maj_22_n25), .ZN(maj_22_port_o) );
  XOR2_X1 maj_22_U2 ( .A(maj_22_n22), .B(maj_22_n21), .Z(maj_22_n23) );
  NAND2_X1 maj_23_U15 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_23_n18) );
  NAND2_X1 maj_23_U14 ( .A1(maj_23_n21), .A2(maj_23_n22), .ZN(maj_23_n17) );
  NAND2_X1 maj_23_U13 ( .A1(maj_23_n18), .A2(maj_23_n17), .ZN(maj_23_n19) );
  NAND2_X1 maj_23_U12 ( .A1(v_1_0[2]), .A2(maj_23_n16), .ZN(maj_23_n14) );
  NAND2_X1 maj_23_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_23_n15) );
  NAND2_X1 maj_23_U10 ( .A1(maj_23_n15), .A2(maj_23_n14), .ZN(maj_23_n20) );
  XOR2_X1 maj_23_U9 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_23_n22) );
  XOR2_X1 maj_23_U8 ( .A(v_1_0[2]), .B(maj_23_n16), .Z(maj_23_n21) );
  XOR2_X1 maj_23_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_23_n16) );
  OR2_X1 maj_23_U6 ( .A1(maj_23_n20), .A2(maj_23_n19), .ZN(maj_23_n24) );
  NAND2_X1 maj_23_U5 ( .A1(maj_23_n24), .A2(maj_23_n23), .ZN(maj_23_n25) );
  NAND2_X1 maj_23_U4 ( .A1(maj_23_n20), .A2(maj_23_n19), .ZN(maj_23_n26) );
  NAND2_X1 maj_23_U3 ( .A1(maj_23_n26), .A2(maj_23_n25), .ZN(maj_23_port_o) );
  XOR2_X1 maj_23_U2 ( .A(maj_23_n22), .B(maj_23_n21), .Z(maj_23_n23) );
  NAND2_X1 maj_24_U15 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_24_n18) );
  NAND2_X1 maj_24_U14 ( .A1(maj_24_n21), .A2(maj_24_n22), .ZN(maj_24_n17) );
  NAND2_X1 maj_24_U13 ( .A1(maj_24_n18), .A2(maj_24_n17), .ZN(maj_24_n19) );
  NAND2_X1 maj_24_U12 ( .A1(u_0_0[2]), .A2(maj_24_n16), .ZN(maj_24_n14) );
  NAND2_X1 maj_24_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_24_n15) );
  NAND2_X1 maj_24_U10 ( .A1(maj_24_n15), .A2(maj_24_n14), .ZN(maj_24_n20) );
  XOR2_X1 maj_24_U9 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_24_n22) );
  XOR2_X1 maj_24_U8 ( .A(u_0_0[2]), .B(maj_24_n16), .Z(maj_24_n21) );
  XOR2_X1 maj_24_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_24_n16) );
  OR2_X1 maj_24_U6 ( .A1(maj_24_n20), .A2(maj_24_n19), .ZN(maj_24_n24) );
  NAND2_X1 maj_24_U5 ( .A1(maj_24_n24), .A2(maj_24_n23), .ZN(maj_24_n25) );
  NAND2_X1 maj_24_U4 ( .A1(maj_24_n20), .A2(maj_24_n19), .ZN(maj_24_n26) );
  NAND2_X1 maj_24_U3 ( .A1(maj_24_n26), .A2(maj_24_n25), .ZN(maj_24_port_o) );
  XOR2_X1 maj_24_U2 ( .A(maj_24_n22), .B(maj_24_n21), .Z(maj_24_n23) );
  NAND2_X1 maj_25_U15 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_25_n18) );
  NAND2_X1 maj_25_U14 ( .A1(maj_25_n21), .A2(maj_25_n22), .ZN(maj_25_n17) );
  NAND2_X1 maj_25_U13 ( .A1(maj_25_n18), .A2(maj_25_n17), .ZN(maj_25_n19) );
  NAND2_X1 maj_25_U12 ( .A1(v_0_0[2]), .A2(maj_25_n16), .ZN(maj_25_n14) );
  NAND2_X1 maj_25_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_25_n15) );
  NAND2_X1 maj_25_U10 ( .A1(maj_25_n15), .A2(maj_25_n14), .ZN(maj_25_n20) );
  XOR2_X1 maj_25_U9 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_25_n22) );
  XOR2_X1 maj_25_U8 ( .A(v_0_0[2]), .B(maj_25_n16), .Z(maj_25_n21) );
  XOR2_X1 maj_25_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_25_n16) );
  OR2_X1 maj_25_U6 ( .A1(maj_25_n20), .A2(maj_25_n19), .ZN(maj_25_n24) );
  NAND2_X1 maj_25_U5 ( .A1(maj_25_n24), .A2(maj_25_n23), .ZN(maj_25_n25) );
  NAND2_X1 maj_25_U4 ( .A1(maj_25_n20), .A2(maj_25_n19), .ZN(maj_25_n26) );
  NAND2_X1 maj_25_U3 ( .A1(maj_25_n26), .A2(maj_25_n25), .ZN(maj_25_port_o) );
  XOR2_X1 maj_25_U2 ( .A(maj_25_n22), .B(maj_25_n21), .Z(maj_25_n23) );
  NAND2_X1 maj_26_U15 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_26_n18) );
  NAND2_X1 maj_26_U14 ( .A1(maj_26_n21), .A2(maj_26_n22), .ZN(maj_26_n17) );
  NAND2_X1 maj_26_U13 ( .A1(maj_26_n18), .A2(maj_26_n17), .ZN(maj_26_n19) );
  NAND2_X1 maj_26_U12 ( .A1(u_1_0[2]), .A2(maj_26_n16), .ZN(maj_26_n14) );
  NAND2_X1 maj_26_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_26_n15) );
  NAND2_X1 maj_26_U10 ( .A1(maj_26_n15), .A2(maj_26_n14), .ZN(maj_26_n20) );
  XOR2_X1 maj_26_U9 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_26_n22) );
  XOR2_X1 maj_26_U8 ( .A(u_1_0[2]), .B(maj_26_n16), .Z(maj_26_n21) );
  XOR2_X1 maj_26_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_26_n16) );
  OR2_X1 maj_26_U6 ( .A1(maj_26_n20), .A2(maj_26_n19), .ZN(maj_26_n24) );
  NAND2_X1 maj_26_U5 ( .A1(maj_26_n24), .A2(maj_26_n23), .ZN(maj_26_n25) );
  NAND2_X1 maj_26_U4 ( .A1(maj_26_n20), .A2(maj_26_n19), .ZN(maj_26_n26) );
  NAND2_X1 maj_26_U3 ( .A1(maj_26_n26), .A2(maj_26_n25), .ZN(maj_26_port_o) );
  XOR2_X1 maj_26_U2 ( .A(maj_26_n22), .B(maj_26_n21), .Z(maj_26_n23) );
  NAND2_X1 maj_27_U15 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_27_n18) );
  NAND2_X1 maj_27_U14 ( .A1(maj_27_n21), .A2(maj_27_n22), .ZN(maj_27_n17) );
  NAND2_X1 maj_27_U13 ( .A1(maj_27_n18), .A2(maj_27_n17), .ZN(maj_27_n19) );
  NAND2_X1 maj_27_U12 ( .A1(v_1_0[2]), .A2(maj_27_n16), .ZN(maj_27_n14) );
  NAND2_X1 maj_27_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_27_n15) );
  NAND2_X1 maj_27_U10 ( .A1(maj_27_n15), .A2(maj_27_n14), .ZN(maj_27_n20) );
  XOR2_X1 maj_27_U9 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_27_n22) );
  XOR2_X1 maj_27_U8 ( .A(v_1_0[2]), .B(maj_27_n16), .Z(maj_27_n21) );
  XOR2_X1 maj_27_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_27_n16) );
  OR2_X1 maj_27_U6 ( .A1(maj_27_n20), .A2(maj_27_n19), .ZN(maj_27_n24) );
  NAND2_X1 maj_27_U5 ( .A1(maj_27_n24), .A2(maj_27_n23), .ZN(maj_27_n25) );
  NAND2_X1 maj_27_U4 ( .A1(maj_27_n20), .A2(maj_27_n19), .ZN(maj_27_n26) );
  NAND2_X1 maj_27_U3 ( .A1(maj_27_n26), .A2(maj_27_n25), .ZN(maj_27_port_o) );
  XOR2_X1 maj_27_U2 ( .A(maj_27_n22), .B(maj_27_n21), .Z(maj_27_n23) );
  NAND2_X1 maj_28_U15 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_28_n18) );
  NAND2_X1 maj_28_U14 ( .A1(maj_28_n21), .A2(maj_28_n22), .ZN(maj_28_n17) );
  NAND2_X1 maj_28_U13 ( .A1(maj_28_n18), .A2(maj_28_n17), .ZN(maj_28_n19) );
  NAND2_X1 maj_28_U12 ( .A1(u_0_0[2]), .A2(maj_28_n16), .ZN(maj_28_n14) );
  NAND2_X1 maj_28_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_28_n15) );
  NAND2_X1 maj_28_U10 ( .A1(maj_28_n15), .A2(maj_28_n14), .ZN(maj_28_n20) );
  XOR2_X1 maj_28_U9 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_28_n22) );
  XOR2_X1 maj_28_U8 ( .A(u_0_0[2]), .B(maj_28_n16), .Z(maj_28_n21) );
  XOR2_X1 maj_28_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_28_n16) );
  OR2_X1 maj_28_U6 ( .A1(maj_28_n20), .A2(maj_28_n19), .ZN(maj_28_n24) );
  NAND2_X1 maj_28_U5 ( .A1(maj_28_n24), .A2(maj_28_n23), .ZN(maj_28_n25) );
  NAND2_X1 maj_28_U4 ( .A1(maj_28_n20), .A2(maj_28_n19), .ZN(maj_28_n26) );
  NAND2_X1 maj_28_U3 ( .A1(maj_28_n26), .A2(maj_28_n25), .ZN(maj_28_port_o) );
  XOR2_X1 maj_28_U2 ( .A(maj_28_n22), .B(maj_28_n21), .Z(maj_28_n23) );
  NAND2_X1 maj_29_U15 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_29_n18) );
  NAND2_X1 maj_29_U14 ( .A1(maj_29_n21), .A2(maj_29_n22), .ZN(maj_29_n17) );
  NAND2_X1 maj_29_U13 ( .A1(maj_29_n18), .A2(maj_29_n17), .ZN(maj_29_n19) );
  NAND2_X1 maj_29_U12 ( .A1(v_0_0[2]), .A2(maj_29_n16), .ZN(maj_29_n14) );
  NAND2_X1 maj_29_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_29_n15) );
  NAND2_X1 maj_29_U10 ( .A1(maj_29_n15), .A2(maj_29_n14), .ZN(maj_29_n20) );
  XOR2_X1 maj_29_U9 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_29_n22) );
  XOR2_X1 maj_29_U8 ( .A(v_0_0[2]), .B(maj_29_n16), .Z(maj_29_n21) );
  XOR2_X1 maj_29_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_29_n16) );
  OR2_X1 maj_29_U6 ( .A1(maj_29_n20), .A2(maj_29_n19), .ZN(maj_29_n24) );
  NAND2_X1 maj_29_U5 ( .A1(maj_29_n24), .A2(maj_29_n23), .ZN(maj_29_n25) );
  NAND2_X1 maj_29_U4 ( .A1(maj_29_n20), .A2(maj_29_n19), .ZN(maj_29_n26) );
  NAND2_X1 maj_29_U3 ( .A1(maj_29_n26), .A2(maj_29_n25), .ZN(maj_29_port_o) );
  XOR2_X1 maj_29_U2 ( .A(maj_29_n22), .B(maj_29_n21), .Z(maj_29_n23) );
  NAND2_X1 maj_30_U15 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_30_n18) );
  NAND2_X1 maj_30_U14 ( .A1(maj_30_n21), .A2(maj_30_n22), .ZN(maj_30_n17) );
  NAND2_X1 maj_30_U13 ( .A1(maj_30_n18), .A2(maj_30_n17), .ZN(maj_30_n19) );
  NAND2_X1 maj_30_U12 ( .A1(u_1_0[2]), .A2(maj_30_n16), .ZN(maj_30_n14) );
  NAND2_X1 maj_30_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_30_n15) );
  NAND2_X1 maj_30_U10 ( .A1(maj_30_n15), .A2(maj_30_n14), .ZN(maj_30_n20) );
  XOR2_X1 maj_30_U9 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_30_n22) );
  XOR2_X1 maj_30_U8 ( .A(u_1_0[2]), .B(maj_30_n16), .Z(maj_30_n21) );
  XOR2_X1 maj_30_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_30_n16) );
  OR2_X1 maj_30_U6 ( .A1(maj_30_n20), .A2(maj_30_n19), .ZN(maj_30_n24) );
  NAND2_X1 maj_30_U5 ( .A1(maj_30_n24), .A2(maj_30_n23), .ZN(maj_30_n25) );
  NAND2_X1 maj_30_U4 ( .A1(maj_30_n20), .A2(maj_30_n19), .ZN(maj_30_n26) );
  NAND2_X1 maj_30_U3 ( .A1(maj_30_n26), .A2(maj_30_n25), .ZN(maj_30_port_o) );
  XOR2_X1 maj_30_U2 ( .A(maj_30_n22), .B(maj_30_n21), .Z(maj_30_n23) );
  NAND2_X1 maj_31_U15 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_31_n18) );
  NAND2_X1 maj_31_U14 ( .A1(maj_31_n21), .A2(maj_31_n22), .ZN(maj_31_n17) );
  NAND2_X1 maj_31_U13 ( .A1(maj_31_n18), .A2(maj_31_n17), .ZN(maj_31_n19) );
  NAND2_X1 maj_31_U12 ( .A1(v_1_0[2]), .A2(maj_31_n16), .ZN(maj_31_n14) );
  NAND2_X1 maj_31_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_31_n15) );
  NAND2_X1 maj_31_U10 ( .A1(maj_31_n15), .A2(maj_31_n14), .ZN(maj_31_n20) );
  XOR2_X1 maj_31_U9 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_31_n22) );
  XOR2_X1 maj_31_U8 ( .A(v_1_0[2]), .B(maj_31_n16), .Z(maj_31_n21) );
  XOR2_X1 maj_31_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_31_n16) );
  OR2_X1 maj_31_U6 ( .A1(maj_31_n20), .A2(maj_31_n19), .ZN(maj_31_n24) );
  NAND2_X1 maj_31_U5 ( .A1(maj_31_n24), .A2(maj_31_n23), .ZN(maj_31_n25) );
  NAND2_X1 maj_31_U4 ( .A1(maj_31_n20), .A2(maj_31_n19), .ZN(maj_31_n26) );
  NAND2_X1 maj_31_U3 ( .A1(maj_31_n26), .A2(maj_31_n25), .ZN(maj_31_port_o) );
  XOR2_X1 maj_31_U2 ( .A(maj_31_n22), .B(maj_31_n21), .Z(maj_31_n23) );
  NAND2_X1 maj_32_U15 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_32_n18) );
  NAND2_X1 maj_32_U14 ( .A1(maj_32_n21), .A2(maj_32_n22), .ZN(maj_32_n17) );
  NAND2_X1 maj_32_U13 ( .A1(maj_32_n18), .A2(maj_32_n17), .ZN(maj_32_n19) );
  NAND2_X1 maj_32_U12 ( .A1(u_0_0[2]), .A2(maj_32_n16), .ZN(maj_32_n14) );
  NAND2_X1 maj_32_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_32_n15) );
  NAND2_X1 maj_32_U10 ( .A1(maj_32_n15), .A2(maj_32_n14), .ZN(maj_32_n20) );
  XOR2_X1 maj_32_U9 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_32_n22) );
  XOR2_X1 maj_32_U8 ( .A(u_0_0[2]), .B(maj_32_n16), .Z(maj_32_n21) );
  XOR2_X1 maj_32_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_32_n16) );
  OR2_X1 maj_32_U6 ( .A1(maj_32_n20), .A2(maj_32_n19), .ZN(maj_32_n24) );
  NAND2_X1 maj_32_U5 ( .A1(maj_32_n24), .A2(maj_32_n23), .ZN(maj_32_n25) );
  NAND2_X1 maj_32_U4 ( .A1(maj_32_n20), .A2(maj_32_n19), .ZN(maj_32_n26) );
  NAND2_X1 maj_32_U3 ( .A1(maj_32_n26), .A2(maj_32_n25), .ZN(maj_32_port_o) );
  XOR2_X1 maj_32_U2 ( .A(maj_32_n22), .B(maj_32_n21), .Z(maj_32_n23) );
  NAND2_X1 maj_33_U15 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_33_n18) );
  NAND2_X1 maj_33_U14 ( .A1(maj_33_n21), .A2(maj_33_n22), .ZN(maj_33_n17) );
  NAND2_X1 maj_33_U13 ( .A1(maj_33_n18), .A2(maj_33_n17), .ZN(maj_33_n19) );
  NAND2_X1 maj_33_U12 ( .A1(v_0_0[2]), .A2(maj_33_n16), .ZN(maj_33_n14) );
  NAND2_X1 maj_33_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_33_n15) );
  NAND2_X1 maj_33_U10 ( .A1(maj_33_n15), .A2(maj_33_n14), .ZN(maj_33_n20) );
  XOR2_X1 maj_33_U9 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_33_n22) );
  XOR2_X1 maj_33_U8 ( .A(v_0_0[2]), .B(maj_33_n16), .Z(maj_33_n21) );
  XOR2_X1 maj_33_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_33_n16) );
  OR2_X1 maj_33_U6 ( .A1(maj_33_n20), .A2(maj_33_n19), .ZN(maj_33_n24) );
  NAND2_X1 maj_33_U5 ( .A1(maj_33_n24), .A2(maj_33_n23), .ZN(maj_33_n25) );
  NAND2_X1 maj_33_U4 ( .A1(maj_33_n20), .A2(maj_33_n19), .ZN(maj_33_n26) );
  NAND2_X1 maj_33_U3 ( .A1(maj_33_n26), .A2(maj_33_n25), .ZN(maj_33_port_o) );
  XOR2_X1 maj_33_U2 ( .A(maj_33_n22), .B(maj_33_n21), .Z(maj_33_n23) );
  NAND2_X1 maj_34_U15 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_34_n18) );
  NAND2_X1 maj_34_U14 ( .A1(maj_34_n21), .A2(maj_34_n22), .ZN(maj_34_n17) );
  NAND2_X1 maj_34_U13 ( .A1(maj_34_n18), .A2(maj_34_n17), .ZN(maj_34_n19) );
  NAND2_X1 maj_34_U12 ( .A1(u_1_0[2]), .A2(maj_34_n16), .ZN(maj_34_n14) );
  NAND2_X1 maj_34_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_34_n15) );
  NAND2_X1 maj_34_U10 ( .A1(maj_34_n15), .A2(maj_34_n14), .ZN(maj_34_n20) );
  XOR2_X1 maj_34_U9 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_34_n22) );
  XOR2_X1 maj_34_U8 ( .A(u_1_0[2]), .B(maj_34_n16), .Z(maj_34_n21) );
  XOR2_X1 maj_34_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_34_n16) );
  OR2_X1 maj_34_U6 ( .A1(maj_34_n20), .A2(maj_34_n19), .ZN(maj_34_n24) );
  NAND2_X1 maj_34_U5 ( .A1(maj_34_n24), .A2(maj_34_n23), .ZN(maj_34_n25) );
  NAND2_X1 maj_34_U4 ( .A1(maj_34_n20), .A2(maj_34_n19), .ZN(maj_34_n26) );
  NAND2_X1 maj_34_U3 ( .A1(maj_34_n26), .A2(maj_34_n25), .ZN(maj_34_port_o) );
  XOR2_X1 maj_34_U2 ( .A(maj_34_n22), .B(maj_34_n21), .Z(maj_34_n23) );
  NAND2_X1 maj_35_U15 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_35_n18) );
  NAND2_X1 maj_35_U14 ( .A1(maj_35_n21), .A2(maj_35_n22), .ZN(maj_35_n17) );
  NAND2_X1 maj_35_U13 ( .A1(maj_35_n18), .A2(maj_35_n17), .ZN(maj_35_n19) );
  NAND2_X1 maj_35_U12 ( .A1(v_1_0[2]), .A2(maj_35_n16), .ZN(maj_35_n14) );
  NAND2_X1 maj_35_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_35_n15) );
  NAND2_X1 maj_35_U10 ( .A1(maj_35_n15), .A2(maj_35_n14), .ZN(maj_35_n20) );
  XOR2_X1 maj_35_U9 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_35_n22) );
  XOR2_X1 maj_35_U8 ( .A(v_1_0[2]), .B(maj_35_n16), .Z(maj_35_n21) );
  XOR2_X1 maj_35_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_35_n16) );
  OR2_X1 maj_35_U6 ( .A1(maj_35_n20), .A2(maj_35_n19), .ZN(maj_35_n24) );
  NAND2_X1 maj_35_U5 ( .A1(maj_35_n24), .A2(maj_35_n23), .ZN(maj_35_n25) );
  NAND2_X1 maj_35_U4 ( .A1(maj_35_n20), .A2(maj_35_n19), .ZN(maj_35_n26) );
  NAND2_X1 maj_35_U3 ( .A1(maj_35_n26), .A2(maj_35_n25), .ZN(maj_35_port_o) );
  XOR2_X1 maj_35_U2 ( .A(maj_35_n22), .B(maj_35_n21), .Z(maj_35_n23) );
  NAND2_X1 maj_36_U15 ( .A1(u_0_0[3]), .A2(u_0_0[4]), .ZN(maj_36_n18) );
  NAND2_X1 maj_36_U14 ( .A1(maj_36_n21), .A2(maj_36_n22), .ZN(maj_36_n17) );
  NAND2_X1 maj_36_U13 ( .A1(maj_36_n18), .A2(maj_36_n17), .ZN(maj_36_n19) );
  NAND2_X1 maj_36_U12 ( .A1(u_0_0[2]), .A2(maj_36_n16), .ZN(maj_36_n14) );
  NAND2_X1 maj_36_U11 ( .A1(u_0_0[0]), .A2(u_0_0[1]), .ZN(maj_36_n15) );
  NAND2_X1 maj_36_U10 ( .A1(maj_36_n15), .A2(maj_36_n14), .ZN(maj_36_n20) );
  XOR2_X1 maj_36_U9 ( .A(u_0_0[3]), .B(u_0_0[4]), .Z(maj_36_n22) );
  XOR2_X1 maj_36_U8 ( .A(u_0_0[2]), .B(maj_36_n16), .Z(maj_36_n21) );
  XOR2_X1 maj_36_U7 ( .A(u_0_0[0]), .B(u_0_0[1]), .Z(maj_36_n16) );
  OR2_X1 maj_36_U6 ( .A1(maj_36_n20), .A2(maj_36_n19), .ZN(maj_36_n24) );
  NAND2_X1 maj_36_U5 ( .A1(maj_36_n24), .A2(maj_36_n23), .ZN(maj_36_n25) );
  NAND2_X1 maj_36_U4 ( .A1(maj_36_n20), .A2(maj_36_n19), .ZN(maj_36_n26) );
  NAND2_X1 maj_36_U3 ( .A1(maj_36_n26), .A2(maj_36_n25), .ZN(maj_36_port_o) );
  XOR2_X1 maj_36_U2 ( .A(maj_36_n22), .B(maj_36_n21), .Z(maj_36_n23) );
  NAND2_X1 maj_37_U15 ( .A1(v_0_0[3]), .A2(v_0_0[4]), .ZN(maj_37_n18) );
  NAND2_X1 maj_37_U14 ( .A1(maj_37_n21), .A2(maj_37_n22), .ZN(maj_37_n17) );
  NAND2_X1 maj_37_U13 ( .A1(maj_37_n18), .A2(maj_37_n17), .ZN(maj_37_n19) );
  NAND2_X1 maj_37_U12 ( .A1(v_0_0[2]), .A2(maj_37_n16), .ZN(maj_37_n14) );
  NAND2_X1 maj_37_U11 ( .A1(v_0_0[0]), .A2(v_0_0[1]), .ZN(maj_37_n15) );
  NAND2_X1 maj_37_U10 ( .A1(maj_37_n15), .A2(maj_37_n14), .ZN(maj_37_n20) );
  XOR2_X1 maj_37_U9 ( .A(v_0_0[3]), .B(v_0_0[4]), .Z(maj_37_n22) );
  XOR2_X1 maj_37_U8 ( .A(v_0_0[2]), .B(maj_37_n16), .Z(maj_37_n21) );
  XOR2_X1 maj_37_U7 ( .A(v_0_0[0]), .B(v_0_0[1]), .Z(maj_37_n16) );
  OR2_X1 maj_37_U6 ( .A1(maj_37_n20), .A2(maj_37_n19), .ZN(maj_37_n24) );
  NAND2_X1 maj_37_U5 ( .A1(maj_37_n24), .A2(maj_37_n23), .ZN(maj_37_n25) );
  NAND2_X1 maj_37_U4 ( .A1(maj_37_n20), .A2(maj_37_n19), .ZN(maj_37_n26) );
  NAND2_X1 maj_37_U3 ( .A1(maj_37_n26), .A2(maj_37_n25), .ZN(maj_37_port_o) );
  XOR2_X1 maj_37_U2 ( .A(maj_37_n22), .B(maj_37_n21), .Z(maj_37_n23) );
  NAND2_X1 maj_38_U15 ( .A1(u_1_0[3]), .A2(u_1_0[4]), .ZN(maj_38_n18) );
  NAND2_X1 maj_38_U14 ( .A1(maj_38_n21), .A2(maj_38_n22), .ZN(maj_38_n17) );
  NAND2_X1 maj_38_U13 ( .A1(maj_38_n18), .A2(maj_38_n17), .ZN(maj_38_n19) );
  NAND2_X1 maj_38_U12 ( .A1(u_1_0[2]), .A2(maj_38_n16), .ZN(maj_38_n14) );
  NAND2_X1 maj_38_U11 ( .A1(u_1_0[0]), .A2(u_1_0[1]), .ZN(maj_38_n15) );
  NAND2_X1 maj_38_U10 ( .A1(maj_38_n15), .A2(maj_38_n14), .ZN(maj_38_n20) );
  XOR2_X1 maj_38_U9 ( .A(u_1_0[3]), .B(u_1_0[4]), .Z(maj_38_n22) );
  XOR2_X1 maj_38_U8 ( .A(u_1_0[2]), .B(maj_38_n16), .Z(maj_38_n21) );
  XOR2_X1 maj_38_U7 ( .A(u_1_0[0]), .B(u_1_0[1]), .Z(maj_38_n16) );
  OR2_X1 maj_38_U6 ( .A1(maj_38_n20), .A2(maj_38_n19), .ZN(maj_38_n24) );
  NAND2_X1 maj_38_U5 ( .A1(maj_38_n24), .A2(maj_38_n23), .ZN(maj_38_n25) );
  NAND2_X1 maj_38_U4 ( .A1(maj_38_n20), .A2(maj_38_n19), .ZN(maj_38_n26) );
  NAND2_X1 maj_38_U3 ( .A1(maj_38_n26), .A2(maj_38_n25), .ZN(maj_38_port_o) );
  XOR2_X1 maj_38_U2 ( .A(maj_38_n22), .B(maj_38_n21), .Z(maj_38_n23) );
  NAND2_X1 maj_39_U15 ( .A1(v_1_0[3]), .A2(v_1_0[4]), .ZN(maj_39_n18) );
  NAND2_X1 maj_39_U14 ( .A1(maj_39_n21), .A2(maj_39_n22), .ZN(maj_39_n17) );
  NAND2_X1 maj_39_U13 ( .A1(maj_39_n18), .A2(maj_39_n17), .ZN(maj_39_n19) );
  NAND2_X1 maj_39_U12 ( .A1(v_1_0[2]), .A2(maj_39_n16), .ZN(maj_39_n14) );
  NAND2_X1 maj_39_U11 ( .A1(v_1_0[0]), .A2(v_1_0[1]), .ZN(maj_39_n15) );
  NAND2_X1 maj_39_U10 ( .A1(maj_39_n15), .A2(maj_39_n14), .ZN(maj_39_n20) );
  XOR2_X1 maj_39_U9 ( .A(v_1_0[3]), .B(v_1_0[4]), .Z(maj_39_n22) );
  XOR2_X1 maj_39_U8 ( .A(v_1_0[2]), .B(maj_39_n16), .Z(maj_39_n21) );
  XOR2_X1 maj_39_U7 ( .A(v_1_0[0]), .B(v_1_0[1]), .Z(maj_39_n16) );
  OR2_X1 maj_39_U6 ( .A1(maj_39_n20), .A2(maj_39_n19), .ZN(maj_39_n24) );
  NAND2_X1 maj_39_U5 ( .A1(maj_39_n24), .A2(maj_39_n23), .ZN(maj_39_n25) );
  NAND2_X1 maj_39_U4 ( .A1(maj_39_n20), .A2(maj_39_n19), .ZN(maj_39_n26) );
  NAND2_X1 maj_39_U3 ( .A1(maj_39_n26), .A2(maj_39_n25), .ZN(maj_39_port_o) );
  XOR2_X1 maj_39_U2 ( .A(maj_39_n22), .B(maj_39_n21), .Z(maj_39_n23) );
endmodule

